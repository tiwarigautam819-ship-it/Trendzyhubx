###### Class k2.c (k2.c)
.class public final Lk2/c;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, Lk2/c;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    .line 1
    iget p2, p0, Lk2/c;->a:I

    .line 2
    .line 3
    const-string v0, "activity"

    .line 4
    .line 5
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    packed-switch p2, :pswitch_data_22

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_b
    sget-object p1, Lq2/z;->c:Lo3/a;

    .line 13
    .line 14
    sget-object p1, Lk2/d;->a:Ljava/lang/String;

    .line 15
    .line 16
    const-string p2, "onActivityCreated"

    .line 17
    .line 18
    sget-object v0, Lx1/e0;->d:Lx1/e0;

    .line 19
    .line 20
    invoke-static {v0, p1, p2}, Lo3/a;->i(Lx1/e0;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sget-object p1, Lk2/d;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 24
    .line 25
    new-instance p2, Li2/c;

    .line 26
    .line 27
    const/4 v0, 0x3

    .line 28
    invoke-direct {p2, v0}, Li2/c;-><init>(I)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_b
    .end packed-switch
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 5

    .line 1
    iget v0, p0, Lk2/c;->a:I

    .line 2
    .line 3
    const-string v1, "activity"

    .line 4
    .line 5
    invoke-static {v1, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    packed-switch v0, :pswitch_data_46

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_b
    sget-object v0, Lq2/z;->c:Lo3/a;

    .line 13
    .line 14
    sget-object v0, Lk2/d;->a:Ljava/lang/String;

    .line 15
    .line 16
    const-string v1, "onActivityDestroyed"

    .line 17
    .line 18
    sget-object v2, Lx1/e0;->d:Lx1/e0;

    .line 19
    .line 20
    invoke-static {v2, v0, v1}, Lo3/a;->i(Lx1/e0;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sget-object v0, Lb2/f;->a:Lb2/f;

    .line 24
    .line 25
    const-class v0, Lb2/f;

    .line 26
    .line 27
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_21

    .line 32
    .line 33
    goto :goto_45

    .line 34
    :cond_21
    :try_start_21
    sget-object v1, Lb2/i;->f:Lb2/c;

    .line 35
    .line 36
    invoke-virtual {v1}, Lb2/c;->a()Lb2/i;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v2
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_41

    .line 44
    if-eqz v2, :cond_2e

    .line 45
    .line 46
    goto :goto_45

    .line 47
    :cond_2e
    :try_start_2e
    iget-object v2, v1, Lb2/i;->e:Ljava/util/HashMap;

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3b
    .catchall {:try_start_2e .. :try_end_3b} :catchall_3c

    .line 58
    .line 59
    .line 60
    goto :goto_45

    .line 61
    :catchall_3c
    move-exception p1

    .line 62
    :try_start_3d
    invoke-static {p1, v1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    .line 63
    .line 64
    .line 65
    goto :goto_45

    .line 66
    :catchall_41
    move-exception p1

    .line 67
    invoke-static {p1, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    :goto_45
    return-void

    .line 71
    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_b
    .end packed-switch
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 10

    .line 1
    iget v0, p0, Lk2/c;->a:I

    .line 2
    .line 3
    const-string v1, "activity"

    .line 4
    .line 5
    invoke-static {v1, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    packed-switch v0, :pswitch_data_9a

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_b
    sget-object v0, Lq2/z;->c:Lo3/a;

    .line 13
    .line 14
    sget-object v0, Lk2/d;->a:Ljava/lang/String;

    .line 15
    .line 16
    const-string v1, "onActivityPaused"

    .line 17
    .line 18
    sget-object v2, Lx1/e0;->d:Lx1/e0;

    .line 19
    .line 20
    invoke-static {v2, v0, v1}, Lo3/a;->i(Lx1/e0;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sget-object v1, Lk2/d;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x0

    .line 30
    if-gez v2, :cond_27

    .line 31
    .line 32
    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 33
    .line 34
    .line 35
    const-string v1, "Unexpected activity pause without a matching activity resume. Logging data may be incorrect. Make sure you call activateApp from your Application\'s onCreate method"

    .line 36
    .line 37
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :cond_27
    invoke-static {}, Lk2/d;->a()V

    .line 41
    .line 42
    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 44
    .line 45
    .line 46
    move-result-wide v0

    .line 47
    invoke-static {p1}, Lq2/g0;->l(Landroid/content/Context;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    sget-object v4, Lb2/f;->a:Lb2/f;

    .line 52
    .line 53
    const-class v4, Lb2/f;

    .line 54
    .line 55
    invoke-static {v4}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_3d

    .line 60
    .line 61
    goto :goto_8e

    .line 62
    :cond_3d
    :try_start_3d
    sget-object v5, Lb2/f;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    .line 64
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-nez v5, :cond_46

    .line 69
    .line 70
    goto :goto_8e

    .line 71
    :cond_46
    sget-object v5, Lb2/i;->f:Lb2/c;

    .line 72
    .line 73
    invoke-virtual {v5}, Lb2/c;->a()Lb2/i;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-virtual {v5, p1}, Lb2/i;->c(Landroid/app/Activity;)V

    .line 78
    .line 79
    .line 80
    sget-object p1, Lb2/f;->d:Lb2/n;

    .line 81
    .line 82
    if-eqz p1, :cond_80

    .line 83
    .line 84
    invoke-static {p1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v5
    :try_end_57
    .catchall {:try_start_3d .. :try_end_57} :catchall_8a

    .line 88
    if-eqz v5, :cond_5a

    .line 89
    .line 90
    goto :goto_80

    .line 91
    :cond_5a
    :try_start_5a
    iget-object v5, p1, Lb2/n;->b:Ljava/lang/ref/WeakReference;

    .line 92
    .line 93
    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    check-cast v5, Landroid/app/Activity;
    :try_end_62
    .catchall {:try_start_5a .. :try_end_62} :catchall_6d

    .line 98
    .line 99
    if-nez v5, :cond_65

    .line 100
    .line 101
    goto :goto_80

    .line 102
    :cond_65
    :try_start_65
    iget-object v5, p1, Lb2/n;->c:Ljava/util/Timer;

    .line 103
    .line 104
    if-eqz v5, :cond_71

    .line 105
    .line 106
    invoke-virtual {v5}, Ljava/util/Timer;->cancel()V

    .line 107
    .line 108
    .line 109
    goto :goto_71

    .line 110
    :catchall_6d
    move-exception v5

    .line 111
    goto :goto_7d

    .line 112
    :catch_6f
    move-exception v5

    .line 113
    goto :goto_75

    .line 114
    :cond_71
    :goto_71
    const/4 v5, 0x0

    .line 115
    iput-object v5, p1, Lb2/n;->c:Ljava/util/Timer;
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_74} :catch_6f
    .catchall {:try_start_65 .. :try_end_74} :catchall_6d

    .line 116
    .line 117
    goto :goto_80

    .line 118
    :goto_75
    :try_start_75
    sget-object v6, Lb2/n;->e:Ljava/lang/String;

    .line 119
    .line 120
    const-string v7, "Error unscheduling indexing job"

    .line 121
    .line 122
    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7c
    .catchall {:try_start_75 .. :try_end_7c} :catchall_6d

    .line 123
    .line 124
    .line 125
    goto :goto_80

    .line 126
    :goto_7d
    :try_start_7d
    invoke-static {v5, p1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    :cond_80
    :goto_80
    sget-object p1, Lb2/f;->c:Landroid/hardware/SensorManager;

    .line 130
    .line 131
    if-eqz p1, :cond_8e

    .line 132
    .line 133
    sget-object v5, Lb2/f;->b:Lb2/o;

    .line 134
    .line 135
    invoke-virtual {p1, v5}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_89
    .catchall {:try_start_7d .. :try_end_89} :catchall_8a

    .line 136
    .line 137
    .line 138
    goto :goto_8e

    .line 139
    :catchall_8a
    move-exception p1

    .line 140
    invoke-static {p1, v4}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    :cond_8e
    :goto_8e
    new-instance p1, Lk2/b;

    .line 144
    .line 145
    invoke-direct {p1, v2, v0, v1, v3}, Lk2/b;-><init>(Ljava/lang/String;JI)V

    .line 146
    .line 147
    .line 148
    sget-object v0, Lk2/d;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 149
    .line 150
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    nop

    .line 155
    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_b
    .end packed-switch
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    iget v0, v1, Lk2/c;->a:I

    .line 6
    .line 7
    const-string v3, "activity"

    .line 8
    .line 9
    invoke-static {v3, v2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    packed-switch v0, :pswitch_data_110

    .line 13
    .line 14
    .line 15
    sget-object v0, Lk2/i;->b:Lk2/o;

    .line 16
    .line 17
    invoke-virtual {v0}, Lk2/o;->a()Lk2/i;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_19

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Lk2/i;->b(Landroid/app/Activity;)V

    .line 24
    .line 25
    .line 26
    :cond_19
    return-void

    .line 27
    :pswitch_1a
    sget-object v0, Lq2/z;->c:Lo3/a;

    .line 28
    .line 29
    sget-object v0, Lk2/d;->a:Ljava/lang/String;

    .line 30
    .line 31
    const-string v3, "onActivityResumed"

    .line 32
    .line 33
    sget-object v4, Lx1/e0;->d:Lx1/e0;

    .line 34
    .line 35
    invoke-static {v4, v0, v3}, Lo3/a;->i(Lx1/e0;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 39
    .line 40
    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    sput-object v0, Lk2/d;->l:Ljava/lang/ref/WeakReference;

    .line 44
    .line 45
    sget-object v0, Lk2/d;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 48
    .line 49
    .line 50
    invoke-static {}, Lk2/d;->a()V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 54
    .line 55
    .line 56
    move-result-wide v3

    .line 57
    sput-wide v3, Lk2/d;->j:J

    .line 58
    .line 59
    invoke-static {v2}, Lq2/g0;->l(Landroid/content/Context;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    sget-object v6, Lb2/f;->b:Lb2/o;

    .line 64
    .line 65
    sget-object v7, Lb2/f;->a:Lb2/f;

    .line 66
    .line 67
    const-class v8, Lb2/f;

    .line 68
    .line 69
    invoke-static {v8}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    const/4 v9, 0x2

    .line 74
    const/4 v10, 0x1

    .line 75
    if-eqz v0, :cond_4d

    .line 76
    .line 77
    goto :goto_b5

    .line 78
    :cond_4d
    :try_start_4d
    sget-object v0, Lb2/f;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-nez v0, :cond_56

    .line 85
    .line 86
    goto :goto_b5

    .line 87
    :cond_56
    sget-object v0, Lb2/i;->f:Lb2/c;

    .line 88
    .line 89
    invoke-virtual {v0}, Lb2/c;->a()Lb2/i;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0, v2}, Lb2/i;->a(Landroid/app/Activity;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v11

    .line 104
    invoke-static {v11}, Lq2/w;->b(Ljava/lang/String;)Lq2/t;

    .line 105
    .line 106
    .line 107
    move-result-object v12

    .line 108
    if-eqz v12, :cond_ab

    .line 109
    .line 110
    iget-boolean v13, v12, Lq2/t;->g:Z

    .line 111
    .line 112
    if-ne v13, v10, :cond_ab

    .line 113
    .line 114
    const-string v13, "sensor"

    .line 115
    .line 116
    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    move-object v13, v0

    .line 121
    check-cast v13, Landroid/hardware/SensorManager;

    .line 122
    .line 123
    if-nez v13, :cond_7d

    .line 124
    .line 125
    goto :goto_b5

    .line 126
    :cond_7d
    sput-object v13, Lb2/f;->c:Landroid/hardware/SensorManager;

    .line 127
    .line 128
    invoke-virtual {v13, v10}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 129
    .line 130
    .line 131
    move-result-object v14

    .line 132
    new-instance v15, Lb2/n;

    .line 133
    .line 134
    invoke-direct {v15, v2}, Lb2/n;-><init>(Landroid/app/Activity;)V

    .line 135
    .line 136
    .line 137
    sput-object v15, Lb2/f;->d:Lb2/n;

    .line 138
    .line 139
    new-instance v0, Lb2/d;

    .line 140
    .line 141
    const/4 v10, 0x0

    .line 142
    invoke-direct {v0, v12, v10, v11}, Lb2/d;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    invoke-static {v6}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v10
    :try_end_94
    .catchall {:try_start_4d .. :try_end_94} :catchall_a9

    .line 149
    if-eqz v10, :cond_97

    .line 150
    .line 151
    goto :goto_9e

    .line 152
    :cond_97
    :try_start_97
    iput-object v0, v6, Lb2/o;->a:Lb2/d;
    :try_end_99
    .catchall {:try_start_97 .. :try_end_99} :catchall_9a

    .line 153
    .line 154
    goto :goto_9e

    .line 155
    :catchall_9a
    move-exception v0

    .line 156
    :try_start_9b
    invoke-static {v0, v6}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    :goto_9e
    invoke-virtual {v13, v6, v14, v9}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 160
    .line 161
    .line 162
    iget-boolean v0, v12, Lq2/t;->g:Z

    .line 163
    .line 164
    if-eqz v0, :cond_ae

    .line 165
    .line 166
    invoke-virtual {v15}, Lb2/n;->c()V

    .line 167
    .line 168
    .line 169
    goto :goto_ae

    .line 170
    :catchall_a9
    move-exception v0

    .line 171
    goto :goto_b2

    .line 172
    :cond_ab
    invoke-static {v7}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    :cond_ae
    :goto_ae
    invoke-static {v7}, Lv2/a;->b(Ljava/lang/Object;)Z
    :try_end_b1
    .catchall {:try_start_9b .. :try_end_b1} :catchall_a9

    .line 176
    .line 177
    .line 178
    goto :goto_b5

    .line 179
    :goto_b2
    invoke-static {v0, v8}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    :goto_b5
    const-class v6, Lz1/a;

    .line 183
    .line 184
    invoke-static {v6}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    if-eqz v0, :cond_be

    .line 189
    .line 190
    goto :goto_de

    .line 191
    :cond_be
    :try_start_be
    sget-boolean v0, Lz1/a;->b:Z

    .line 192
    .line 193
    if-eqz v0, :cond_de

    .line 194
    .line 195
    sget-object v0, Lz1/c;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 196
    .line 197
    new-instance v0, Ljava/util/HashSet;

    .line 198
    .line 199
    invoke-static {}, Lz1/c;->a()Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 200
    .line 201
    .line 202
    move-result-object v7

    .line 203
    invoke-direct {v0, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    if-eqz v0, :cond_d4

    .line 211
    .line 212
    goto :goto_de

    .line 213
    :cond_d4
    sget-object v0, Lz1/d;->e:Ljava/util/HashMap;

    .line 214
    .line 215
    invoke-static {v2}, Lz1/a;->b(Landroid/app/Activity;)V
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_d9} :catch_de
    .catchall {:try_start_be .. :try_end_d9} :catchall_da

    .line 216
    .line 217
    .line 218
    goto :goto_de

    .line 219
    :catchall_da
    move-exception v0

    .line 220
    invoke-static {v0, v6}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    :catch_de
    :cond_de
    :goto_de
    invoke-static {v2}, Lo2/d;->d(Landroid/app/Activity;)V

    .line 224
    .line 225
    .line 226
    sget-object v0, Lk2/d;->m:Ljava/lang/String;

    .line 227
    .line 228
    if-eqz v0, :cond_fe

    .line 229
    .line 230
    const-string v6, "ProxyBillingActivity"

    .line 231
    .line 232
    invoke-static {v0, v6}, Lk7/g;->x(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    const/4 v7, 0x1

    .line 237
    if-ne v0, v7, :cond_fe

    .line 238
    .line 239
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    if-nez v0, :cond_fe

    .line 244
    .line 245
    sget-object v0, Lk2/d;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 246
    .line 247
    new-instance v6, Li2/c;

    .line 248
    .line 249
    invoke-direct {v6, v9}, Li2/c;-><init>(I)V

    .line 250
    .line 251
    .line 252
    invoke-interface {v0, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 253
    .line 254
    .line 255
    :cond_fe
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    new-instance v2, Lk2/a;

    .line 260
    .line 261
    invoke-direct {v2, v3, v4, v5, v0}, Lk2/a;-><init>(JLjava/lang/String;Landroid/content/Context;)V

    .line 262
    .line 263
    .line 264
    sget-object v0, Lk2/d;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 265
    .line 266
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 267
    .line 268
    .line 269
    sput-object v5, Lk2/d;->m:Ljava/lang/String;

    .line 270
    .line 271
    return-void

    .line 272
    nop

    .line 273
    :pswitch_data_110
    .packed-switch 0x0
        :pswitch_1a
    .end packed-switch
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 5

    .line 1
    iget v0, p0, Lk2/c;->a:I

    .line 2
    .line 3
    const-string v1, "activity"

    .line 4
    .line 5
    invoke-static {v1, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    packed-switch v0, :pswitch_data_22

    .line 9
    .line 10
    .line 11
    const-string p1, "bundle"

    .line 12
    .line 13
    invoke-static {p1, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_10
    const-string p1, "outState"

    .line 18
    .line 19
    invoke-static {p1, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    sget-object p1, Lq2/z;->c:Lo3/a;

    .line 23
    .line 24
    sget-object p1, Lk2/d;->a:Ljava/lang/String;

    .line 25
    .line 26
    const-string p2, "onActivitySaveInstanceState"

    .line 27
    .line 28
    sget-object v0, Lx1/e0;->d:Lx1/e0;

    .line 29
    .line 30
    invoke-static {v0, p1, p2}, Lo3/a;->i(Lx1/e0;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_10
    .end packed-switch
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .registers 4

    .line 1
    iget v0, p0, Lk2/c;->a:I

    .line 2
    .line 3
    const-string v1, "activity"

    .line 4
    .line 5
    invoke-static {v1, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    packed-switch v0, :pswitch_data_28

    .line 9
    .line 10
    .line 11
    sget-object v0, Lk2/i;->b:Lk2/o;

    .line 12
    .line 13
    invoke-virtual {v0}, Lk2/o;->a()Lk2/i;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_15

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lk2/i;->b(Landroid/app/Activity;)V

    .line 20
    .line 21
    .line 22
    :cond_15
    return-void

    .line 23
    :pswitch_16
    sget p1, Lk2/d;->k:I

    .line 24
    .line 25
    add-int/lit8 p1, p1, 0x1

    .line 26
    .line 27
    sput p1, Lk2/d;->k:I

    .line 28
    .line 29
    sget-object p1, Lq2/z;->c:Lo3/a;

    .line 30
    .line 31
    sget-object p1, Lk2/d;->a:Ljava/lang/String;

    .line 32
    .line 33
    const-string v0, "onActivityStarted"

    .line 34
    .line 35
    sget-object v1, Lx1/e0;->d:Lx1/e0;

    .line 36
    .line 37
    invoke-static {v1, p1, v0}, Lo3/a;->i(Lx1/e0;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_16
    .end packed-switch
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .registers 5

    .line 1
    iget v0, p0, Lk2/c;->a:I

    .line 2
    .line 3
    const-string v1, "activity"

    .line 4
    .line 5
    invoke-static {v1, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    packed-switch v0, :pswitch_data_3c

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_b
    sget-object p1, Lq2/z;->c:Lo3/a;

    .line 13
    .line 14
    sget-object p1, Lx1/e0;->d:Lx1/e0;

    .line 15
    .line 16
    sget-object v0, Lk2/d;->a:Ljava/lang/String;

    .line 17
    .line 18
    const-string v1, "onActivityStopped"

    .line 19
    .line 20
    invoke-static {p1, v0, v1}, Lo3/a;->i(Lx1/e0;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sget-object p1, Ly1/k;->c:Ljava/lang/String;

    .line 24
    .line 25
    sget-object p1, Ly1/i;->a:Ly2/p;

    .line 26
    .line 27
    const-class p1, Ly1/i;

    .line 28
    .line 29
    invoke-static {p1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_23

    .line 34
    .line 35
    goto :goto_34

    .line 36
    :cond_23
    :try_start_23
    sget-object v0, Ly1/i;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 37
    .line 38
    new-instance v1, Li2/c;

    .line 39
    .line 40
    const/16 v2, 0xd

    .line 41
    .line 42
    invoke-direct {v1, v2}, Li2/c;-><init>(I)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2f
    .catchall {:try_start_23 .. :try_end_2f} :catchall_30

    .line 46
    .line 47
    .line 48
    goto :goto_34

    .line 49
    :catchall_30
    move-exception v0

    .line 50
    invoke-static {v0, p1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    :goto_34
    sget p1, Lk2/d;->k:I

    .line 54
    .line 55
    add-int/lit8 p1, p1, -0x1

    .line 56
    .line 57
    sput p1, Lk2/d;->k:I

    .line 58
    .line 59
    return-void

    .line 60
    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_b
    .end packed-switch
.end method

###### Class k2.a (k2.a)
.class public final synthetic Lk2/a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(JLjava/lang/String;Landroid/content/Context;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lk2/a;->a:J

    .line 5
    .line 6
    iput-object p3, p0, Lk2/a;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p4, p0, Lk2/a;->c:Landroid/content/Context;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 13

    .line 1
    iget-wide v0, p0, Lk2/a;->a:J

    .line 2
    .line 3
    iget-object v2, p0, Lk2/a;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v3, p0, Lk2/a;->c:Landroid/content/Context;

    .line 6
    .line 7
    sget-object v4, Lk2/d;->g:Lk2/n;

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    if-eqz v4, :cond_10

    .line 11
    .line 12
    iget-object v4, v4, Lk2/n;->c:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v4, Ljava/lang/Long;

    .line 15
    .line 16
    goto :goto_11

    .line 17
    :cond_10
    move-object v4, v5

    .line 18
    :goto_11
    sget-object v6, Lk2/d;->g:Lk2/n;

    .line 19
    .line 20
    const-string v7, "appContext"

    .line 21
    .line 22
    if-nez v6, :cond_2b

    .line 23
    .line 24
    new-instance v4, Lk2/n;

    .line 25
    .line 26
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    invoke-direct {v4, v6, v5}, Lk2/n;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 31
    .line 32
    .line 33
    sput-object v4, Lk2/d;->g:Lk2/n;

    .line 34
    .line 35
    sget-object v4, Lk2/d;->i:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v7, v3}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v3, v2, v4}, Lk2/o;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    goto :goto_76

    .line 44
    :cond_2b
    if-eqz v4, :cond_76

    .line 45
    .line 46
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 47
    .line 48
    .line 49
    move-result-wide v8

    .line 50
    sub-long v8, v0, v8

    .line 51
    .line 52
    sget-object v4, Lk2/d;->a:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-static {v4}, Lq2/w;->b(Ljava/lang/String;)Lq2/t;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    if-nez v4, :cond_42

    .line 63
    .line 64
    const/16 v4, 0x3c

    .line 65
    .line 66
    goto :goto_44

    .line 67
    :cond_42
    iget v4, v4, Lq2/t;->b:I

    .line 68
    .line 69
    :goto_44
    mul-int/lit16 v4, v4, 0x3e8

    .line 70
    .line 71
    int-to-long v10, v4

    .line 72
    cmp-long v4, v8, v10

    .line 73
    .line 74
    if-lez v4, :cond_66

    .line 75
    .line 76
    sget-object v4, Lk2/d;->g:Lk2/n;

    .line 77
    .line 78
    sget-object v6, Lk2/d;->i:Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {v2, v4, v6}, Lk2/o;->d(Ljava/lang/String;Lk2/n;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sget-object v4, Lk2/d;->i:Ljava/lang/String;

    .line 84
    .line 85
    invoke-static {v7, v3}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-static {v3, v2, v4}, Lk2/o;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    new-instance v2, Lk2/n;

    .line 92
    .line 93
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-direct {v2, v3, v5}, Lk2/n;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 98
    .line 99
    .line 100
    sput-object v2, Lk2/d;->g:Lk2/n;

    .line 101
    .line 102
    goto :goto_76

    .line 103
    :cond_66
    const-wide/16 v2, 0x3e8

    .line 104
    .line 105
    cmp-long v2, v8, v2

    .line 106
    .line 107
    if-lez v2, :cond_76

    .line 108
    .line 109
    sget-object v2, Lk2/d;->g:Lk2/n;

    .line 110
    .line 111
    if-eqz v2, :cond_76

    .line 112
    .line 113
    iget v3, v2, Lk2/n;->a:I

    .line 114
    .line 115
    add-int/lit8 v3, v3, 0x1

    .line 116
    .line 117
    iput v3, v2, Lk2/n;->a:I

    .line 118
    .line 119
    :cond_76
    :goto_76
    sget-object v2, Lk2/d;->g:Lk2/n;

    .line 120
    .line 121
    if-nez v2, :cond_7b

    .line 122
    .line 123
    goto :goto_81

    .line 124
    :cond_7b
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    iput-object v0, v2, Lk2/n;->c:Ljava/lang/Object;

    .line 129
    .line 130
    :goto_81
    sget-object v0, Lk2/d;->g:Lk2/n;

    .line 131
    .line 132
    if-eqz v0, :cond_88

    .line 133
    .line 134
    invoke-virtual {v0}, Lk2/n;->l()V

    .line 135
    .line 136
    .line 137
    :cond_88
    return-void
.end method
