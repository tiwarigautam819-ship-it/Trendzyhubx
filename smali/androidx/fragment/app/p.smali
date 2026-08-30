###### Class androidx.fragment.app.p (androidx.fragment.app.p)
.class public final Landroidx/fragment/app/p;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 1
    iput p1, p0, Landroidx/fragment/app/p;->a:I

    iput-object p2, p0, Landroidx/fragment/app/p;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lk1/h;I)V
    .registers 3

    const/4 p2, 0x4

    iput p2, p0, Landroidx/fragment/app/p;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/p;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lx3/h;Lg/j;)V
    .registers 3

    const/16 p1, 0x11

    iput p1, p0, Landroidx/fragment/app/p;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/fragment/app/p;->b:Ljava/lang/Object;

    return-void
.end method

.method private final a()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/p;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lp4/n;

    .line 4
    .line 5
    iget-object v0, v0, Lp4/n;->c:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    iget-object v1, p0, Landroidx/fragment/app/p;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lp4/n;

    .line 11
    .line 12
    iget-object v1, v1, Lp4/n;->d:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Lp4/c;

    .line 15
    .line 16
    invoke-interface {v1}, Lp4/c;->a()V

    .line 17
    .line 18
    .line 19
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :catchall_14
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    .line 23
    throw v1
.end method

