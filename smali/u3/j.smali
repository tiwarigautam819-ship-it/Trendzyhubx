###### Class u3.j (u3.j)
.class public final synthetic Lu3/j;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lu3/l;


# direct methods
.method public synthetic constructor <init>(Lu3/l;I)V
    .registers 3

    .line 1
    iput p2, p0, Lu3/j;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lu3/j;->b:Lu3/l;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final a()V
    .registers 4

    .line 1
    iget-object v0, p0, Lu3/j;->b:Lu3/l;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget v1, v0, Lu3/l;->a:I

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne v1, v2, :cond_11

    .line 8
    .line 9
    const-string v1, "Timed out while binding"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lu3/l;->a(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    .line 12
    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_f
    move-exception v1

    .line 17
    goto :goto_13

    .line 18
    :cond_11
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :goto_13
    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_f

    .line 21
    throw v1
.end method


# virtual methods
.method public final run()V
    .registers 8

    .line 1
    iget v0, p0, Lu3/j;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_cc

    .line 4
    .line 5
    .line 6
    const-string v0, "Service disconnected"

    .line 7
    .line 8
    iget-object v1, p0, Lu3/j;->b:Lu3/l;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Lu3/l;->a(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_d
    invoke-direct {p0}, Lu3/j;->a()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :goto_11
    :pswitch_11
    iget-object v0, p0, Lu3/j;->b:Lu3/l;

    .line 19
    .line 20
    monitor-enter v0

    .line 21
    :try_start_14
    iget v1, v0, Lu3/l;->a:I

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    if-eq v1, v2, :cond_1e

    .line 25
    .line 26
    monitor-exit v0

    .line 27
    goto :goto_2a

    .line 28
    :catchall_1b
    move-exception v1

    .line 29
    goto/16 :goto_c9

    .line 30
    .line 31
    :cond_1e
    iget-object v1, v0, Lu3/l;->d:Ljava/util/ArrayDeque;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_2b

    .line 38
    .line 39
    invoke-virtual {v0}, Lu3/l;->c()V

    .line 40
    .line 41
    .line 42
    monitor-exit v0

    .line 43
    :goto_2a
    return-void

    .line 44
    :cond_2b
    iget-object v1, v0, Lu3/l;->d:Ljava/util/ArrayDeque;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lu3/m;

    .line 51
    .line 52
    iget-object v2, v0, Lu3/l;->e:Landroid/util/SparseArray;

    .line 53
    .line 54
    iget v3, v1, Lu3/m;->a:I

    .line 55
    .line 56
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iget-object v2, v0, Lu3/l;->f:Lu3/n;

    .line 60
    .line 61
    iget-object v2, v2, Lu3/n;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 62
    .line 63
    new-instance v3, Ls4/b;

    .line 64
    .line 65
    const/16 v4, 0x10

    .line 66
    .line 67
    invoke-direct {v3, v0, v4, v1}, Ls4/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 71
    .line 72
    const-wide/16 v5, 0x1e

    .line 73
    .line 74
    invoke-interface {v2, v3, v5, v6, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 75
    .line 76
    .line 77
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_14 .. :try_end_4d} :catchall_1b

    .line 78
    const-string v2, "MessengerIpcClient"

    .line 79
    .line 80
    const/4 v3, 0x3

    .line 81
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_65

    .line 86
    .line 87
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    const-string v3, "Sending "

    .line 92
    .line 93
    const-string v4, "MessengerIpcClient"

    .line 94
    .line 95
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    :cond_65
    iget-object v2, v0, Lu3/l;->f:Lu3/n;

    .line 103
    .line 104
    iget-object v3, v0, Lu3/l;->b:Landroid/os/Messenger;

    .line 105
    .line 106
    iget v4, v1, Lu3/m;->c:I

    .line 107
    .line 108
    iget-object v2, v2, Lu3/n;->a:Landroid/content/Context;

    .line 109
    .line 110
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    iput v4, v5, Landroid/os/Message;->what:I

    .line 115
    .line 116
    iget v4, v1, Lu3/m;->a:I

    .line 117
    .line 118
    iput v4, v5, Landroid/os/Message;->arg1:I

    .line 119
    .line 120
    iput-object v3, v5, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 121
    .line 122
    new-instance v3, Landroid/os/Bundle;

    .line 123
    .line 124
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1}, Lu3/m;->a()Z

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    const-string v6, "oneWay"

    .line 132
    .line 133
    invoke-virtual {v3, v6, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    const-string v4, "pkg"

    .line 141
    .line 142
    invoke-virtual {v3, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    iget-object v1, v1, Lu3/m;->d:Landroid/os/Bundle;

    .line 146
    .line 147
    const-string v2, "data"

    .line 148
    .line 149
    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v5, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 153
    .line 154
    .line 155
    :try_start_9a
    iget-object v1, v0, Lu3/l;->c:Lcom/google/android/gms/internal/measurement/y4;

    .line 156
    .line 157
    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast v2, Landroid/os/Messenger;

    .line 160
    .line 161
    if-eqz v2, :cond_a7

    .line 162
    .line 163
    invoke-virtual {v2, v5}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 164
    .line 165
    .line 166
    goto/16 :goto_11

    .line 167
    .line 168
    :cond_a7
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast v1, Lu3/g;

    .line 171
    .line 172
    if-eqz v1, :cond_b7

    .line 173
    .line 174
    iget-object v1, v1, Lu3/g;->a:Landroid/os/Messenger;

    .line 175
    .line 176
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v5}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 180
    .line 181
    .line 182
    goto/16 :goto_11

    .line 183
    .line 184
    :cond_b7
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 185
    .line 186
    const-string v2, "Both messengers are null"

    .line 187
    .line 188
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    throw v1
    :try_end_bf
    .catch Landroid/os/RemoteException; {:try_start_9a .. :try_end_bf} :catch_bf

    .line 192
    :catch_bf
    move-exception v1

    .line 193
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-virtual {v0, v1}, Lu3/l;->a(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    goto/16 :goto_11

    .line 201
    .line 202
    :goto_c9
    :try_start_c9
    monitor-exit v0
    :try_end_ca
    .catchall {:try_start_c9 .. :try_end_ca} :catchall_1b

    .line 203
    throw v1

    .line 204
    nop

    .line 205
    :pswitch_data_cc
    .packed-switch 0x0
        :pswitch_11
        :pswitch_d
    .end packed-switch
.end method
