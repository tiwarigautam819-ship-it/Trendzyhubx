###### Class a2.i (a2.i)
.class public final synthetic La2/i;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 4

    .line 1
    iput p2, p0, La2/i;->a:I

    .line 2
    .line 3
    iput-object p1, p0, La2/i;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, La2/i;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final a()V
    .registers 4

    .line 1
    iget-object v0, p0, La2/i;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lv4/m;

    .line 4
    .line 5
    iget-object v1, p0, La2/i;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lg5/a;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_9
    iget-object v2, v0, Lv4/m;->b:Ljava/util/Set;

    .line 11
    .line 12
    if-nez v2, :cond_15

    .line 13
    .line 14
    iget-object v2, v0, Lv4/m;->a:Ljava/util/Set;

    .line 15
    .line 16
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    goto :goto_1e

    .line 20
    :catchall_13
    move-exception v1

    .line 21
    goto :goto_20

    .line 22
    :cond_15
    iget-object v2, v0, Lv4/m;->b:Ljava/util/Set;

    .line 23
    .line 24
    invoke-interface {v1}, Lg5/a;->get()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_13

    .line 29
    .line 30
    .line 31
    :goto_1e
    monitor-exit v0

    .line 32
    return-void

    .line 33
    :goto_20
    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_13

    .line 34
    throw v1
.end method

