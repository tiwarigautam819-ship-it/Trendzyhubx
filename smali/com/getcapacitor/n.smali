###### Class com.getcapacitor.n (com.getcapacitor.n)
.class public final synthetic Lcom/getcapacitor/n;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lj0/r;
.implements Lp4/a;
.implements Ld5/b;
.implements Lv4/d;
.implements Lq2/n;
.implements Ln6/a;
.implements Lm3/f;
.implements Lm6/f;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/getcapacitor/n;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/common/internal/g;)V
    .registers 2

    .line 2
    const/4 p1, 0x4

    iput p1, p0, Lcom/getcapacitor/n;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final c(Z)V
    .registers 11

    .line 1
    if-eqz p1, :cond_52

    .line 2
    .line 3
    sget-object p1, Lt2/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    const-class p1, Lt2/c;

    .line 6
    .line 7
    monitor-enter p1

    .line 8
    :try_start_7
    const-class v0, Lt2/c;

    .line 9
    .line 10
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_4f

    .line 14
    if-eqz v0, :cond_11

    .line 15
    .line 16
    monitor-exit p1

    .line 17
    return-void

    .line 18
    :cond_11
    :try_start_11
    sget-object v0, Lt2/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 22
    .line 23
    .line 24
    move-result v0
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_28

    .line 25
    if-eqz v0, :cond_1c

    .line 26
    .line 27
    monitor-exit p1

    .line 28
    return-void

    .line 29
    :cond_1c
    :try_start_1c
    sget-object v0, Lx1/r;->a:Lx1/r;

    .line 30
    .line 31
    invoke-static {}, Lx1/j0;->c()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2a

    .line 36
    .line 37
    invoke-static {}, Lt2/c;->a()V

    .line 38
    .line 39
    .line 40
    goto :goto_2a

    .line 41
    :catchall_28
    move-exception v0

    .line 42
    goto :goto_49

    .line 43
    :cond_2a
    :goto_2a
    sget v0, Lt2/a;->a:I

    .line 44
    .line 45
    const-class v1, Lt2/a;

    .line 46
    .line 47
    invoke-static {v1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0
    :try_end_32
    .catchall {:try_start_1c .. :try_end_32} :catchall_28

    .line 51
    if-eqz v0, :cond_35

    .line 52
    .line 53
    goto :goto_47

    .line 54
    :cond_35
    :try_start_35
    sget-object v2, Lt2/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 55
    .line 56
    sget-object v3, Lt2/a;->d:Li2/c;

    .line 57
    .line 58
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 59
    .line 60
    const-wide/16 v4, 0x0

    .line 61
    .line 62
    const-wide/16 v6, 0x1f4

    .line 63
    .line 64
    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_42
    .catchall {:try_start_35 .. :try_end_42} :catchall_43

    .line 65
    .line 66
    .line 67
    goto :goto_47

    .line 68
    :catchall_43
    move-exception v0

    .line 69
    :try_start_44
    invoke-static {v0, v1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_28

    .line 70
    .line 71
    .line 72
    :goto_47
    monitor-exit p1

    .line 73
    goto :goto_52

    .line 74
    :goto_49
    :try_start_49
    const-class v1, Lt2/c;

    .line 75
    .line 76
    invoke-static {v0, v1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    goto :goto_47

    .line 80
    :catchall_4f
    move-exception v0

    .line 81
    monitor-exit p1
    :try_end_51
    .catchall {:try_start_49 .. :try_end_51} :catchall_4f

    .line 82
    throw v0

    .line 83
    :cond_52
    :goto_52
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_c

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_e

    .line 12
    .line 13
    :cond_c
    sget-object p1, Lm6/g;->b:Ljava/lang/String;

    .line 14
    .line 15
    :cond_e
    sput-object p1, Lm6/g;->b:Ljava/lang/String;

    .line 16
    .line 17
    :try_start_10
    sget-object p1, Lm6/g;->d:Ljava/util/concurrent/CountDownLatch;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_15

    .line 20
    .line 21
    .line 22
    :catchall_15
    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    new-array v1, v0, [Ljava/lang/String;

    .line 5
    .line 6
    const-string v2, "SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id"

    .line 7
    .line 8
    invoke-virtual {p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :try_start_b
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    :goto_10
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_44

    .line 22
    .line 23
    invoke-static {}, Lf3/i;->a()Lc5/h;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/4 v3, 0x1

    .line 28
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v2, v3}, Lc5/h;->v(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 v3, 0x2

    .line 36
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    invoke-static {v3}, Lp3/a;->b(I)Lc3/d;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    iput-object v3, v2, Lc5/h;->d:Ljava/lang/Object;

    .line 45
    .line 46
    const/4 v3, 0x3

    .line 47
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    if-nez v3, :cond_36

    .line 52
    .line 53
    const/4 v3, 0x0

    .line 54
    goto :goto_3a

    .line 55
    :cond_36
    invoke-static {v3, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    :goto_3a
    iput-object v3, v2, Lc5/h;->c:Ljava/lang/Object;

    .line 60
    .line 61
    invoke-virtual {v2}, Lc5/h;->g()Lf3/i;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_43
    .catchall {:try_start_b .. :try_end_43} :catchall_48

    .line 66
    .line 67
    .line 68
    goto :goto_10

    .line 69
    :cond_44
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 70
    .line 71
    .line 72
    return-object v1

    .line 73
    :catchall_48
    move-exception v0

    .line 74
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 75
    .line 76
    .line 77
    throw v0
.end method

.method public b(Lp4/i;)Ljava/lang/Object;
    .registers 6

    .line 1
    iget v0, p0, Lcom/getcapacitor/n;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_a4

    .line 4
    .line 5
    .line 6
    const-class v0, Ljava/io/IOException;

    .line 7
    .line 8
    check-cast p1, Lp4/q;

    .line 9
    .line 10
    iget-object v1, p1, Lp4/q;->a:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v1

    .line 13
    :try_start_c
    iget-boolean v2, p1, Lp4/q;->c:Z

    .line 14
    .line 15
    const-string v3, "Task is not yet complete"

    .line 16
    .line 17
    invoke-static {v3, v2}, Lcom/google/android/gms/common/internal/d0;->j(Ljava/lang/String;Z)V

    .line 18
    .line 19
    .line 20
    iget-boolean v2, p1, Lp4/q;->d:Z

    .line 21
    .line 22
    if-nez v2, :cond_91

    .line 23
    .line 24
    iget-object v2, p1, Lp4/q;->f:Ljava/lang/Exception;

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_88

    .line 31
    .line 32
    iget-object v0, p1, Lp4/q;->f:Ljava/lang/Exception;

    .line 33
    .line 34
    if-nez v0, :cond_82

    .line 35
    .line 36
    iget-object p1, p1, Lp4/q;->e:Ljava/lang/Object;

    .line 37
    .line 38
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_80

    .line 39
    check-cast p1, Landroid/os/Bundle;

    .line 40
    .line 41
    const-string v0, "SERVICE_NOT_AVAILABLE"

    .line 42
    .line 43
    if-eqz p1, :cond_7a

    .line 44
    .line 45
    const-string v1, "registration_id"

    .line 46
    .line 47
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-eqz v1, :cond_35

    .line 52
    .line 53
    goto :goto_3d

    .line 54
    :cond_35
    const-string v1, "unregistered"

    .line 55
    .line 56
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    if-eqz v1, :cond_3e

    .line 61
    .line 62
    :goto_3d
    return-object v1

    .line 63
    :cond_3e
    const-string v1, "error"

    .line 64
    .line 65
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    const-string v2, "RST"

    .line 70
    .line 71
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-nez v2, :cond_72

    .line 76
    .line 77
    if-eqz v1, :cond_54

    .line 78
    .line 79
    new-instance p1, Ljava/io/IOException;

    .line 80
    .line 81
    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p1

    .line 85
    :cond_54
    const-string v1, "FirebaseMessaging"

    .line 86
    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v3, "Unexpected response: "

    .line 90
    .line 91
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    new-instance v2, Ljava/lang/Throwable;

    .line 102
    .line 103
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-static {v1, p1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    .line 108
    .line 109
    new-instance p1, Ljava/io/IOException;

    .line 110
    .line 111
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw p1

    .line 115
    :cond_72
    new-instance p1, Ljava/io/IOException;

    .line 116
    .line 117
    const-string v0, "INSTANCE_ID_RESET"

    .line 118
    .line 119
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw p1

    .line 123
    :cond_7a
    new-instance p1, Ljava/io/IOException;

    .line 124
    .line 125
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p1

    .line 129
    :catchall_80
    move-exception p1

    .line 130
    goto :goto_99

    .line 131
    :cond_82
    :try_start_82
    new-instance p1, Lp4/g;

    .line 132
    .line 133
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 134
    .line 135
    .line 136
    throw p1

    .line 137
    :cond_88
    iget-object p1, p1, Lp4/q;->f:Ljava/lang/Exception;

    .line 138
    .line 139
    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    check-cast p1, Ljava/lang/Throwable;

    .line 144
    .line 145
    throw p1

    .line 146
    :cond_91
    new-instance p1, Ljava/util/concurrent/CancellationException;

    .line 147
    .line 148
    const-string v0, "Task is already canceled."

    .line 149
    .line 150
    invoke-direct {p1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw p1

    .line 154
    :goto_99
    monitor-exit v1
    :try_end_9a
    .catchall {:try_start_82 .. :try_end_9a} :catchall_80

    .line 155
    throw p1

    .line 156
    :pswitch_9b
    const/4 p1, -0x1

    .line 157
    :goto_9c
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    return-object p1

    .line 162
    :pswitch_a1
    const/16 p1, 0x193

    .line 163
    .line 164
    goto :goto_9c

    .line 165
    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_a1
        :pswitch_9b
    .end packed-switch
.end method

.method public create(Lv4/c;)Ljava/lang/Object;
    .registers 6

    .line 1
    iget v0, p0, Lcom/getcapacitor/n;->a:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_54

    .line 4
    .line 5
    .line 6
    sget-object p1, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->a:Lv4/l;

    .line 7
    .line 8
    sget-object p1, Lw4/j;->a:Lw4/j;

    .line 9
    .line 10
    return-object p1

    .line 11
    :sswitch_a
    sget-object p1, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->b:Lv4/l;

    .line 12
    .line 13
    invoke-virtual {p1}, Lv4/l;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    .line 18
    .line 19
    return-object p1

    .line 20
    :sswitch_13
    sget-object p1, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->c:Lv4/l;

    .line 21
    .line 22
    invoke-virtual {p1}, Lv4/l;->get()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    .line 27
    .line 28
    return-object p1

    .line 29
    :sswitch_1c
    sget-object p1, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->a:Lv4/l;

    .line 30
    .line 31
    invoke-virtual {p1}, Lv4/l;->get()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    .line 36
    .line 37
    return-object p1

    .line 38
    :sswitch_25
    new-instance v0, Lo5/b;

    .line 39
    .line 40
    const-class v1, Lo5/a;

    .line 41
    .line 42
    check-cast p1, Lcom/google/firebase/messaging/y;

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Lcom/google/firebase/messaging/y;->D(Ljava/lang/Class;)Ljava/util/Set;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    sget-object v1, Lo5/c;->c:Lo5/c;

    .line 49
    .line 50
    if-nez v1, :cond_49

    .line 51
    .line 52
    const-class v2, Lo5/c;

    .line 53
    .line 54
    monitor-enter v2

    .line 55
    :try_start_36
    sget-object v1, Lo5/c;->c:Lo5/c;

    .line 56
    .line 57
    if-nez v1, :cond_45

    .line 58
    .line 59
    new-instance v1, Lo5/c;

    .line 60
    .line 61
    const/4 v3, 0x0

    .line 62
    invoke-direct {v1, v3}, Lo5/c;-><init>(I)V

    .line 63
    .line 64
    .line 65
    sput-object v1, Lo5/c;->c:Lo5/c;

    .line 66
    .line 67
    goto :goto_45

    .line 68
    :catchall_43
    move-exception p1

    .line 69
    goto :goto_47

    .line 70
    :cond_45
    :goto_45
    monitor-exit v2

    .line 71
    goto :goto_49

    .line 72
    :goto_47
    monitor-exit v2
    :try_end_48
    .catchall {:try_start_36 .. :try_end_48} :catchall_43

    .line 73
    throw p1

    .line 74
    :cond_49
    :goto_49
    invoke-direct {v0, p1, v1}, Lo5/b;-><init>(Ljava/util/Set;Lo5/c;)V

    .line 75
    .line 76
    .line 77
    return-object v0

    .line 78
    :sswitch_4d
    check-cast p1, Lcom/google/firebase/messaging/y;

    .line 79
    .line 80
    invoke-static {p1}, Lcom/google/firebase/installations/FirebaseInstallationsRegistrar;->a(Lcom/google/firebase/messaging/y;)Lh5/e;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    return-object p1

    .line 85
    :sswitch_data_54
    .sparse-switch
        0x7 -> :sswitch_4d
        0xe -> :sswitch_25
        0x18 -> :sswitch_1c
        0x19 -> :sswitch_13
        0x1a -> :sswitch_a
    .end sparse-switch
.end method

.method public d(Z)V
    .registers 13

    .line 1
    iget v0, p0, Lcom/getcapacitor/n;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    sparse-switch v0, :sswitch_data_1dc

    .line 7
    .line 8
    .line 9
    if-eqz p1, :cond_35

    .line 10
    .line 11
    invoke-static {}, Lx1/j0;->c()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_11

    .line 16
    .line 17
    goto :goto_35

    .line 18
    :cond_11
    sget-object p1, Lq2/o;->L:Lq2/o;

    .line 19
    .line 20
    new-instance v0, Lcom/getcapacitor/n;

    .line 21
    .line 22
    const/16 v1, 0xf

    .line 23
    .line 24
    invoke-direct {v0, v1}, Lcom/getcapacitor/n;-><init>(I)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p1}, Lq2/q;->a(Lq2/n;Lq2/o;)V

    .line 28
    .line 29
    .line 30
    sget-object p1, Lq2/o;->O:Lq2/o;

    .line 31
    .line 32
    new-instance v0, Lcom/getcapacitor/n;

    .line 33
    .line 34
    const/16 v1, 0x10

    .line 35
    .line 36
    invoke-direct {v0, v1}, Lcom/getcapacitor/n;-><init>(I)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0, p1}, Lq2/q;->a(Lq2/n;Lq2/o;)V

    .line 40
    .line 41
    .line 42
    sget-object p1, Lq2/o;->P:Lq2/o;

    .line 43
    .line 44
    new-instance v0, Lcom/getcapacitor/n;

    .line 45
    .line 46
    const/16 v1, 0x11

    .line 47
    .line 48
    invoke-direct {v0, v1}, Lcom/getcapacitor/n;-><init>(I)V

    .line 49
    .line 50
    .line 51
    invoke-static {v0, p1}, Lq2/q;->a(Lq2/n;Lq2/o;)V

    .line 52
    .line 53
    .line 54
    :cond_35
    :goto_35
    return-void

    .line 55
    :sswitch_36
    invoke-direct {p0, p1}, Lcom/getcapacitor/n;->c(Z)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :sswitch_3a
    if-eqz p1, :cond_e0

    .line 60
    .line 61
    sget-object p1, Lx1/r;->a:Lx1/r;

    .line 62
    .line 63
    invoke-static {}, Lx1/j0;->c()Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_e0

    .line 68
    .line 69
    invoke-static {}, Lq2/g0;->z()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_4c

    .line 74
    .line 75
    goto/16 :goto_e0

    .line 76
    .line 77
    :cond_4c
    invoke-static {}, Landroid/support/v4/media/session/a;->d()Ljava/io/File;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    if-nez p1, :cond_55

    .line 82
    .line 83
    new-array p1, v2, [Ljava/io/File;

    .line 84
    .line 85
    goto :goto_64

    .line 86
    :cond_55
    new-instance v0, Lm1/g;

    .line 87
    .line 88
    const/4 v4, 0x5

    .line 89
    invoke-direct {v0, v4}, Lm1/g;-><init>(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    const-string v0, "reportDir.listFiles { di\u2026OR_REPORT_PREFIX)))\n    }"

    .line 97
    .line 98
    invoke-static {v0, p1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    :goto_64
    new-instance v0, Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .line 105
    .line 106
    array-length v4, p1

    .line 107
    move v5, v2

    .line 108
    :goto_6b
    if-ge v5, v4, :cond_ae

    .line 109
    .line 110
    aget-object v6, p1, v5

    .line 111
    .line 112
    new-instance v7, Lw2/a;

    .line 113
    .line 114
    const-string v8, "file"

    .line 115
    .line 116
    invoke-static {v8, v6}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    const-string v8, "file.name"

    .line 127
    .line 128
    invoke-static {v8, v6}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    iput-object v6, v7, Lw2/a;->a:Ljava/lang/String;

    .line 132
    .line 133
    invoke-static {v6}, Landroid/support/v4/media/session/a;->h(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    if-eqz v6, :cond_a0

    .line 138
    .line 139
    const-string v8, "timestamp"

    .line 140
    .line 141
    const-wide/16 v9, 0x0

    .line 142
    .line 143
    invoke-virtual {v6, v8, v9, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 144
    .line 145
    .line 146
    move-result-wide v8

    .line 147
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 148
    .line 149
    .line 150
    move-result-object v8

    .line 151
    iput-object v8, v7, Lw2/a;->c:Ljava/lang/Long;

    .line 152
    .line 153
    const-string v8, "error_message"

    .line 154
    .line 155
    invoke-virtual {v6, v8, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    iput-object v6, v7, Lw2/a;->b:Ljava/lang/String;

    .line 160
    .line 161
    :cond_a0
    iget-object v6, v7, Lw2/a;->b:Ljava/lang/String;

    .line 162
    .line 163
    if-eqz v6, :cond_ab

    .line 164
    .line 165
    iget-object v6, v7, Lw2/a;->c:Ljava/lang/Long;

    .line 166
    .line 167
    if-eqz v6, :cond_ab

    .line 168
    .line 169
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    :cond_ab
    add-int/lit8 v5, v5, 0x1

    .line 173
    .line 174
    goto :goto_6b

    .line 175
    :cond_ae
    new-instance p1, Lg0/a;

    .line 176
    .line 177
    const/4 v1, 0x3

    .line 178
    invoke-direct {p1, v1}, Lg0/a;-><init>(I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-le v1, v3, :cond_bd

    .line 186
    .line 187
    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 188
    .line 189
    .line 190
    :cond_bd
    new-instance p1, Lorg/json/JSONArray;

    .line 191
    .line 192
    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 193
    .line 194
    .line 195
    :goto_c2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    if-ge v2, v1, :cond_d6

    .line 200
    .line 201
    const/16 v1, 0x3e8

    .line 202
    .line 203
    if-ge v2, v1, :cond_d6

    .line 204
    .line 205
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 210
    .line 211
    .line 212
    add-int/lit8 v2, v2, 0x1

    .line 213
    .line 214
    goto :goto_c2

    .line 215
    :cond_d6
    const-string v1, "error_reports"

    .line 216
    .line 217
    new-instance v2, Ls2/a;

    .line 218
    .line 219
    invoke-direct {v2, v3, v0}, Ls2/a;-><init>(ILjava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    invoke-static {v1, p1, v2}, Landroid/support/v4/media/session/a;->j(Ljava/lang/String;Lorg/json/JSONArray;Lx1/v;)V

    .line 223
    .line 224
    .line 225
    :cond_e0
    :goto_e0
    return-void

    .line 226
    :sswitch_e1
    if-eqz p1, :cond_1af

    .line 227
    .line 228
    sget-object p1, Lu2/a;->b:Lo3/a;

    .line 229
    .line 230
    monitor-enter p1

    .line 231
    :try_start_e6
    sget-object v0, Lx1/r;->a:Lx1/r;

    .line 232
    .line 233
    invoke-static {}, Lx1/j0;->c()Z

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    if-eqz v0, :cond_f5

    .line 238
    .line 239
    invoke-static {}, Lo3/a;->q()V

    .line 240
    .line 241
    .line 242
    goto :goto_f5

    .line 243
    :catchall_f2
    move-exception v0

    .line 244
    goto/16 :goto_1ad

    .line 245
    .line 246
    :cond_f5
    :goto_f5
    sget-object v0, Lu2/a;->c:Lu2/a;

    .line 247
    .line 248
    if-eqz v0, :cond_102

    .line 249
    .line 250
    const-string v0, "u2.a"

    .line 251
    .line 252
    const-string v4, "Already enabled!"

    .line 253
    .line 254
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_100
    .catchall {:try_start_e6 .. :try_end_100} :catchall_f2

    .line 255
    .line 256
    .line 257
    monitor-exit p1

    .line 258
    goto :goto_111

    .line 259
    :cond_102
    :try_start_102
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    new-instance v4, Lu2/a;

    .line 264
    .line 265
    invoke-direct {v4, v0}, Lu2/a;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 266
    .line 267
    .line 268
    sput-object v4, Lu2/a;->c:Lu2/a;

    .line 269
    .line 270
    invoke-static {v4}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_110
    .catchall {:try_start_102 .. :try_end_110} :catchall_f2

    .line 271
    .line 272
    .line 273
    monitor-exit p1

    .line 274
    :goto_111
    sget-object p1, Lq2/o;->M:Lq2/o;

    .line 275
    .line 276
    invoke-static {p1}, Lq2/q;->b(Lq2/o;)Z

    .line 277
    .line 278
    .line 279
    move-result p1

    .line 280
    if-eqz p1, :cond_1a7

    .line 281
    .line 282
    sput-boolean v3, Lz7/l;->a:Z

    .line 283
    .line 284
    invoke-static {}, Lx1/j0;->c()Z

    .line 285
    .line 286
    .line 287
    move-result p1

    .line 288
    if-eqz p1, :cond_1a5

    .line 289
    .line 290
    invoke-static {}, Lq2/g0;->z()Z

    .line 291
    .line 292
    .line 293
    move-result p1

    .line 294
    if-eqz p1, :cond_129

    .line 295
    .line 296
    goto/16 :goto_1a5

    .line 297
    .line 298
    :cond_129
    invoke-static {}, Landroid/support/v4/media/session/a;->d()Ljava/io/File;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    if-nez p1, :cond_132

    .line 303
    .line 304
    new-array p1, v2, [Ljava/io/File;

    .line 305
    .line 306
    goto :goto_140

    .line 307
    :cond_132
    new-instance v0, Lm1/g;

    .line 308
    .line 309
    const/4 v4, 0x4

    .line 310
    invoke-direct {v0, v4}, Lm1/g;-><init>(I)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    if-nez p1, :cond_140

    .line 318
    .line 319
    new-array p1, v2, [Ljava/io/File;

    .line 320
    .line 321
    :cond_140
    :goto_140
    new-instance v0, Ljava/util/ArrayList;

    .line 322
    .line 323
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 324
    .line 325
    .line 326
    array-length v4, p1

    .line 327
    move v5, v2

    .line 328
    :goto_147
    if-ge v5, v4, :cond_186

    .line 329
    .line 330
    aget-object v6, p1, v5

    .line 331
    .line 332
    invoke-static {v6}, La2/c;->i(Ljava/io/File;)Ls2/d;

    .line 333
    .line 334
    .line 335
    move-result-object v6

    .line 336
    invoke-virtual {v6}, Ls2/d;->a()Z

    .line 337
    .line 338
    .line 339
    move-result v7

    .line 340
    if-eqz v7, :cond_183

    .line 341
    .line 342
    new-instance v7, Lorg/json/JSONObject;

    .line 343
    .line 344
    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 345
    .line 346
    .line 347
    :try_start_15a
    const-string v8, "crash_shield"

    .line 348
    .line 349
    invoke-virtual {v6}, Ls2/d;->toString()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v9

    .line 353
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 354
    .line 355
    .line 356
    sget-object v8, Lx1/z;->j:Ljava/lang/String;

    .line 357
    .line 358
    const-string v8, "%s/instruments"

    .line 359
    .line 360
    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v9

    .line 364
    new-array v10, v3, [Ljava/lang/Object;

    .line 365
    .line 366
    aput-object v9, v10, v2

    .line 367
    .line 368
    invoke-static {v10, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v9

    .line 372
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v8

    .line 376
    new-instance v9, Ls2/a;

    .line 377
    .line 378
    invoke-direct {v9, v2, v6}, Ls2/a;-><init>(ILjava/lang/Object;)V

    .line 379
    .line 380
    .line 381
    invoke-static {v1, v8, v7, v9}, Lx1/w;->v(Lx1/a;Ljava/lang/String;Lorg/json/JSONObject;Lx1/v;)Lx1/z;

    .line 382
    .line 383
    .line 384
    move-result-object v6

    .line 385
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_183
    .catch Lorg/json/JSONException; {:try_start_15a .. :try_end_183} :catch_183

    .line 386
    .line 387
    .line 388
    :catch_183
    :cond_183
    add-int/lit8 v5, v5, 0x1

    .line 389
    .line 390
    goto :goto_147

    .line 391
    :cond_186
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 392
    .line 393
    .line 394
    move-result p1

    .line 395
    if-eqz p1, :cond_18d

    .line 396
    .line 397
    goto :goto_1a5

    .line 398
    :cond_18d
    new-instance p1, Lx1/b0;

    .line 399
    .line 400
    invoke-direct {p1, v0}, Lx1/b0;-><init>(Ljava/util/Collection;)V

    .line 401
    .line 402
    .line 403
    sget-object v0, Lx1/z;->j:Ljava/lang/String;

    .line 404
    .line 405
    invoke-static {p1}, Lq2/g;->i(Lx1/b0;)V

    .line 406
    .line 407
    .line 408
    new-instance v0, Lx1/a0;

    .line 409
    .line 410
    invoke-direct {v0, p1}, Lx1/a0;-><init>(Lx1/b0;)V

    .line 411
    .line 412
    .line 413
    invoke-static {}, Lx1/r;->c()Ljava/util/concurrent/Executor;

    .line 414
    .line 415
    .line 416
    move-result-object p1

    .line 417
    new-array v1, v2, [Ljava/lang/Void;

    .line 418
    .line 419
    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 420
    .line 421
    .line 422
    :cond_1a5
    :goto_1a5
    sput-boolean v3, Lv2/a;->b:Z

    .line 423
    .line 424
    :cond_1a7
    sget-object p1, Lq2/o;->N:Lq2/o;

    .line 425
    .line 426
    invoke-static {p1}, Lq2/q;->b(Lq2/o;)Z

    .line 427
    .line 428
    .line 429
    goto :goto_1af

    .line 430
    :goto_1ad
    :try_start_1ad
    monitor-exit p1
    :try_end_1ae
    .catchall {:try_start_1ad .. :try_end_1ae} :catchall_f2

    .line 431
    throw v0

    .line 432
    :cond_1af
    :goto_1af
    return-void

    .line 433
    :sswitch_1b0
    const-class v0, Lb2/f;

    .line 434
    .line 435
    if-eqz p1, :cond_1c8

    .line 436
    .line 437
    sget-object p1, Lb2/f;->a:Lb2/f;

    .line 438
    .line 439
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 440
    .line 441
    .line 442
    move-result p1

    .line 443
    if-eqz p1, :cond_1bd

    .line 444
    .line 445
    goto :goto_1db

    .line 446
    :cond_1bd
    :try_start_1bd
    sget-object p1, Lb2/f;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 447
    .line 448
    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1c2
    .catchall {:try_start_1bd .. :try_end_1c2} :catchall_1c3

    .line 449
    .line 450
    .line 451
    goto :goto_1db

    .line 452
    :catchall_1c3
    move-exception p1

    .line 453
    invoke-static {p1, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 454
    .line 455
    .line 456
    goto :goto_1db

    .line 457
    :cond_1c8
    sget-object p1, Lb2/f;->a:Lb2/f;

    .line 458
    .line 459
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 460
    .line 461
    .line 462
    move-result p1

    .line 463
    if-eqz p1, :cond_1d1

    .line 464
    .line 465
    goto :goto_1db

    .line 466
    :cond_1d1
    :try_start_1d1
    sget-object p1, Lb2/f;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 467
    .line 468
    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1d6
    .catchall {:try_start_1d1 .. :try_end_1d6} :catchall_1d7

    .line 469
    .line 470
    .line 471
    goto :goto_1db

    .line 472
    :catchall_1d7
    move-exception p1

    .line 473
    invoke-static {p1, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 474
    .line 475
    .line 476
    :goto_1db
    return-void

    .line 477
    :sswitch_data_1dc
    .sparse-switch
        0xa -> :sswitch_1b0
        0xf -> :sswitch_e1
        0x10 -> :sswitch_3a
        0x11 -> :sswitch_36
    .end sparse-switch
.end method

.method public e(Landroid/view/View;Lj0/b1;)Lj0/b1;
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/getcapacitor/CapacitorWebView;->a(Landroid/view/View;Lj0/b1;)Lj0/b1;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public onToken(Ljava/lang/String;)V
    .registers 4

    .line 1
    sget v0, Lcom/lottery/app/MainActivity;->g:I

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v1, "Firebase initialized from local config, token="

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v0, "AppInit"

    .line 18
    .line 19
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return-void
.end method
