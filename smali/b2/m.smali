###### Class b2.m (b2.m)
.class public final Lb2/m;
.super Ljava/util/TimerTask;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final synthetic a:Lb2/n;


# direct methods
.method public constructor <init>(Lb2/n;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lb2/m;->a:Lb2/n;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 10

    .line 1
    const-class v0, Lb2/n;

    .line 2
    .line 3
    :try_start_2
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6} :catch_9c

    .line 7
    const/4 v2, 0x0

    .line 8
    iget-object v3, p0, Lb2/m;->a:Lb2/n;

    .line 9
    .line 10
    if-eqz v1, :cond_d

    .line 11
    .line 12
    :goto_b
    move-object v1, v2

    .line 13
    goto :goto_15

    .line 14
    :cond_d
    :try_start_d
    iget-object v1, v3, Lb2/n;->b:Ljava/lang/ref/WeakReference;
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_10

    .line 15
    .line 16
    goto :goto_15

    .line 17
    :catchall_10
    move-exception v1

    .line 18
    :try_start_11
    invoke-static {v1, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    goto :goto_b

    .line 22
    :goto_15
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Landroid/app/Activity;

    .line 27
    .line 28
    invoke-static {v1}, Lk2/e;->i(Landroid/app/Activity;)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    if-eqz v1, :cond_df

    .line 33
    .line 34
    if-nez v4, :cond_25

    .line 35
    .line 36
    goto/16 :goto_df

    .line 37
    .line 38
    :cond_25
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    sget-object v5, Lb2/f;->a:Lb2/f;

    .line 47
    .line 48
    const-class v5, Lb2/f;

    .line 49
    .line 50
    invoke-static {v5}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v6
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_35} :catch_9c

    .line 54
    const/4 v7, 0x0

    .line 55
    if-eqz v6, :cond_39

    .line 56
    .line 57
    goto :goto_44

    .line 58
    :cond_39
    :try_start_39
    sget-object v6, Lb2/f;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    .line 60
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 61
    .line 62
    .line 63
    move-result v7
    :try_end_3f
    .catchall {:try_start_39 .. :try_end_3f} :catchall_40

    .line 64
    goto :goto_44

    .line 65
    :catchall_40
    move-exception v6

    .line 66
    :try_start_41
    invoke-static {v6, v5}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    :goto_44
    if-nez v7, :cond_48

    .line 70
    .line 71
    goto/16 :goto_df

    .line 72
    .line 73
    :cond_48
    new-instance v5, Ljava/util/concurrent/FutureTask;

    .line 74
    .line 75
    new-instance v6, Lb2/l;

    .line 76
    .line 77
    invoke-direct {v6, v4}, Lb2/l;-><init>(Landroid/view/View;)V

    .line 78
    .line 79
    .line 80
    invoke-direct {v5, v6}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 81
    .line 82
    .line 83
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v6
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_56} :catch_9c

    .line 87
    if-eqz v6, :cond_59

    .line 88
    .line 89
    goto :goto_60

    .line 90
    :cond_59
    :try_start_59
    iget-object v2, v3, Lb2/n;->a:Landroid/os/Handler;
    :try_end_5b
    .catchall {:try_start_59 .. :try_end_5b} :catchall_5c

    .line 91
    .line 92
    goto :goto_60

    .line 93
    :catchall_5c
    move-exception v6

    .line 94
    :try_start_5d
    invoke-static {v6, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    :goto_60
    invoke-virtual {v2, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 98
    .line 99
    .line 100
    const-string v2, ""
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_65} :catch_9c

    .line 101
    .line 102
    :try_start_65
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 103
    .line 104
    const-wide/16 v7, 0x1

    .line 105
    .line 106
    invoke-virtual {v5, v7, v8, v6}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    check-cast v5, Ljava/lang/String;
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_6f} :catch_71

    .line 111
    .line 112
    move-object v2, v5

    .line 113
    goto :goto_7b

    .line 114
    :catch_71
    move-exception v5

    .line 115
    :try_start_72
    invoke-static {}, Lb2/n;->a()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    const-string v7, "Failed to take screenshot."

    .line 120
    .line 121
    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    .line 123
    .line 124
    :goto_7b
    new-instance v5, Lorg/json/JSONObject;

    .line 125
    .line 126
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_80} :catch_9c

    .line 127
    .line 128
    .line 129
    :try_start_80
    const-string v6, "screenname"

    .line 130
    .line 131
    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    .line 133
    .line 134
    const-string v1, "screenshot"

    .line 135
    .line 136
    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    .line 138
    .line 139
    new-instance v1, Lorg/json/JSONArray;

    .line 140
    .line 141
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-static {v4}, Lc2/e;->c(Landroid/view/View;)Lorg/json/JSONObject;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 149
    .line 150
    .line 151
    const-string v2, "view"

    .line 152
    .line 153
    invoke-virtual {v5, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9b
    .catch Lorg/json/JSONException; {:try_start_80 .. :try_end_9b} :catch_9e
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_9b} :catch_9c

    .line 154
    .line 155
    .line 156
    goto :goto_a7

    .line 157
    :catch_9c
    move-exception v0

    .line 158
    goto :goto_d6

    .line 159
    :catch_9e
    :try_start_9e
    invoke-static {}, Lb2/n;->a()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    const-string v2, "Failed to create JSONObject"

    .line 164
    .line 165
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    :goto_a7
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    const-string v2, "viewTree.toString()"

    .line 173
    .line 174
    invoke-static {v2, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v2
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_b4} :catch_9c

    .line 181
    if-eqz v2, :cond_b7

    .line 182
    .line 183
    goto :goto_df

    .line 184
    :cond_b7
    :try_start_b7
    invoke-static {v3}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v2
    :try_end_bb
    .catchall {:try_start_b7 .. :try_end_bb} :catchall_d1

    .line 188
    if-eqz v2, :cond_be

    .line 189
    .line 190
    goto :goto_df

    .line 191
    :cond_be
    :try_start_be
    invoke-static {}, Lx1/r;->c()Ljava/util/concurrent/Executor;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    new-instance v4, La2/i;

    .line 196
    .line 197
    const/4 v5, 0x5

    .line 198
    invoke-direct {v4, v1, v5, v3}, La2/i;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_cb
    .catchall {:try_start_be .. :try_end_cb} :catchall_cc

    .line 202
    .line 203
    .line 204
    goto :goto_df

    .line 205
    :catchall_cc
    move-exception v1

    .line 206
    :try_start_cd
    invoke-static {v1, v3}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_d0
    .catchall {:try_start_cd .. :try_end_d0} :catchall_d1

    .line 207
    .line 208
    .line 209
    goto :goto_df

    .line 210
    :catchall_d1
    move-exception v1

    .line 211
    :try_start_d2
    invoke-static {v1, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_d5} :catch_9c

    .line 212
    .line 213
    .line 214
    goto :goto_df

    .line 215
    :goto_d6
    invoke-static {}, Lb2/n;->a()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    const-string v2, "UI Component tree indexing failure!"

    .line 220
    .line 221
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 222
    .line 223
    .line 224
    :cond_df
    :goto_df
    return-void
.end method
