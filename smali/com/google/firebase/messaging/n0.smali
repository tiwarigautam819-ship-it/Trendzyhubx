###### Class com.google.firebase.messaging.n0 (com.google.firebase.messaging.n0)
.class public final Lcom/google/firebase/messaging/n0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/content/Intent;

.field public final c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public final d:Ljava/util/ArrayDeque;

.field public e:Lcom/google/firebase/messaging/l0;

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 1
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lc4/a;

    .line 4
    .line 5
    const-string v2, "Firebase-FirebaseInstanceIdServiceConnection"

    .line 6
    .line 7
    invoke-direct {v1, v2}, Lc4/a;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v1, Ljava/util/ArrayDeque;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/google/firebase/messaging/n0;->d:Ljava/util/ArrayDeque;

    .line 23
    .line 24
    iput-boolean v2, p0, Lcom/google/firebase/messaging/n0;->f:Z

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/google/firebase/messaging/n0;->a:Landroid/content/Context;

    .line 31
    .line 32
    new-instance v1, Landroid/content/Intent;

    .line 33
    .line 34
    const-string v2, "com.google.firebase.MESSAGING_EVENT"

    .line 35
    .line 36
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Lcom/google/firebase/messaging/n0;->b:Landroid/content/Intent;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/google/firebase/messaging/n0;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    const-string v0, "FirebaseMessaging"

    .line 3
    .line 4
    const/4 v1, 0x3

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_14

    .line 10
    .line 11
    const-string v0, "FirebaseMessaging"

    .line 12
    .line 13
    const-string v2, "flush queue called"

    .line 14
    .line 15
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    goto :goto_14

    .line 19
    :catchall_12
    move-exception v0

    .line 20
    goto :goto_59

    .line 21
    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/google/firebase/messaging/n0;->d:Ljava/util/ArrayDeque;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_57

    .line 28
    .line 29
    const-string v0, "FirebaseMessaging"

    .line 30
    .line 31
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2b

    .line 36
    .line 37
    const-string v0, "FirebaseMessaging"

    .line 38
    .line 39
    const-string v2, "found intent to be delivered"

    .line 40
    .line 41
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    :cond_2b
    iget-object v0, p0, Lcom/google/firebase/messaging/n0;->e:Lcom/google/firebase/messaging/l0;

    .line 45
    .line 46
    if-eqz v0, :cond_52

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/os/Binder;->isBinderAlive()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_52

    .line 53
    .line 54
    const-string v0, "FirebaseMessaging"

    .line 55
    .line 56
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_44

    .line 61
    .line 62
    const-string v0, "FirebaseMessaging"

    .line 63
    .line 64
    const-string v2, "binder is alive, sending the intent."

    .line 65
    .line 66
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    :cond_44
    iget-object v0, p0, Lcom/google/firebase/messaging/n0;->d:Ljava/util/ArrayDeque;

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Lcom/google/firebase/messaging/m0;

    .line 76
    .line 77
    iget-object v2, p0, Lcom/google/firebase/messaging/n0;->e:Lcom/google/firebase/messaging/l0;

    .line 78
    .line 79
    invoke-virtual {v2, v0}, Lcom/google/firebase/messaging/l0;->a(Lcom/google/firebase/messaging/m0;)V

    .line 80
    .line 81
    .line 82
    goto :goto_14

    .line 83
    :cond_52
    invoke-virtual {p0}, Lcom/google/firebase/messaging/n0;->c()V
    :try_end_55
    .catchall {:try_start_1 .. :try_end_55} :catchall_12

    .line 84
    .line 85
    .line 86
    monitor-exit p0

    .line 87
    return-void

    .line 88
    :cond_57
    monitor-exit p0

    .line 89
    return-void

    .line 90
    :goto_59
    :try_start_59
    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_12

    .line 91
    throw v0
.end method

