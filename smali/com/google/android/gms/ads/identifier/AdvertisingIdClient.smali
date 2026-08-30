###### Class com.google.android.gms.ads.identifier.AdvertisingIdClient (com.google.android.gms.ads.identifier.AdvertisingIdClient)
.class public Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    }
.end annotation


# instance fields
.field public a:Lv3/a;

.field public b:Lg4/d;

.field public c:Z

.field public final d:Ljava/lang/Object;

.field public e:Lr3/a;

.field public final f:Landroid/content/Context;

.field public final g:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->d:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_14

    .line 19
    .line 20
    move-object p1, v0

    .line 21
    :cond_14
    iput-object p1, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->f:Landroid/content/Context;

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->c:Z

    .line 25
    .line 26
    const-wide/16 v0, -0x1

    .line 27
    .line 28
    iput-wide v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->g:J

    .line 29
    .line 30
    return-void
.end method

.method public static c(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;JLjava/lang/Throwable;)V
    .registers 8

    .line 1
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmpl-double v0, v0, v2

    .line 8
    .line 9
    if-gtz v0, :cond_60

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "app_context"

    .line 17
    .line 18
    const-string v2, "1"

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    if-eqz p0, :cond_39

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v3, 0x1

    .line 30
    if-eq v3, v1, :cond_21

    .line 31
    .line 32
    const-string v2, "0"

    .line 33
    .line 34
    :cond_21
    const-string v1, "limit_ad_tracking"

    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    if-eqz p0, :cond_39

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    const-string v1, "ad_id_size"

    .line 54
    .line 55
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    :cond_39
    if-eqz p3, :cond_48

    .line 59
    .line 60
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    const-string p3, "error"

    .line 69
    .line 70
    invoke-virtual {v0, p3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    :cond_48
    const-string p0, "tag"

    .line 74
    .line 75
    const-string p3, "AdvertisingIdClient"

    .line 76
    .line 77
    invoke-virtual {v0, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    const-string p0, "time_spent"

    .line 81
    .line 82
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    new-instance p0, Lcom/google/android/gms/ads/identifier/a;

    .line 90
    .line 91
    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/identifier/a;-><init>(Ljava/util/HashMap;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 95
    .line 96
    .line 97
    :cond_60
    return-void
.end method

.method public static getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .registers 7

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->b()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->d()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 19
    .line 20
    .line 21
    move-result-wide v4

    .line 22
    sub-long/2addr v4, v1

    .line 23
    invoke-static {v3, v4, v5, p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->c(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;JLjava/lang/Throwable;)V
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1d

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->a()V

    .line 27
    .line 28
    .line 29
    return-object v3

    .line 30
    :catchall_1d
    move-exception v1

    .line 31
    const-wide/16 v2, -0x1

    .line 32
    .line 33
    :try_start_20
    invoke-static {p0, v2, v3, v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->c(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;JLjava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    throw v1
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_24

    .line 37
    :catchall_24
    move-exception p0

    .line 38
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->a()V

    .line 39
    .line 40
    .line 41
    throw p0
.end method


# virtual methods
.method public final a()V
    .registers 4

    .line 1
    const-string v0, "Calling this from your main thread can lead to deadlock"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/d0;->g(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    monitor-enter p0

    .line 7
    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->f:Landroid/content/Context;

    .line 8
    .line 9
    if-eqz v0, :cond_33

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->a:Lv3/a;
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_31

    .line 12
    .line 13
    if-nez v0, :cond_f

    .line 14
    .line 15
    goto :goto_33

    .line 16
    :cond_f
    :try_start_f
    iget-boolean v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->c:Z

    .line 17
    .line 18
    if-eqz v0, :cond_27

    .line 19
    .line 20
    invoke-static {}, La4/b;->b()La4/b;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->f:Landroid/content/Context;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->a:Lv3/a;

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, La4/b;->c(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_1f

    .line 29
    .line 30
    .line 31
    goto :goto_27

    .line 32
    :catchall_1f
    move-exception v0

    .line 33
    :try_start_20
    const-string v1, "AdvertisingIdClient"

    .line 34
    .line 35
    const-string v2, "AdvertisingIdClient unbindService failed."

    .line 36
    .line 37
    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    .line 39
    .line 40
    :cond_27
    :goto_27
    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->c:Z

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->b:Lg4/d;

    .line 45
    .line 46
    iput-object v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->a:Lv3/a;

    .line 47
    .line 48
    monitor-exit p0

    .line 49
    return-void

    .line 50
    :catchall_31
    move-exception v0

    .line 51
    goto :goto_35

    .line 52
    :cond_33
    :goto_33
    monitor-exit p0

    .line 53
    return-void

    .line 54
    :goto_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_20 .. :try_end_36} :catchall_31

    .line 55
    throw v0
.end method

.method public final b()V
    .registers 6

    .line 1
    const-string v0, "Calling this from your main thread can lead to deadlock"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/d0;->g(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    monitor-enter p0

    .line 7
    :try_start_6
    iget-boolean v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->c:Z

    .line 8
    .line 9
    if-eqz v0, :cond_11

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->a()V

    .line 12
    .line 13
    .line 14
    goto :goto_11

    .line 15
    :catchall_e
    move-exception v0

    .line 16
    goto/16 :goto_96

    .line 17
    .line 18
    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->f:Landroid/content/Context;
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_e

    .line 19
    .line 20
    :try_start_13
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "com.android.vending"

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_1d} :catch_90
    .catchall {:try_start_13 .. :try_end_1d} :catchall_e

    .line 28
    .line 29
    .line 30
    :try_start_1d
    sget-object v1, Lv3/e;->b:Lv3/e;

    .line 31
    .line 32
    const v2, 0xbdfcb8

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v0, v2}, Lv3/e;->b(Landroid/content/Context;I)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_34

    .line 40
    .line 41
    const/4 v2, 0x2

    .line 42
    if-ne v1, v2, :cond_2c

    .line 43
    .line 44
    goto :goto_34

    .line 45
    :cond_2c
    new-instance v0, Ljava/io/IOException;

    .line 46
    .line 47
    const-string v1, "Google Play services not available"

    .line 48
    .line 49
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v0

    .line 53
    :cond_34
    :goto_34
    new-instance v1, Lv3/a;

    .line 54
    .line 55
    invoke-direct {v1}, Lv3/a;-><init>()V

    .line 56
    .line 57
    .line 58
    new-instance v2, Landroid/content/Intent;

    .line 59
    .line 60
    const-string v3, "com.google.android.gms.ads.identifier.service.START"

    .line 61
    .line 62
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const-string v3, "com.google.android.gms"

    .line 66
    .line 67
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_45
    .catchall {:try_start_1d .. :try_end_45} :catchall_e

    .line 68
    .line 69
    .line 70
    :try_start_45
    invoke-static {}, La4/b;->b()La4/b;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    const/4 v4, 0x1

    .line 75
    invoke-virtual {v3, v0, v2, v1, v4}, La4/b;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 76
    .line 77
    .line 78
    move-result v0
    :try_end_4e
    .catchall {:try_start_45 .. :try_end_4e} :catchall_89

    .line 79
    if-eqz v0, :cond_81

    .line 80
    .line 81
    :try_start_50
    iput-object v1, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->a:Lv3/a;
    :try_end_52
    .catchall {:try_start_50 .. :try_end_52} :catchall_e

    .line 82
    .line 83
    :try_start_52
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 84
    .line 85
    invoke-virtual {v1}, Lv3/a;->a()Landroid/os/IBinder;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    sget v1, Lg4/c;->b:I

    .line 90
    .line 91
    const-string v1, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    .line 92
    .line 93
    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    instance-of v2, v1, Lg4/d;

    .line 98
    .line 99
    if-eqz v2, :cond_67

    .line 100
    .line 101
    check-cast v1, Lg4/d;

    .line 102
    .line 103
    goto :goto_6c

    .line 104
    :cond_67
    new-instance v1, Lg4/b;

    .line 105
    .line 106
    invoke-direct {v1, v0}, Lg4/b;-><init>(Landroid/os/IBinder;)V
    :try_end_6c
    .catch Ljava/lang/InterruptedException; {:try_start_52 .. :try_end_6c} :catch_79
    .catchall {:try_start_52 .. :try_end_6c} :catchall_72

    .line 107
    .line 108
    .line 109
    :goto_6c
    :try_start_6c
    iput-object v1, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->b:Lg4/d;

    .line 110
    .line 111
    iput-boolean v4, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->c:Z

    .line 112
    .line 113
    monitor-exit p0

    .line 114
    return-void

    .line 115
    :catchall_72
    move-exception v0

    .line 116
    new-instance v1, Ljava/io/IOException;

    .line 117
    .line 118
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 119
    .line 120
    .line 121
    throw v1

    .line 122
    :catch_79
    new-instance v0, Ljava/io/IOException;

    .line 123
    .line 124
    const-string v1, "Interrupted exception"

    .line 125
    .line 126
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw v0

    .line 130
    :cond_81
    new-instance v0, Ljava/io/IOException;

    .line 131
    .line 132
    const-string v1, "Connection failure"

    .line 133
    .line 134
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw v0

    .line 138
    :catchall_89
    move-exception v0

    .line 139
    new-instance v1, Ljava/io/IOException;

    .line 140
    .line 141
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 142
    .line 143
    .line 144
    throw v1

    .line 145
    :catch_90
    new-instance v0, Lcom/google/firebase/messaging/x;

    .line 146
    .line 147
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 148
    .line 149
    .line 150
    throw v0

    .line 151
    :goto_96
    monitor-exit p0
    :try_end_97
    .catchall {:try_start_6c .. :try_end_97} :catchall_e

    .line 152
    throw v0
.end method

.method public final d()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .registers 7

    .line 1
    const-string v0, "Calling this from your main thread can lead to deadlock"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/d0;->g(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    monitor-enter p0

    .line 7
    :try_start_6
    iget-boolean v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->c:Z

    .line 8
    .line 9
    if-nez v0, :cond_3e

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->d:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_26

    .line 14
    :try_start_d
    iget-object v1, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->e:Lr3/a;

    .line 15
    .line 16
    if-eqz v1, :cond_34

    .line 17
    .line 18
    iget-boolean v1, v1, Lr3/a;->d:Z

    .line 19
    .line 20
    if-eqz v1, :cond_34

    .line 21
    .line 22
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_32

    .line 23
    :try_start_16
    invoke-virtual {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->b()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_29
    .catchall {:try_start_16 .. :try_end_19} :catchall_26

    .line 24
    .line 25
    .line 26
    :try_start_19
    iget-boolean v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->c:Z

    .line 27
    .line 28
    if-eqz v0, :cond_1e

    .line 29
    .line 30
    goto :goto_3e

    .line 31
    :cond_1e
    new-instance v0, Ljava/io/IOException;

    .line 32
    .line 33
    const-string v1, "AdvertisingIdClient cannot reconnect."

    .line 34
    .line 35
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v0

    .line 39
    :catchall_26
    move-exception v0

    .line 40
    goto/16 :goto_a3

    .line 41
    .line 42
    :catch_29
    move-exception v0

    .line 43
    new-instance v1, Ljava/io/IOException;

    .line 44
    .line 45
    const-string v2, "AdvertisingIdClient cannot reconnect."

    .line 46
    .line 47
    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    throw v1
    :try_end_32
    .catchall {:try_start_19 .. :try_end_32} :catchall_26

    .line 51
    :catchall_32
    move-exception v1

    .line 52
    goto :goto_3c

    .line 53
    :cond_34
    :try_start_34
    new-instance v1, Ljava/io/IOException;

    .line 54
    .line 55
    const-string v2, "AdvertisingIdClient is not connected."

    .line 56
    .line 57
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v1

    .line 61
    :goto_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_34 .. :try_end_3d} :catchall_32

    .line 62
    :try_start_3d
    throw v1

    .line 63
    :cond_3e
    :goto_3e
    iget-object v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->a:Lv3/a;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->b:Lg4/d;

    .line 69
    .line 70
    invoke-static {v0}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V
    :try_end_48
    .catchall {:try_start_3d .. :try_end_48} :catchall_26

    .line 71
    .line 72
    .line 73
    :try_start_48
    new-instance v0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    .line 74
    .line 75
    iget-object v1, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->b:Lg4/d;

    .line 76
    .line 77
    check-cast v1, Lg4/b;

    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    const-string v3, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    .line 87
    .line 88
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const/4 v3, 0x1

    .line 92
    invoke-virtual {v1, v3, v2}, Lg4/b;->b(ILandroid/os/Parcel;)Landroid/os/Parcel;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 101
    .line 102
    .line 103
    iget-object v1, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->b:Lg4/d;

    .line 104
    .line 105
    check-cast v1, Lg4/b;

    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    const-string v5, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    .line 115
    .line 116
    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    sget v5, Lg4/a;->a:I

    .line 120
    .line 121
    invoke-virtual {v4, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    .line 123
    .line 124
    const/4 v5, 0x2

    .line 125
    invoke-virtual {v1, v5, v4}, Lg4/b;->b(ILandroid/os/Parcel;)Landroid/os/Parcel;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    if-eqz v4, :cond_87

    .line 134
    .line 135
    goto :goto_88

    .line 136
    :cond_87
    const/4 v3, 0x0

    .line 137
    :goto_88
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 138
    .line 139
    .line 140
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;-><init>(Ljava/lang/String;Z)V
    :try_end_8e
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_8e} :catch_93
    .catchall {:try_start_48 .. :try_end_8e} :catchall_26

    .line 141
    .line 142
    .line 143
    :try_start_8e
    monitor-exit p0
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_26

    .line 144
    invoke-virtual {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->e()V

    .line 145
    .line 146
    .line 147
    return-object v0

    .line 148
    :catch_93
    move-exception v0

    .line 149
    :try_start_94
    const-string v1, "AdvertisingIdClient"

    .line 150
    .line 151
    const-string v2, "GMS remote exception "

    .line 152
    .line 153
    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    .line 155
    .line 156
    new-instance v0, Ljava/io/IOException;

    .line 157
    .line 158
    const-string v1, "Remote exception"

    .line 159
    .line 160
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    throw v0

    .line 164
    :goto_a3
    monitor-exit p0
    :try_end_a4
    .catchall {:try_start_94 .. :try_end_a4} :catchall_26

    .line 165
    throw v0
.end method

.method public final e()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->e:Lr3/a;

    .line 5
    .line 6
    if-eqz v1, :cond_14

    .line 7
    .line 8
    iget-object v1, v1, Lr3/a;->c:Ljava/util/concurrent/CountDownLatch;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_12

    .line 11
    .line 12
    .line 13
    :try_start_c
    iget-object v1, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->e:Lr3/a;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_11} :catch_14
    .catchall {:try_start_c .. :try_end_11} :catchall_12

    .line 16
    .line 17
    .line 18
    goto :goto_14

    .line 19
    :catchall_12
    move-exception v1

    .line 20
    goto :goto_25

    .line 21
    :catch_14
    :cond_14
    :goto_14
    :try_start_14
    iget-wide v1, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->g:J

    .line 22
    .line 23
    const-wide/16 v3, 0x0

    .line 24
    .line 25
    cmp-long v3, v1, v3

    .line 26
    .line 27
    if-lez v3, :cond_23

    .line 28
    .line 29
    new-instance v3, Lr3/a;

    .line 30
    .line 31
    invoke-direct {v3, p0, v1, v2}, Lr3/a;-><init>(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;J)V

    .line 32
    .line 33
    .line 34
    iput-object v3, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->e:Lr3/a;

    .line 35
    .line 36
    :cond_23
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_14 .. :try_end_26} :catchall_12

    .line 39
    throw v1
.end method

.method public final finalize()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->a()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

###### Class com.google.android.gms.ads.identifier.AdvertisingIdClient.Info (com.google.android.gms.ads.identifier.AdvertisingIdClient$Info)
.class public final Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Info"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->b:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isLimitAdTrackingEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    add-int/lit8 v1, v1, 0x7

    .line 14
    .line 15
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 16
    .line 17
    .line 18
    const-string v1, "{"

    .line 19
    .line 20
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v0, "}"

    .line 27
    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-boolean v0, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->b:Z

    .line 32
    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    return-object v0
.end method
