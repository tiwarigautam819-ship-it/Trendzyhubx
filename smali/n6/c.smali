###### Class n6.c (n6.c)
.class public abstract Ln6/c;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public static final b:Ljava/util/concurrent/ExecutorService;

.field public static volatile c:Z

.field public static volatile d:I

.field public static final e:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ln6/c;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    .line 8
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Ln6/c;->b:Ljava/util/concurrent/ExecutorService;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    sput-boolean v0, Ln6/c;->c:Z

    .line 16
    .line 17
    sput v0, Ln6/c;->d:I

    .line 18
    .line 19
    const v0, 0x7f080083

    .line 20
    .line 21
    .line 22
    sput v0, Ln6/c;->e:I

    .line 23
    .line 24
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ln6/a;)V
    .registers 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    :try_start_7
    const-string v4, "ga4_config_pref"

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    const-string v6, "ga4_config_json"

    .line 20
    .line 21
    invoke-interface {v4, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 26
    .line 27
    .line 28
    new-instance v4, Lorg/json/JSONObject;

    .line 29
    .line 30
    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v6, "apiKey"

    .line 34
    .line 35
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v9

    .line 39
    const-string v6, "apiSecret"

    .line 40
    .line 41
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    const-string v7, "projectId"

    .line 46
    .line 47
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v14

    .line 51
    const-string v7, "appId"

    .line 52
    .line 53
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    const-string v7, "msgSenderId"

    .line 58
    .line 59
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    const-string v10, "measurementId"

    .line 64
    .line 65
    invoke-virtual {v4, v10, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v15

    .line 69
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 70
    .line 71
    .line 72
    move-result v10

    .line 73
    if-eqz v10, :cond_50

    .line 74
    .line 75
    const-string v7, "messagingSenderId"

    .line 76
    .line 77
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    :cond_50
    move-object v12, v7

    .line 82
    goto :goto_55

    .line 83
    :catch_52
    move-exception v0

    .line 84
    goto/16 :goto_127

    .line 85
    .line 86
    :goto_55
    sget-boolean v4, Ln6/c;->c:Z

    .line 87
    .line 88
    const/4 v7, 0x1

    .line 89
    if-nez v4, :cond_8f

    .line 90
    .line 91
    sget-object v4, Lt4/g;->j:Ljava/lang/Object;

    .line 92
    .line 93
    monitor-enter v4
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_5d} :catch_52

    .line 94
    :try_start_5d
    new-instance v10, Ljava/util/ArrayList;

    .line 95
    .line 96
    sget-object v11, Lt4/g;->k:Ls/e;

    .line 97
    .line 98
    invoke-virtual {v11}, Ls/e;->values()Ljava/util/Collection;

    .line 99
    .line 100
    .line 101
    move-result-object v11

    .line 102
    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 103
    .line 104
    .line 105
    monitor-exit v4
    :try_end_69
    .catchall {:try_start_5d .. :try_end_69} :catchall_91

    .line 106
    :try_start_69
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    if-eqz v4, :cond_8f

    .line 111
    .line 112
    const-string v4, "ApplicationId must be set."

    .line 113
    .line 114
    invoke-static {v8, v4}, Lcom/google/android/gms/common/internal/d0;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    const-string v4, "ApiKey must be set."

    .line 118
    .line 119
    invoke-static {v9, v4}, Lcom/google/android/gms/common/internal/d0;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    move v4, v7

    .line 123
    new-instance v7, Lt4/j;

    .line 124
    .line 125
    const/4 v11, 0x0

    .line 126
    const/4 v13, 0x0

    .line 127
    const/4 v10, 0x0

    .line 128
    invoke-direct/range {v7 .. v14}, Lt4/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-static {v0, v7}, Lt4/g;->g(Landroid/content/Context;Lt4/j;)Lt4/g;

    .line 132
    .line 133
    .line 134
    sput-boolean v4, Ln6/c;->c:Z

    .line 135
    .line 136
    const-string v7, "FirebaseInit"

    .line 137
    .line 138
    const-string v8, "Initialized Firebase with dynamic config"

    .line 139
    .line 140
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_8e} :catch_52

    .line 141
    .line 142
    .line 143
    goto :goto_9b

    .line 144
    :cond_8f
    move v4, v7

    .line 145
    goto :goto_94

    .line 146
    :catchall_91
    move-exception v0

    .line 147
    :try_start_92
    monitor-exit v4
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_91

    .line 148
    :try_start_93
    throw v0

    .line 149
    :goto_94
    const-string v7, "FirebaseInit"

    .line 150
    .line 151
    const-string v8, "Firebase already initialized"

    .line 152
    .line 153
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    :goto_9b
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->c()Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 157
    .line 158
    .line 159
    move-result-object v7

    .line 160
    iget-object v7, v7, Lcom/google/firebase/messaging/FirebaseMessaging;->e:Lcom/google/firebase/messaging/p;

    .line 161
    .line 162
    invoke-virtual {v7}, Lcom/google/firebase/messaging/p;->f()Z

    .line 163
    .line 164
    .line 165
    move-result v7

    .line 166
    if-nez v7, :cond_dc

    .line 167
    .line 168
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->c()Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 169
    .line 170
    .line 171
    move-result-object v7

    .line 172
    invoke-virtual {v7}, Lcom/google/firebase/messaging/FirebaseMessaging;->g()V

    .line 173
    .line 174
    .line 175
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->c()Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 176
    .line 177
    .line 178
    move-result-object v7

    .line 179
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    invoke-static {}, Lt4/g;->c()Lt4/g;

    .line 183
    .line 184
    .line 185
    move-result-object v8

    .line 186
    invoke-virtual {v8}, Lt4/g;->a()V

    .line 187
    .line 188
    .line 189
    iget-object v8, v8, Lt4/g;->a:Landroid/content/Context;

    .line 190
    .line 191
    const-string v9, "com.google.firebase.messaging"

    .line 192
    .line 193
    invoke-virtual {v8, v9, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    const-string v8, "export_to_big_query"

    .line 202
    .line 203
    invoke-interface {v5, v8, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 208
    .line 209
    .line 210
    iget-object v4, v7, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Landroid/content/Context;

    .line 211
    .line 212
    iget-object v5, v7, Lcom/google/firebase/messaging/FirebaseMessaging;->c:Lcom/google/android/gms/common/internal/g;

    .line 213
    .line 214
    invoke-virtual {v7}, Lcom/google/firebase/messaging/FirebaseMessaging;->i()Z

    .line 215
    .line 216
    .line 217
    move-result v7

    .line 218
    invoke-static {v4, v5, v7}, La2/c;->j(Landroid/content/Context;Lcom/google/android/gms/common/internal/g;Z)V

    .line 219
    .line 220
    .line 221
    :cond_dc
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    if-eqz v15, :cond_f4

    .line 226
    .line 227
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    .line 228
    .line 229
    .line 230
    move-result v4

    .line 231
    if-nez v4, :cond_f4

    .line 232
    .line 233
    if-eqz v6, :cond_f4

    .line 234
    .line 235
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 236
    .line 237
    .line 238
    move-result v4

    .line 239
    if-nez v4, :cond_f4

    .line 240
    .line 241
    invoke-static {v15, v6, v0}, Ln6/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    goto :goto_fb

    .line 245
    :cond_f4
    const-string v0, "FirebaseInit"

    .line 246
    .line 247
    const-string v4, "GA4 config missing measurementId or apiSecret, GA4Reporter not initialized"

    .line 248
    .line 249
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .line 251
    .line 252
    :goto_fb
    const-string v0, "FirebaseInit"

    .line 253
    .line 254
    const-string v4, "fetchToken: requesting FCM token..."

    .line 255
    .line 256
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .line 258
    .line 259
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->c()Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 264
    .line 265
    .line 266
    new-instance v4, Lp4/j;

    .line 267
    .line 268
    invoke-direct {v4}, Lp4/j;-><init>()V

    .line 269
    .line 270
    .line 271
    iget-object v5, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->f:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 272
    .line 273
    new-instance v6, La2/i;

    .line 274
    .line 275
    const/16 v7, 0x8

    .line 276
    .line 277
    invoke-direct {v6, v0, v7, v4}, La2/i;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v5, v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 281
    .line 282
    .line 283
    iget-object v0, v4, Lp4/j;->a:Lp4/q;

    .line 284
    .line 285
    new-instance v4, Lcom/google/firebase/messaging/j0;

    .line 286
    .line 287
    const/16 v5, 0xa

    .line 288
    .line 289
    invoke-direct {v4, v5, v2}, Lcom/google/firebase/messaging/j0;-><init>(ILjava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0, v4}, Lp4/q;->h(Lp4/d;)Lp4/q;
    :try_end_126
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_126} :catch_52

    .line 293
    .line 294
    .line 295
    return-void

    .line 296
    :goto_127
    const-string v4, "FirebaseInit"

    .line 297
    .line 298
    new-instance v5, Ljava/lang/StringBuilder;

    .line 299
    .line 300
    const-string v6, "Invalid config JSON: "

    .line 301
    .line 302
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 313
    .line 314
    .line 315
    invoke-interface {v2, v3}, Ln6/a;->onToken(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .registers 5

    .line 1
    sget-object v0, Ln6/c;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_24

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ln6/b;

    .line 18
    .line 19
    :try_start_12
    check-cast v1, Ll1/b;

    .line 20
    .line 21
    iget-object v1, v1, Ll1/b;->a:Lbridges/TomBridge;

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-static {v1, v2, p0}, Lbridges/TomBridge;->f(Lbridges/TomBridge;ILjava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_1b

    .line 25
    .line 26
    .line 27
    goto :goto_6

    .line 28
    :catchall_1b
    move-exception v1

    .line 29
    const-string v2, "FirebaseInit"

    .line 30
    .line 31
    const-string v3, "Listener error"

    .line 32
    .line 33
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    .line 35
    .line 36
    goto :goto_6

    .line 37
    :cond_24
    return-void
.end method
