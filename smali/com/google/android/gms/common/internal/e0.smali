###### Class com.google.android.gms.common.internal.e0 (com.google.android.gms.common.internal.e0)
.class public final Lcom/google/android/gms/common/internal/e0;
.super Lcom/google/android/gms/internal/measurement/r0;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final synthetic a:Lcom/google/android/gms/common/internal/f;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/f;Landroid/os/Looper;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/internal/e0;->a:Lcom/google/android/gms/common/internal/f;

    .line 2
    .line 3
    const/4 p1, 0x3

    .line 4
    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/measurement/r0;-><init>(Landroid/os/Looper;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/e0;->a:Lcom/google/android/gms/common/internal/f;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/common/internal/f;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 10
    .line 11
    const/4 v2, 0x7

    .line 12
    const/4 v3, 0x2

    .line 13
    const/4 v4, 0x1

    .line 14
    if-eq v0, v1, :cond_24

    .line 15
    .line 16
    iget v0, p1, Landroid/os/Message;->what:I

    .line 17
    .line 18
    if-eq v0, v3, :cond_19

    .line 19
    .line 20
    if-eq v0, v4, :cond_19

    .line 21
    .line 22
    if-ne v0, v2, :cond_18

    .line 23
    .line 24
    goto :goto_19

    .line 25
    :cond_18
    return-void

    .line 26
    :cond_19
    :goto_19
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p1, Lcom/google/android/gms/common/internal/x;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/x;->d()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_24
    iget v0, p1, Landroid/os/Message;->what:I

    .line 38
    .line 39
    const/4 v1, 0x4

    .line 40
    const/4 v5, 0x5

    .line 41
    if-eq v0, v4, :cond_3a

    .line 42
    .line 43
    if-eq v0, v2, :cond_3a

    .line 44
    .line 45
    if-ne v0, v1, :cond_36

    .line 46
    .line 47
    iget-object v0, p0, Lcom/google/android/gms/common/internal/e0;->a:Lcom/google/android/gms/common/internal/f;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/f;->enableLocalFallback()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_3a

    .line 54
    .line 55
    :cond_36
    iget v0, p1, Landroid/os/Message;->what:I

    .line 56
    .line 57
    if-ne v0, v5, :cond_42

    .line 58
    .line 59
    :cond_3a
    iget-object v0, p0, Lcom/google/android/gms/common/internal/e0;->a:Lcom/google/android/gms/common/internal/f;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/f;->isConnecting()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_18b

    .line 66
    .line 67
    :cond_42
    iget v0, p1, Landroid/os/Message;->what:I

    .line 68
    .line 69
    const/16 v6, 0x8

    .line 70
    .line 71
    const/4 v7, 0x3

    .line 72
    const/4 v8, 0x0

    .line 73
    if-ne v0, v1, :cond_8a

    .line 74
    .line 75
    iget-object v0, p0, Lcom/google/android/gms/common/internal/e0;->a:Lcom/google/android/gms/common/internal/f;

    .line 76
    .line 77
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    .line 78
    .line 79
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 80
    .line 81
    invoke-direct {v1, p1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 82
    .line 83
    .line 84
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/f;->zzg(Lcom/google/android/gms/common/internal/f;Lcom/google/android/gms/common/ConnectionResult;)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lcom/google/android/gms/common/internal/e0;->a:Lcom/google/android/gms/common/internal/f;

    .line 88
    .line 89
    invoke-static {p1}, Lcom/google/android/gms/common/internal/f;->zzo(Lcom/google/android/gms/common/internal/f;)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_6b

    .line 94
    .line 95
    iget-object p1, p0, Lcom/google/android/gms/common/internal/e0;->a:Lcom/google/android/gms/common/internal/f;

    .line 96
    .line 97
    invoke-static {p1}, Lcom/google/android/gms/common/internal/f;->zzm(Lcom/google/android/gms/common/internal/f;)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_67

    .line 102
    .line 103
    goto :goto_6b

    .line 104
    :cond_67
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/common/internal/f;->zzi(Lcom/google/android/gms/common/internal/f;ILandroid/os/IInterface;)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_6b
    :goto_6b
    iget-object p1, p0, Lcom/google/android/gms/common/internal/e0;->a:Lcom/google/android/gms/common/internal/f;

    .line 109
    .line 110
    invoke-static {p1}, Lcom/google/android/gms/common/internal/f;->zza(Lcom/google/android/gms/common/internal/f;)Lcom/google/android/gms/common/ConnectionResult;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    if-eqz v0, :cond_78

    .line 115
    .line 116
    invoke-static {p1}, Lcom/google/android/gms/common/internal/f;->zza(Lcom/google/android/gms/common/internal/f;)Lcom/google/android/gms/common/ConnectionResult;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    goto :goto_7d

    .line 121
    :cond_78
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    .line 122
    .line 123
    invoke-direct {p1, v6}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 124
    .line 125
    .line 126
    :goto_7d
    iget-object v0, p0, Lcom/google/android/gms/common/internal/e0;->a:Lcom/google/android/gms/common/internal/f;

    .line 127
    .line 128
    iget-object v0, v0, Lcom/google/android/gms/common/internal/f;->zzc:Lcom/google/android/gms/common/internal/d;

    .line 129
    .line 130
    invoke-interface {v0, p1}, Lcom/google/android/gms/common/internal/d;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 131
    .line 132
    .line 133
    iget-object v0, p0, Lcom/google/android/gms/common/internal/e0;->a:Lcom/google/android/gms/common/internal/f;

    .line 134
    .line 135
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/f;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :cond_8a
    if-ne v0, v5, :cond_ab

    .line 140
    .line 141
    iget-object p1, p0, Lcom/google/android/gms/common/internal/e0;->a:Lcom/google/android/gms/common/internal/f;

    .line 142
    .line 143
    invoke-static {p1}, Lcom/google/android/gms/common/internal/f;->zza(Lcom/google/android/gms/common/internal/f;)Lcom/google/android/gms/common/ConnectionResult;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    if-eqz v0, :cond_99

    .line 148
    .line 149
    invoke-static {p1}, Lcom/google/android/gms/common/internal/f;->zza(Lcom/google/android/gms/common/internal/f;)Lcom/google/android/gms/common/ConnectionResult;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    goto :goto_9e

    .line 154
    :cond_99
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    .line 155
    .line 156
    invoke-direct {p1, v6}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 157
    .line 158
    .line 159
    :goto_9e
    iget-object v0, p0, Lcom/google/android/gms/common/internal/e0;->a:Lcom/google/android/gms/common/internal/f;

    .line 160
    .line 161
    iget-object v0, v0, Lcom/google/android/gms/common/internal/f;->zzc:Lcom/google/android/gms/common/internal/d;

    .line 162
    .line 163
    invoke-interface {v0, p1}, Lcom/google/android/gms/common/internal/d;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 164
    .line 165
    .line 166
    iget-object v0, p0, Lcom/google/android/gms/common/internal/e0;->a:Lcom/google/android/gms/common/internal/f;

    .line 167
    .line 168
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/f;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 169
    .line 170
    .line 171
    return-void

    .line 172
    :cond_ab
    if-ne v0, v7, :cond_ca

    .line 173
    .line 174
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 175
    .line 176
    instance-of v1, v0, Landroid/app/PendingIntent;

    .line 177
    .line 178
    if-eqz v1, :cond_b6

    .line 179
    .line 180
    move-object v8, v0

    .line 181
    check-cast v8, Landroid/app/PendingIntent;

    .line 182
    .line 183
    :cond_b6
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    .line 184
    .line 185
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 186
    .line 187
    invoke-direct {v0, p1, v8}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 188
    .line 189
    .line 190
    iget-object p1, p0, Lcom/google/android/gms/common/internal/e0;->a:Lcom/google/android/gms/common/internal/f;

    .line 191
    .line 192
    iget-object p1, p1, Lcom/google/android/gms/common/internal/f;->zzc:Lcom/google/android/gms/common/internal/d;

    .line 193
    .line 194
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/internal/d;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 195
    .line 196
    .line 197
    iget-object p1, p0, Lcom/google/android/gms/common/internal/e0;->a:Lcom/google/android/gms/common/internal/f;

    .line 198
    .line 199
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/internal/f;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 200
    .line 201
    .line 202
    return-void

    .line 203
    :cond_ca
    const/4 v1, 0x6

    .line 204
    if-ne v0, v1, :cond_f0

    .line 205
    .line 206
    iget-object v0, p0, Lcom/google/android/gms/common/internal/e0;->a:Lcom/google/android/gms/common/internal/f;

    .line 207
    .line 208
    invoke-static {v0, v5, v8}, Lcom/google/android/gms/common/internal/f;->zzi(Lcom/google/android/gms/common/internal/f;ILandroid/os/IInterface;)V

    .line 209
    .line 210
    .line 211
    iget-object v0, p0, Lcom/google/android/gms/common/internal/e0;->a:Lcom/google/android/gms/common/internal/f;

    .line 212
    .line 213
    invoke-static {v0}, Lcom/google/android/gms/common/internal/f;->zzb(Lcom/google/android/gms/common/internal/f;)Lcom/google/android/gms/common/internal/b;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    if-eqz v1, :cond_e3

    .line 218
    .line 219
    invoke-static {v0}, Lcom/google/android/gms/common/internal/f;->zzb(Lcom/google/android/gms/common/internal/f;)Lcom/google/android/gms/common/internal/b;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 224
    .line 225
    invoke-interface {v0, v1}, Lcom/google/android/gms/common/internal/b;->onConnectionSuspended(I)V

    .line 226
    .line 227
    .line 228
    :cond_e3
    iget-object v0, p0, Lcom/google/android/gms/common/internal/e0;->a:Lcom/google/android/gms/common/internal/f;

    .line 229
    .line 230
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 231
    .line 232
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/f;->onConnectionSuspended(I)V

    .line 233
    .line 234
    .line 235
    iget-object p1, p0, Lcom/google/android/gms/common/internal/e0;->a:Lcom/google/android/gms/common/internal/f;

    .line 236
    .line 237
    invoke-static {p1, v5, v4, v8}, Lcom/google/android/gms/common/internal/f;->zzn(Lcom/google/android/gms/common/internal/f;IILandroid/os/IInterface;)Z

    .line 238
    .line 239
    .line 240
    return-void

    .line 241
    :cond_f0
    if-ne v0, v3, :cond_106

    .line 242
    .line 243
    iget-object v0, p0, Lcom/google/android/gms/common/internal/e0;->a:Lcom/google/android/gms/common/internal/f;

    .line 244
    .line 245
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/f;->isConnected()Z

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    if-eqz v0, :cond_fb

    .line 250
    .line 251
    goto :goto_106

    .line 252
    :cond_fb
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 253
    .line 254
    check-cast p1, Lcom/google/android/gms/common/internal/x;

    .line 255
    .line 256
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 257
    .line 258
    .line 259
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/x;->d()V

    .line 260
    .line 261
    .line 262
    return-void

    .line 263
    :cond_106
    :goto_106
    iget v0, p1, Landroid/os/Message;->what:I

    .line 264
    .line 265
    if-eq v0, v3, :cond_120

    .line 266
    .line 267
    if-eq v0, v4, :cond_120

    .line 268
    .line 269
    if-ne v0, v2, :cond_10f

    .line 270
    .line 271
    goto :goto_120

    .line 272
    :cond_10f
    const-string p1, "Don\'t know how to handle message: "

    .line 273
    .line 274
    invoke-static {v0, p1}, La1/a;->i(ILjava/lang/String;)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    new-instance v0, Ljava/lang/Exception;

    .line 279
    .line 280
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 281
    .line 282
    .line 283
    const-string v1, "GmsClient"

    .line 284
    .line 285
    invoke-static {v1, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 286
    .line 287
    .line 288
    return-void

    .line 289
    :cond_120
    :goto_120
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 290
    .line 291
    move-object v0, p1

    .line 292
    check-cast v0, Lcom/google/android/gms/common/internal/x;

    .line 293
    .line 294
    const-string p1, "Callback proxy "

    .line 295
    .line 296
    monitor-enter v0

    .line 297
    :try_start_128
    iget-object v1, v0, Lcom/google/android/gms/common/internal/x;->a:Ljava/lang/Boolean;

    .line 298
    .line 299
    iget-boolean v2, v0, Lcom/google/android/gms/common/internal/x;->b:Z

    .line 300
    .line 301
    if-eqz v2, :cond_14b

    .line 302
    .line 303
    const-string v2, "GmsClient"

    .line 304
    .line 305
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v3

    .line 309
    new-instance v5, Ljava/lang/StringBuilder;

    .line 310
    .line 311
    invoke-direct {v5, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    const-string p1, " being reused. This is not safe."

    .line 318
    .line 319
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    .line 328
    .line 329
    goto :goto_14b

    .line 330
    :catchall_149
    move-exception p1

    .line 331
    goto :goto_189

    .line 332
    :cond_14b
    :goto_14b
    monitor-exit v0
    :try_end_14c
    .catchall {:try_start_128 .. :try_end_14c} :catchall_149

    .line 333
    if-eqz v1, :cond_17e

    .line 334
    .line 335
    iget-object p1, v0, Lcom/google/android/gms/common/internal/x;->f:Lcom/google/android/gms/common/internal/f;

    .line 336
    .line 337
    iget v1, v0, Lcom/google/android/gms/common/internal/x;->d:I

    .line 338
    .line 339
    if-nez v1, :cond_166

    .line 340
    .line 341
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/x;->b()Z

    .line 342
    .line 343
    .line 344
    move-result v1

    .line 345
    if-nez v1, :cond_17e

    .line 346
    .line 347
    invoke-static {p1, v4, v8}, Lcom/google/android/gms/common/internal/f;->zzi(Lcom/google/android/gms/common/internal/f;ILandroid/os/IInterface;)V

    .line 348
    .line 349
    .line 350
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    .line 351
    .line 352
    invoke-direct {p1, v6, v8}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/x;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 356
    .line 357
    .line 358
    goto :goto_17e

    .line 359
    :cond_166
    invoke-static {p1, v4, v8}, Lcom/google/android/gms/common/internal/f;->zzi(Lcom/google/android/gms/common/internal/f;ILandroid/os/IInterface;)V

    .line 360
    .line 361
    .line 362
    iget-object p1, v0, Lcom/google/android/gms/common/internal/x;->e:Landroid/os/Bundle;

    .line 363
    .line 364
    if-eqz p1, :cond_176

    .line 365
    .line 366
    const-string v2, "pendingIntent"

    .line 367
    .line 368
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 369
    .line 370
    .line 371
    move-result-object p1

    .line 372
    move-object v8, p1

    .line 373
    check-cast v8, Landroid/app/PendingIntent;

    .line 374
    .line 375
    :cond_176
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    .line 376
    .line 377
    invoke-direct {p1, v1, v8}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/x;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 381
    .line 382
    .line 383
    :cond_17e
    :goto_17e
    monitor-enter v0

    .line 384
    :try_start_17f
    iput-boolean v4, v0, Lcom/google/android/gms/common/internal/x;->b:Z

    .line 385
    .line 386
    monitor-exit v0
    :try_end_182
    .catchall {:try_start_17f .. :try_end_182} :catchall_186

    .line 387
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/x;->d()V

    .line 388
    .line 389
    .line 390
    return-void

    .line 391
    :catchall_186
    move-exception p1

    .line 392
    :try_start_187
    monitor-exit v0
    :try_end_188
    .catchall {:try_start_187 .. :try_end_188} :catchall_186

    .line 393
    throw p1

    .line 394
    :goto_189
    :try_start_189
    monitor-exit v0
    :try_end_18a
    .catchall {:try_start_189 .. :try_end_18a} :catchall_149

    .line 395
    throw p1

    .line 396
    :cond_18b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 397
    .line 398
    check-cast p1, Lcom/google/android/gms/common/internal/x;

    .line 399
    .line 400
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 401
    .line 402
    .line 403
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/x;->d()V

    .line 404
    .line 405
    .line 406
    return-void
.end method