.method private final b()V
    .registers 9

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/p;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lu7/d;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_5
    invoke-virtual {v0}, Lu7/d;->c()Lu7/a;

    .line 7
    .line 8
    .line 9
    move-result-object v1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_65

    .line 10
    monitor-exit v0

    .line 11
    if-nez v1, :cond_d

    .line 12
    .line 13
    return-void

    .line 14
    :cond_d
    iget-object v0, v1, Lu7/a;->c:Lu7/c;

    .line 15
    .line 16
    invoke-static {v0}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Landroidx/fragment/app/p;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v2, Lu7/d;

    .line 22
    .line 23
    sget-object v3, Lu7/d;->j:Ljava/util/logging/Logger;

    .line 24
    .line 25
    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_2a

    .line 32
    .line 33
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 34
    .line 35
    .line 36
    move-result-wide v4

    .line 37
    const-string v6, "starting"

    .line 38
    .line 39
    invoke-static {v1, v0, v6}, Ly1/g;->a(Lu7/a;Lu7/c;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto :goto_2c

    .line 43
    :cond_2a
    const-wide/16 v4, -0x1

    .line 44
    .line 45
    :goto_2c
    :try_start_2c
    invoke-static {v2, v1}, Lu7/d;->a(Lu7/d;Lu7/a;)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_44

    .line 46
    .line 47
    .line 48
    if-eqz v3, :cond_0

    .line 49
    .line 50
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 51
    .line 52
    .line 53
    move-result-wide v2

    .line 54
    sub-long/2addr v2, v4

    .line 55
    invoke-static {v2, v3}, Ly1/g;->l(J)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    const-string v3, "finished run in "

    .line 60
    .line 61
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-static {v1, v0, v2}, Ly1/g;->a(Lu7/a;Lu7/c;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catchall_44
    move-exception v6

    .line 70
    :try_start_45
    iget-object v2, v2, Lu7/d;->a:Lk1/h;

    .line 71
    .line 72
    iget-object v2, v2, Lk1/h;->b:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v2, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 75
    .line 76
    invoke-virtual {v2, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 77
    .line 78
    .line 79
    throw v6
    :try_end_4f
    .catchall {:try_start_45 .. :try_end_4f} :catchall_4f

    .line 80
    :catchall_4f
    move-exception v2

    .line 81
    if-eqz v3, :cond_64

    .line 82
    .line 83
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 84
    .line 85
    .line 86
    move-result-wide v6

    .line 87
    sub-long/2addr v6, v4

    .line 88
    invoke-static {v6, v7}, Ly1/g;->l(J)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    const-string v4, "failed a run in "

    .line 93
    .line 94
    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-static {v1, v0, v3}, Ly1/g;->a(Lu7/a;Lu7/c;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :cond_64
    throw v2

    .line 102
    :catchall_65
    move-exception v1

    .line 103
    monitor-exit v0

    .line 104
    throw v1
.end method


# virtual methods
.method public final run()V
    .registers 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Landroidx/fragment/app/p;->a:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    packed-switch v0, :pswitch_data_1c2

    .line 9
    .line 10
    .line 11
    throw v3

    .line 12
    :pswitch_b
    iget-object v0, v1, Landroidx/fragment/app/p;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lx3/r;

    .line 15
    .line 16
    iget-object v0, v0, Lx3/r;->i:Lx3/l;

    .line 17
    .line 18
    new-instance v2, Lcom/google/android/gms/common/ConnectionResult;

    .line 19
    .line 20
    const/4 v3, 0x4

    .line 21
    invoke-direct {v2, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v2}, Lx3/l;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_1b
    iget-object v0, v1, Landroidx/fragment/app/p;->b:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Lk1/h;

    .line 31
    .line 32
    iget-object v0, v0, Lk1/h;->b:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Lx3/j;

    .line 35
    .line 36
    iget-object v0, v0, Lx3/j;->c:Lw3/a;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const-string v3, " disconnecting because it was signed out."

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-interface {v0, v2}, Lw3/a;->disconnect(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :pswitch_37
    iget-object v0, v1, Landroidx/fragment/app/p;->b:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, Lx3/j;

    .line 59
    .line 60
    invoke-virtual {v0}, Lx3/j;->f()V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :pswitch_3f
    invoke-direct {v1}, Landroidx/fragment/app/p;->b()V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :pswitch_43
    new-instance v0, Ljava/io/IOException;

    .line 69
    .line 70
    const-string v2, "TIMEOUT"

    .line 71
    .line 72
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object v2, v1, Landroidx/fragment/app/p;->b:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v2, Lp4/j;

    .line 78
    .line 79
    invoke-virtual {v2, v0}, Lp4/j;->b(Ljava/lang/Exception;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_5b

    .line 84
    .line 85
    const-string v0, "Rpc"

    .line 86
    .line 87
    const-string v2, "No response"

    .line 88
    .line 89
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    :cond_5b
    return-void

    .line 93
    :pswitch_5c
    invoke-direct {v1}, Landroidx/fragment/app/p;->a()V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :pswitch_60
    iget-object v0, v1, Landroidx/fragment/app/p;->b:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v0, Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode;

    .line 100
    .line 101
    iput-boolean v2, v0, Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode;->b:Z

    .line 102
    .line 103
    iput-boolean v4, v0, Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode;->c:Z

    .line 104
    .line 105
    iget-object v0, v0, Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode;->a:Lorg/apache/cordova/h0;

    .line 106
    .line 107
    check-cast v0, Lk1/h;

    .line 108
    .line 109
    iget-object v0, v0, Lk1/h;->b:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v0, Lorg/apache/cordova/engine/SystemWebViewEngine;

    .line 112
    .line 113
    iget-object v0, v0, Lorg/apache/cordova/engine/SystemWebViewEngine;->a:Lorg/apache/cordova/engine/SystemWebView;

    .line 114
    .line 115
    if-eqz v0, :cond_77

    .line 116
    .line 117
    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setNetworkAvailable(Z)V

    .line 118
    .line 119
    .line 120
    :cond_77
    return-void

    .line 121
    :pswitch_78
    iget-object v0, v1, Landroidx/fragment/app/p;->b:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v0, Lo4/a;

    .line 124
    .line 125
    iget-object v3, v0, Lo4/a;->a:Ljava/lang/Object;

    .line 126
    .line 127
    monitor-enter v3

    .line 128
    :try_start_7f
    invoke-virtual {v0}, Lo4/a;->b()Z

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    if-nez v2, :cond_89

    .line 133
    .line 134
    monitor-exit v3

    .line 135
    goto :goto_ab

    .line 136
    :catchall_87
    move-exception v0

    .line 137
    goto :goto_ac

    .line 138
    :cond_89
    const-string v2, "WakeLock"

    .line 139
    .line 140
    iget-object v5, v0, Lo4/a;->j:Ljava/lang/String;

    .line 141
    .line 142
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    const-string v6, " ** IS FORCE-RELEASED ON TIMEOUT **"

    .line 147
    .line 148
    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0}, Lo4/a;->d()V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0}, Lo4/a;->b()Z

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    if-nez v2, :cond_a5

    .line 163
    .line 164
    monitor-exit v3

    .line 165
    goto :goto_ab

    .line 166
    :cond_a5
    iput v4, v0, Lo4/a;->c:I

    .line 167
    .line 168
    invoke-virtual {v0}, Lo4/a;->e()V

    .line 169
    .line 170
    .line 171
    monitor-exit v3

    .line 172
    :goto_ab
    return-void

    .line 173
    :goto_ac
    monitor-exit v3
    :try_end_ad
    .catchall {:try_start_7f .. :try_end_ad} :catchall_87

    .line 174
    throw v0

    .line 175
    :pswitch_ae
    iget-object v0, v1, Landroidx/fragment/app/p;->b:Ljava/lang/Object;

    .line 176
    .line 177
    check-cast v0, Lm0/d;

    .line 178
    .line 179
    iget-object v3, v0, Lm0/d;->c:Lm/m1;

    .line 180
    .line 181
    iget-object v4, v0, Lm0/d;->a:Lm0/a;

    .line 182
    .line 183
    iget-boolean v5, v0, Lm0/d;->w:Z

    .line 184
    .line 185
    if-nez v5, :cond_bc

    .line 186
    .line 187
    goto/16 :goto_138

    .line 188
    .line 189
    :cond_bc
    iget-boolean v5, v0, Lm0/d;->m:Z

    .line 190
    .line 191
    if-eqz v5, :cond_d2

    .line 192
    .line 193
    iput-boolean v2, v0, Lm0/d;->m:Z

    .line 194
    .line 195
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 196
    .line 197
    .line 198
    move-result-wide v5

    .line 199
    iput-wide v5, v4, Lm0/a;->e:J

    .line 200
    .line 201
    const-wide/16 v7, -0x1

    .line 202
    .line 203
    iput-wide v7, v4, Lm0/a;->g:J

    .line 204
    .line 205
    iput-wide v5, v4, Lm0/a;->f:J

    .line 206
    .line 207
    const/high16 v5, 0x3f000000    # 0.5f

    .line 208
    .line 209
    iput v5, v4, Lm0/a;->h:F

    .line 210
    .line 211
    :cond_d2
    iget-wide v5, v4, Lm0/a;->g:J

    .line 212
    .line 213
    const-wide/16 v7, 0x0

    .line 214
    .line 215
    cmp-long v5, v5, v7

    .line 216
    .line 217
    if-lez v5, :cond_e9

    .line 218
    .line 219
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 220
    .line 221
    .line 222
    move-result-wide v5

    .line 223
    iget-wide v9, v4, Lm0/a;->g:J

    .line 224
    .line 225
    iget v11, v4, Lm0/a;->i:I

    .line 226
    .line 227
    int-to-long v11, v11

    .line 228
    add-long/2addr v9, v11

    .line 229
    cmp-long v5, v5, v9

    .line 230
    .line 231
    if-lez v5, :cond_e9

    .line 232
    .line 233
    goto :goto_ef

    .line 234
    :cond_e9
    invoke-virtual {v0}, Lm0/d;->e()Z

    .line 235
    .line 236
    .line 237
    move-result v5

    .line 238
    if-nez v5, :cond_f2

    .line 239
    .line 240
    :goto_ef
    iput-boolean v2, v0, Lm0/d;->w:Z

    .line 241
    .line 242
    goto :goto_138

    .line 243
    :cond_f2
    iget-boolean v5, v0, Lm0/d;->v:Z

    .line 244
    .line 245
    if-eqz v5, :cond_10c

    .line 246
    .line 247
    iput-boolean v2, v0, Lm0/d;->v:Z

    .line 248
    .line 249
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 250
    .line 251
    .line 252
    move-result-wide v9

    .line 253
    const/4 v15, 0x0

    .line 254
    const/16 v16, 0x0

    .line 255
    .line 256
    const/4 v13, 0x3

    .line 257
    const/4 v14, 0x0

    .line 258
    move-wide v11, v9

    .line 259
    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    invoke-virtual {v3, v2}, Lm/m1;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 264
    .line 265
    .line 266
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 267
    .line 268
    .line 269
    :cond_10c
    iget-wide v5, v4, Lm0/a;->f:J

    .line 270
    .line 271
    cmp-long v2, v5, v7

    .line 272
    .line 273
    if-eqz v2, :cond_139

    .line 274
    .line 275
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 276
    .line 277
    .line 278
    move-result-wide v5

    .line 279
    invoke-virtual {v4, v5, v6}, Lm0/a;->a(J)F

    .line 280
    .line 281
    .line 282
    move-result v2

    .line 283
    const/high16 v7, -0x3f800000    # -4.0f

    .line 284
    .line 285
    mul-float/2addr v7, v2

    .line 286
    mul-float/2addr v7, v2

    .line 287
    const/high16 v8, 0x40800000    # 4.0f

    .line 288
    .line 289
    mul-float/2addr v2, v8

    .line 290
    add-float/2addr v2, v7

    .line 291
    iget-wide v7, v4, Lm0/a;->f:J

    .line 292
    .line 293
    sub-long v7, v5, v7

    .line 294
    .line 295
    iput-wide v5, v4, Lm0/a;->f:J

    .line 296
    .line 297
    long-to-float v5, v7

    .line 298
    mul-float/2addr v5, v2

    .line 299
    iget v2, v4, Lm0/a;->d:F

    .line 300
    .line 301
    mul-float/2addr v5, v2

    .line 302
    float-to-int v2, v5

    .line 303
    iget-object v0, v0, Lm0/d;->y:Lm/m1;

    .line 304
    .line 305
    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->scrollListBy(I)V

    .line 306
    .line 307
    .line 308
    sget-object v0, Lj0/k0;->a:Ljava/util/WeakHashMap;

    .line 309
    .line 310
    invoke-virtual {v3, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 311
    .line 312
    .line 313
    :goto_138
    return-void

    .line 314
    :cond_139
    new-instance v0, Ljava/lang/RuntimeException;

    .line 315
    .line 316
    const-string v2, "Cannot compute scroll delta before calling start()"

    .line 317
    .line 318
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    throw v0

    .line 322
    :pswitch_141
    iget-object v0, v1, Landroidx/fragment/app/p;->b:Ljava/lang/Object;

    .line 323
    .line 324
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 325
    .line 326
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->u()Z

    .line 327
    .line 328
    .line 329
    return-void

    .line 330
    :pswitch_149
    iget-object v0, v1, Landroidx/fragment/app/p;->b:Ljava/lang/Object;

    .line 331
    .line 332
    check-cast v0, Lm/m1;

    .line 333
    .line 334
    iput-object v3, v0, Lm/m1;->l:Landroidx/fragment/app/p;

    .line 335
    .line 336
    invoke-virtual {v0}, Lm/m1;->drawableStateChanged()V

    .line 337
    .line 338
    .line 339
    return-void

    .line 340
    :pswitch_153
    iget-object v0, v1, Landroidx/fragment/app/p;->b:Ljava/lang/Object;

    .line 341
    .line 342
    check-cast v0, Li/e;

    .line 343
    .line 344
    invoke-virtual {v0, v4}, Li/e;->a(Z)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 348
    .line 349
    .line 350
    return-void

    .line 351
    :pswitch_15e
    iget-object v0, v1, Landroidx/fragment/app/p;->b:Ljava/lang/Object;

    .line 352
    .line 353
    check-cast v0, Lk1/h;

    .line 354
    .line 355
    iget-object v0, v0, Lk1/h;->b:Ljava/lang/Object;

    .line 356
    .line 357
    return-void

    .line 358
    :pswitch_165
    iget-object v0, v1, Landroidx/fragment/app/p;->b:Ljava/lang/Object;

    .line 359
    .line 360
    check-cast v0, Lg/n0;

    .line 361
    .line 362
    iget-object v4, v0, Lg/n0;->b:Landroid/view/Window$Callback;

    .line 363
    .line 364
    invoke-virtual {v0}, Lg/n0;->p()Landroid/view/Menu;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    instance-of v5, v0, Ll/n;

    .line 369
    .line 370
    if-eqz v5, :cond_177

    .line 371
    .line 372
    move-object v5, v0

    .line 373
    check-cast v5, Ll/n;

    .line 374
    .line 375
    goto :goto_178

    .line 376
    :cond_177
    move-object v5, v3

    .line 377
    :goto_178
    if-eqz v5, :cond_17d

    .line 378
    .line 379
    invoke-virtual {v5}, Ll/n;->w()V

    .line 380
    .line 381
    .line 382
    :cond_17d
    :try_start_17d
    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 383
    .line 384
    .line 385
    invoke-interface {v4, v2, v0}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 386
    .line 387
    .line 388
    move-result v6

    .line 389
    if-eqz v6, :cond_18f

    .line 390
    .line 391
    invoke-interface {v4, v2, v3, v0}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 392
    .line 393
    .line 394
    move-result v2

    .line 395
    if-nez v2, :cond_192

    .line 396
    .line 397
    goto :goto_18f

    .line 398
    :catchall_18d
    move-exception v0

    .line 399
    goto :goto_198

    .line 400
    :cond_18f
    :goto_18f
    invoke-interface {v0}, Landroid/view/Menu;->clear()V
    :try_end_192
    .catchall {:try_start_17d .. :try_end_192} :catchall_18d

    .line 401
    .line 402
    .line 403
    :cond_192
    if-eqz v5, :cond_197

    .line 404
    .line 405
    invoke-virtual {v5}, Ll/n;->v()V

    .line 406
    .line 407
    .line 408
    :cond_197
    return-void

    .line 409
    :goto_198
    if-eqz v5, :cond_19d

    .line 410
    .line 411
    invoke-virtual {v5}, Ll/n;->v()V

    .line 412
    .line 413
    .line 414
    :cond_19d
    throw v0

    .line 415
    :pswitch_19e
    iget-object v0, v1, Landroidx/fragment/app/p;->b:Ljava/lang/Object;

    .line 416
    .line 417
    check-cast v0, Landroidx/fragment/app/y0;

    .line 418
    .line 419
    invoke-virtual {v0, v4}, Landroidx/fragment/app/y0;->z(Z)Z

    .line 420
    .line 421
    .line 422
    return-void

    .line 423
    :pswitch_1a6
    iget-object v0, v1, Landroidx/fragment/app/p;->b:Ljava/lang/Object;

    .line 424
    .line 425
    check-cast v0, Landroidx/fragment/app/c0;

    .line 426
    .line 427
    iget-object v2, v0, Landroidx/fragment/app/c0;->S:Landroidx/fragment/app/z;

    .line 428
    .line 429
    if-eqz v2, :cond_1b5

    .line 430
    .line 431
    invoke-virtual {v0}, Landroidx/fragment/app/c0;->b()Landroidx/fragment/app/z;

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 436
    .line 437
    .line 438
    :cond_1b5
    return-void

    .line 439
    :pswitch_1b6
    iget-object v0, v1, Landroidx/fragment/app/p;->b:Ljava/lang/Object;

    .line 440
    .line 441
    check-cast v0, Landroidx/fragment/app/t;

    .line 442
    .line 443
    iget-object v2, v0, Landroidx/fragment/app/t;->g0:Landroidx/fragment/app/r;

    .line 444
    .line 445
    iget-object v0, v0, Landroidx/fragment/app/t;->o0:Landroid/app/Dialog;

    .line 446
    .line 447
    invoke-virtual {v2, v0}, Landroidx/fragment/app/r;->onDismiss(Landroid/content/DialogInterface;)V

    .line 448
    .line 449
    .line 450
    return-void

    .line 451
    :pswitch_data_1c2
    .packed-switch 0x0
        :pswitch_1b6
        :pswitch_1a6
        :pswitch_19e
        :pswitch_165
        :pswitch_15e
        :pswitch_153
        :pswitch_149
        :pswitch_141
        :pswitch_ae
        :pswitch_78
        :pswitch_60
        :pswitch_5c
        :pswitch_43
        :pswitch_3f
        :pswitch_37
        :pswitch_1b
        :pswitch_b
    .end packed-switch
.end method
