###### Class x1.j0 (x1.j0)
.class public final Lx1/j0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Lx1/j0;

.field public static final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final d:Lx1/i0;

.field public static final e:Lx1/i0;

.field public static final f:Lx1/i0;

.field public static final g:Lx1/i0;

.field public static final h:Lx1/i0;

.field public static i:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lx1/j0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lx1/j0;->a:Lx1/j0;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lx1/j0;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lx1/j0;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    new-instance v0, Lx1/i0;

    .line 24
    .line 25
    const-string v2, "com.facebook.sdk.AutoInitEnabled"

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    invoke-direct {v0, v2, v3}, Lx1/i0;-><init>(Ljava/lang/String;Z)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lx1/j0;->d:Lx1/i0;

    .line 32
    .line 33
    new-instance v0, Lx1/i0;

    .line 34
    .line 35
    const-string v2, "com.facebook.sdk.AutoLogAppEventsEnabled"

    .line 36
    .line 37
    invoke-direct {v0, v2, v3}, Lx1/i0;-><init>(Ljava/lang/String;Z)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lx1/j0;->e:Lx1/i0;

    .line 41
    .line 42
    new-instance v0, Lx1/i0;

    .line 43
    .line 44
    const-string v2, "com.facebook.sdk.AdvertiserIDCollectionEnabled"

    .line 45
    .line 46
    invoke-direct {v0, v2, v3}, Lx1/i0;-><init>(Ljava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lx1/j0;->f:Lx1/i0;

    .line 50
    .line 51
    new-instance v0, Lx1/i0;

    .line 52
    .line 53
    const-string v2, "auto_event_setup_enabled"

    .line 54
    .line 55
    invoke-direct {v0, v2, v1}, Lx1/i0;-><init>(Ljava/lang/String;Z)V

    .line 56
    .line 57
    .line 58
    sput-object v0, Lx1/j0;->g:Lx1/i0;

    .line 59
    .line 60
    new-instance v0, Lx1/i0;

    .line 61
    .line 62
    const-string v1, "com.facebook.sdk.MonitorEnabled"

    .line 63
    .line 64
    invoke-direct {v0, v1, v3}, Lx1/i0;-><init>(Ljava/lang/String;Z)V

    .line 65
    .line 66
    .line 67
    sput-object v0, Lx1/j0;->h:Lx1/i0;

    .line 68
    .line 69
    return-void
.end method

.method public static final b()Z
    .registers 3

    .line 1
    const-class v0, Lx1/j0;

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
    return v2

    .line 11
    :cond_a
    :try_start_a
    sget-object v1, Lx1/j0;->a:Lx1/j0;

    .line 12
    .line 13
    invoke-virtual {v1}, Lx1/j0;->e()V

    .line 14
    .line 15
    .line 16
    sget-object v1, Lx1/j0;->f:Lx1/i0;

    .line 17
    .line 18
    invoke-virtual {v1}, Lx1/i0;->a()Z

    .line 19
    .line 20
    .line 21
    move-result v0
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_16

    .line 22
    return v0

    .line 23
    :catchall_16
    move-exception v1

    .line 24
    invoke-static {v1, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return v2
.end method

.method public static final c()Z
    .registers 3

    .line 1
    const-class v0, Lx1/j0;

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
    return v2

    .line 11
    :cond_a
    :try_start_a
    sget-object v1, Lx1/j0;->a:Lx1/j0;

    .line 12
    .line 13
    invoke-virtual {v1}, Lx1/j0;->e()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lx1/j0;->a()Z

    .line 17
    .line 18
    .line 19
    move-result v0
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_14

    .line 20
    return v0

    .line 21
    :catchall_14
    move-exception v1

    .line 22
    invoke-static {v1, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return v2
.end method

.method public static final j()Ljava/lang/Boolean;
    .registers 5

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const-class v1, Lx1/j0;

    .line 4
    .line 5
    invoke-static {v1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v2, :cond_c

    .line 11
    .line 12
    return-object v3

    .line 13
    :cond_c
    :try_start_c
    sget-object v2, Lx1/j0;->a:Lx1/j0;

    .line 14
    .line 15
    invoke-virtual {v2}, Lx1/j0;->l()V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_37

    .line 16
    .line 17
    .line 18
    :try_start_11
    sget-object v2, Lx1/j0;->i:Landroid/content/SharedPreferences;

    .line 19
    .line 20
    if-eqz v2, :cond_39

    .line 21
    .line 22
    sget-object v4, Lx1/j0;->e:Lx1/i0;

    .line 23
    .line 24
    iget-object v4, v4, Lx1/i0;->b:Ljava/lang/String;

    .line 25
    .line 26
    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-nez v2, :cond_20

    .line 31
    .line 32
    goto :goto_21

    .line 33
    :cond_20
    move-object v0, v2

    .line 34
    :goto_21
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-lez v2, :cond_41

    .line 39
    .line 40
    new-instance v2, Lorg/json/JSONObject;

    .line 41
    .line 42
    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string v0, "value"

    .line 46
    .line 47
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    return-object v0

    .line 56
    :catchall_37
    move-exception v0

    .line 57
    goto :goto_42

    .line 58
    :cond_39
    const-string v0, "userSettingPref"

    .line 59
    .line 60
    invoke-static {v0}, Ld7/g;->i(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v3
    :try_end_3f
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_3f} :catch_3f
    .catchall {:try_start_11 .. :try_end_3f} :catchall_37

    .line 64
    :catch_3f
    :try_start_3f
    sget-object v0, Lx1/r;->a:Lx1/r;
    :try_end_41
    .catchall {:try_start_3f .. :try_end_41} :catchall_37

    .line 65
    .line 66
    :cond_41
    return-object v3

    .line 67
    :goto_42
    invoke-static {v0, v1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    return-object v3
.end method


# virtual methods
.method public final a()Z
    .registers 5

    .line 1
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 7
    .line 8
    return v1

    .line 9
    :cond_8
    :try_start_8
    invoke-static {}, Lq2/w;->c()Ljava/util/HashMap;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_59

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_15

    .line 20
    .line 21
    goto :goto_59

    .line 22
    :cond_15
    const-string v2, "auto_log_app_events_enabled"

    .line 23
    .line 24
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/lang/Boolean;

    .line 29
    .line 30
    const-string v3, "auto_log_app_events_default"

    .line 31
    .line 32
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Ljava/lang/Boolean;

    .line 37
    .line 38
    if-eqz v2, :cond_2e

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    return v0

    .line 45
    :catchall_2c
    move-exception v0

    .line 46
    goto :goto_60

    .line 47
    :cond_2e
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v2
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_2c

    .line 51
    const/4 v3, 0x0

    .line 52
    if-eqz v2, :cond_36

    .line 53
    .line 54
    goto :goto_49

    .line 55
    :cond_36
    :try_start_36
    invoke-static {}, Lx1/j0;->j()Ljava/lang/Boolean;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    if-eqz v2, :cond_3e

    .line 60
    .line 61
    :goto_3c
    move-object v3, v2

    .line 62
    goto :goto_49

    .line 63
    :cond_3e
    invoke-virtual {p0}, Lx1/j0;->f()Ljava/lang/Boolean;

    .line 64
    .line 65
    .line 66
    move-result-object v2
    :try_end_42
    .catchall {:try_start_36 .. :try_end_42} :catchall_45

    .line 67
    if-eqz v2, :cond_49

    .line 68
    .line 69
    goto :goto_3c

    .line 70
    :catchall_45
    move-exception v2

    .line 71
    :try_start_46
    invoke-static {v2, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :cond_49
    :goto_49
    if-eqz v3, :cond_50

    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    return v0

    .line 81
    :cond_50
    if-eqz v0, :cond_57

    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    return v0

    .line 88
    :cond_57
    const/4 v0, 0x1

    .line 89
    return v0

    .line 90
    :cond_59
    :goto_59
    sget-object v0, Lx1/j0;->e:Lx1/i0;

    .line 91
    .line 92
    invoke-virtual {v0}, Lx1/i0;->a()Z

    .line 93
    .line 94
    .line 95
    move-result v0
    :try_end_5f
    .catchall {:try_start_46 .. :try_end_5f} :catchall_2c

    .line 96
    return v0

    .line 97
    :goto_60
    invoke-static {v0, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    return v1
.end method

.method public final d()V
    .registers 8

    .line 1
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    goto :goto_33

    .line 8
    :cond_7
    :try_start_7
    sget-object v0, Lx1/j0;->g:Lx1/i0;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lx1/j0;->k(Lx1/i0;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    iget-object v3, v0, Lx1/i0;->c:Ljava/lang/Boolean;

    .line 18
    .line 19
    if-eqz v3, :cond_22

    .line 20
    .line 21
    iget-wide v3, v0, Lx1/i0;->d:J

    .line 22
    .line 23
    sub-long v3, v1, v3

    .line 24
    .line 25
    const-wide/32 v5, 0x240c8400

    .line 26
    .line 27
    .line 28
    cmp-long v3, v3, v5

    .line 29
    .line 30
    if-gez v3, :cond_22

    .line 31
    .line 32
    goto :goto_33

    .line 33
    :catchall_20
    move-exception v0

    .line 34
    goto :goto_41

    .line 35
    :cond_22
    const/4 v3, 0x0

    .line 36
    iput-object v3, v0, Lx1/i0;->c:Ljava/lang/Boolean;

    .line 37
    .line 38
    const-wide/16 v3, 0x0

    .line 39
    .line 40
    iput-wide v3, v0, Lx1/i0;->d:J

    .line 41
    .line 42
    sget-object v0, Lx1/j0;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    const/4 v4, 0x1

    .line 46
    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_34

    .line 51
    .line 52
    :goto_33
    return-void

    .line 53
    :cond_34
    invoke-static {}, Lx1/r;->c()Ljava/util/concurrent/Executor;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    new-instance v3, Lx1/h0;

    .line 58
    .line 59
    invoke-direct {v3, v1, v2}, Lx1/h0;-><init>(J)V

    .line 60
    .line 61
    .line 62
    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_40
    .catchall {:try_start_7 .. :try_end_40} :catchall_20

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :goto_41
    invoke-static {v0, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final e()V
    .registers 6

    .line 1
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8

    .line 6
    .line 7
    goto/16 :goto_73

    .line 8
    .line 9
    :cond_8
    :try_start_8
    sget-object v0, Lx1/r;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_11

    .line 16
    .line 17
    goto :goto_73

    .line 18
    :cond_11
    sget-object v0, Lx1/j0;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1c

    .line 27
    .line 28
    goto :goto_73

    .line 29
    :cond_1c
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v3, "com.facebook.sdk.USER_SETTINGS"

    .line 34
    .line 35
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v3, "getApplicationContext()\n\u2026GS, Context.MODE_PRIVATE)"

    .line 40
    .line 41
    invoke-static {v3, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    sput-object v0, Lx1/j0;->i:Landroid/content/SharedPreferences;

    .line 45
    .line 46
    const/4 v0, 0x3

    .line 47
    new-array v3, v0, [Lx1/i0;

    .line 48
    .line 49
    sget-object v4, Lx1/j0;->e:Lx1/i0;

    .line 50
    .line 51
    aput-object v4, v3, v2

    .line 52
    .line 53
    sget-object v4, Lx1/j0;->f:Lx1/i0;

    .line 54
    .line 55
    aput-object v4, v3, v1

    .line 56
    .line 57
    sget-object v1, Lx1/j0;->d:Lx1/i0;

    .line 58
    .line 59
    const/4 v4, 0x2

    .line 60
    aput-object v1, v3, v4

    .line 61
    .line 62
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v1
    :try_end_41
    .catchall {:try_start_8 .. :try_end_41} :catchall_74

    .line 66
    if-eqz v1, :cond_44

    .line 67
    .line 68
    goto :goto_6a

    .line 69
    :cond_44
    :goto_44
    if-ge v2, v0, :cond_6a

    .line 70
    .line 71
    :try_start_46
    aget-object v1, v3, v2

    .line 72
    .line 73
    sget-object v4, Lx1/j0;->g:Lx1/i0;

    .line 74
    .line 75
    if-ne v1, v4, :cond_52

    .line 76
    .line 77
    invoke-virtual {p0}, Lx1/j0;->d()V

    .line 78
    .line 79
    .line 80
    goto :goto_64

    .line 81
    :catchall_50
    move-exception v0

    .line 82
    goto :goto_67

    .line 83
    :cond_52
    iget-object v4, v1, Lx1/i0;->c:Ljava/lang/Boolean;

    .line 84
    .line 85
    if-nez v4, :cond_61

    .line 86
    .line 87
    invoke-virtual {p0, v1}, Lx1/j0;->k(Lx1/i0;)V

    .line 88
    .line 89
    .line 90
    iget-object v4, v1, Lx1/i0;->c:Ljava/lang/Boolean;

    .line 91
    .line 92
    if-nez v4, :cond_64

    .line 93
    .line 94
    invoke-virtual {p0, v1}, Lx1/j0;->g(Lx1/i0;)V

    .line 95
    .line 96
    .line 97
    goto :goto_64

    .line 98
    :cond_61
    invoke-virtual {p0, v1}, Lx1/j0;->m(Lx1/i0;)V
    :try_end_64
    .catchall {:try_start_46 .. :try_end_64} :catchall_50

    .line 99
    .line 100
    .line 101
    :cond_64
    :goto_64
    add-int/lit8 v2, v2, 0x1

    .line 102
    .line 103
    goto :goto_44

    .line 104
    :goto_67
    :try_start_67
    invoke-static {v0, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    :cond_6a
    :goto_6a
    invoke-virtual {p0}, Lx1/j0;->d()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lx1/j0;->i()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lx1/j0;->h()V
    :try_end_73
    .catchall {:try_start_67 .. :try_end_73} :catchall_74

    .line 114
    .line 115
    .line 116
    :goto_73
    return-void

    .line 117
    :catchall_74
    move-exception v0

    .line 118
    invoke-static {v0, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method public final f()Ljava/lang/Boolean;
    .registers 6

    .line 1
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Lx1/j0;->l()V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_3d

    .line 10
    .line 11
    .line 12
    :try_start_b
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/16 v3, 0x80

    .line 25
    .line 26
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v2, "ctx.packageManager.getAp\u2026ageManager.GET_META_DATA)"

    .line 31
    .line 32
    invoke-static {v2, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 36
    .line 37
    if-eqz v2, :cond_41

    .line 38
    .line 39
    sget-object v3, Lx1/j0;->e:Lx1/i0;

    .line 40
    .line 41
    iget-object v4, v3, Lx1/i0;->b:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_41

    .line 48
    .line 49
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 50
    .line 51
    iget-object v2, v3, Lx1/i0;->b:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 58
    .line 59
    .line 60
    move-result-object v0
    :try_end_3c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_3c} :catch_3f
    .catchall {:try_start_b .. :try_end_3c} :catchall_3d

    .line 61
    return-object v0

    .line 62
    :catchall_3d
    move-exception v0

    .line 63
    goto :goto_42

    .line 64
    :catch_3f
    :try_start_3f
    sget-object v0, Lx1/r;->a:Lx1/r;
    :try_end_41
    .catchall {:try_start_3f .. :try_end_41} :catchall_3d

    .line 65
    .line 66
    :cond_41
    return-object v1

    .line 67
    :goto_42
    invoke-static {v0, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    return-object v1
.end method

.method public final g(Lx1/i0;)V
    .registers 6

    .line 1
    iget-object v0, p1, Lx1/i0;->b:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_9

    .line 8
    .line 9
    goto :goto_40

    .line 10
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lx1/j0;->l()V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_3c

    .line 11
    .line 12
    .line 13
    :try_start_c
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/16 v3, 0x80

    .line 26
    .line 27
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "ctx.packageManager.getAp\u2026ageManager.GET_META_DATA)"

    .line 32
    .line 33
    invoke-static {v2, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 37
    .line 38
    if-eqz v2, :cond_40

    .line 39
    .line 40
    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_40

    .line 45
    .line 46
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 47
    .line 48
    iget-boolean v2, p1, Lx1/i0;->a:Z

    .line 49
    .line 50
    invoke-virtual {v1, v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iput-object v0, p1, Lx1/i0;->c:Ljava/lang/Boolean;
    :try_end_3b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_3b} :catch_3e
    .catchall {:try_start_c .. :try_end_3b} :catchall_3c

    .line 59
    .line 60
    return-void

    .line 61
    :catchall_3c
    move-exception p1

    .line 62
    goto :goto_41

    .line 63
    :catch_3e
    :try_start_3e
    sget-object p1, Lx1/r;->a:Lx1/r;
    :try_end_40
    .catchall {:try_start_3e .. :try_end_40} :catchall_3c

    .line 64
    .line 65
    :cond_40
    :goto_40
    return-void

    .line 66
    :goto_41
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final h()V
    .registers 17

    .line 1
    const-string v0, "previous"

    .line 2
    .line 3
    const-string v1, "com.facebook.sdk.USER_SETTINGS_BITMASK"

    .line 4
    .line 5
    invoke-static/range {p0 .. p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_c

    .line 10
    .line 11
    goto/16 :goto_eb

    .line 12
    .line 13
    :cond_c
    :try_start_c
    sget-object v2, Lx1/j0;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_16

    .line 20
    .line 21
    goto/16 :goto_eb

    .line 22
    .line 23
    :cond_16
    sget-object v2, Lx1/r;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_20

    .line 30
    .line 31
    goto/16 :goto_eb

    .line 32
    .line 33
    :cond_20
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    sget-object v3, Lx1/j0;->d:Lx1/i0;

    .line 38
    .line 39
    invoke-virtual {v3}, Lx1/i0;->a()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    sget-object v4, Lx1/j0;->e:Lx1/i0;

    .line 44
    .line 45
    invoke-virtual {v4}, Lx1/i0;->a()Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    const/4 v5, 0x1

    .line 50
    shl-int/2addr v4, v5

    .line 51
    or-int/2addr v3, v4

    .line 52
    sget-object v4, Lx1/j0;->f:Lx1/i0;

    .line 53
    .line 54
    invoke-virtual {v4}, Lx1/i0;->a()Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    shl-int/lit8 v4, v4, 0x2

    .line 59
    .line 60
    or-int/2addr v3, v4

    .line 61
    sget-object v4, Lx1/j0;->h:Lx1/i0;

    .line 62
    .line 63
    invoke-virtual {v4}, Lx1/i0;->a()Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    shl-int/lit8 v4, v4, 0x3

    .line 68
    .line 69
    or-int/2addr v3, v4

    .line 70
    sget-object v4, Lx1/j0;->i:Landroid/content/SharedPreferences;
    :try_end_47
    .catchall {:try_start_c .. :try_end_47} :catchall_aa

    .line 71
    .line 72
    const-string v6, "userSettingPref"

    .line 73
    .line 74
    const/4 v7, 0x0

    .line 75
    if-eqz v4, :cond_ec

    .line 76
    .line 77
    const/4 v8, 0x0

    .line 78
    :try_start_4d
    invoke-interface {v4, v1, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-eq v4, v3, :cond_eb

    .line 83
    .line 84
    sget-object v9, Lx1/j0;->i:Landroid/content/SharedPreferences;

    .line 85
    .line 86
    if-eqz v9, :cond_e7

    .line 87
    .line 88
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    invoke-interface {v6, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_62
    .catchall {:try_start_4d .. :try_end_62} :catchall_aa

    .line 97
    .line 98
    .line 99
    :try_start_62
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    const/16 v9, 0x80

    .line 108
    .line 109
    invoke-virtual {v1, v6, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    const-string v6, "ctx.packageManager.getAp\u2026ageManager.GET_META_DATA)"

    .line 114
    .line 115
    invoke-static {v6, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 119
    .line 120
    if-eqz v6, :cond_ae

    .line 121
    .line 122
    const-string v6, "com.facebook.sdk.AutoInitEnabled"

    .line 123
    .line 124
    const-string v9, "com.facebook.sdk.AutoLogAppEventsEnabled"

    .line 125
    .line 126
    const-string v10, "com.facebook.sdk.AdvertiserIDCollectionEnabled"

    .line 127
    .line 128
    const-string v11, "com.facebook.sdk.MonitorEnabled"

    .line 129
    .line 130
    filled-new-array {v6, v9, v10, v11}, [Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    const/4 v9, 0x4

    .line 135
    new-array v10, v9, [Z

    .line 136
    .line 137
    fill-array-data v10, :array_f4
    :try_end_8b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_62 .. :try_end_8b} :catch_ae
    .catchall {:try_start_62 .. :try_end_8b} :catchall_aa

    .line 138
    .line 139
    .line 140
    move v11, v8

    .line 141
    move v12, v11

    .line 142
    move v13, v12

    .line 143
    :goto_8e
    if-ge v11, v9, :cond_b0

    .line 144
    .line 145
    :try_start_90
    iget-object v14, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 146
    .line 147
    aget-object v15, v6, v11

    .line 148
    .line 149
    invoke-virtual {v14, v15}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 150
    .line 151
    .line 152
    move-result v14

    .line 153
    shl-int/2addr v14, v11

    .line 154
    or-int/2addr v13, v14

    .line 155
    iget-object v14, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 156
    .line 157
    aget-object v15, v6, v11

    .line 158
    .line 159
    aget-boolean v5, v10, v11

    .line 160
    .line 161
    invoke-virtual {v14, v15, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 162
    .line 163
    .line 164
    move-result v5
    :try_end_a4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_90 .. :try_end_a4} :catch_b0
    .catchall {:try_start_90 .. :try_end_a4} :catchall_aa

    .line 165
    shl-int/2addr v5, v11

    .line 166
    or-int/2addr v12, v5

    .line 167
    add-int/lit8 v11, v11, 0x1

    .line 168
    .line 169
    const/4 v5, 0x1

    .line 170
    goto :goto_8e

    .line 171
    :catchall_aa
    move-exception v0

    .line 172
    move-object/from16 v1, p0

    .line 173
    .line 174
    goto :goto_f0

    .line 175
    :catch_ae
    :cond_ae
    move v12, v8

    .line 176
    move v13, v12

    .line 177
    :catch_b0
    :cond_b0
    :try_start_b0
    new-instance v1, Ly1/k;

    .line 178
    .line 179
    invoke-direct {v1, v2, v7}, Ly1/k;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    new-instance v2, Landroid/os/Bundle;

    .line 183
    .line 184
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 185
    .line 186
    .line 187
    const-string v5, "usage"

    .line 188
    .line 189
    invoke-virtual {v2, v5, v13}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 190
    .line 191
    .line 192
    const-string v5, "initial"

    .line 193
    .line 194
    invoke-virtual {v2, v5, v12}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v2, v0, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 198
    .line 199
    .line 200
    const-string v4, "current"

    .line 201
    .line 202
    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    and-int/lit8 v0, v0, 0x2

    .line 210
    .line 211
    if-eqz v0, :cond_d6

    .line 212
    .line 213
    const/4 v5, 0x1

    .line 214
    goto :goto_d7

    .line 215
    :cond_d6
    move v5, v8

    .line 216
    :goto_d7
    const-string v0, "fb_sdk_settings_changed"

    .line 217
    .line 218
    if-nez v5, :cond_e3

    .line 219
    .line 220
    sget-object v3, Lx1/r;->a:Lx1/r;

    .line 221
    .line 222
    invoke-static {}, Lx1/j0;->c()Z

    .line 223
    .line 224
    .line 225
    move-result v3

    .line 226
    if-eqz v3, :cond_eb

    .line 227
    .line 228
    :cond_e3
    invoke-virtual {v1, v2, v0}, Ly1/k;->g(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    goto :goto_eb

    .line 232
    :cond_e7
    invoke-static {v6}, Ld7/g;->i(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    throw v7

    .line 236
    :cond_eb
    :goto_eb
    return-void

    .line 237
    :cond_ec
    invoke-static {v6}, Ld7/g;->i(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    throw v7
    :try_end_f0
    .catchall {:try_start_b0 .. :try_end_f0} :catchall_aa

    .line 241
    :goto_f0
    invoke-static {v0, v1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    return-void

    .line 245
    :array_f4
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method public final i()V
    .registers 4

    .line 1
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    goto :goto_43

    .line 8
    :cond_7
    :try_start_7
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/16 v2, 0x80

    .line 21
    .line 22
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "ctx.packageManager.getAp\u2026ageManager.GET_META_DATA)"

    .line 27
    .line 28
    invoke-static {v1, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 32
    .line 33
    if-eqz v0, :cond_43

    .line 34
    .line 35
    const-string v1, "com.facebook.sdk.AdvertiserIDCollectionEnabled"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v0
    :try_end_28
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_28} :catch_43
    .catchall {:try_start_7 .. :try_end_28} :catchall_32

    .line 41
    const-string v1, "x1.j0"

    .line 42
    .line 43
    if-nez v0, :cond_34

    .line 44
    .line 45
    :try_start_2c
    const-string v0, "You haven\'t set a value for AdvertiserIDCollectionEnabled. Set the flag to TRUE if you want to collect Advertiser ID for better advertising and analytics results. To request user consent before collecting data, set the flag value to FALSE, then change to TRUE once user consent is received. Learn more: https://developers.facebook.com/docs/app-events/getting-started-app-events-android#disable-auto-events."

    .line 46
    .line 47
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    goto :goto_34

    .line 51
    :catchall_32
    move-exception v0

    .line 52
    goto :goto_40

    .line 53
    :cond_34
    :goto_34
    invoke-static {}, Lx1/j0;->b()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_43

    .line 58
    .line 59
    const-string v0, "The value for AdvertiserIDCollectionEnabled is currently set to FALSE so you\'re sending app events without collecting Advertiser ID. This can affect the quality of your advertising and analytics results."

    .line 60
    .line 61
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2c .. :try_end_3f} :catch_43
    .catchall {:try_start_2c .. :try_end_3f} :catchall_32

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :goto_40
    invoke-static {v0, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    :catch_43
    :cond_43
    :goto_43
    return-void
.end method

.method public final k(Lx1/i0;)V
    .registers 5

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_9

    .line 8
    .line 9
    goto :goto_46

    .line 10
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lx1/j0;->l()V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_3a

    .line 11
    .line 12
    .line 13
    :try_start_c
    sget-object v1, Lx1/j0;->i:Landroid/content/SharedPreferences;

    .line 14
    .line 15
    if-eqz v1, :cond_3d

    .line 16
    .line 17
    iget-object v2, p1, Lx1/i0;->b:Ljava/lang/String;

    .line 18
    .line 19
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-nez v1, :cond_19

    .line 24
    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    move-object v0, v1

    .line 27
    :goto_1a
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-lez v1, :cond_3c

    .line 32
    .line 33
    new-instance v1, Lorg/json/JSONObject;

    .line 34
    .line 35
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v0, "value"

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p1, Lx1/i0;->c:Ljava/lang/Boolean;

    .line 49
    .line 50
    const-string v0, "last_timestamp"

    .line 51
    .line 52
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 53
    .line 54
    .line 55
    move-result-wide v0

    .line 56
    iput-wide v0, p1, Lx1/i0;->d:J

    .line 57
    .line 58
    return-void

    .line 59
    :catchall_3a
    move-exception p1

    .line 60
    goto :goto_47

    .line 61
    :cond_3c
    return-void

    .line 62
    :cond_3d
    const-string p1, "userSettingPref"

    .line 63
    .line 64
    invoke-static {p1}, Ld7/g;->i(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const/4 p1, 0x0

    .line 68
    throw p1
    :try_end_44
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_44} :catch_44
    .catchall {:try_start_c .. :try_end_44} :catchall_3a

    .line 69
    :catch_44
    :try_start_44
    sget-object p1, Lx1/r;->a:Lx1/r;
    :try_end_46
    .catchall {:try_start_44 .. :try_end_46} :catchall_3a

    .line 70
    .line 71
    :goto_46
    return-void

    .line 72
    :goto_47
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public final l()V
    .registers 3

    .line 1
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    goto :goto_f

    .line 8
    :cond_7
    :try_start_7
    sget-object v0, Lx1/j0;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_10

    .line 15
    .line 16
    :goto_f
    return-void

    .line 17
    :cond_10
    new-instance v0, Lx1/s;

    .line 18
    .line 19
    const-string v1, "The UserSettingManager has not been initialized successfully"

    .line 20
    .line 21
    invoke-direct {v0, v1}, Lx1/l;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_18

    .line 25
    :catchall_18
    move-exception v0

    .line 26
    invoke-static {v0, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final m(Lx1/i0;)V
    .registers 6

    .line 1
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    goto :goto_41

    .line 8
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Lx1/j0;->l()V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_36

    .line 9
    .line 10
    .line 11
    :try_start_a
    new-instance v0, Lorg/json/JSONObject;

    .line 12
    .line 13
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "value"

    .line 17
    .line 18
    iget-object v2, p1, Lx1/i0;->c:Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    .line 22
    .line 23
    const-string v1, "last_timestamp"

    .line 24
    .line 25
    iget-wide v2, p1, Lx1/i0;->d:J

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 28
    .line 29
    .line 30
    sget-object v1, Lx1/j0;->i:Landroid/content/SharedPreferences;

    .line 31
    .line 32
    if-eqz v1, :cond_38

    .line 33
    .line 34
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget-object p1, p1, Lx1/i0;->b:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lx1/j0;->h()V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :catchall_36
    move-exception p1

    .line 56
    goto :goto_42

    .line 57
    :cond_38
    const-string p1, "userSettingPref"

    .line 58
    .line 59
    invoke-static {p1}, Ld7/g;->i(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const/4 p1, 0x0

    .line 63
    throw p1
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_3f} :catch_3f
    .catchall {:try_start_a .. :try_end_3f} :catchall_36

    .line 64
    :catch_3f
    :try_start_3f
    sget-object p1, Lx1/r;->a:Lx1/r;
    :try_end_41
    .catchall {:try_start_3f .. :try_end_41} :catchall_36

    .line 65
    .line 66
    :goto_41
    return-void

    .line 67
    :goto_42
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

###### Class x1.h0 (x1.h0)
.class public final synthetic Lx1/h0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:J


# direct methods
.method public synthetic constructor <init>(J)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lx1/h0;->a:J

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 10

    .line 1
    iget-wide v0, p0, Lx1/h0;->a:J

    .line 2
    .line 3
    const-string v2, "auto_event_setup_enabled"

    .line 4
    .line 5
    const-class v3, Lx1/j0;

    .line 6
    .line 7
    invoke-static {v3}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v4

    .line 11
    if-eqz v4, :cond_d

    .line 12
    .line 13
    return-void

    .line 14
    :cond_d
    :try_start_d
    sget-object v4, Lx1/j0;->f:Lx1/i0;

    .line 15
    .line 16
    invoke-virtual {v4}, Lx1/i0;->a()Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    const/4 v5, 0x0

    .line 21
    if-eqz v4, :cond_73

    .line 22
    .line 23
    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-static {v4, v5}, Lq2/w;->k(Ljava/lang/String;Z)Lq2/t;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    if-eqz v4, :cond_73

    .line 32
    .line 33
    iget-boolean v4, v4, Lq2/t;->g:Z

    .line 34
    .line 35
    if-eqz v4, :cond_73

    .line 36
    .line 37
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-static {v4}, Lq2/g;->b(Landroid/content/Context;)Lq2/c;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    const/4 v6, 0x0

    .line 46
    if-eqz v4, :cond_3c

    .line 47
    .line 48
    invoke-virtual {v4}, Lq2/c;->a()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    if-eqz v7, :cond_3c

    .line 53
    .line 54
    invoke-virtual {v4}, Lq2/c;->a()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    goto :goto_3d

    .line 59
    :catchall_3a
    move-exception v0

    .line 60
    goto :goto_79

    .line 61
    :cond_3c
    move-object v4, v6

    .line 62
    :goto_3d
    if-eqz v4, :cond_73

    .line 63
    .line 64
    new-instance v7, Landroid/os/Bundle;

    .line 65
    .line 66
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v8, "advertiser_id"

    .line 70
    .line 71
    invoke-virtual {v7, v8, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const-string v4, "fields"

    .line 75
    .line 76
    invoke-virtual {v7, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    sget-object v4, Lx1/z;->j:Ljava/lang/String;

    .line 80
    .line 81
    const-string v4, "app"

    .line 82
    .line 83
    invoke-static {v6, v4, v6}, Lx1/w;->u(Lx1/a;Ljava/lang/String;Lx1/v;)Lx1/z;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    iput-object v7, v4, Lx1/z;->d:Landroid/os/Bundle;

    .line 88
    .line 89
    invoke-virtual {v4}, Lx1/z;->c()Lx1/c0;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    iget-object v4, v4, Lx1/c0;->b:Lorg/json/JSONObject;

    .line 94
    .line 95
    if-eqz v4, :cond_73

    .line 96
    .line 97
    sget-object v6, Lx1/j0;->g:Lx1/i0;

    .line 98
    .line 99
    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    iput-object v2, v6, Lx1/i0;->c:Ljava/lang/Boolean;

    .line 108
    .line 109
    iput-wide v0, v6, Lx1/i0;->d:J

    .line 110
    .line 111
    sget-object v0, Lx1/j0;->a:Lx1/j0;

    .line 112
    .line 113
    invoke-virtual {v0, v6}, Lx1/j0;->m(Lx1/i0;)V

    .line 114
    .line 115
    .line 116
    :cond_73
    sget-object v0, Lx1/j0;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 117
    .line 118
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_78
    .catchall {:try_start_d .. :try_end_78} :catchall_3a

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :goto_79
    invoke-static {v0, v3}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    return-void
.end method
