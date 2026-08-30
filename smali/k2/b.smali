###### Class k2.b (k2.b)
.class public final synthetic Lk2/b;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:J

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;JI)V
    .registers 5

    .line 1
    iput p4, p0, Lk2/b;->a:I

    .line 2
    .line 3
    iput-wide p2, p0, Lk2/b;->b:J

    .line 4
    .line 5
    iput-object p1, p0, Lk2/b;->c:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final a()V
    .registers 14

    .line 1
    iget-wide v0, p0, Lk2/b;->b:J

    .line 2
    .line 3
    iget-object v2, p0, Lk2/b;->c:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v3, Lk2/d;->g:Lk2/n;

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    if-nez v3, :cond_14

    .line 9
    .line 10
    new-instance v3, Lk2/n;

    .line 11
    .line 12
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    invoke-direct {v3, v5, v4}, Lk2/n;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 17
    .line 18
    .line 19
    sput-object v3, Lk2/d;->g:Lk2/n;

    .line 20
    .line 21
    :cond_14
    sget-object v3, Lk2/d;->g:Lk2/n;

    .line 22
    .line 23
    if-nez v3, :cond_19

    .line 24
    .line 25
    goto :goto_1f

    .line 26
    :cond_19
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    iput-object v5, v3, Lk2/n;->c:Ljava/lang/Object;

    .line 31
    .line 32
    :goto_1f
    sget-object v3, Lk2/d;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    const/4 v5, 0x1

    .line 39
    if-gtz v3, :cond_4f

    .line 40
    .line 41
    new-instance v3, Lk2/b;

    .line 42
    .line 43
    invoke-direct {v3, v2, v0, v1, v5}, Lk2/b;-><init>(Ljava/lang/String;JI)V

    .line 44
    .line 45
    .line 46
    sget-object v6, Lk2/d;->e:Ljava/lang/Object;

    .line 47
    .line 48
    monitor-enter v6

    .line 49
    :try_start_30
    sget-object v7, Lk2/d;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 50
    .line 51
    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    invoke-static {v8}, Lq2/w;->b(Ljava/lang/String;)Lq2/t;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    if-nez v8, :cond_3f

    .line 60
    .line 61
    const/16 v8, 0x3c

    .line 62
    .line 63
    goto :goto_41

    .line 64
    :cond_3f
    iget v8, v8, Lq2/t;->b:I

    .line 65
    .line 66
    :goto_41
    int-to-long v8, v8

    .line 67
    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 68
    .line 69
    invoke-interface {v7, v3, v8, v9, v10}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    sput-object v3, Lk2/d;->d:Ljava/util/concurrent/ScheduledFuture;
    :try_end_4a
    .catchall {:try_start_30 .. :try_end_4a} :catchall_4c

    .line 74
    .line 75
    monitor-exit v6

    .line 76
    goto :goto_4f

    .line 77
    :catchall_4c
    move-exception v0

    .line 78
    monitor-exit v6

    .line 79
    throw v0

    .line 80
    :cond_4f
    :goto_4f
    sget-wide v6, Lk2/d;->j:J

    .line 81
    .line 82
    const-wide/16 v8, 0x0

    .line 83
    .line 84
    cmp-long v3, v6, v8

    .line 85
    .line 86
    if-lez v3, :cond_5d

    .line 87
    .line 88
    sub-long/2addr v0, v6

    .line 89
    const/16 v3, 0x3e8

    .line 90
    .line 91
    int-to-long v6, v3

    .line 92
    div-long/2addr v0, v6

    .line 93
    goto :goto_5e

    .line 94
    :cond_5d
    move-wide v0, v8

    .line 95
    :goto_5e
    sget-object v3, Lk2/k;->a:Ly1/n;

    .line 96
    .line 97
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    const/4 v7, 0x0

    .line 106
    invoke-static {v6, v7}, Lq2/w;->k(Ljava/lang/String;Z)Lq2/t;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    if-eqz v6, :cond_a7

    .line 111
    .line 112
    iget-boolean v6, v6, Lq2/t;->d:Z

    .line 113
    .line 114
    if-eqz v6, :cond_a7

    .line 115
    .line 116
    cmp-long v6, v0, v8

    .line 117
    .line 118
    if-lez v6, :cond_a7

    .line 119
    .line 120
    new-instance v7, Ly1/k;

    .line 121
    .line 122
    invoke-direct {v7, v3, v4}, Ly1/k;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    new-instance v10, Landroid/os/Bundle;

    .line 126
    .line 127
    invoke-direct {v10, v5}, Landroid/os/Bundle;-><init>(I)V

    .line 128
    .line 129
    .line 130
    const-string v3, "fb_aa_time_spent_view_name"

    .line 131
    .line 132
    invoke-virtual {v10, v3, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 133
    .line 134
    .line 135
    const-string v8, "fb_aa_time_spent_on_view"

    .line 136
    .line 137
    long-to-double v0, v0

    .line 138
    invoke-static {}, Lx1/j0;->c()Z

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    if-eqz v2, :cond_a7

    .line 143
    .line 144
    invoke-static {v7}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-eqz v2, :cond_96

    .line 149
    .line 150
    goto :goto_a7

    .line 151
    :cond_96
    :try_start_96
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 152
    .line 153
    .line 154
    move-result-object v9

    .line 155
    invoke-static {}, Lk2/d;->b()Ljava/util/UUID;

    .line 156
    .line 157
    .line 158
    move-result-object v12

    .line 159
    const/4 v11, 0x0

    .line 160
    invoke-static/range {v7 .. v12}, Ly1/k;->f(Ly1/k;Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V
    :try_end_a2
    .catchall {:try_start_96 .. :try_end_a2} :catchall_a3

    .line 161
    .line 162
    .line 163
    goto :goto_a7

    .line 164
    :catchall_a3
    move-exception v0

    .line 165
    invoke-static {v0, v7}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    :cond_a7
    :goto_a7
    sget-object v0, Lk2/d;->g:Lk2/n;

    .line 169
    .line 170
    if-eqz v0, :cond_ae

    .line 171
    .line 172
    invoke-virtual {v0}, Lk2/n;->l()V

    .line 173
    .line 174
    .line 175
    :cond_ae
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 1
    iget v0, p0, Lk2/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_74

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Lk2/b;->b:J

    .line 7
    .line 8
    iget-object v2, p0, Lk2/b;->c:Ljava/lang/String;

    .line 9
    .line 10
    sget-object v3, Lk2/d;->g:Lk2/n;

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    if-nez v3, :cond_19

    .line 14
    .line 15
    new-instance v3, Lk2/n;

    .line 16
    .line 17
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-direct {v3, v0, v4}, Lk2/n;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 22
    .line 23
    .line 24
    sput-object v3, Lk2/d;->g:Lk2/n;

    .line 25
    .line 26
    :cond_19
    sget-object v0, Lk2/d;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-gtz v0, :cond_66

    .line 33
    .line 34
    sget-object v0, Lk2/d;->g:Lk2/n;

    .line 35
    .line 36
    sget-object v1, Lk2/d;->i:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v2, v0, v1}, Lk2/o;->d(Ljava/lang/String;Lk2/n;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v1, "com.facebook.appevents.SessionInfo.sessionStartTime"

    .line 54
    .line 55
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 56
    .line 57
    .line 58
    const-string v1, "com.facebook.appevents.SessionInfo.sessionEndTime"

    .line 59
    .line 60
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 61
    .line 62
    .line 63
    const-string v1, "com.facebook.appevents.SessionInfo.interruptionCount"

    .line 64
    .line 65
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 66
    .line 67
    .line 68
    const-string v1, "com.facebook.appevents.SessionInfo.sessionId"

    .line 69
    .line 70
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 71
    .line 72
    .line 73
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 74
    .line 75
    .line 76
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    const-string v1, "com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage"

    .line 89
    .line 90
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 91
    .line 92
    .line 93
    const-string v1, "com.facebook.appevents.SourceApplicationInfo.openedByApplink"

    .line 94
    .line 95
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 96
    .line 97
    .line 98
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 99
    .line 100
    .line 101
    sput-object v4, Lk2/d;->g:Lk2/n;

    .line 102
    .line 103
    :cond_66
    sget-object v0, Lk2/d;->e:Ljava/lang/Object;

    .line 104
    .line 105
    monitor-enter v0

    .line 106
    :try_start_69
    sput-object v4, Lk2/d;->d:Ljava/util/concurrent/ScheduledFuture;
    :try_end_6b
    .catchall {:try_start_69 .. :try_end_6b} :catchall_6d

    .line 107
    .line 108
    monitor-exit v0

    .line 109
    return-void

    .line 110
    :catchall_6d
    move-exception v1

    .line 111
    monitor-exit v0

    .line 112
    throw v1

    .line 113
    :pswitch_70
    invoke-direct {p0}, Lk2/b;->a()V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_70
    .end packed-switch
.end method