.method private final b()V
    .registers 6

    .line 1
    iget-object v0, p0, La2/i;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ly1/b;

    .line 4
    .line 5
    iget-object v1, p0, La2/i;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ly1/e;

    .line 8
    .line 9
    const-class v2, Ly1/i;

    .line 10
    .line 11
    invoke-static {v2}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_11

    .line 16
    .line 17
    goto :goto_52

    .line 18
    :cond_11
    :try_start_11
    const-string v2, "$accessTokenAppId"

    .line 19
    .line 20
    invoke-static {v2, v0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    sget-object v2, Ly1/i;->a:Ly2/p;

    .line 24
    .line 25
    monitor-enter v2
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_3e

    .line 26
    :try_start_19
    invoke-virtual {v2, v0}, Ly2/p;->d(Ly1/b;)Ly1/s;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_25

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ly1/s;->a(Ly1/e;)V
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_23

    .line 33
    .line 34
    .line 35
    goto :goto_25

    .line 36
    :catchall_23
    move-exception v0

    .line 37
    goto :goto_53

    .line 38
    :cond_25
    :goto_25
    :try_start_25
    monitor-exit v2

    .line 39
    sget-object v0, Ly1/k;->c:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {}, Lx1/w;->n()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/4 v1, 0x2

    .line 46
    if-eq v0, v1, :cond_40

    .line 47
    .line 48
    sget-object v0, Ly1/i;->a:Ly2/p;

    .line 49
    .line 50
    invoke-virtual {v0}, Ly2/p;->c()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    const/16 v1, 0x64

    .line 55
    .line 56
    if-le v0, v1, :cond_40

    .line 57
    .line 58
    const/4 v0, 0x5

    .line 59
    invoke-static {v0}, Ly1/i;->d(I)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :catchall_3e
    move-exception v0

    .line 64
    goto :goto_55

    .line 65
    :cond_40
    sget-object v0, Ly1/i;->c:Ljava/util/concurrent/ScheduledFuture;

    .line 66
    .line 67
    if-nez v0, :cond_52

    .line 68
    .line 69
    sget-object v0, Ly1/i;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 70
    .line 71
    sget-object v1, Ly1/i;->d:Li2/c;

    .line 72
    .line 73
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 74
    .line 75
    const-wide/16 v3, 0xf

    .line 76
    .line 77
    invoke-interface {v0, v1, v3, v4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    sput-object v0, Ly1/i;->c:Ljava/util/concurrent/ScheduledFuture;
    :try_end_52
    .catchall {:try_start_25 .. :try_end_52} :catchall_3e

    .line 82
    .line 83
    :cond_52
    :goto_52
    return-void

    .line 84
    :goto_53
    :try_start_53
    monitor-exit v2
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_23

    .line 85
    :try_start_54
    throw v0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_3e

    .line 86
    :goto_55
    const-class v1, Ly1/i;

    .line 87
    .line 88
    invoke-static {v0, v1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 33

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, La2/i;->a:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v4, 0x0

    .line 7
    packed-switch v0, :pswitch_data_522

    .line 8
    .line 9
    .line 10
    iget-object v0, v1, La2/i;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Landroid/view/View;

    .line 13
    .line 14
    iget-object v2, v1, La2/i;->c:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Lz1/d;

    .line 17
    .line 18
    const-class v3, Lz1/d;

    .line 19
    .line 20
    invoke-static {v3}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_1a

    .line 25
    .line 26
    goto :goto_27

    .line 27
    :cond_1a
    :try_start_1a
    instance-of v4, v0, Landroid/widget/EditText;

    .line 28
    .line 29
    if-nez v4, :cond_1f

    .line 30
    .line 31
    goto :goto_27

    .line 32
    :cond_1f
    invoke-virtual {v2, v0}, Lz1/d;->b(Landroid/view/View;)V
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_23

    .line 33
    .line 34
    .line 35
    goto :goto_27

    .line 36
    :catchall_23
    move-exception v0

    .line 37
    invoke-static {v0, v3}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :goto_27
    return-void

    .line 41
    :pswitch_28
    iget-object v0, v1, La2/i;->b:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v0, Landroid/content/Context;

    .line 44
    .line 45
    iget-object v3, v1, La2/i;->c:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v3, Ly1/k;

    .line 48
    .line 49
    const-string v5, "kitsBitmask"

    .line 50
    .line 51
    new-instance v6, Landroid/os/Bundle;

    .line 52
    .line 53
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v7, "com.facebook.core.Core"

    .line 57
    .line 58
    const-string v8, "com.facebook.login.Login"

    .line 59
    .line 60
    const-string v9, "com.facebook.share.Share"

    .line 61
    .line 62
    const-string v10, "com.facebook.places.Places"

    .line 63
    .line 64
    const-string v11, "com.facebook.messenger.Messenger"

    .line 65
    .line 66
    const-string v12, "com.facebook.applinks.AppLinks"

    .line 67
    .line 68
    const-string v13, "com.facebook.marketing.Marketing"

    .line 69
    .line 70
    const-string v14, "com.facebook.gamingservices.GamingServices"

    .line 71
    .line 72
    const-string v15, "com.facebook.all.All"

    .line 73
    .line 74
    const-string v16, "com.android.billingclient.api.BillingClient"

    .line 75
    .line 76
    const-string v17, "com.android.vending.billing.IInAppBillingService"

    .line 77
    .line 78
    filled-new-array/range {v7 .. v17}, [Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    const-string v8, "core_lib_included"

    .line 83
    .line 84
    const-string v9, "login_lib_included"

    .line 85
    .line 86
    const-string v10, "share_lib_included"

    .line 87
    .line 88
    const-string v11, "places_lib_included"

    .line 89
    .line 90
    const-string v12, "messenger_lib_included"

    .line 91
    .line 92
    const-string v13, "applinks_lib_included"

    .line 93
    .line 94
    const-string v14, "marketing_lib_included"

    .line 95
    .line 96
    const-string v15, "gamingservices_lib_included"

    .line 97
    .line 98
    const-string v16, "all_lib_included"

    .line 99
    .line 100
    const-string v17, "billing_client_lib_included"

    .line 101
    .line 102
    const-string v18, "billing_service_lib_included"

    .line 103
    .line 104
    filled-new-array/range {v8 .. v18}, [Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    move v9, v4

    .line 109
    move v10, v9

    .line 110
    :goto_6d
    const/16 v11, 0xb

    .line 111
    .line 112
    if-ge v9, v11, :cond_81

    .line 113
    .line 114
    aget-object v11, v7, v9

    .line 115
    .line 116
    aget-object v12, v8, v9

    .line 117
    .line 118
    :try_start_75
    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v6, v12, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_7b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_75 .. :try_end_7b} :catch_7e

    .line 122
    .line 123
    .line 124
    shl-int v11, v2, v9

    .line 125
    .line 126
    or-int/2addr v10, v11

    .line 127
    :catch_7e
    add-int/lit8 v9, v9, 0x1

    .line 128
    .line 129
    goto :goto_6d

    .line 130
    :cond_81
    const-string v2, "com.facebook.sdk.appEventPreferences"

    .line 131
    .line 132
    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    if-eq v2, v10, :cond_9d

    .line 141
    .line 142
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-interface {v0, v5, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 151
    .line 152
    .line 153
    const-string v0, "fb_sdk_initialize"

    .line 154
    .line 155
    invoke-virtual {v3, v6, v0}, Ly1/k;->g(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    :cond_9d
    return-void

    .line 159
    :pswitch_9e
    iget-object v0, v1, La2/i;->b:Ljava/lang/Object;

    .line 160
    .line 161
    check-cast v0, Ly1/b;

    .line 162
    .line 163
    iget-object v2, v1, La2/i;->c:Ljava/lang/Object;

    .line 164
    .line 165
    check-cast v2, Ly1/s;

    .line 166
    .line 167
    const-class v3, Ly1/i;

    .line 168
    .line 169
    invoke-static {v3}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v4

    .line 173
    if-eqz v4, :cond_af

    .line 174
    .line 175
    goto :goto_b7

    .line 176
    :cond_af
    :try_start_af
    invoke-static {v0, v2}, Ly1/j;->j(Ly1/b;Ly1/s;)V
    :try_end_b2
    .catchall {:try_start_af .. :try_end_b2} :catchall_b3

    .line 177
    .line 178
    .line 179
    goto :goto_b7

    .line 180
    :catchall_b3
    move-exception v0

    .line 181
    invoke-static {v0, v3}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    :goto_b7
    return-void

    .line 185
    :pswitch_b8
    invoke-direct {v1}, La2/i;->b()V

    .line 186
    .line 187
    .line 188
    return-void

    .line 189
    :pswitch_bc
    iget-object v0, v1, La2/i;->b:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast v0, Ljava/util/ArrayList;

    .line 192
    .line 193
    iget-object v5, v1, La2/i;->c:Ljava/lang/Object;

    .line 194
    .line 195
    check-cast v5, Lx1/b0;

    .line 196
    .line 197
    const-string v6, "$requests"

    .line 198
    .line 199
    invoke-static {v6, v5}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 203
    .line 204
    .line 205
    move-result v6

    .line 206
    move v7, v4

    .line 207
    :goto_ce
    if-ge v7, v6, :cond_e9

    .line 208
    .line 209
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v8

    .line 213
    add-int/lit8 v7, v7, 0x1

    .line 214
    .line 215
    check-cast v8, Landroid/util/Pair;

    .line 216
    .line 217
    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 218
    .line 219
    check-cast v9, Lx1/v;

    .line 220
    .line 221
    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 222
    .line 223
    const-string v10, "pair.second"

    .line 224
    .line 225
    invoke-static {v10, v8}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    check-cast v8, Lx1/c0;

    .line 229
    .line 230
    invoke-interface {v9, v8}, Lx1/v;->a(Lx1/c0;)V

    .line 231
    .line 232
    .line 233
    goto :goto_ce

    .line 234
    :cond_e9
    iget-object v0, v5, Lx1/b0;->d:Ljava/util/ArrayList;

    .line 235
    .line 236
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 237
    .line 238
    .line 239
    move-result v5

    .line 240
    move v6, v4

    .line 241
    :goto_f0
    if-ge v6, v5, :cond_1fe

    .line 242
    .line 243
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v7

    .line 247
    add-int/lit8 v6, v6, 0x1

    .line 248
    .line 249
    check-cast v7, Lx1/d;

    .line 250
    .line 251
    iget-object v8, v7, Lx1/d;->a:Lcom/google/firebase/messaging/s;

    .line 252
    .line 253
    iget-object v9, v7, Lx1/d;->b:Lx1/a;

    .line 254
    .line 255
    iget-object v10, v7, Lx1/d;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 256
    .line 257
    iget-object v11, v7, Lx1/d;->d:Ljava/util/HashSet;

    .line 258
    .line 259
    iget-object v12, v7, Lx1/d;->e:Ljava/util/HashSet;

    .line 260
    .line 261
    iget-object v13, v7, Lx1/d;->f:Ljava/util/HashSet;

    .line 262
    .line 263
    iget-object v7, v7, Lx1/d;->g:Lx1/e;

    .line 264
    .line 265
    iget-object v7, v7, Lx1/e;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 266
    .line 267
    iget-object v14, v8, Lcom/google/firebase/messaging/s;->a:Ljava/lang/String;

    .line 268
    .line 269
    iget v15, v8, Lcom/google/firebase/messaging/s;->b:I

    .line 270
    .line 271
    iget-object v3, v8, Lcom/google/firebase/messaging/s;->e:Ljava/lang/Object;

    .line 272
    .line 273
    check-cast v3, Ljava/lang/Long;

    .line 274
    .line 275
    iget-object v2, v8, Lcom/google/firebase/messaging/s;->d:Ljava/lang/String;

    .line 276
    .line 277
    :try_start_114
    sget-object v18, Lx1/e;->f:Lo3/a;
    :try_end_116
    .catchall {:try_start_114 .. :try_end_116} :catchall_1f9

    .line 278
    .line 279
    :try_start_116
    invoke-virtual/range {v18 .. v18}, Lo3/a;->d()Lx1/e;

    .line 280
    .line 281
    .line 282
    move-result-object v4

    .line 283
    iget-object v4, v4, Lx1/e;->c:Lx1/a;

    .line 284
    .line 285
    if-eqz v4, :cond_1f0

    .line 286
    .line 287
    invoke-virtual/range {v18 .. v18}, Lo3/a;->d()Lx1/e;

    .line 288
    .line 289
    .line 290
    move-result-object v4

    .line 291
    iget-object v4, v4, Lx1/e;->c:Lx1/a;

    .line 292
    .line 293
    if-eqz v4, :cond_12f

    .line 294
    .line 295
    iget-object v4, v4, Lx1/a;->i:Ljava/lang/String;

    .line 296
    .line 297
    :goto_128
    move-object/from16 v19, v0

    .line 298
    .line 299
    goto :goto_131

    .line 300
    :catchall_12b
    move-exception v0

    .line 301
    const/4 v4, 0x0

    .line 302
    goto/16 :goto_1fa

    .line 303
    .line 304
    :cond_12f
    const/4 v4, 0x0

    .line 305
    goto :goto_128

    .line 306
    :goto_131
    iget-object v0, v9, Lx1/a;->i:Ljava/lang/String;

    .line 307
    .line 308
    if-eq v4, v0, :cond_136

    .line 309
    .line 310
    :goto_135
    goto :goto_140

    .line 311
    :cond_136
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 312
    .line 313
    .line 314
    move-result v0
    :try_end_13a
    .catchall {:try_start_116 .. :try_end_13a} :catchall_12b

    .line 315
    if-nez v0, :cond_146

    .line 316
    .line 317
    if-nez v14, :cond_146

    .line 318
    .line 319
    if-nez v15, :cond_146

    .line 320
    .line 321
    :goto_140
    const/4 v4, 0x0

    .line 322
    :goto_141
    invoke-virtual {v7, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 323
    .line 324
    .line 325
    goto/16 :goto_1f4

    .line 326
    .line 327
    :cond_146
    :try_start_146
    iget-object v0, v9, Lx1/a;->a:Ljava/util/Date;

    .line 328
    .line 329
    iget v4, v8, Lcom/google/firebase/messaging/s;->b:I

    .line 330
    .line 331
    const-wide/16 v20, 0x3e8

    .line 332
    .line 333
    if-eqz v4, :cond_160

    .line 334
    .line 335
    new-instance v0, Ljava/util/Date;

    .line 336
    .line 337
    iget v4, v8, Lcom/google/firebase/messaging/s;->b:I

    .line 338
    .line 339
    move-object/from16 v22, v2

    .line 340
    .line 341
    move-object v15, v3

    .line 342
    int-to-long v2, v4

    .line 343
    mul-long v2, v2, v20

    .line 344
    .line 345
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 346
    .line 347
    .line 348
    :cond_15b
    :goto_15b
    move-object/from16 v28, v0

    .line 349
    .line 350
    move-wide/from16 v2, v20

    .line 351
    .line 352
    goto :goto_17f

    .line 353
    :cond_160
    move-object/from16 v22, v2

    .line 354
    .line 355
    move-object v15, v3

    .line 356
    iget v2, v8, Lcom/google/firebase/messaging/s;->c:I

    .line 357
    .line 358
    if-eqz v2, :cond_15b

    .line 359
    .line 360
    new-instance v0, Ljava/util/Date;

    .line 361
    .line 362
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 366
    .line 367
    .line 368
    move-result-wide v2

    .line 369
    new-instance v0, Ljava/util/Date;

    .line 370
    .line 371
    iget v4, v8, Lcom/google/firebase/messaging/s;->c:I

    .line 372
    .line 373
    move-wide/from16 v23, v2

    .line 374
    .line 375
    int-to-long v2, v4

    .line 376
    mul-long v2, v2, v20

    .line 377
    .line 378
    add-long v2, v2, v23

    .line 379
    .line 380
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 381
    .line 382
    .line 383
    goto :goto_15b

    .line 384
    :goto_17f
    new-instance v20, Lx1/a;

    .line 385
    .line 386
    if-nez v14, :cond_185

    .line 387
    .line 388
    iget-object v14, v9, Lx1/a;->e:Ljava/lang/String;

    .line 389
    .line 390
    :cond_185
    move-object/from16 v21, v14

    .line 391
    .line 392
    iget-object v0, v9, Lx1/a;->h:Ljava/lang/String;

    .line 393
    .line 394
    iget-object v4, v9, Lx1/a;->i:Ljava/lang/String;

    .line 395
    .line 396
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 397
    .line 398
    .line 399
    move-result v8

    .line 400
    if-eqz v8, :cond_192

    .line 401
    .line 402
    goto :goto_194

    .line 403
    :cond_192
    iget-object v11, v9, Lx1/a;->b:Ljava/util/Set;

    .line 404
    .line 405
    :goto_194
    move-object/from16 v24, v11

    .line 406
    .line 407
    check-cast v24, Ljava/util/Collection;

    .line 408
    .line 409
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 410
    .line 411
    .line 412
    move-result v8

    .line 413
    if-eqz v8, :cond_19f

    .line 414
    .line 415
    goto :goto_1a1

    .line 416
    :cond_19f
    iget-object v12, v9, Lx1/a;->c:Ljava/util/Set;

    .line 417
    .line 418
    :goto_1a1
    move-object/from16 v25, v12

    .line 419
    .line 420
    check-cast v25, Ljava/util/Collection;

    .line 421
    .line 422
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 423
    .line 424
    .line 425
    move-result v8

    .line 426
    if-eqz v8, :cond_1ac

    .line 427
    .line 428
    goto :goto_1ae

    .line 429
    :cond_1ac
    iget-object v13, v9, Lx1/a;->d:Ljava/util/Set;

    .line 430
    .line 431
    :goto_1ae
    move-object/from16 v26, v13

    .line 432
    .line 433
    check-cast v26, Ljava/util/Collection;

    .line 434
    .line 435
    iget-object v8, v9, Lx1/a;->f:Lx1/f;

    .line 436
    .line 437
    new-instance v29, Ljava/util/Date;

    .line 438
    .line 439
    invoke-direct/range {v29 .. v29}, Ljava/util/Date;-><init>()V

    .line 440
    .line 441
    .line 442
    if-eqz v15, :cond_1c8

    .line 443
    .line 444
    new-instance v10, Ljava/util/Date;

    .line 445
    .line 446
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    .line 447
    .line 448
    .line 449
    move-result-wide v11

    .line 450
    mul-long/2addr v11, v2

    .line 451
    invoke-direct {v10, v11, v12}, Ljava/util/Date;-><init>(J)V

    .line 452
    .line 453
    .line 454
    :goto_1c5
    move-object/from16 v30, v10

    .line 455
    .line 456
    goto :goto_1cb

    .line 457
    :cond_1c8
    iget-object v10, v9, Lx1/a;->j:Ljava/util/Date;

    .line 458
    .line 459
    goto :goto_1c5

    .line 460
    :goto_1cb
    if-nez v22, :cond_1d8

    .line 461
    .line 462
    iget-object v2, v9, Lx1/a;->k:Ljava/lang/String;

    .line 463
    .line 464
    move-object/from16 v31, v2

    .line 465
    .line 466
    move-object/from16 v22, v0

    .line 467
    .line 468
    move-object/from16 v23, v4

    .line 469
    .line 470
    move-object/from16 v27, v8

    .line 471
    .line 472
    goto :goto_1e0

    .line 473
    :cond_1d8
    move-object/from16 v31, v22

    .line 474
    .line 475
    move-object/from16 v23, v4

    .line 476
    .line 477
    move-object/from16 v27, v8

    .line 478
    .line 479
    move-object/from16 v22, v0

    .line 480
    .line 481
    :goto_1e0
    invoke-direct/range {v20 .. v31}, Lx1/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lx1/f;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    move-object/from16 v0, v20

    .line 485
    .line 486
    invoke-virtual/range {v18 .. v18}, Lo3/a;->d()Lx1/e;

    .line 487
    .line 488
    .line 489
    move-result-object v2

    .line 490
    const/4 v3, 0x1

    .line 491
    invoke-virtual {v2, v0, v3}, Lx1/e;->c(Lx1/a;Z)V
    :try_end_1ed
    .catchall {:try_start_146 .. :try_end_1ed} :catchall_12b

    .line 492
    .line 493
    .line 494
    const/4 v4, 0x0

    .line 495
    goto/16 :goto_141

    .line 496
    .line 497
    :cond_1f0
    move-object/from16 v19, v0

    .line 498
    .line 499
    goto/16 :goto_135

    .line 500
    .line 501
    :goto_1f4
    move-object/from16 v0, v19

    .line 502
    .line 503
    const/4 v2, 0x1

    .line 504
    goto/16 :goto_f0

    .line 505
    .line 506
    :catchall_1f9
    move-exception v0

    .line 507
    :goto_1fa
    invoke-virtual {v7, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 508
    .line 509
    .line 510
    throw v0

    .line 511
    :cond_1fe
    return-void

    .line 512
    :pswitch_1ff
    iget-object v0, v1, La2/i;->b:Ljava/lang/Object;

    .line 513
    .line 514
    check-cast v0, Ljava/util/concurrent/Callable;

    .line 515
    .line 516
    iget-object v2, v1, La2/i;->c:Ljava/lang/Object;

    .line 517
    .line 518
    check-cast v2, Lo5/c;

    .line 519
    .line 520
    iget-object v2, v2, Lo5/c;->b:Ljava/lang/Object;

    .line 521
    .line 522
    check-cast v2, Lw4/h;

    .line 523
    .line 524
    :try_start_20b
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 525
    .line 526
    .line 527
    move-result-object v0

    .line 528
    invoke-virtual {v2, v0}, Lu/h;->j(Ljava/lang/Object;)Z
    :try_end_212
    .catch Ljava/lang/Exception; {:try_start_20b .. :try_end_212} :catch_213

    .line 529
    .line 530
    .line 531
    goto :goto_217

    .line 532
    :catch_213
    move-exception v0

    .line 533
    invoke-virtual {v2, v0}, Lu/h;->k(Ljava/lang/Throwable;)Z

    .line 534
    .line 535
    .line 536
    :goto_217
    return-void

    .line 537
    :pswitch_218
    iget-object v0, v1, La2/i;->b:Ljava/lang/Object;

    .line 538
    .line 539
    check-cast v0, Lw4/a;

    .line 540
    .line 541
    iget-object v2, v1, La2/i;->c:Ljava/lang/Object;

    .line 542
    .line 543
    check-cast v2, Ljava/lang/Runnable;

    .line 544
    .line 545
    iget v3, v0, Lw4/a;->c:I

    .line 546
    .line 547
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 548
    .line 549
    .line 550
    iget-object v0, v0, Lw4/a;->d:Landroid/os/StrictMode$ThreadPolicy;

    .line 551
    .line 552
    if-eqz v0, :cond_22c

    .line 553
    .line 554
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 555
    .line 556
    .line 557
    :cond_22c
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 558
    .line 559
    .line 560
    return-void

    .line 561
    :pswitch_230
    invoke-direct {v1}, La2/i;->a()V

    .line 562
    .line 563
    .line 564
    return-void

    .line 565
    :pswitch_234
    iget-object v0, v1, La2/i;->b:Ljava/lang/Object;

    .line 566
    .line 567
    move-object v2, v0

    .line 568
    check-cast v2, Lv4/n;

    .line 569
    .line 570
    iget-object v0, v1, La2/i;->c:Ljava/lang/Object;

    .line 571
    .line 572
    check-cast v0, Lg5/a;

    .line 573
    .line 574
    iget-object v3, v2, Lv4/n;->b:Lg5/a;

    .line 575
    .line 576
    sget-object v4, Lv4/n;->d:Lcom/google/firebase/messaging/l;

    .line 577
    .line 578
    if-ne v3, v4, :cond_253

    .line 579
    .line 580
    monitor-enter v2

    .line 581
    :try_start_244
    iget-object v3, v2, Lv4/n;->a:Lcom/getcapacitor/n;

    .line 582
    .line 583
    const/4 v4, 0x0

    .line 584
    iput-object v4, v2, Lv4/n;->a:Lcom/getcapacitor/n;

    .line 585
    .line 586
    iput-object v0, v2, Lv4/n;->b:Lg5/a;

    .line 587
    .line 588
    monitor-exit v2
    :try_end_24c
    .catchall {:try_start_244 .. :try_end_24c} :catchall_250

    .line 589
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 590
    .line 591
    .line 592
    return-void

    .line 593
    :catchall_250
    move-exception v0

    .line 594
    :try_start_251
    monitor-exit v2
    :try_end_252
    .catchall {:try_start_251 .. :try_end_252} :catchall_250

    .line 595
    throw v0

    .line 596
    :cond_253
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 597
    .line 598
    const-string v2, "provide() can be called only once."

    .line 599
    .line 600
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 601
    .line 602
    .line 603
    throw v0

    .line 604
    :pswitch_25b
    iget-object v0, v1, La2/i;->b:Ljava/lang/Object;

    .line 605
    .line 606
    check-cast v0, Ljava/lang/String;

    .line 607
    .line 608
    iget-object v2, v1, La2/i;->c:Ljava/lang/Object;

    .line 609
    .line 610
    check-cast v2, Ljava/lang/String;

    .line 611
    .line 612
    const-string v3, "$buttonText"

    .line 613
    .line 614
    invoke-static {v3, v2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 615
    .line 616
    .line 617
    sget-object v3, Lo2/f;->e:Ljava/util/HashSet;

    .line 618
    .line 619
    const/4 v4, 0x0

    .line 620
    new-array v3, v4, [F

    .line 621
    .line 622
    invoke-static {v0, v2, v3}, Lo2/a;->j(Ljava/lang/String;Ljava/lang/String;[F)V

    .line 623
    .line 624
    .line 625
    return-void

    .line 626
    :pswitch_271
    iget-object v0, v1, La2/i;->b:Ljava/lang/Object;

    .line 627
    .line 628
    check-cast v0, Ljava/lang/String;

    .line 629
    .line 630
    iget-object v2, v1, La2/i;->c:Ljava/lang/Object;

    .line 631
    .line 632
    check-cast v2, Lorg/json/JSONObject;

    .line 633
    .line 634
    const-string v3, "GA4Reporter"

    .line 635
    .line 636
    const-string v4, "logEvent payload="

    .line 637
    .line 638
    const-string v5, "https://www.google-analytics.com/mp/collect?measurement_id="

    .line 639
    .line 640
    :try_start_27f
    new-instance v6, Lorg/json/JSONObject;

    .line 641
    .line 642
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 643
    .line 644
    .line 645
    const-string v7, "client_id"

    .line 646
    .line 647
    sget-object v8, Ln6/e;->f:Ljava/lang/String;

    .line 648
    .line 649
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 650
    .line 651
    .line 652
    new-instance v7, Lorg/json/JSONArray;

    .line 653
    .line 654
    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 655
    .line 656
    .line 657
    new-instance v8, Lorg/json/JSONObject;

    .line 658
    .line 659
    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 660
    .line 661
    .line 662
    const-string v9, "name"

    .line 663
    .line 664
    invoke-virtual {v8, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 665
    .line 666
    .line 667
    const-string v9, "params"

    .line 668
    .line 669
    if-eqz v2, :cond_29f

    .line 670
    .line 671
    goto :goto_2a4

    .line 672
    :cond_29f
    new-instance v2, Lorg/json/JSONObject;

    .line 673
    .line 674
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 675
    .line 676
    .line 677
    :goto_2a4
    invoke-virtual {v8, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 678
    .line 679
    .line 680
    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 681
    .line 682
    .line 683
    const-string v2, "events"

    .line 684
    .line 685
    invoke-virtual {v6, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 686
    .line 687
    .line 688
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 689
    .line 690
    const-string v7, "yyyy-MM-dd HH:mm:ss"

    .line 691
    .line 692
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 693
    .line 694
    .line 695
    move-result-object v8

    .line 696
    invoke-direct {v2, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 697
    .line 698
    .line 699
    new-instance v7, Ljava/util/Date;

    .line 700
    .line 701
    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 702
    .line 703
    .line 704
    invoke-virtual {v2, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 705
    .line 706
    .line 707
    new-instance v2, Ljava/lang/StringBuilder;

    .line 708
    .line 709
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 710
    .line 711
    .line 712
    sget-object v5, Ln6/e;->d:Ljava/lang/String;

    .line 713
    .line 714
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    .line 716
    .line 717
    const-string v5, "&api_secret="

    .line 718
    .line 719
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    .line 721
    .line 722
    sget-object v5, Ln6/e;->e:Ljava/lang/String;

    .line 723
    .line 724
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    .line 726
    .line 727
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 728
    .line 729
    .line 730
    move-result-object v2

    .line 731
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 732
    .line 733
    .line 734
    move-result-object v5

    .line 735
    sget-object v7, Ln6/e;->a:Lr7/p;

    .line 736
    .line 737
    invoke-static {v5, v7}, Lb0/d;->c(Ljava/lang/String;Lr7/p;)Lb0/d;

    .line 738
    .line 739
    .line 740
    move-result-object v5

    .line 741
    new-instance v7, Lcom/google/firebase/messaging/z;

    .line 742
    .line 743
    invoke-direct {v7}, Lcom/google/firebase/messaging/z;-><init>()V

    .line 744
    .line 745
    .line 746
    invoke-virtual {v7, v2}, Lcom/google/firebase/messaging/z;->g(Ljava/lang/String;)V

    .line 747
    .line 748
    .line 749
    const-string v2, "POST"

    .line 750
    .line 751
    invoke-virtual {v7, v2, v5}, Lcom/google/firebase/messaging/z;->d(Ljava/lang/String;Lb0/d;)V

    .line 752
    .line 753
    .line 754
    invoke-virtual {v7}, Lcom/google/firebase/messaging/z;->a()Lcom/google/android/gms/common/internal/g;

    .line 755
    .line 756
    .line 757
    move-result-object v2

    .line 758
    sget-object v5, Ln6/e;->b:Lr7/r;

    .line 759
    .line 760
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 761
    .line 762
    .line 763
    new-instance v7, Lv7/i;

    .line 764
    .line 765
    invoke-direct {v7, v5, v2}, Lv7/i;-><init>(Lr7/r;Lcom/google/android/gms/common/internal/g;)V

    .line 766
    .line 767
    .line 768
    new-instance v2, Ln6/d;

    .line 769
    .line 770
    const/4 v5, 0x0

    .line 771
    invoke-direct {v2, v0, v5}, Ln6/d;-><init>(Ljava/lang/String;I)V

    .line 772
    .line 773
    .line 774
    invoke-virtual {v7, v2}, Lv7/i;->e(Ln6/d;)V

    .line 775
    .line 776
    .line 777
    new-instance v0, Ljava/lang/StringBuilder;

    .line 778
    .line 779
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 780
    .line 781
    .line 782
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 783
    .line 784
    .line 785
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 786
    .line 787
    .line 788
    move-result-object v0

    .line 789
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_317
    .catch Ljava/lang/Exception; {:try_start_27f .. :try_end_317} :catch_318

    .line 790
    .line 791
    .line 792
    goto :goto_31e

    .line 793
    :catch_318
    move-exception v0

    .line 794
    const-string v2, "logEvent build payload error"

    .line 795
    .line 796
    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 797
    .line 798
    .line 799
    :goto_31e
    return-void

    .line 800
    :pswitch_31f
    iget-object v0, v1, La2/i;->b:Ljava/lang/Object;

    .line 801
    .line 802
    check-cast v0, Lcom/google/android/gms/internal/measurement/y4;

    .line 803
    .line 804
    iget-object v2, v1, La2/i;->c:Ljava/lang/Object;

    .line 805
    .line 806
    check-cast v2, Ljava/io/File;

    .line 807
    .line 808
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 809
    .line 810
    move-object v3, v0

    .line 811
    check-cast v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 812
    .line 813
    :try_start_32c
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/y4;->x(Ljava/io/File;)V
    :try_end_32f
    .catchall {:try_start_32c .. :try_end_32f} :catchall_334

    .line 814
    .line 815
    .line 816
    const/4 v4, 0x0

    .line 817
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 818
    .line 819
    .line 820
    return-void

    .line 821
    :catchall_334
    move-exception v0

    .line 822
    const/4 v4, 0x0

    .line 823
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 824
    .line 825
    .line 826
    throw v0

    .line 827
    :pswitch_33a
    iget-object v0, v1, La2/i;->b:Ljava/lang/Object;

    .line 828
    .line 829
    check-cast v0, Lcom/lottery/app/App;

    .line 830
    .line 831
    iget-object v2, v1, La2/i;->c:Ljava/lang/Object;

    .line 832
    .line 833
    check-cast v2, Landroid/app/Activity;

    .line 834
    .line 835
    sget v3, Lcom/lottery/app/App;->d:I

    .line 836
    .line 837
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 838
    .line 839
    .line 840
    if-eqz v2, :cond_36d

    .line 841
    .line 842
    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    .line 843
    .line 844
    .line 845
    move-result v0

    .line 846
    if-nez v0, :cond_36d

    .line 847
    .line 848
    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    .line 849
    .line 850
    .line 851
    move-result v0

    .line 852
    if-eqz v0, :cond_356

    .line 853
    .line 854
    goto :goto_36d

    .line 855
    :cond_356
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 856
    .line 857
    .line 858
    move-result-object v0

    .line 859
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 860
    .line 861
    .line 862
    move-result-object v0

    .line 863
    check-cast v0, Landroid/view/ViewGroup;

    .line 864
    .line 865
    const v2, 0x7f0a00ff

    .line 866
    .line 867
    .line 868
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 869
    .line 870
    .line 871
    move-result-object v0

    .line 872
    if-eqz v0, :cond_36d

    .line 873
    .line 874
    const/4 v4, 0x0

    .line 875
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 876
    .line 877
    .line 878
    :cond_36d
    :goto_36d
    return-void

    .line 879
    :pswitch_36e
    iget-object v0, v1, La2/i;->b:Ljava/lang/Object;

    .line 880
    .line 881
    check-cast v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;

    .line 882
    .line 883
    iget-object v2, v1, La2/i;->c:Ljava/lang/Object;

    .line 884
    .line 885
    check-cast v2, Landroid/app/job/JobParameters;

    .line 886
    .line 887
    sget v3, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;->a:I

    .line 888
    .line 889
    const/4 v4, 0x0

    .line 890
    invoke-virtual {v0, v2, v4}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 891
    .line 892
    .line 893
    return-void

    .line 894
    :pswitch_37d
    iget-object v0, v1, La2/i;->b:Ljava/lang/Object;

    .line 895
    .line 896
    check-cast v0, Lbridges/TomBridge;

    .line 897
    .line 898
    iget-object v2, v1, La2/i;->c:Ljava/lang/Object;

    .line 899
    .line 900
    check-cast v2, Ljava/lang/String;

    .line 901
    .line 902
    invoke-static {v0, v2}, Lbridges/TomBridge;->b(Lbridges/TomBridge;Ljava/lang/String;)V

    .line 903
    .line 904
    .line 905
    return-void

    .line 906
    :pswitch_389
    iget-object v0, v1, La2/i;->b:Ljava/lang/Object;

    .line 907
    .line 908
    move-object v2, v0

    .line 909
    check-cast v2, Lg/q;

    .line 910
    .line 911
    iget-object v0, v1, La2/i;->c:Ljava/lang/Object;

    .line 912
    .line 913
    check-cast v0, Ljava/lang/Runnable;

    .line 914
    .line 915
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 916
    .line 917
    .line 918
    :try_start_395
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_398
    .catchall {:try_start_395 .. :try_end_398} :catchall_39c

    .line 919
    .line 920
    .line 921
    invoke-virtual {v2}, Lg/q;->a()V

    .line 922
    .line 923
    .line 924
    return-void

    .line 925
    :catchall_39c
    move-exception v0

    .line 926
    invoke-virtual {v2}, Lg/q;->a()V

    .line 927
    .line 928
    .line 929
    throw v0

    .line 930
    :pswitch_3a1
    iget-object v0, v1, La2/i;->b:Ljava/lang/Object;

    .line 931
    .line 932
    check-cast v0, Lcom/google/firebase/messaging/r;

    .line 933
    .line 934
    iget-object v2, v1, La2/i;->c:Ljava/lang/Object;

    .line 935
    .line 936
    check-cast v2, Lp4/j;

    .line 937
    .line 938
    :try_start_3a9
    invoke-virtual {v0}, Lcom/google/firebase/messaging/r;->a()Landroid/graphics/Bitmap;

    .line 939
    .line 940
    .line 941
    move-result-object v0

    .line 942
    invoke-virtual {v2, v0}, Lp4/j;->a(Ljava/lang/Object;)V
    :try_end_3b0
    .catch Ljava/lang/Exception; {:try_start_3a9 .. :try_end_3b0} :catch_3b1

    .line 943
    .line 944
    .line 945
    goto :goto_3b7

    .line 946
    :catch_3b1
    move-exception v0

    .line 947
    iget-object v2, v2, Lp4/j;->a:Lp4/q;

    .line 948
    .line 949
    invoke-virtual {v2, v0}, Lp4/q;->l(Ljava/lang/Exception;)V

    .line 950
    .line 951
    .line 952
    :goto_3b7
    return-void

    .line 953
    :pswitch_3b8
    iget-object v0, v1, La2/i;->b:Ljava/lang/Object;

    .line 954
    .line 955
    check-cast v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 956
    .line 957
    iget-object v2, v1, La2/i;->c:Ljava/lang/Object;

    .line 958
    .line 959
    check-cast v2, Lp4/j;

    .line 960
    .line 961
    sget-object v3, Lcom/google/firebase/messaging/FirebaseMessaging;->k:Lcom/google/firebase/messaging/b0;

    .line 962
    .line 963
    :try_start_3c2
    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->a()Ljava/lang/String;

    .line 964
    .line 965
    .line 966
    move-result-object v0

    .line 967
    invoke-virtual {v2, v0}, Lp4/j;->a(Ljava/lang/Object;)V
    :try_end_3c9
    .catch Ljava/lang/Exception; {:try_start_3c2 .. :try_end_3c9} :catch_3ca

    .line 968
    .line 969
    .line 970
    goto :goto_3d0

    .line 971
    :catch_3ca
    move-exception v0

    .line 972
    iget-object v2, v2, Lp4/j;->a:Lp4/q;

    .line 973
    .line 974
    invoke-virtual {v2, v0}, Lp4/q;->l(Ljava/lang/Exception;)V

    .line 975
    .line 976
    .line 977
    :goto_3d0
    return-void

    .line 978
    :pswitch_3d1
    iget-object v0, v1, La2/i;->b:Ljava/lang/Object;

    .line 979
    .line 980
    check-cast v0, Lcom/google/firebase/messaging/k;

    .line 981
    .line 982
    iget-object v2, v1, La2/i;->c:Ljava/lang/Object;

    .line 983
    .line 984
    check-cast v2, Landroid/content/Intent;

    .line 985
    .line 986
    invoke-virtual {v0, v2}, Lcom/google/firebase/messaging/k;->a(Landroid/content/Intent;)V

    .line 987
    .line 988
    .line 989
    return-void

    .line 990
    :pswitch_3dd
    iget-object v0, v1, La2/i;->b:Ljava/lang/Object;

    .line 991
    .line 992
    check-cast v0, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl$CapacitorEvalBridgeMode;

    .line 993
    .line 994
    iget-object v2, v1, La2/i;->c:Ljava/lang/Object;

    .line 995
    .line 996
    check-cast v2, Lorg/apache/cordova/i0;

    .line 997
    .line 998
    invoke-static {v0, v2}, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl$CapacitorEvalBridgeMode;->a(Lcom/getcapacitor/cordova/MockCordovaWebViewImpl$CapacitorEvalBridgeMode;Lorg/apache/cordova/i0;)V

    .line 999
    .line 1000
    .line 1001
    return-void

    .line 1002
    :pswitch_3e9
    iget-object v0, v1, La2/i;->b:Ljava/lang/Object;

    .line 1003
    .line 1004
    check-cast v0, Ljava/lang/String;

    .line 1005
    .line 1006
    iget-object v2, v1, La2/i;->c:Ljava/lang/Object;

    .line 1007
    .line 1008
    check-cast v2, Lb2/n;

    .line 1009
    .line 1010
    const-class v3, Lb2/n;

    .line 1011
    .line 1012
    invoke-static {v3}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 1013
    .line 1014
    .line 1015
    move-result v4

    .line 1016
    if-eqz v4, :cond_3fb

    .line 1017
    .line 1018
    goto/16 :goto_46e

    .line 1019
    .line 1020
    :cond_3fb
    :try_start_3fb
    const-string v4, "MD5"

    .line 1021
    .line 1022
    sget-object v5, Lk7/a;->a:Ljava/nio/charset/Charset;

    .line 1023
    .line 1024
    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 1025
    .line 1026
    .line 1027
    move-result-object v5

    .line 1028
    const-string v6, "this as java.lang.String).getBytes(charset)"

    .line 1029
    .line 1030
    invoke-static {v6, v5}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_408
    .catchall {:try_start_3fb .. :try_end_408} :catchall_45b

    .line 1031
    .line 1032
    .line 1033
    :try_start_408
    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v4
    :try_end_40c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_408 .. :try_end_40c} :catch_449
    .catchall {:try_start_408 .. :try_end_40c} :catchall_45b

    .line 1037
    :try_start_40c
    const-string v6, "hash"

    .line 1038
    .line 1039
    invoke-static {v6, v4}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1040
    .line 1041
    .line 1042
    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 1043
    .line 1044
    .line 1045
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    .line 1046
    .line 1047
    .line 1048
    move-result-object v4

    .line 1049
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1050
    .line 1051
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1052
    .line 1053
    .line 1054
    const-string v6, "digest"

    .line 1055
    .line 1056
    invoke-static {v6, v4}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1057
    .line 1058
    .line 1059
    array-length v6, v4

    .line 1060
    const/4 v7, 0x0

    .line 1061
    :goto_424
    if-ge v7, v6, :cond_43f

    .line 1062
    .line 1063
    aget-byte v8, v4, v7

    .line 1064
    .line 1065
    shr-int/lit8 v9, v8, 0x4

    .line 1066
    .line 1067
    and-int/lit8 v9, v9, 0xf

    .line 1068
    .line 1069
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v9

    .line 1073
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1074
    .line 1075
    .line 1076
    and-int/lit8 v8, v8, 0xf

    .line 1077
    .line 1078
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v8

    .line 1082
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1083
    .line 1084
    .line 1085
    add-int/lit8 v7, v7, 0x1

    .line 1086
    .line 1087
    goto :goto_424

    .line 1088
    :cond_43f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v4

    .line 1092
    const-string v5, "builder.toString()"

    .line 1093
    .line 1094
    invoke-static {v5, v4}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1095
    .line 1096
    .line 1097
    goto :goto_44a

    .line 1098
    :catch_449
    const/4 v4, 0x0

    .line 1099
    :goto_44a
    sget-object v5, Lx1/a;->l:Ljava/util/Date;

    .line 1100
    .line 1101
    invoke-static {}, Lh8/b;->f()Lx1/a;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v5

    .line 1105
    if-eqz v4, :cond_45d

    .line 1106
    .line 1107
    iget-object v6, v2, Lb2/n;->d:Ljava/lang/String;

    .line 1108
    .line 1109
    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1110
    .line 1111
    .line 1112
    move-result v6

    .line 1113
    if-eqz v6, :cond_45d

    .line 1114
    .line 1115
    goto :goto_46e

    .line 1116
    :catchall_45b
    move-exception v0

    .line 1117
    goto :goto_46b

    .line 1118
    :cond_45d
    sget-object v6, Lb2/n;->e:Ljava/lang/String;

    .line 1119
    .line 1120
    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    .line 1121
    .line 1122
    .line 1123
    move-result-object v6

    .line 1124
    invoke-static {v0, v5, v6}, Ll2/e;->b(Ljava/lang/String;Lx1/a;Ljava/lang/String;)Lx1/z;

    .line 1125
    .line 1126
    .line 1127
    move-result-object v0

    .line 1128
    invoke-virtual {v2, v0, v4}, Lb2/n;->b(Lx1/z;Ljava/lang/String;)V
    :try_end_46a
    .catchall {:try_start_40c .. :try_end_46a} :catchall_45b

    .line 1129
    .line 1130
    .line 1131
    goto :goto_46e

    .line 1132
    :goto_46b
    invoke-static {v0, v3}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 1133
    .line 1134
    .line 1135
    :goto_46e
    return-void

    .line 1136
    :pswitch_46f
    iget-object v0, v1, La2/i;->b:Ljava/lang/Object;

    .line 1137
    .line 1138
    check-cast v0, Lb2/n;

    .line 1139
    .line 1140
    iget-object v2, v1, La2/i;->c:Ljava/lang/Object;

    .line 1141
    .line 1142
    move-object v4, v2

    .line 1143
    check-cast v4, Lb2/m;

    .line 1144
    .line 1145
    const-class v2, Lb2/n;

    .line 1146
    .line 1147
    invoke-static {v2}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 1148
    .line 1149
    .line 1150
    move-result v3

    .line 1151
    if-eqz v3, :cond_481

    .line 1152
    .line 1153
    goto :goto_4aa

    .line 1154
    :cond_481
    :try_start_481
    iget-object v3, v0, Lb2/n;->c:Ljava/util/Timer;

    .line 1155
    .line 1156
    if-eqz v3, :cond_488

    .line 1157
    .line 1158
    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    .line 1159
    .line 1160
    .line 1161
    :cond_488
    const/4 v3, 0x0

    .line 1162
    goto :goto_48e

    .line 1163
    :catchall_48a
    move-exception v0

    .line 1164
    goto :goto_4a7

    .line 1165
    :catch_48c
    move-exception v0

    .line 1166
    goto :goto_49f

    .line 1167
    :goto_48e
    iput-object v3, v0, Lb2/n;->d:Ljava/lang/String;

    .line 1168
    .line 1169
    new-instance v3, Ljava/util/Timer;

    .line 1170
    .line 1171
    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    .line 1172
    .line 1173
    .line 1174
    const-wide/16 v5, 0x0

    .line 1175
    .line 1176
    const-wide/16 v7, 0x3e8

    .line 1177
    .line 1178
    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 1179
    .line 1180
    .line 1181
    iput-object v3, v0, Lb2/n;->c:Ljava/util/Timer;
    :try_end_49e
    .catch Ljava/lang/Exception; {:try_start_481 .. :try_end_49e} :catch_48c
    .catchall {:try_start_481 .. :try_end_49e} :catchall_48a

    .line 1182
    .line 1183
    goto :goto_4aa

    .line 1184
    :goto_49f
    :try_start_49f
    sget-object v3, Lb2/n;->e:Ljava/lang/String;

    .line 1185
    .line 1186
    const-string v4, "Error scheduling indexing job"

    .line 1187
    .line 1188
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4a6
    .catchall {:try_start_49f .. :try_end_4a6} :catchall_48a

    .line 1189
    .line 1190
    .line 1191
    goto :goto_4aa

    .line 1192
    :goto_4a7
    invoke-static {v0, v2}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 1193
    .line 1194
    .line 1195
    :goto_4aa
    return-void

    .line 1196
    :pswitch_4ab
    iget-object v0, v1, La2/i;->b:Ljava/lang/Object;

    .line 1197
    .line 1198
    check-cast v0, Ljava/lang/String;

    .line 1199
    .line 1200
    iget-object v2, v1, La2/i;->c:Ljava/lang/Object;

    .line 1201
    .line 1202
    check-cast v2, Landroid/os/Bundle;

    .line 1203
    .line 1204
    const-class v3, Lb2/c;

    .line 1205
    .line 1206
    invoke-static {v3}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 1207
    .line 1208
    .line 1209
    move-result v4

    .line 1210
    if-eqz v4, :cond_4bc

    .line 1211
    .line 1212
    goto :goto_4ce

    .line 1213
    :cond_4bc
    :try_start_4bc
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 1214
    .line 1215
    .line 1216
    move-result-object v4

    .line 1217
    new-instance v5, Ly1/k;

    .line 1218
    .line 1219
    const/4 v6, 0x0

    .line 1220
    invoke-direct {v5, v4, v6}, Ly1/k;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1221
    .line 1222
    .line 1223
    invoke-virtual {v5, v0, v2}, Ly1/k;->d(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_4c9
    .catchall {:try_start_4bc .. :try_end_4c9} :catchall_4ca

    .line 1224
    .line 1225
    .line 1226
    goto :goto_4ce

    .line 1227
    :catchall_4ca
    move-exception v0

    .line 1228
    invoke-static {v0, v3}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 1229
    .line 1230
    .line 1231
    :goto_4ce
    return-void

    .line 1232
    :pswitch_4cf
    iget-object v0, v1, La2/i;->b:Ljava/lang/Object;

    .line 1233
    .line 1234
    check-cast v0, Le6/b;

    .line 1235
    .line 1236
    iget-object v2, v1, La2/i;->c:Ljava/lang/Object;

    .line 1237
    .line 1238
    check-cast v2, Landroid/graphics/Typeface;

    .line 1239
    .line 1240
    invoke-virtual {v0, v2}, Le6/b;->c(Landroid/graphics/Typeface;)V

    .line 1241
    .line 1242
    .line 1243
    return-void

    .line 1244
    :pswitch_4db
    iget-object v0, v1, La2/i;->b:Ljava/lang/Object;

    .line 1245
    .line 1246
    check-cast v0, Landroidx/fragment/app/h0;

    .line 1247
    .line 1248
    iget-object v2, v1, La2/i;->c:Ljava/lang/Object;

    .line 1249
    .line 1250
    check-cast v2, Lb/i0;

    .line 1251
    .line 1252
    invoke-static {v0, v2}, Lb/p;->access$addObserverForBackInvoker(Lb/p;Lb/i0;)V

    .line 1253
    .line 1254
    .line 1255
    return-void

    .line 1256
    :pswitch_4e7
    iget-object v0, v1, La2/i;->b:Ljava/lang/Object;

    .line 1257
    .line 1258
    check-cast v0, Ljava/lang/Integer;

    .line 1259
    .line 1260
    iget-object v2, v1, La2/i;->c:Ljava/lang/Object;

    .line 1261
    .line 1262
    check-cast v2, Ljava/util/List;

    .line 1263
    .line 1264
    sget-object v3, La2/j;->a:Ljava/util/HashSet;

    .line 1265
    .line 1266
    invoke-static {v3, v0}, Ls6/g;->p(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 1267
    .line 1268
    .line 1269
    move-result v3

    .line 1270
    if-nez v3, :cond_521

    .line 1271
    .line 1272
    sget-object v3, La2/j;->b:Ljava/util/HashSet;

    .line 1273
    .line 1274
    invoke-static {v3, v0}, Ls6/g;->p(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 1275
    .line 1276
    .line 1277
    move-result v0

    .line 1278
    if-eqz v0, :cond_521

    .line 1279
    .line 1280
    sget v0, La2/j;->e:I

    .line 1281
    .line 1282
    const/4 v3, 0x5

    .line 1283
    if-lt v0, v3, :cond_50f

    .line 1284
    .line 1285
    invoke-static {}, La2/j;->b()Ljava/util/List;

    .line 1286
    .line 1287
    .line 1288
    move-result-object v0

    .line 1289
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1290
    .line 1291
    .line 1292
    const/4 v4, 0x0

    .line 1293
    sput v4, La2/j;->e:I

    .line 1294
    .line 1295
    goto :goto_521

    .line 1296
    :cond_50f
    const/4 v4, 0x0

    .line 1297
    invoke-static {}, La2/j;->b()Ljava/util/List;

    .line 1298
    .line 1299
    .line 1300
    move-result-object v0

    .line 1301
    check-cast v2, Ljava/util/Collection;

    .line 1302
    .line 1303
    invoke-interface {v0, v4, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 1304
    .line 1305
    .line 1306
    sget v0, La2/j;->e:I

    .line 1307
    .line 1308
    const/16 v17, 0x1

    .line 1309
    .line 1310
    add-int/lit8 v0, v0, 0x1

    .line 1311
    .line 1312
    sput v0, La2/j;->e:I

    .line 1313
    .line 1314
    :cond_521
    :goto_521
    return-void

    .line 1315
    :pswitch_data_522
    .packed-switch 0x0
        :pswitch_4e7
        :pswitch_4db
        :pswitch_4cf
        :pswitch_4ab
        :pswitch_46f
        :pswitch_3e9
        :pswitch_3dd
        :pswitch_3d1
        :pswitch_3b8
        :pswitch_3a1
        :pswitch_389
        :pswitch_37d
        :pswitch_36e
        :pswitch_33a
        :pswitch_31f
        :pswitch_271
        :pswitch_25b
        :pswitch_234
        :pswitch_230
        :pswitch_218
        :pswitch_1ff
        :pswitch_bc
        :pswitch_b8
        :pswitch_9e
        :pswitch_28
    .end packed-switch
.end method
