###### Class com.google.firebase.messaging.h (com.google.firebase.messaging.h)
.class public final synthetic Lcom/google/firebase/messaging/h;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 4

    .line 1
    iput p2, p0, Lcom/google/firebase/messaging/h;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/firebase/messaging/h;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/google/firebase/messaging/h;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 10

    .line 1
    iget v0, p0, Lcom/google/firebase/messaging/h;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_148

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/firebase/messaging/h;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/gms/internal/measurement/y4;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/firebase/messaging/h;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lx1/p;

    .line 13
    .line 14
    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Ljava/util/concurrent/CountDownLatch;

    .line 17
    .line 18
    :try_start_11
    invoke-virtual {v1}, Lx1/p;->call()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_1e

    .line 23
    .line 24
    if-eqz v2, :cond_1c

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 27
    .line 28
    .line 29
    :cond_1c
    const/4 v0, 0x0

    .line 30
    return-object v0

    .line 31
    :catchall_1e
    move-exception v0

    .line 32
    if-eqz v2, :cond_24

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 35
    .line 36
    .line 37
    :cond_24
    throw v0

    .line 38
    :pswitch_25
    iget-object v0, p0, Lcom/google/firebase/messaging/h;->b:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Landroid/content/Context;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/google/firebase/messaging/h;->c:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v1, Landroid/content/Intent;

    .line 45
    .line 46
    invoke-static {}, Lcom/google/firebase/messaging/y;->u()Lcom/google/firebase/messaging/y;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    const-string v3, "FirebaseMessaging"

    .line 54
    .line 55
    const/4 v4, 0x3

    .line 56
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_44

    .line 61
    .line 62
    const-string v3, "FirebaseMessaging"

    .line 63
    .line 64
    const-string v5, "Starting service"

    .line 65
    .line 66
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    :cond_44
    iget-object v3, v2, Lcom/google/firebase/messaging/y;->d:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v3, Ljava/util/ArrayDeque;

    .line 72
    .line 73
    invoke-virtual {v3, v1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    new-instance v1, Landroid/content/Intent;

    .line 77
    .line 78
    const-string v3, "com.google.firebase.MESSAGING_EVENT"

    .line 79
    .line 80
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    .line 89
    .line 90
    const-string v3, "Error resolving target intent service, skipping classname enforcement. Resolved service was: "

    .line 91
    .line 92
    monitor-enter v2

    .line 93
    :try_start_5c
    iget-object v5, v2, Lcom/google/firebase/messaging/y;->a:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v5, Ljava/lang/String;
    :try_end_60
    .catchall {:try_start_5c .. :try_end_60} :catchall_a7

    .line 96
    .line 97
    if-eqz v5, :cond_65

    .line 98
    .line 99
    monitor-exit v2

    .line 100
    goto/16 :goto_de

    .line 101
    .line 102
    :cond_65
    :try_start_65
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    const/4 v6, 0x0

    .line 107
    invoke-virtual {v5, v1, v6}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    const/4 v6, 0x0

    .line 112
    if-eqz v5, :cond_d5

    .line 113
    .line 114
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 115
    .line 116
    if-nez v5, :cond_76

    .line 117
    .line 118
    goto :goto_d5

    .line 119
    :cond_76
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    iget-object v8, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v7

    .line 129
    if-eqz v7, :cond_b5

    .line 130
    .line 131
    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 132
    .line 133
    if-nez v7, :cond_87

    .line 134
    .line 135
    goto :goto_b5

    .line 136
    :cond_87
    const-string v3, "."

    .line 137
    .line 138
    invoke-virtual {v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    if-eqz v3, :cond_aa

    .line 143
    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    iput-object v3, v2, Lcom/google/firebase/messaging/y;->a:Ljava/lang/Object;

    .line 166
    .line 167
    goto :goto_ae

    .line 168
    :catchall_a7
    move-exception v0

    .line 169
    goto/16 :goto_146

    .line 170
    .line 171
    :cond_aa
    iget-object v3, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 172
    .line 173
    iput-object v3, v2, Lcom/google/firebase/messaging/y;->a:Ljava/lang/Object;

    .line 174
    .line 175
    :goto_ae
    iget-object v3, v2, Lcom/google/firebase/messaging/y;->a:Ljava/lang/Object;

    .line 176
    .line 177
    move-object v5, v3

    .line 178
    check-cast v5, Ljava/lang/String;
    :try_end_b3
    .catchall {:try_start_65 .. :try_end_b3} :catchall_a7

    .line 179
    .line 180
    monitor-exit v2

    .line 181
    goto :goto_de

    .line 182
    :cond_b5
    :goto_b5
    :try_start_b5
    const-string v7, "FirebaseMessaging"

    .line 183
    .line 184
    new-instance v8, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    iget-object v3, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 190
    .line 191
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const-string v3, "/"

    .line 195
    .line 196
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    iget-object v3, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 200
    .line 201
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d2
    .catchall {:try_start_b5 .. :try_end_d2} :catchall_a7

    .line 209
    .line 210
    .line 211
    monitor-exit v2

    .line 212
    :goto_d3
    move-object v5, v6

    .line 213
    goto :goto_de

    .line 214
    :cond_d5
    :goto_d5
    :try_start_d5
    const-string v3, "FirebaseMessaging"

    .line 215
    .line 216
    const-string v5, "Failed to resolve target intent service, skipping classname enforcement"

    .line 217
    .line 218
    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_dc
    .catchall {:try_start_d5 .. :try_end_dc} :catchall_a7

    .line 219
    .line 220
    .line 221
    monitor-exit v2

    .line 222
    goto :goto_d3

    .line 223
    :goto_de
    if-eqz v5, :cond_fa

    .line 224
    .line 225
    const-string v3, "FirebaseMessaging"

    .line 226
    .line 227
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 228
    .line 229
    .line 230
    move-result v3

    .line 231
    if-eqz v3, :cond_f3

    .line 232
    .line 233
    const-string v3, "FirebaseMessaging"

    .line 234
    .line 235
    const-string v4, "Restricting intent to a specific service: "

    .line 236
    .line 237
    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v4

    .line 241
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .line 243
    .line 244
    :cond_f3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    .line 250
    .line 251
    :cond_fa
    :try_start_fa
    invoke-virtual {v2, v0}, Lcom/google/firebase/messaging/y;->w(Landroid/content/Context;)Z

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    if-eqz v2, :cond_109

    .line 256
    .line 257
    invoke-static {v0, v1}, Lcom/google/firebase/messaging/k0;->d(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    goto :goto_114

    .line 262
    :catch_105
    move-exception v0

    .line 263
    goto :goto_122

    .line 264
    :catch_107
    move-exception v0

    .line 265
    goto :goto_138

    .line 266
    :cond_109
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    const-string v1, "FirebaseMessaging"

    .line 271
    .line 272
    const-string v2, "Missing wake lock permission, service start may be delayed"

    .line 273
    .line 274
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    .line 276
    .line 277
    :goto_114
    if-nez v0, :cond_120

    .line 278
    .line 279
    const-string v0, "FirebaseMessaging"

    .line 280
    .line 281
    const-string v1, "Error while delivering the message: ServiceIntent not found."

    .line 282
    .line 283
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11d
    .catch Ljava/lang/SecurityException; {:try_start_fa .. :try_end_11d} :catch_107
    .catch Ljava/lang/IllegalStateException; {:try_start_fa .. :try_end_11d} :catch_105

    .line 284
    .line 285
    .line 286
    const/16 v0, 0x194

    .line 287
    .line 288
    goto :goto_141

    .line 289
    :cond_120
    const/4 v0, -0x1

    .line 290
    goto :goto_141

    .line 291
    :goto_122
    const-string v1, "FirebaseMessaging"

    .line 292
    .line 293
    new-instance v2, Ljava/lang/StringBuilder;

    .line 294
    .line 295
    const-string v3, "Failed to start service while in background: "

    .line 296
    .line 297
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    .line 309
    .line 310
    const/16 v0, 0x192

    .line 311
    .line 312
    goto :goto_141

    .line 313
    :goto_138
    const-string v1, "FirebaseMessaging"

    .line 314
    .line 315
    const-string v2, "Error while delivering the message to the serviceIntent"

    .line 316
    .line 317
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 318
    .line 319
    .line 320
    const/16 v0, 0x191

    .line 321
    .line 322
    :goto_141
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    return-object v0

    .line 327
    :goto_146
    :try_start_146
    monitor-exit v2
    :try_end_147
    .catchall {:try_start_146 .. :try_end_147} :catchall_a7

    .line 328
    throw v0

    .line 329
    :pswitch_data_148
    .packed-switch 0x0
        :pswitch_25
    .end packed-switch
.end method