.method public final declared-synchronized b(Landroid/content/Intent;)Lp4/q;
    .registers 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    const-string v0, "FirebaseMessaging"

    .line 3
    .line 4
    const/4 v1, 0x3

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_14

    .line 10
    .line 11
    const-string v0, "FirebaseMessaging"

    .line 12
    .line 13
    const-string v1, "new intent queued in the bind-strategy delivery"

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    goto :goto_14

    .line 19
    :catchall_12
    move-exception p1

    .line 20
    goto :goto_44

    .line 21
    :cond_14
    :goto_14
    new-instance v0, Lcom/google/firebase/messaging/m0;

    .line 22
    .line 23
    invoke-direct {v0, p1}, Lcom/google/firebase/messaging/m0;-><init>(Landroid/content/Intent;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/google/firebase/messaging/n0;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 27
    .line 28
    new-instance v1, La2/g;

    .line 29
    .line 30
    const/4 v2, 0x7

    .line 31
    invoke-direct {v1, v2, v0}, La2/g;-><init>(ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 35
    .line 36
    const-wide/16 v3, 0x14

    .line 37
    .line 38
    invoke-virtual {p1, v1, v3, v4, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iget-object v2, v0, Lcom/google/firebase/messaging/m0;->b:Lp4/j;

    .line 43
    .line 44
    iget-object v2, v2, Lp4/j;->a:Lp4/q;

    .line 45
    .line 46
    new-instance v3, Lcom/google/firebase/messaging/j0;

    .line 47
    .line 48
    const/4 v4, 0x2

    .line 49
    invoke-direct {v3, v4, v1}, Lcom/google/firebase/messaging/j0;-><init>(ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, p1, v3}, Lp4/q;->a(Ljava/util/concurrent/Executor;Lp4/d;)Lp4/q;

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/google/firebase/messaging/n0;->d:Ljava/util/ArrayDeque;

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/google/firebase/messaging/n0;->a()V

    .line 61
    .line 62
    .line 63
    iget-object p1, v0, Lcom/google/firebase/messaging/m0;->b:Lp4/j;

    .line 64
    .line 65
    iget-object p1, p1, Lp4/j;->a:Lp4/q;
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_12

    .line 66
    .line 67
    monitor-exit p0

    .line 68
    return-object p1

    .line 69
    :goto_44
    :try_start_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_12

    .line 70
    throw p1
.end method

.method public final c()V
    .registers 6

    .line 1
    const/4 v0, 0x3

    .line 2
    const-string v1, "FirebaseMessaging"

    .line 3
    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v0, :cond_1e

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v3, "binder is dead. start connection? "

    .line 14
    .line 15
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-boolean v3, p0, Lcom/google/firebase/messaging/n0;->f:Z

    .line 19
    .line 20
    xor-int/2addr v3, v2

    .line 21
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    :cond_1e
    iget-boolean v0, p0, Lcom/google/firebase/messaging/n0;->f:Z

    .line 32
    .line 33
    if-eqz v0, :cond_23

    .line 34
    .line 35
    goto :goto_5a

    .line 36
    :cond_23
    iput-boolean v2, p0, Lcom/google/firebase/messaging/n0;->f:Z

    .line 37
    .line 38
    :try_start_25
    invoke-static {}, La4/b;->b()La4/b;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v2, p0, Lcom/google/firebase/messaging/n0;->a:Landroid/content/Context;

    .line 43
    .line 44
    iget-object v3, p0, Lcom/google/firebase/messaging/n0;->b:Landroid/content/Intent;

    .line 45
    .line 46
    const/16 v4, 0x41

    .line 47
    .line 48
    invoke-virtual {v0, v2, v3, p0, v4}, La4/b;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_36

    .line 53
    .line 54
    goto :goto_5a

    .line 55
    :cond_36
    const-string v0, "binding to the service failed"

    .line 56
    .line 57
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catch Ljava/lang/SecurityException; {:try_start_25 .. :try_end_3b} :catch_3c

    .line 58
    .line 59
    .line 60
    goto :goto_42

    .line 61
    :catch_3c
    move-exception v0

    .line 62
    const-string v2, "Exception while binding the service"

    .line 63
    .line 64
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    .line 66
    .line 67
    :goto_42
    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/google/firebase/messaging/n0;->f:Z

    .line 69
    .line 70
    :goto_45
    iget-object v0, p0, Lcom/google/firebase/messaging/n0;->d:Ljava/util/ArrayDeque;

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_5a

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Lcom/google/firebase/messaging/m0;

    .line 83
    .line 84
    iget-object v0, v0, Lcom/google/firebase/messaging/m0;->b:Lp4/j;

    .line 85
    .line 86
    const/4 v1, 0x0

    .line 87
    invoke-virtual {v0, v1}, Lp4/j;->c(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    goto :goto_45

    .line 91
    :cond_5a
    :goto_5a
    return-void
.end method

.method public final declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7

    .line 1
    const-string v0, "Invalid service connection: "

    .line 2
    .line 3
    const-string v1, "onServiceConnected: "

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_5
    const-string v2, "FirebaseMessaging"

    .line 7
    .line 8
    const/4 v3, 0x3

    .line 9
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_22

    .line 14
    .line 15
    const-string v2, "FirebaseMessaging"

    .line 16
    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    goto :goto_22

    .line 33
    :catchall_20
    move-exception p1

    .line 34
    goto :goto_5a

    .line 35
    :cond_22
    :goto_22
    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lcom/google/firebase/messaging/n0;->f:Z

    .line 37
    .line 38
    instance-of p1, p2, Lcom/google/firebase/messaging/l0;

    .line 39
    .line 40
    if-nez p1, :cond_51

    .line 41
    .line 42
    const-string p1, "FirebaseMessaging"

    .line 43
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/google/firebase/messaging/n0;->d:Ljava/util/ArrayDeque;

    .line 60
    .line 61
    :goto_3c
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    if-nez p2, :cond_4f

    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    check-cast p2, Lcom/google/firebase/messaging/m0;

    .line 72
    .line 73
    iget-object p2, p2, Lcom/google/firebase/messaging/m0;->b:Lp4/j;

    .line 74
    .line 75
    const/4 v0, 0x0

    .line 76
    invoke-virtual {p2, v0}, Lp4/j;->c(Ljava/lang/Object;)V
    :try_end_4e
    .catchall {:try_start_5 .. :try_end_4e} :catchall_20

    .line 77
    .line 78
    .line 79
    goto :goto_3c

    .line 80
    :cond_4f
    monitor-exit p0

    .line 81
    return-void

    .line 82
    :cond_51
    :try_start_51
    check-cast p2, Lcom/google/firebase/messaging/l0;

    .line 83
    .line 84
    iput-object p2, p0, Lcom/google/firebase/messaging/n0;->e:Lcom/google/firebase/messaging/l0;

    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/google/firebase/messaging/n0;->a()V
    :try_end_58
    .catchall {:try_start_51 .. :try_end_58} :catchall_20

    .line 87
    .line 88
    .line 89
    monitor-exit p0

    .line 90
    return-void

    .line 91
    :goto_5a
    :try_start_5a
    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_20

    .line 92
    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    .line 1
    const/4 v0, 0x3

    .line 2
    const-string v1, "FirebaseMessaging"

    .line 3
    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1a

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "onServiceDisconnected: "

    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_1a
    invoke-virtual {p0}, Lcom/google/firebase/messaging/n0;->a()V

    .line 28
    .line 29
    .line 30
    return-void
.end method
