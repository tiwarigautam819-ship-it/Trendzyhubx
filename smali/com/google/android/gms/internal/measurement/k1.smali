###### Class com.google.android.gms.internal.measurement.k1 (com.google.android.gms.internal.measurement.k1)
.class public final Lcom/google/android/gms/internal/measurement/k1;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static volatile j:Lcom/google/android/gms/internal/measurement/k1;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lb4/b;

.field public final c:Ljava/util/concurrent/ExecutorService;

.field public final d:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

.field public final e:Ljava/util/ArrayList;

.field public f:I

.field public g:Z

.field public final h:Ljava/lang/String;

.field public volatile i:Lcom/google/android/gms/internal/measurement/s0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 19

    .line 1
    move-object/from16 v2, p3

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v1, Lcom/google/android/gms/internal/measurement/k1;

    .line 7
    .line 8
    const-string v3, "com.google.firebase.analytics.FirebaseAnalytics"

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    if-eqz p2, :cond_1b

    .line 12
    .line 13
    if-eqz p4, :cond_1b

    .line 14
    .line 15
    if-eqz v2, :cond_1b

    .line 16
    .line 17
    :try_start_10
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    invoke-static {v3, v4, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_17
    .catch Ljava/lang/ClassNotFoundException; {:try_start_10 .. :try_end_17} :catch_18

    .line 22
    .line 23
    .line 24
    goto :goto_1b

    .line 25
    :catch_18
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/k1;->a:Ljava/lang/String;

    .line 26
    .line 27
    goto :goto_1f

    .line 28
    :cond_1b
    :goto_1b
    const-string v0, "FA"

    .line 29
    .line 30
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/k1;->a:Ljava/lang/String;

    .line 31
    .line 32
    :goto_1f
    sget-object v0, Lb4/b;->a:Lb4/b;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/k1;->b:Lb4/b;

    .line 35
    .line 36
    new-instance v12, Lcom/google/android/gms/internal/measurement/t1;

    .line 37
    .line 38
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, v12, Lcom/google/android/gms/internal/measurement/t1;->a:Ljava/util/concurrent/ThreadFactory;

    .line 46
    .line 47
    new-instance v5, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 48
    .line 49
    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 50
    .line 51
    new-instance v11, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 52
    .line 53
    invoke-direct {v11}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 54
    .line 55
    .line 56
    const/4 v6, 0x1

    .line 57
    const/4 v7, 0x1

    .line 58
    const-wide/16 v8, 0x3c

    .line 59
    .line 60
    invoke-direct/range {v5 .. v12}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 61
    .line 62
    .line 63
    const/4 v0, 0x1

    .line 64
    invoke-virtual {v5, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 65
    .line 66
    .line 67
    invoke-static {v5}, Ljava/util/concurrent/Executors;->unconfigurableExecutorService(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    iput-object v5, p0, Lcom/google/android/gms/internal/measurement/k1;->c:Ljava/util/concurrent/ExecutorService;

    .line 72
    .line 73
    new-instance v5, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    .line 74
    .line 75
    invoke-direct {v5, p0}, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;-><init>(Lcom/google/android/gms/internal/measurement/k1;)V

    .line 76
    .line 77
    .line 78
    iput-object v5, p0, Lcom/google/android/gms/internal/measurement/k1;->d:Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    .line 79
    .line 80
    new-instance v5, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .line 84
    .line 85
    iput-object v5, p0, Lcom/google/android/gms/internal/measurement/k1;->e:Ljava/util/ArrayList;

    .line 86
    .line 87
    :try_start_56
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzhs;->zza(Landroid/content/Context;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    const-string v6, "google_app_id"

    .line 92
    .line 93
    new-instance v7, Lcom/google/android/gms/measurement/internal/zzhs;

    .line 94
    .line 95
    invoke-direct {v7, p1, v5}, Lcom/google/android/gms/measurement/internal/zzhs;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v7, v6}, Lcom/google/android/gms/measurement/internal/zzhs;->zza(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v5
    :try_end_65
    .catch Ljava/lang/IllegalStateException; {:try_start_56 .. :try_end_65} :catch_7c

    .line 102
    if-eqz v5, :cond_7c

    .line 103
    .line 104
    :try_start_67
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    invoke-static {v3, v4, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_6e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_67 .. :try_end_6e} :catch_6f

    .line 109
    .line 110
    .line 111
    goto :goto_7c

    .line 112
    :catch_6f
    const/4 p1, 0x0

    .line 113
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/k1;->h:Ljava/lang/String;

    .line 114
    .line 115
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/k1;->g:Z

    .line 116
    .line 117
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/k1;->a:Ljava/lang/String;

    .line 118
    .line 119
    const-string v0, "Disabling data collection. Found google_app_id in strings.xml but Google Analytics for Firebase is missing. Remove this value or add Google Analytics for Firebase to resume data collection."

    .line 120
    .line 121
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :catch_7c
    :cond_7c
    :goto_7c
    if-eqz p4, :cond_8b

    .line 126
    .line 127
    if-eqz v2, :cond_8b

    .line 128
    .line 129
    :try_start_80
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-static {v3, v4, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_87
    .catch Ljava/lang/ClassNotFoundException; {:try_start_80 .. :try_end_87} :catch_88

    .line 134
    .line 135
    .line 136
    goto :goto_8b

    .line 137
    :catch_88
    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/k1;->h:Ljava/lang/String;

    .line 138
    .line 139
    goto :goto_ae

    .line 140
    :cond_8b
    :goto_8b
    const-string v1, "fa"

    .line 141
    .line 142
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/k1;->h:Ljava/lang/String;

    .line 143
    .line 144
    if-eqz v2, :cond_9b

    .line 145
    .line 146
    if-eqz p4, :cond_9b

    .line 147
    .line 148
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/k1;->a:Ljava/lang/String;

    .line 149
    .line 150
    const-string v1, "Deferring to Google Analytics for Firebase for event data collection. https://firebase.google.com/docs/analytics"

    .line 151
    .line 152
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    goto :goto_ae

    .line 156
    :cond_9b
    if-nez v2, :cond_9f

    .line 157
    .line 158
    move v1, v0

    .line 159
    goto :goto_a0

    .line 160
    :cond_9f
    move v1, v4

    .line 161
    :goto_a0
    if-nez p4, :cond_a3

    .line 162
    .line 163
    move v4, v0

    .line 164
    :cond_a3
    xor-int v0, v1, v4

    .line 165
    .line 166
    if-eqz v0, :cond_ae

    .line 167
    .line 168
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/k1;->a:Ljava/lang/String;

    .line 169
    .line 170
    const-string v1, "Specified origin or custom app id is null. Both parameters will be ignored."

    .line 171
    .line 172
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    :cond_ae
    :goto_ae
    new-instance v0, Lcom/google/android/gms/internal/measurement/f1;

    .line 176
    .line 177
    move-object v1, p0

    .line 178
    move-object v4, p1

    .line 179
    move-object/from16 v3, p4

    .line 180
    .line 181
    move-object/from16 v5, p5

    .line 182
    .line 183
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/f1;-><init>(Lcom/google/android/gms/internal/measurement/k1;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/k1;->f(Lcom/google/android/gms/internal/measurement/g1;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    check-cast p1, Landroid/app/Application;

    .line 194
    .line 195
    if-nez p1, :cond_cc

    .line 196
    .line 197
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/k1;->a:Ljava/lang/String;

    .line 198
    .line 199
    const-string v0, "Unable to register lifecycle notifications. Application null."

    .line 200
    .line 201
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .line 203
    .line 204
    return-void

    .line 205
    :cond_cc
    new-instance v0, Lcom/google/android/gms/internal/measurement/j1;

    .line 206
    .line 207
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/j1;-><init>(Lcom/google/android/gms/internal/measurement/k1;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 211
    .line 212
    .line 213
    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/internal/measurement/k1;
    .registers 13

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/android/gms/internal/measurement/k1;->j:Lcom/google/android/gms/internal/measurement/k1;

    .line 5
    .line 6
    if-nez v0, :cond_22

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/measurement/k1;

    .line 9
    .line 10
    monitor-enter v1

    .line 11
    :try_start_a
    sget-object v0, Lcom/google/android/gms/internal/measurement/k1;->j:Lcom/google/android/gms/internal/measurement/k1;

    .line 12
    .line 13
    if-nez v0, :cond_1e

    .line 14
    .line 15
    new-instance v2, Lcom/google/android/gms/internal/measurement/k1;

    .line 16
    .line 17
    move-object v3, p0

    .line 18
    move-object v4, p1

    .line 19
    move-object v5, p2

    .line 20
    move-object v6, p3

    .line 21
    move-object v7, p4

    .line 22
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/k1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 23
    .line 24
    .line 25
    sput-object v2, Lcom/google/android/gms/internal/measurement/k1;->j:Lcom/google/android/gms/internal/measurement/k1;

    .line 26
    .line 27
    goto :goto_1e

    .line 28
    :catchall_1b
    move-exception v0

    .line 29
    move-object p0, v0

    .line 30
    goto :goto_20

    .line 31
    :cond_1e
    :goto_1e
    monitor-exit v1

    .line 32
    goto :goto_22

    .line 33
    :goto_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_a .. :try_end_21} :catchall_1b

    .line 34
    throw p0

    .line 35
    :cond_22
    :goto_22
    sget-object p0, Lcom/google/android/gms/internal/measurement/k1;->j:Lcom/google/android/gms/internal/measurement/k1;

    .line 36
    .line 37
    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/t0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/t0;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/android/gms/internal/measurement/v1;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-direct {v1, p0, p1, v0, v2}, Lcom/google/android/gms/internal/measurement/v1;-><init>(Lcom/google/android/gms/internal/measurement/k1;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/t0;I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/k1;->f(Lcom/google/android/gms/internal/measurement/g1;)V

    .line 13
    .line 14
    .line 15
    const-wide/16 v1, 0x2710

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/t0;->b(J)Landroid/os/Bundle;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-class v0, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/t0;->c(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Ljava/lang/Integer;

    .line 28
    .line 29
    if-nez p1, :cond_21

    .line 30
    .line 31
    const/16 p1, 0x19

    .line 32
    .line 33
    return p1

    .line 34
    :cond_21
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    return p1
.end method

.method public final b()J
    .registers 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/t0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/t0;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/android/gms/internal/measurement/u1;

    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    invoke-direct {v1, p0, v0, v2}, Lcom/google/android/gms/internal/measurement/u1;-><init>(Lcom/google/android/gms/internal/measurement/k1;Lcom/google/android/gms/internal/measurement/t0;I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/k1;->f(Lcom/google/android/gms/internal/measurement/g1;)V

    .line 13
    .line 14
    .line 15
    const-wide/16 v1, 0x1f4

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/t0;->b(J)Landroid/os/Bundle;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-class v1, Ljava/lang/Long;

    .line 22
    .line 23
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/t0;->c(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/Long;

    .line 28
    .line 29
    if-nez v0, :cond_3e

    .line 30
    .line 31
    new-instance v0, Ljava/util/Random;

    .line 32
    .line 33
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 34
    .line 35
    .line 36
    move-result-wide v1

    .line 37
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/k1;->b:Lb4/b;

    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 43
    .line 44
    .line 45
    move-result-wide v3

    .line 46
    xor-long/2addr v1, v3

    .line 47
    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    .line 51
    .line 52
    .line 53
    move-result-wide v0

    .line 54
    iget v2, p0, Lcom/google/android/gms/internal/measurement/k1;->f:I

    .line 55
    .line 56
    add-int/lit8 v2, v2, 0x1

    .line 57
    .line 58
    iput v2, p0, Lcom/google/android/gms/internal/measurement/k1;->f:I

    .line 59
    .line 60
    int-to-long v2, v2

    .line 61
    add-long/2addr v0, v2

    .line 62
    return-wide v0

    .line 63
    :cond_3e
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 64
    .line 65
    .line 66
    move-result-wide v0

    .line 67
    return-wide v0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 9

    .line 1
    new-instance v4, Lcom/google/android/gms/internal/measurement/t0;

    .line 2
    .line 3
    invoke-direct {v4}, Lcom/google/android/gms/internal/measurement/t0;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/google/android/gms/internal/measurement/o1;

    .line 7
    .line 8
    const/4 v5, 0x0

    .line 9
    move-object v1, p0

    .line 10
    move-object v2, p1

    .line 11
    move-object v3, p2

    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/o1;-><init>(Lcom/google/android/gms/internal/measurement/k1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/k1;->f(Lcom/google/android/gms/internal/measurement/g1;)V

    .line 16
    .line 17
    .line 18
    const-wide/16 p1, 0x1388

    .line 19
    .line 20
    invoke-virtual {v4, p1, p2}, Lcom/google/android/gms/internal/measurement/t0;->b(J)Landroid/os/Bundle;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-class p2, Ljava/util/List;

    .line 25
    .line 26
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/t0;->c(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Ljava/util/List;

    .line 31
    .line 32
    if-nez p1, :cond_23

    .line 33
    .line 34
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 35
    .line 36
    :cond_23
    return-object p1
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .registers 10

    .line 1
    new-instance v5, Lcom/google/android/gms/internal/measurement/t0;

    .line 2
    .line 3
    invoke-direct {v5}, Lcom/google/android/gms/internal/measurement/t0;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/google/android/gms/internal/measurement/n1;

    .line 7
    .line 8
    move-object v1, p0

    .line 9
    move-object v2, p1

    .line 10
    move-object v3, p2

    .line 11
    move v4, p3

    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/n1;-><init>(Lcom/google/android/gms/internal/measurement/k1;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/measurement/t0;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/k1;->f(Lcom/google/android/gms/internal/measurement/g1;)V

    .line 16
    .line 17
    .line 18
    const-wide/16 p1, 0x1388

    .line 19
    .line 20
    invoke-virtual {v5, p1, p2}, Lcom/google/android/gms/internal/measurement/t0;->b(J)Landroid/os/Bundle;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_52

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/os/BaseBundle;->size()I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-nez p2, :cond_20

    .line 31
    .line 32
    goto :goto_52

    .line 33
    :cond_20
    new-instance p2, Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/os/BaseBundle;->size()I

    .line 36
    .line 37
    .line 38
    move-result p3

    .line 39
    invoke-direct {p2, p3}, Ljava/util/HashMap;-><init>(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    :cond_31
    :goto_31
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_51

    .line 55
    .line 56
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    instance-of v3, v2, Ljava/lang/Double;

    .line 67
    .line 68
    if-nez v3, :cond_4d

    .line 69
    .line 70
    instance-of v3, v2, Ljava/lang/Long;

    .line 71
    .line 72
    if-nez v3, :cond_4d

    .line 73
    .line 74
    instance-of v3, v2, Ljava/lang/String;

    .line 75
    .line 76
    if-eqz v3, :cond_31

    .line 77
    .line 78
    :cond_4d
    invoke-virtual {p2, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    goto :goto_31

    .line 82
    :cond_51
    return-object p2

    .line 83
    :cond_52
    :goto_52
    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 84
    .line 85
    return-object p1
.end method

.method public final f(Lcom/google/android/gms/internal/measurement/g1;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/k1;->c:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final g(Lcom/google/android/gms/measurement/internal/zzjl;)V
    .registers 6

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/k1;->e:Ljava/util/ArrayList;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    :try_start_7
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/k1;->e:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-ge v1, v2, :cond_2d

    .line 15
    .line 16
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/k1;->e:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Landroid/util/Pair;

    .line 23
    .line 24
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 25
    .line 26
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_2a

    .line 31
    .line 32
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/k1;->a:Ljava/lang/String;

    .line 33
    .line 34
    const-string v1, "OnEventListener already registered."

    .line 35
    .line 36
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :catchall_28
    move-exception p1

    .line 42
    goto :goto_58

    .line 43
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_7

    .line 46
    :cond_2d
    new-instance v1, Lcom/google/android/gms/internal/measurement/h1;

    .line 47
    .line 48
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/measurement/h1;-><init>(Lcom/google/android/gms/measurement/internal/zzjl;)V

    .line 49
    .line 50
    .line 51
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/k1;->e:Ljava/util/ArrayList;

    .line 52
    .line 53
    new-instance v3, Landroid/util/Pair;

    .line 54
    .line 55
    invoke-direct {v3, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_7 .. :try_end_3d} :catchall_28

    .line 62
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/k1;->i:Lcom/google/android/gms/internal/measurement/s0;

    .line 63
    .line 64
    if-eqz p1, :cond_4e

    .line 65
    .line 66
    :try_start_41
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/k1;->i:Lcom/google/android/gms/internal/measurement/s0;

    .line 67
    .line 68
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/measurement/s0;->registerOnMeasurementEventListener(Lcom/google/android/gms/internal/measurement/x0;)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_46} :catch_47
    .catch Landroid/os/BadParcelableException; {:try_start_41 .. :try_end_46} :catch_47
    .catch Ljava/lang/IllegalArgumentException; {:try_start_41 .. :try_end_46} :catch_47
    .catch Ljava/lang/IllegalStateException; {:try_start_41 .. :try_end_46} :catch_47
    .catch Landroid/os/NetworkOnMainThreadException; {:try_start_41 .. :try_end_46} :catch_47
    .catch Ljava/lang/NullPointerException; {:try_start_41 .. :try_end_46} :catch_47
    .catch Ljava/lang/SecurityException; {:try_start_41 .. :try_end_46} :catch_47
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_41 .. :try_end_46} :catch_47

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :catch_47
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/k1;->a:Ljava/lang/String;

    .line 73
    .line 74
    const-string v0, "Failed to register event listener on calling thread. Trying again on the dynamite thread."

    .line 75
    .line 76
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    :cond_4e
    new-instance p1, Lcom/google/android/gms/internal/measurement/y1;

    .line 80
    .line 81
    const/4 v0, 0x1

    .line 82
    invoke-direct {p1, p0, v1, v0}, Lcom/google/android/gms/internal/measurement/y1;-><init>(Lcom/google/android/gms/internal/measurement/k1;Lcom/google/android/gms/internal/measurement/h1;I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/k1;->f(Lcom/google/android/gms/internal/measurement/g1;)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :goto_58
    :try_start_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_28

    .line 90
    throw p1
.end method

.method public final h(Lcom/google/android/gms/measurement/internal/zzjm;)V
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/i1;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/i1;-><init>(Lcom/google/android/gms/measurement/internal/zzjm;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/k1;->i:Lcom/google/android/gms/internal/measurement/s0;

    .line 7
    .line 8
    if-eqz p1, :cond_16

    .line 9
    .line 10
    :try_start_9
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/k1;->i:Lcom/google/android/gms/internal/measurement/s0;

    .line 11
    .line 12
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/s0;->setEventInterceptor(Lcom/google/android/gms/internal/measurement/x0;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_f
    .catch Landroid/os/BadParcelableException; {:try_start_9 .. :try_end_e} :catch_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_e} :catch_f
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_e} :catch_f
    .catch Landroid/os/NetworkOnMainThreadException; {:try_start_9 .. :try_end_e} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_e} :catch_f
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_e} :catch_f
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_9 .. :try_end_e} :catch_f

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catch_f
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/k1;->a:Ljava/lang/String;

    .line 17
    .line 18
    const-string v1, "Failed to set event interceptor on calling thread. Trying again on the dynamite thread."

    .line 19
    .line 20
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    :cond_16
    new-instance p1, Lcom/google/android/gms/internal/measurement/q1;

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/internal/measurement/q1;-><init>(Lcom/google/android/gms/internal/measurement/k1;Ljava/lang/Object;I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/k1;->f(Lcom/google/android/gms/internal/measurement/g1;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final i(Ljava/lang/Exception;ZZ)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/k1;->g:Z

    .line 2
    .line 3
    or-int/2addr v0, p2

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/k1;->g:Z

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/k1;->a:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz p2, :cond_f

    .line 9
    .line 10
    const-string p2, "Data collection startup failed. No data will be collected."

    .line 11
    .line 12
    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_f
    const-string p2, "Error with data collection. Data lost."

    .line 17
    .line 18
    if-eqz p3, :cond_1b

    .line 19
    .line 20
    new-instance p3, Lcom/google/android/gms/internal/measurement/v1;

    .line 21
    .line 22
    invoke-direct {p3, p0, p2, p1}, Lcom/google/android/gms/internal/measurement/v1;-><init>(Lcom/google/android/gms/internal/measurement/k1;Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/measurement/k1;->f(Lcom/google/android/gms/internal/measurement/g1;)V

    .line 26
    .line 27
    .line 28
    :cond_1b
    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final j(Lcom/google/android/gms/measurement/internal/zzjl;)V
    .registers 5

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/k1;->e:Ljava/util/ArrayList;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    :try_start_7
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/k1;->e:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-ge v1, v2, :cond_2d

    .line 15
    .line 16
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/k1;->e:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Landroid/util/Pair;

    .line 23
    .line 24
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 25
    .line 26
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_2a

    .line 31
    .line 32
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/k1;->e:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Landroid/util/Pair;

    .line 39
    .line 40
    goto :goto_2e

    .line 41
    :catchall_28
    move-exception p1

    .line 42
    goto :goto_5e

    .line 43
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_7

    .line 46
    :cond_2d
    const/4 p1, 0x0

    .line 47
    :goto_2e
    if-nez p1, :cond_39

    .line 48
    .line 49
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/k1;->a:Ljava/lang/String;

    .line 50
    .line 51
    const-string v1, "OnEventListener had not been registered."

    .line 52
    .line 53
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    monitor-exit v0

    .line 57
    return-void

    .line 58
    :cond_39
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/k1;->e:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast p1, Lcom/google/android/gms/internal/measurement/h1;

    .line 66
    .line 67
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_7 .. :try_end_43} :catchall_28

    .line 68
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/k1;->i:Lcom/google/android/gms/internal/measurement/s0;

    .line 69
    .line 70
    if-eqz v0, :cond_54

    .line 71
    .line 72
    :try_start_47
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/k1;->i:Lcom/google/android/gms/internal/measurement/s0;

    .line 73
    .line 74
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/s0;->unregisterOnMeasurementEventListener(Lcom/google/android/gms/internal/measurement/x0;)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_4c} :catch_4d
    .catch Landroid/os/BadParcelableException; {:try_start_47 .. :try_end_4c} :catch_4d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_47 .. :try_end_4c} :catch_4d
    .catch Ljava/lang/IllegalStateException; {:try_start_47 .. :try_end_4c} :catch_4d
    .catch Landroid/os/NetworkOnMainThreadException; {:try_start_47 .. :try_end_4c} :catch_4d
    .catch Ljava/lang/NullPointerException; {:try_start_47 .. :try_end_4c} :catch_4d
    .catch Ljava/lang/SecurityException; {:try_start_47 .. :try_end_4c} :catch_4d
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_47 .. :try_end_4c} :catch_4d

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :catch_4d
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/k1;->a:Ljava/lang/String;

    .line 79
    .line 80
    const-string v1, "Failed to unregister event listener on calling thread. Trying again on the dynamite thread."

    .line 81
    .line 82
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    :cond_54
    new-instance v0, Lcom/google/android/gms/internal/measurement/y1;

    .line 86
    .line 87
    const/4 v1, 0x0

    .line 88
    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/measurement/y1;-><init>(Lcom/google/android/gms/internal/measurement/k1;Lcom/google/android/gms/internal/measurement/h1;I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/k1;->f(Lcom/google/android/gms/internal/measurement/g1;)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :goto_5e
    :try_start_5e
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_28

    .line 96
    throw p1
.end method
