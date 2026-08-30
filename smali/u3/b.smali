###### Class u3.b (u3.b)
.class public final Lu3/b;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static h:I

.field public static i:Landroid/app/PendingIntent;

.field public static final j:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Ls/j;

.field public final b:Landroid/content/Context;

.field public final c:Lk6/b;

.field public final d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public final e:Landroid/os/Messenger;

.field public f:Landroid/os/Messenger;

.field public g:Lu3/g;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "\\|ID\\|([^|]+)\\|:?+(.*)"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lu3/b;->j:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ls/j;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ls/j;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lu3/b;->a:Ls/j;

    .line 11
    .line 12
    iput-object p1, p0, Lu3/b;->b:Landroid/content/Context;

    .line 13
    .line 14
    new-instance v0, Lk6/b;

    .line 15
    .line 16
    invoke-direct {v0, p1}, Lk6/b;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lu3/b;->c:Lk6/b;

    .line 20
    .line 21
    new-instance p1, Landroid/os/Messenger;

    .line 22
    .line 23
    new-instance v0, Lu3/e;

    .line 24
    .line 25
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-direct {v0, p0, v1}, Lu3/e;-><init>(Lu3/b;Landroid/os/Looper;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lu3/b;->e:Landroid/os/Messenger;

    .line 36
    .line 37
    new-instance p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    invoke-direct {p1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    .line 41
    .line 42
    .line 43
    const-wide/16 v1, 0x3c

    .line 44
    .line 45
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 46
    .line 47
    invoke-virtual {p1, v1, v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lu3/b;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 54
    .line 55
    return-void
.end method

.method public static declared-synchronized b()Ljava/lang/String;
    .registers 3

    .line 1
    const-class v0, Lu3/b;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget v1, Lu3/b;->h:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x1

    .line 7
    .line 8
    sput v2, Lu3/b;->h:I

    .line 9
    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    .line 14
    monitor-exit v0

    .line 15
    return-object v1

    .line 16
    :catchall_f
    move-exception v1

    .line 17
    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    .line 18
    throw v1
.end method

.method public static declared-synchronized c(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 1
    const-class v0, Lu3/b;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lu3/b;->i:Landroid/app/PendingIntent;

    .line 5
    .line 6
    if-nez v1, :cond_1d

    .line 7
    .line 8
    new-instance v1, Landroid/content/Intent;

    .line 9
    .line 10
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "com.google.example.invalidpackage"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    sget v2, Li4/a;->a:I

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-static {p0, v3, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    sput-object p0, Lu3/b;->i:Landroid/app/PendingIntent;

    .line 26
    .line 27
    goto :goto_1d

    .line 28
    :catchall_1b
    move-exception p0

    .line 29
    goto :goto_26

    .line 30
    :cond_1d
    :goto_1d
    const-string p0, "app"

    .line 31
    .line 32
    sget-object v1, Lu3/b;->i:Landroid/app/PendingIntent;

    .line 33
    .line 34
    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_1b

    .line 35
    .line 36
    .line 37
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :goto_26
    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_1b

    .line 40
    throw p0
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)Lp4/q;
    .registers 9

    .line 1
    invoke-static {}, Lu3/b;->b()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lp4/j;

    .line 6
    .line 7
    invoke-direct {v1}, Lp4/j;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lu3/b;->a:Ls/j;

    .line 11
    .line 12
    monitor-enter v2

    .line 13
    :try_start_c
    iget-object v3, p0, Lu3/b;->a:Ls/j;

    .line 14
    .line 15
    invoke-virtual {v3, v0, v1}, Ls/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_d8

    .line 19
    new-instance v2, Landroid/content/Intent;

    .line 20
    .line 21
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v3, "com.google.android.gms"

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    iget-object v3, p0, Lu3/b;->c:Lk6/b;

    .line 30
    .line 31
    invoke-virtual {v3}, Lk6/b;->e()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    const/4 v4, 0x2

    .line 36
    if-ne v3, v4, :cond_2b

    .line 37
    .line 38
    const-string v3, "com.google.iid.TOKEN_REQUEST"

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    goto :goto_30

    .line 44
    :cond_2b
    const-string v3, "com.google.android.c2dm.intent.REGISTER"

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    :goto_30
    invoke-virtual {v2, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lu3/b;->b:Landroid/content/Context;

    .line 53
    .line 54
    invoke-static {p1, v2}, Lu3/b;->c(Landroid/content/Context;Landroid/content/Intent;)V

    .line 55
    .line 56
    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v3, "|ID|"

    .line 60
    .line 61
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v3, "|"

    .line 68
    .line 69
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const-string v3, "kid"

    .line 77
    .line 78
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    .line 80
    .line 81
    const-string p1, "Rpc"

    .line 82
    .line 83
    const/4 v3, 0x3

    .line 84
    invoke-static {p1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-eqz p1, :cond_6c

    .line 89
    .line 90
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    const-string v5, "Sending "

    .line 99
    .line 100
    const-string v6, "Rpc"

    .line 101
    .line 102
    invoke-virtual {v5, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    :cond_6c
    iget-object p1, p0, Lu3/b;->e:Landroid/os/Messenger;

    .line 110
    .line 111
    const-string v5, "google.messenger"

    .line 112
    .line 113
    invoke-virtual {v2, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 114
    .line 115
    .line 116
    iget-object p1, p0, Lu3/b;->f:Landroid/os/Messenger;

    .line 117
    .line 118
    if-nez p1, :cond_7b

    .line 119
    .line 120
    iget-object p1, p0, Lu3/b;->g:Lu3/g;

    .line 121
    .line 122
    if-eqz p1, :cond_a3

    .line 123
    .line 124
    :cond_7b
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    iput-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 129
    .line 130
    :try_start_81
    iget-object v5, p0, Lu3/b;->f:Landroid/os/Messenger;

    .line 131
    .line 132
    if-eqz v5, :cond_89

    .line 133
    .line 134
    invoke-virtual {v5, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 135
    .line 136
    .line 137
    goto :goto_b6

    .line 138
    :cond_89
    iget-object v5, p0, Lu3/b;->g:Lu3/g;

    .line 139
    .line 140
    iget-object v5, v5, Lu3/g;->a:Landroid/os/Messenger;

    .line 141
    .line 142
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v5, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_93
    .catch Landroid/os/RemoteException; {:try_start_81 .. :try_end_93} :catch_94

    .line 146
    .line 147
    .line 148
    goto :goto_b6

    .line 149
    :catch_94
    const-string p1, "Rpc"

    .line 150
    .line 151
    invoke-static {p1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    if-eqz p1, :cond_a3

    .line 156
    .line 157
    const-string p1, "Rpc"

    .line 158
    .line 159
    const-string v3, "Messenger failed, fallback to startService"

    .line 160
    .line 161
    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    :cond_a3
    iget-object p1, p0, Lu3/b;->c:Lk6/b;

    .line 165
    .line 166
    invoke-virtual {p1}, Lk6/b;->e()I

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    if-ne p1, v4, :cond_b1

    .line 171
    .line 172
    iget-object p1, p0, Lu3/b;->b:Landroid/content/Context;

    .line 173
    .line 174
    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 175
    .line 176
    .line 177
    goto :goto_b6

    .line 178
    :cond_b1
    iget-object p1, p0, Lu3/b;->b:Landroid/content/Context;

    .line 179
    .line 180
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 181
    .line 182
    .line 183
    :goto_b6
    iget-object p1, p0, Lu3/b;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 184
    .line 185
    new-instance v2, Landroidx/fragment/app/p;

    .line 186
    .line 187
    const/16 v3, 0xc

    .line 188
    .line 189
    invoke-direct {v2, v3, v1}, Landroidx/fragment/app/p;-><init>(ILjava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    const-wide/16 v3, 0x1e

    .line 193
    .line 194
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 195
    .line 196
    invoke-virtual {p1, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    iget-object v2, v1, Lp4/j;->a:Lp4/q;

    .line 201
    .line 202
    sget-object v3, Lu3/h;->c:Lu3/h;

    .line 203
    .line 204
    new-instance v4, Lc5/h;

    .line 205
    .line 206
    const/16 v5, 0x11

    .line 207
    .line 208
    invoke-direct {v4, p0, v0, p1, v5}, Lc5/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2, v3, v4}, Lp4/q;->a(Ljava/util/concurrent/Executor;Lp4/d;)Lp4/q;

    .line 212
    .line 213
    .line 214
    iget-object p1, v1, Lp4/j;->a:Lp4/q;

    .line 215
    .line 216
    return-object p1

    .line 217
    :catchall_d8
    move-exception p1

    .line 218
    :try_start_d9
    monitor-exit v2
    :try_end_da
    .catchall {:try_start_d9 .. :try_end_da} :catchall_d8

    .line 219
    throw p1
.end method

.method public final d(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 6

    .line 1
    const-string v0, "Missing callback for "

    .line 2
    .line 3
    iget-object v1, p0, Lu3/b;->a:Ls/j;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_5
    iget-object v2, p0, Lu3/b;->a:Ls/j;

    .line 7
    .line 8
    invoke-virtual {v2, p2}, Ls/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lp4/j;

    .line 13
    .line 14
    if-nez v2, :cond_24

    .line 15
    .line 16
    const-string p1, "Rpc"

    .line 17
    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    monitor-exit v1

    .line 34
    return-void

    .line 35
    :catchall_22
    move-exception p1

    .line 36
    goto :goto_29

    .line 37
    :cond_24
    invoke-virtual {v2, p1}, Lp4/j;->a(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    monitor-exit v1

    .line 41
    return-void

    .line 42
    :goto_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_22

    .line 43
    throw p1
.end method
