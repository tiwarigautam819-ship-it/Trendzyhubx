###### Class l3.d (l3.d)
.class public final synthetic Ll3/d;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ly/p;Landroid/app/NotificationManager;I)V
    .registers 6

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Ll3/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll3/d;->c:Ljava/lang/Object;

    iput-object p2, p0, Ll3/d;->d:Ljava/lang/Object;

    iput-object p3, p0, Ll3/d;->e:Ljava/lang/Object;

    iput p4, p0, Ll3/d;->b:I

    return-void
.end method

.method public synthetic constructor <init>(Ll3/i;Lf3/i;ILjava/lang/Runnable;)V
    .registers 6

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Ll3/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll3/d;->c:Ljava/lang/Object;

    iput-object p2, p0, Ll3/d;->d:Ljava/lang/Object;

    iput p3, p0, Ll3/d;->b:I

    iput-object p4, p0, Ll3/d;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 16

    .line 1
    iget v0, p0, Ll3/d;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget v2, p0, Ll3/d;->b:I

    .line 5
    .line 6
    iget-object v3, p0, Ll3/d;->e:Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v4, p0, Ll3/d;->d:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object v5, p0, Ll3/d;->c:Ljava/lang/Object;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_16a

    .line 13
    .line 14
    .line 15
    const-string v0, "downloadImageAndUpdate error, url="

    .line 16
    .line 17
    const-string v6, "image decode failed, url="

    .line 18
    .line 19
    check-cast v5, Ljava/lang/String;

    .line 20
    .line 21
    check-cast v4, Ly/p;

    .line 22
    .line 23
    check-cast v3, Landroid/app/NotificationManager;

    .line 24
    .line 25
    sget v7, LeventTrack/firebase/MyFirebaseMessagingService;->a:I

    .line 26
    .line 27
    const-string v7, "FCM"

    .line 28
    .line 29
    const-string v8, "image http="

    .line 30
    .line 31
    const-string v9, "not image contentType="

    .line 32
    .line 33
    const/4 v10, 0x0

    .line 34
    :try_start_21
    new-instance v11, Ljava/net/URL;

    .line 35
    .line 36
    invoke-direct {v11, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 40
    .line 41
    .line 42
    move-result-object v11

    .line 43
    check-cast v11, Ljava/net/HttpURLConnection;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2c} :catch_fb
    .catchall {:try_start_21 .. :try_end_2c} :catchall_f8

    .line 44
    .line 45
    const/16 v12, 0x1f40

    .line 46
    .line 47
    :try_start_2e
    invoke-virtual {v11, v12}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v11, v12}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v11, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v11, v1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 57
    .line 58
    .line 59
    const-string v12, "Accept"

    .line 60
    .line 61
    const-string v13, "image/*"

    .line 62
    .line 63
    invoke-virtual {v11, v12, v13}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 67
    .line 68
    .line 69
    move-result v12
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_45} :catch_80
    .catchall {:try_start_2e .. :try_end_45} :catchall_7d

    .line 70
    const/16 v13, 0xc8

    .line 71
    .line 72
    const-string v14, ", url="

    .line 73
    .line 74
    if-lt v12, v13, :cond_e2

    .line 75
    .line 76
    const/16 v13, 0x12c

    .line 77
    .line 78
    if-lt v12, v13, :cond_51

    .line 79
    .line 80
    goto/16 :goto_e2

    .line 81
    .line 82
    :cond_51
    :try_start_51
    invoke-virtual {v11}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    if-eqz v8, :cond_83

    .line 87
    .line 88
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v12

    .line 92
    const-string v13, "image/"

    .line 93
    .line 94
    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result v12

    .line 98
    if-nez v12, :cond_83

    .line 99
    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_78} :catch_80
    .catchall {:try_start_51 .. :try_end_78} :catchall_7d

    .line 119
    .line 120
    .line 121
    :catch_78
    :cond_78
    :goto_78
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 122
    .line 123
    .line 124
    goto/16 :goto_10d

    .line 125
    .line 126
    :catchall_7d
    move-exception v0

    .line 127
    goto/16 :goto_10e

    .line 128
    .line 129
    :catch_80
    move-exception v1

    .line 130
    goto/16 :goto_fd

    .line 131
    .line 132
    :cond_83
    :try_start_83
    invoke-virtual {v11}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 133
    .line 134
    .line 135
    move-result-object v8
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_87} :catch_80
    .catchall {:try_start_83 .. :try_end_87} :catchall_7d

    .line 136
    :try_start_87
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    .line 137
    .line 138
    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 139
    .line 140
    .line 141
    sget-object v12, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 142
    .line 143
    iput-object v12, v9, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 144
    .line 145
    invoke-static {v8, v10, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 146
    .line 147
    .line 148
    move-result-object v9

    .line 149
    if-nez v9, :cond_aa

    .line 150
    .line 151
    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_9d} :catch_a7
    .catchall {:try_start_87 .. :try_end_9d} :catchall_a3

    .line 156
    .line 157
    .line 158
    if-eqz v8, :cond_78

    .line 159
    .line 160
    :goto_9f
    :try_start_9f
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_a2} :catch_78

    .line 161
    .line 162
    .line 163
    goto :goto_78

    .line 164
    :catchall_a3
    move-exception v0

    .line 165
    move-object v10, v8

    .line 166
    goto/16 :goto_10e

    .line 167
    .line 168
    :catch_a7
    move-exception v1

    .line 169
    move-object v10, v8

    .line 170
    goto :goto_fd

    .line 171
    :cond_aa
    :try_start_aa
    new-instance v6, Ly/m;

    .line 172
    .line 173
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 174
    .line 175
    .line 176
    new-instance v12, Landroidx/core/graphics/drawable/IconCompat;

    .line 177
    .line 178
    invoke-direct {v12, v1}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    .line 179
    .line 180
    .line 181
    iput-object v9, v12, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 182
    .line 183
    iput-object v12, v6, Ly/m;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 184
    .line 185
    iput-object v10, v6, Ly/m;->c:Landroidx/core/graphics/drawable/IconCompat;

    .line 186
    .line 187
    iput-boolean v1, v6, Ly/m;->d:Z

    .line 188
    .line 189
    invoke-virtual {v4, v6}, Ly/p;->e(Landroidx/fragment/app/m;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v4, v9}, Ly/p;->d(Landroid/graphics/Bitmap;)V

    .line 193
    .line 194
    .line 195
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 196
    .line 197
    const/16 v6, 0x18

    .line 198
    .line 199
    if-lt v1, v6, :cond_d6

    .line 200
    .line 201
    invoke-static {v3}, Lt4/i;->b(Landroid/app/NotificationManager;)Z

    .line 202
    .line 203
    .line 204
    move-result v9

    .line 205
    if-eqz v9, :cond_d6

    .line 206
    .line 207
    invoke-virtual {v4}, Ly/p;->a()Landroid/app/Notification;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-virtual {v3, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 212
    .line 213
    .line 214
    goto :goto_df

    .line 215
    :cond_d6
    if-ge v1, v6, :cond_df

    .line 216
    .line 217
    invoke-virtual {v4}, Ly/p;->a()Landroid/app/Notification;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    invoke-virtual {v3, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_df} :catch_a7
    .catchall {:try_start_aa .. :try_end_df} :catchall_a3

    .line 222
    .line 223
    .line 224
    :cond_df
    :goto_df
    if-eqz v8, :cond_78

    .line 225
    .line 226
    goto :goto_9f

    .line 227
    :cond_e2
    :goto_e2
    :try_start_e2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_f7} :catch_80
    .catchall {:try_start_e2 .. :try_end_f7} :catchall_7d

    .line 246
    .line 247
    .line 248
    goto :goto_78

    .line 249
    :catchall_f8
    move-exception v0

    .line 250
    move-object v11, v10

    .line 251
    goto :goto_10e

    .line 252
    :catch_fb
    move-exception v1

    .line 253
    move-object v11, v10

    .line 254
    :goto_fd
    :try_start_fd
    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    invoke-static {v7, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_104
    .catchall {:try_start_fd .. :try_end_104} :catchall_7d

    .line 259
    .line 260
    .line 261
    if-eqz v10, :cond_109

    .line 262
    .line 263
    :try_start_106
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_109
    .catch Ljava/lang/Exception; {:try_start_106 .. :try_end_109} :catch_109

    .line 264
    .line 265
    .line 266
    :catch_109
    :cond_109
    if-eqz v11, :cond_10d

    .line 267
    .line 268
    goto/16 :goto_78

    .line 269
    .line 270
    :cond_10d
    :goto_10d
    return-void

    .line 271
    :goto_10e
    if-eqz v10, :cond_113

    .line 272
    .line 273
    :try_start_110
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_113} :catch_113

    .line 274
    .line 275
    .line 276
    :catch_113
    :cond_113
    if-eqz v11, :cond_118

    .line 277
    .line 278
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 279
    .line 280
    .line 281
    :cond_118
    throw v0

    .line 282
    :pswitch_119
    check-cast v5, Ll3/i;

    .line 283
    .line 284
    check-cast v4, Lf3/i;

    .line 285
    .line 286
    check-cast v3, Ljava/lang/Runnable;

    .line 287
    .line 288
    iget-object v0, v5, Ll3/i;->f:Ln3/c;

    .line 289
    .line 290
    :try_start_121
    iget-object v6, v5, Ll3/i;->c:Lm3/d;

    .line 291
    .line 292
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    new-instance v7, Lcom/google/firebase/messaging/j0;

    .line 296
    .line 297
    const/4 v8, 0x7

    .line 298
    invoke-direct {v7, v8, v6}, Lcom/google/firebase/messaging/j0;-><init>(ILjava/lang/Object;)V

    .line 299
    .line 300
    .line 301
    move-object v6, v0

    .line 302
    check-cast v6, Lm3/h;

    .line 303
    .line 304
    invoke-virtual {v6, v7}, Lm3/h;->t(Ln3/b;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    iget-object v6, v5, Ll3/i;->a:Landroid/content/Context;

    .line 308
    .line 309
    const-string v7, "connectivity"

    .line 310
    .line 311
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v6

    .line 315
    check-cast v6, Landroid/net/ConnectivityManager;

    .line 316
    .line 317
    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 318
    .line 319
    .line 320
    move-result-object v6

    .line 321
    if-eqz v6, :cond_14e

    .line 322
    .line 323
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 324
    .line 325
    .line 326
    move-result v6

    .line 327
    if-eqz v6, :cond_14e

    .line 328
    .line 329
    invoke-virtual {v5, v4, v2}, Ll3/i;->a(Lf3/i;I)V

    .line 330
    .line 331
    .line 332
    goto :goto_158

    .line 333
    :catchall_14c
    move-exception v0

    .line 334
    goto :goto_165

    .line 335
    :cond_14e
    new-instance v6, Ll3/e;

    .line 336
    .line 337
    invoke-direct {v6, v5, v4, v2}, Ll3/e;-><init>(Ll3/i;Lf3/i;I)V

    .line 338
    .line 339
    .line 340
    check-cast v0, Lm3/h;

    .line 341
    .line 342
    invoke-virtual {v0, v6}, Lm3/h;->t(Ln3/b;)Ljava/lang/Object;
    :try_end_158
    .catch Ln3/a; {:try_start_121 .. :try_end_158} :catch_15c
    .catchall {:try_start_121 .. :try_end_158} :catchall_14c

    .line 343
    .line 344
    .line 345
    :goto_158
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 346
    .line 347
    .line 348
    goto :goto_164

    .line 349
    :catch_15c
    :try_start_15c
    iget-object v0, v5, Ll3/i;->d:Lc5/h;

    .line 350
    .line 351
    add-int/2addr v2, v1

    .line 352
    const/4 v1, 0x0

    .line 353
    invoke-virtual {v0, v4, v2, v1}, Lc5/h;->t(Lf3/i;IZ)V
    :try_end_163
    .catchall {:try_start_15c .. :try_end_163} :catchall_14c

    .line 354
    .line 355
    .line 356
    goto :goto_158

    .line 357
    :goto_164
    return-void

    .line 358
    :goto_165
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 359
    .line 360
    .line 361
    throw v0

    .line 362
    nop

    .line 363
    :pswitch_data_16a
    .packed-switch 0x0
        :pswitch_119
    .end packed-switch
.end method

###### Class l3.e (l3.e)
.class public final synthetic Ll3/e;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ln3/b;


# instance fields
.field public final synthetic a:Ll3/i;

.field public final synthetic b:Lf3/i;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ll3/i;Lf3/i;I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll3/e;->a:Ll3/i;

    .line 5
    .line 6
    iput-object p2, p0, Ll3/e;->b:Lf3/i;

    .line 7
    .line 8
    iput p3, p0, Ll3/e;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 5

    .line 1
    iget-object v0, p0, Ll3/e;->a:Ll3/i;

    .line 2
    .line 3
    iget-object v0, v0, Ll3/i;->d:Lc5/h;

    .line 4
    .line 5
    iget v1, p0, Ll3/e;->c:I

    .line 6
    .line 7
    add-int/lit8 v1, v1, 0x1

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iget-object v3, p0, Ll3/e;->b:Lf3/i;

    .line 11
    .line 12
    invoke-virtual {v0, v3, v1, v2}, Lc5/h;->t(Lf3/i;IZ)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    return-object v0
.end method
