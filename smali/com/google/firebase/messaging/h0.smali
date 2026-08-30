###### Class com.google.firebase.messaging.h0 (com.google.firebase.messaging.h0)
.class public final Lcom/google/firebase/messaging/h0;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public a:Lcom/google/firebase/messaging/i0;

.field public final synthetic b:Lcom/google/firebase/messaging/i0;


# direct methods
.method public constructor <init>(Lcom/google/firebase/messaging/i0;Lcom/google/firebase/messaging/i0;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/firebase/messaging/h0;->b:Lcom/google/firebase/messaging/i0;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/firebase/messaging/h0;->a:Lcom/google/firebase/messaging/i0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    .line 1
    const-string v0, "FirebaseMessaging"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-nez v2, :cond_15

    .line 9
    .line 10
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    .line 12
    const/16 v3, 0x17

    .line 13
    .line 14
    if-ne v2, v3, :cond_1a

    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1a

    .line 21
    .line 22
    :cond_15
    const-string v1, "Connectivity change received registered"

    .line 23
    .line 24
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_1a
    iget-object v0, p0, Lcom/google/firebase/messaging/h0;->b:Lcom/google/firebase/messaging/i0;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/google/firebase/messaging/i0;->a:Landroid/content/Context;

    .line 30
    .line 31
    new-instance v1, Landroid/content/IntentFilter;

    .line 32
    .line 33
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 34
    .line 35
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object p2, p0, Lcom/google/firebase/messaging/h0;->a:Lcom/google/firebase/messaging/i0;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_32

    .line 3
    .line 4
    if-nez p2, :cond_7

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_7
    :try_start_7
    invoke-virtual {p2}, Lcom/google/firebase/messaging/i0;->d()Z

    .line 9
    .line 10
    .line 11
    move-result p2
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_32

    .line 12
    if-nez p2, :cond_f

    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :cond_f
    :try_start_f
    const-string p2, "FirebaseMessaging"

    .line 17
    .line 18
    const/4 v0, 0x3

    .line 19
    invoke-static {p2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_27

    .line 24
    .line 25
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 26
    .line 27
    const/16 v2, 0x17

    .line 28
    .line 29
    if-ne v1, v2, :cond_25

    .line 30
    .line 31
    invoke-static {p2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_25

    .line 36
    .line 37
    goto :goto_27

    .line 38
    :cond_25
    const/4 p2, 0x0

    .line 39
    goto :goto_28

    .line 40
    :cond_27
    :goto_27
    const/4 p2, 0x1

    .line 41
    :goto_28
    if-eqz p2, :cond_34

    .line 42
    .line 43
    const-string p2, "FirebaseMessaging"

    .line 44
    .line 45
    const-string v0, "Connectivity changed. Starting background sync."

    .line 46
    .line 47
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    goto :goto_34

    .line 51
    :catchall_32
    move-exception p1

    .line 52
    goto :goto_49

    .line 53
    :cond_34
    :goto_34
    iget-object p2, p0, Lcom/google/firebase/messaging/h0;->a:Lcom/google/firebase/messaging/i0;

    .line 54
    .line 55
    iget-object v0, p2, Lcom/google/firebase/messaging/i0;->d:Lcom/google/firebase/messaging/g0;

    .line 56
    .line 57
    iget-object v0, v0, Lcom/google/firebase/messaging/g0;->f:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 58
    .line 59
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 60
    .line 61
    const-wide/16 v2, 0x0

    .line 62
    .line 63
    invoke-virtual {v0, p2, v2, v3, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 67
    .line 68
    .line 69
    const/4 p1, 0x0

    .line 70
    iput-object p1, p0, Lcom/google/firebase/messaging/h0;->a:Lcom/google/firebase/messaging/i0;
    :try_end_47
    .catchall {:try_start_f .. :try_end_47} :catchall_32

    .line 71
    .line 72
    monitor-exit p0

    .line 73
    return-void

    .line 74
    :goto_49
    :try_start_49
    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_32

    .line 75
    throw p1
.end method
