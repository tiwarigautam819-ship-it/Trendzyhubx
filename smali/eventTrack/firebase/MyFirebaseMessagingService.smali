###### Class eventTrack.firebase.MyFirebaseMessagingService (eventTrack.firebase.MyFirebaseMessagingService)
.class public LeventTrack/firebase/MyFirebaseMessagingService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final synthetic a:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    if-nez p2, :cond_a

    .line 2
    .line 3
    :try_start_2
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catch_8
    move-exception p0

    .line 10
    goto :goto_e

    .line 11
    :cond_a
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_8

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :goto_e
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, "safePut error, key="

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p1, ", value="

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string p2, "FCM"

    .line 38
    .line 39
    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public final onMessageReceived(Lcom/google/firebase/messaging/w;)V
    .registers 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "AnalyticsReporter"

    .line 4
    .line 5
    const-string v0, "Message has received"

    .line 6
    .line 7
    const-string v3, "FCM"

    .line 8
    .line 9
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/messaging/w;->a()Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    new-instance v0, Lorg/json/JSONObject;

    .line 17
    .line 18
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 19
    .line 20
    .line 21
    sput-object v0, Ln6/f;->a:Lorg/json/JSONObject;

    .line 22
    .line 23
    :try_start_16
    move-object v0, v4

    .line 24
    check-cast v0, Ls/j;

    .line 25
    .line 26
    invoke-virtual {v0}, Ls/j;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_4e

    .line 31
    .line 32
    move-object v0, v4

    .line 33
    check-cast v0, Ls/e;

    .line 34
    .line 35
    invoke-virtual {v0}, Ls/e;->entrySet()Ljava/util/Set;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :cond_2a
    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_4e

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    check-cast v5, Ljava/util/Map$Entry;

    .line 54
    .line 55
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    check-cast v6, Ljava/lang/String;

    .line 60
    .line 61
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    check-cast v5, Ljava/lang/String;

    .line 66
    .line 67
    if-eqz v6, :cond_2a

    .line 68
    .line 69
    if-eqz v5, :cond_2a

    .line 70
    .line 71
    sget-object v7, Ln6/f;->a:Lorg/json/JSONObject;

    .line 72
    .line 73
    invoke-static {v7, v6, v5}, LeventTrack/firebase/MyFirebaseMessagingService;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    goto :goto_2a

    .line 77
    :catch_4c
    move-exception v0

    .line 78
    goto :goto_67

    .line 79
    :cond_4e
    sget-object v0, Ln6/f;->a:Lorg/json/JSONObject;

    .line 80
    .line 81
    const-string v5, "mp_notification_receive"

    .line 82
    .line 83
    invoke-static {v5, v0}, Ln6/e;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 84
    .line 85
    .line 86
    new-instance v5, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v6, "notification_receive\u57cb\u70b9"

    .line 89
    .line 90
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_66} :catch_4c

    .line 101
    .line 102
    .line 103
    goto :goto_6c

    .line 104
    :goto_67
    const-string v5, "\u4e0a\u62a5\u4fe1\u606f\u62a5\u9519"

    .line 105
    .line 106
    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    .line 108
    .line 109
    :goto_6c
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/messaging/w;->b()Lc5/h;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    const-string v5, "title"

    .line 114
    .line 115
    if-eqz v0, :cond_88

    .line 116
    .line 117
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/messaging/w;->b()Lc5/h;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    iget-object v0, v0, Lc5/h;->b:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v0, Ljava/lang/String;

    .line 124
    .line 125
    if-eqz v0, :cond_88

    .line 126
    .line 127
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/messaging/w;->b()Lc5/h;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    iget-object v0, v0, Lc5/h;->b:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v0, Ljava/lang/String;

    .line 134
    .line 135
    :goto_86
    move-object v6, v0

    .line 136
    goto :goto_9b

    .line 137
    :cond_88
    move-object v0, v4

    .line 138
    check-cast v0, Ls/e;

    .line 139
    .line 140
    invoke-virtual {v0, v5}, Ls/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    if-eqz v6, :cond_98

    .line 145
    .line 146
    invoke-virtual {v0, v5}, Ls/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    check-cast v0, Ljava/lang/String;

    .line 151
    .line 152
    goto :goto_86

    .line 153
    :cond_98
    const-string v0, "Notification"

    .line 154
    .line 155
    goto :goto_86

    .line 156
    :goto_9b
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/messaging/w;->b()Lc5/h;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    const-string v7, "body"

    .line 161
    .line 162
    if-eqz v0, :cond_b7

    .line 163
    .line 164
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/messaging/w;->b()Lc5/h;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    iget-object v0, v0, Lc5/h;->c:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast v0, Ljava/lang/String;

    .line 171
    .line 172
    if-eqz v0, :cond_b7

    .line 173
    .line 174
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/messaging/w;->b()Lc5/h;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    iget-object v0, v0, Lc5/h;->c:Ljava/lang/Object;

    .line 179
    .line 180
    check-cast v0, Ljava/lang/String;

    .line 181
    .line 182
    :goto_b5
    move-object v8, v0

    .line 183
    goto :goto_ca

    .line 184
    :cond_b7
    move-object v0, v4

    .line 185
    check-cast v0, Ls/e;

    .line 186
    .line 187
    invoke-virtual {v0, v7}, Ls/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v8

    .line 191
    if-eqz v8, :cond_c7

    .line 192
    .line 193
    invoke-virtual {v0, v7}, Ls/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    check-cast v0, Ljava/lang/String;

    .line 198
    .line 199
    goto :goto_b5

    .line 200
    :cond_c7
    const-string v0, "You have a new notification"

    .line 201
    .line 202
    goto :goto_b5

    .line 203
    :goto_ca
    check-cast v4, Ls/e;

    .line 204
    .line 205
    const-string v9, "targetLink"

    .line 206
    .line 207
    invoke-virtual {v4, v9}, Ls/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    move-object v10, v0

    .line 212
    check-cast v10, Ljava/lang/String;

    .line 213
    .line 214
    const-string v11, "openPage"

    .line 215
    .line 216
    invoke-virtual {v4, v11}, Ls/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    move-object v12, v0

    .line 221
    check-cast v12, Ljava/lang/String;

    .line 222
    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    const-string v13, "Message Data: "

    .line 226
    .line 227
    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .line 239
    .line 240
    const v0, 0x7f0f0054

    .line 241
    .line 242
    .line 243
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v13

    .line 247
    const v0, 0x7f0f0055

    .line 248
    .line 249
    .line 250
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v14

    .line 254
    const-string v0, "image"

    .line 255
    .line 256
    invoke-virtual {v4, v0}, Ls/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    move-object v15, v0

    .line 261
    check-cast v15, Ljava/lang/String;

    .line 262
    .line 263
    const-string v0, "message_id"

    .line 264
    .line 265
    move-object/from16 p1, v10

    .line 266
    .line 267
    const-string v10, "messageId"

    .line 268
    .line 269
    :try_start_10c
    invoke-virtual {v4, v10}, Ls/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v16

    .line 273
    if-eqz v16, :cond_119

    .line 274
    .line 275
    invoke-virtual {v4, v10}, Ls/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    check-cast v0, Ljava/lang/String;

    .line 280
    .line 281
    goto :goto_12e

    .line 282
    :cond_119
    invoke-virtual {v4, v0}, Ls/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v10

    .line 286
    if-eqz v10, :cond_126

    .line 287
    .line 288
    invoke-virtual {v4, v0}, Ls/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    check-cast v0, Ljava/lang/String;

    .line 293
    .line 294
    goto :goto_12e

    .line 295
    :cond_126
    const-string v0, "id"

    .line 296
    .line 297
    invoke-virtual {v4, v0}, Ls/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    check-cast v0, Ljava/lang/String;

    .line 302
    .line 303
    :goto_12e
    if-eqz v0, :cond_13d

    .line 304
    .line 305
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 306
    .line 307
    .line 308
    move-result v10

    .line 309
    if-nez v10, :cond_13d

    .line 310
    .line 311
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 312
    .line 313
    .line 314
    move-result v0
    :try_end_13a
    .catch Ljava/lang/Exception; {:try_start_10c .. :try_end_13a} :catch_13d

    .line 315
    :goto_13a
    move v10, v0

    .line 316
    move-object v0, v4

    .line 317
    goto :goto_156

    .line 318
    :catch_13d
    :cond_13d
    new-instance v0, Ljava/lang/StringBuilder;

    .line 319
    .line 320
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    const-string v10, "||"

    .line 327
    .line 328
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 339
    .line 340
    .line 341
    move-result v0

    .line 342
    goto :goto_13a

    .line 343
    :goto_156
    new-instance v4, Landroid/content/Intent;

    .line 344
    .line 345
    move-object/from16 v16, v0

    .line 346
    .line 347
    const-class v0, Lcom/lottery/app/MainActivity;

    .line 348
    .line 349
    invoke-direct {v4, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 350
    .line 351
    .line 352
    const/high16 v0, 0x14000000

    .line 353
    .line 354
    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 355
    .line 356
    .line 357
    if-eqz p1, :cond_16d

    .line 358
    .line 359
    invoke-static/range {p1 .. p1}, Lk2/e;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    invoke-virtual {v4, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    .line 365
    .line 366
    :cond_16d
    move-object/from16 v17, v15

    .line 367
    .line 368
    new-instance v15, Lorg/json/JSONObject;

    .line 369
    .line 370
    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    .line 371
    .line 372
    .line 373
    :try_start_174
    invoke-virtual/range {v16 .. v16}, Ls/j;->isEmpty()Z

    .line 374
    .line 375
    .line 376
    move-result v0

    .line 377
    if-nez v0, :cond_1b5

    .line 378
    .line 379
    invoke-virtual/range {v16 .. v16}, Ls/e;->entrySet()Ljava/util/Set;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    :goto_182
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 388
    .line 389
    .line 390
    move-result v16

    .line 391
    if-eqz v16, :cond_1b5

    .line 392
    .line 393
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v16

    .line 397
    check-cast v16, Ljava/util/Map$Entry;

    .line 398
    .line 399
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v18

    .line 403
    move-object/from16 v19, v0

    .line 404
    .line 405
    move-object/from16 v0, v18

    .line 406
    .line 407
    check-cast v0, Ljava/lang/String;

    .line 408
    .line 409
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v16
    :try_end_19c
    .catch Ljava/lang/Exception; {:try_start_174 .. :try_end_19c} :catch_1b1

    .line 413
    move-object/from16 v18, v2

    .line 414
    .line 415
    :try_start_19e
    move-object/from16 v2, v16

    .line 416
    .line 417
    check-cast v2, Ljava/lang/String;

    .line 418
    .line 419
    if-eqz v0, :cond_1ac

    .line 420
    .line 421
    if-eqz v2, :cond_1ac

    .line 422
    .line 423
    invoke-static {v15, v0, v2}, LeventTrack/firebase/MyFirebaseMessagingService;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    goto :goto_1ac

    .line 427
    :catch_1aa
    move-exception v0

    .line 428
    goto :goto_1cc

    .line 429
    :cond_1ac
    :goto_1ac
    move-object/from16 v2, v18

    .line 430
    .line 431
    move-object/from16 v0, v19

    .line 432
    .line 433
    goto :goto_182

    .line 434
    :catch_1b1
    move-exception v0

    .line 435
    move-object/from16 v18, v2

    .line 436
    .line 437
    goto :goto_1cc

    .line 438
    :cond_1b5
    move-object/from16 v18, v2

    .line 439
    .line 440
    invoke-static {v15, v5, v6}, LeventTrack/firebase/MyFirebaseMessagingService;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    invoke-static {v15, v7, v8}, LeventTrack/firebase/MyFirebaseMessagingService;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    if-eqz p1, :cond_1c6

    .line 447
    .line 448
    invoke-static/range {p1 .. p1}, Lk2/e;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v0

    .line 452
    invoke-static {v15, v9, v0}, LeventTrack/firebase/MyFirebaseMessagingService;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    :cond_1c6
    if-eqz v12, :cond_1d1

    .line 456
    .line 457
    invoke-static {v15, v11, v12}, LeventTrack/firebase/MyFirebaseMessagingService;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1cb
    .catch Ljava/lang/Exception; {:try_start_19e .. :try_end_1cb} :catch_1aa

    .line 458
    .line 459
    .line 460
    goto :goto_1d1

    .line 461
    :goto_1cc
    const-string v2, "build jsonForIntent error"

    .line 462
    .line 463
    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 464
    .line 465
    .line 466
    :cond_1d1
    :goto_1d1
    if-eqz p1, :cond_1da

    .line 467
    .line 468
    invoke-static/range {p1 .. p1}, Lk2/e;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    invoke-virtual {v4, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 473
    .line 474
    .line 475
    :cond_1da
    if-eqz v12, :cond_1df

    .line 476
    .line 477
    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    .line 479
    .line 480
    :cond_1df
    const-string v0, "origin"

    .line 481
    .line 482
    const-string v2, "message"

    .line 483
    .line 484
    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 485
    .line 486
    .line 487
    invoke-virtual {v15}, Lorg/json/JSONObject;->length()I

    .line 488
    .line 489
    .line 490
    move-result v0

    .line 491
    if-lez v0, :cond_20a

    .line 492
    .line 493
    const-string v0, "data"

    .line 494
    .line 495
    invoke-virtual {v15}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v2

    .line 499
    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 500
    .line 501
    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    .line 503
    .line 504
    const-string v2, "\u27a1\ufe0f putExtra data="

    .line 505
    .line 506
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 507
    .line 508
    .line 509
    invoke-virtual {v15}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v2

    .line 513
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object v0

    .line 520
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    .line 522
    .line 523
    :cond_20a
    const/high16 v0, 0xc000000

    .line 524
    .line 525
    invoke-static {v1, v10, v4, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 526
    .line 527
    .line 528
    move-result-object v0

    .line 529
    new-instance v2, Ly/p;

    .line 530
    .line 531
    invoke-direct {v2, v1, v13}, Ly/p;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    sget v3, Ln6/c;->d:I

    .line 535
    .line 536
    if-nez v3, :cond_21c

    .line 537
    .line 538
    const v3, 0x7f080083

    .line 539
    .line 540
    .line 541
    :cond_21c
    :try_start_21c
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 542
    .line 543
    .line 544
    move-result-object v4

    .line 545
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_223
    .catch Ljava/lang/Exception; {:try_start_21c .. :try_end_223} :catch_224

    .line 546
    .line 547
    .line 548
    goto :goto_226

    .line 549
    :catch_224
    sget v3, Ln6/c;->e:I

    .line 550
    .line 551
    :goto_226
    iget-object v4, v2, Ly/p;->s:Landroid/app/Notification;

    .line 552
    .line 553
    iput v3, v4, Landroid/app/Notification;->icon:I

    .line 554
    .line 555
    invoke-static {v6}, Ly/p;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 556
    .line 557
    .line 558
    move-result-object v3

    .line 559
    iput-object v3, v2, Ly/p;->e:Ljava/lang/CharSequence;

    .line 560
    .line 561
    invoke-static {v8}, Ly/p;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 562
    .line 563
    .line 564
    move-result-object v3

    .line 565
    iput-object v3, v2, Ly/p;->f:Ljava/lang/CharSequence;

    .line 566
    .line 567
    const/4 v3, 0x1

    .line 568
    invoke-virtual {v2, v3}, Ly/p;->c(Z)V

    .line 569
    .line 570
    .line 571
    iput-object v0, v2, Ly/p;->g:Landroid/app/PendingIntent;

    .line 572
    .line 573
    iput v3, v2, Ly/p;->j:I

    .line 574
    .line 575
    const-string v0, "notification"

    .line 576
    .line 577
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 578
    .line 579
    .line 580
    move-result-object v0

    .line 581
    check-cast v0, Landroid/app/NotificationManager;

    .line 582
    .line 583
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 584
    .line 585
    const/16 v4, 0x1a

    .line 586
    .line 587
    if-lt v3, v4, :cond_253

    .line 588
    .line 589
    invoke-static {v13, v14}, Lcom/getcapacitor/plugin/util/a;->f(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 590
    .line 591
    .line 592
    move-result-object v3

    .line 593
    invoke-static {v0, v3}, Lcom/getcapacitor/plugin/util/a;->u(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 594
    .line 595
    .line 596
    :cond_253
    invoke-virtual {v2}, Ly/p;->a()Landroid/app/Notification;

    .line 597
    .line 598
    .line 599
    move-result-object v3

    .line 600
    invoke-virtual {v0, v10, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 601
    .line 602
    .line 603
    sget-object v3, Ln6/f;->a:Lorg/json/JSONObject;

    .line 604
    .line 605
    const-string v4, "mp_notification_display"

    .line 606
    .line 607
    invoke-static {v4, v3}, Ln6/e;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 608
    .line 609
    .line 610
    new-instance v4, Ljava/lang/StringBuilder;

    .line 611
    .line 612
    const-string v5, "notification_display\u57cb\u70b9"

    .line 613
    .line 614
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 615
    .line 616
    .line 617
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 618
    .line 619
    .line 620
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v3

    .line 624
    move-object/from16 v4, v18

    .line 625
    .line 626
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    .line 628
    .line 629
    if-eqz v17, :cond_2b3

    .line 630
    .line 631
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object v3

    .line 635
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 636
    .line 637
    .line 638
    move-result v3

    .line 639
    if-nez v3, :cond_2b3

    .line 640
    .line 641
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 642
    .line 643
    .line 644
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 645
    .line 646
    .line 647
    move-result-object v3

    .line 648
    if-nez v3, :cond_28a

    .line 649
    .line 650
    goto :goto_2b3

    .line 651
    :cond_28a
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v3

    .line 655
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 656
    .line 657
    .line 658
    move-result v4

    .line 659
    if-eqz v4, :cond_295

    .line 660
    .line 661
    goto :goto_2b3

    .line 662
    :cond_295
    const-string v4, "http://"

    .line 663
    .line 664
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 665
    .line 666
    .line 667
    move-result v4

    .line 668
    if-nez v4, :cond_2a6

    .line 669
    .line 670
    const-string v4, "https://"

    .line 671
    .line 672
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 673
    .line 674
    .line 675
    move-result v4

    .line 676
    if-nez v4, :cond_2a6

    .line 677
    .line 678
    goto :goto_2b3

    .line 679
    :cond_2a6
    new-instance v4, Ljava/lang/Thread;

    .line 680
    .line 681
    new-instance v5, Ll3/d;

    .line 682
    .line 683
    invoke-direct {v5, v3, v2, v0, v10}, Ll3/d;-><init>(Ljava/lang/String;Ly/p;Landroid/app/NotificationManager;I)V

    .line 684
    .line 685
    .line 686
    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 687
    .line 688
    .line 689
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 690
    .line 691
    .line 692
    :cond_2b3
    :goto_2b3
    return-void
.end method

.method public final onNewToken(Ljava/lang/String;)V
    .registers 5

    .line 1
    const-string v0, "token"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "New Token: "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "FCM"

    .line 18
    .line 19
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Ln6/c;->b(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :try_start_18
    new-instance v1, Lorg/json/JSONObject;

    .line 26
    .line 27
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    .line 32
    .line 33
    const-string v1, "token_update\u57cb\u70b9"

    .line 34
    .line 35
    new-instance v2, Lorg/json/JSONObject;

    .line 36
    .line 37
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    .line 42
    .line 43
    const-string v0, "mp_token_update"

    .line 44
    .line 45
    invoke-static {v0, v2}, Ln6/e;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 46
    .line 47
    .line 48
    const-string v0, "AnalyticsReporter"

    .line 49
    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_40} :catch_40

    .line 63
    .line 64
    .line 65
    :catch_40
    return-void
.end method
