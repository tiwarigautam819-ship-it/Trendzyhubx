###### Class com.engagelab.privates.push.platform.google.callback.MTGoogleCallbackImp (com.engagelab.privates.push.platform.google.callback.MTGoogleCallbackImp)
.class public Lcom/engagelab/privates/push/platform/google/callback/MTGoogleCallbackImp;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field private static final TAG:Ljava/lang/String; = "MTGoogleCallbackImp"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/app/Service;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/engagelab/privates/push/platform/google/callback/MTGoogleCallbackImp;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/google/firebase/messaging/w;)V
    .registers 33

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "JMessageExtra"

    .line 4
    .line 5
    const-string v2, "MTGoogleCallbackImp"

    .line 6
    .line 7
    move-object/from16 v3, p1

    .line 8
    .line 9
    :try_start_8
    iget-object v4, v3, Lcom/google/firebase/messaging/w;->a:Landroid/os/Bundle;

    .line 10
    .line 11
    const-string v5, "google.message_id"

    .line 12
    .line 13
    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    if-nez v5, :cond_18

    .line 18
    .line 19
    const-string v5, "message_id"

    .line 20
    .line 21
    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    :cond_18
    invoke-virtual {v3}, Lcom/google/firebase/messaging/w;->a()Ljava/util/Map;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    new-instance v6, Landroid/os/Bundle;

    .line 30
    .line 31
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 32
    .line 33
    .line 34
    check-cast v4, Ls/e;

    .line 35
    .line 36
    invoke-virtual {v4}, Ls/e;->entrySet()Ljava/util/Set;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    :goto_2b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    if-eqz v8, :cond_4c

    .line 49
    .line 50
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v8

    .line 54
    check-cast v8, Ljava/util/Map$Entry;

    .line 55
    .line 56
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v9

    .line 60
    check-cast v9, Ljava/lang/String;

    .line 61
    .line 62
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    check-cast v8, Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v6, v9, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    goto :goto_2b

    .line 72
    :catchall_47
    move-exception v0

    .line 73
    move-object/from16 v16, v2

    .line 74
    .line 75
    goto/16 :goto_2a4

    .line 76
    .line 77
    :cond_4c
    invoke-virtual {v4, v0}, Ls/j;->containsKey(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v7

    .line 81
    if-eqz v7, :cond_59

    .line 82
    .line 83
    invoke-virtual {v4, v0}, Ls/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Ljava/lang/String;

    .line 88
    .line 89
    goto :goto_61

    .line 90
    :cond_59
    const-string v0, "MTMessageExtra"

    .line 91
    .line 92
    invoke-virtual {v4, v0}, Ls/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Ljava/lang/String;

    .line 97
    .line 98
    :goto_61
    if-nez v0, :cond_64

    .line 99
    .line 100
    goto :goto_6e

    .line 101
    :cond_64
    invoke-static {v0}, Lcom/engagelab/privates/common/utils/SM4Util;->decodeMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-eqz v4, :cond_6f

    .line 110
    .line 111
    :goto_6e
    return-void

    .line 112
    :cond_6f
    iget-object v4, v1, Lcom/engagelab/privates/push/platform/google/callback/MTGoogleCallbackImp;->mContext:Landroid/content/Context;

    .line 113
    .line 114
    invoke-static {v4}, Lcom/engagelab/privates/push/api/MTPushPrivatesApi;->init(Landroid/content/Context;)V

    .line 115
    .line 116
    .line 117
    new-instance v4, Lorg/json/JSONObject;

    .line 118
    .line 119
    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    const-string v7, "onMessage:"

    .line 128
    .line 129
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-static {v4}, Lcom/engagelab/privates/common/log/MTCommonLog;->toLogString(Lorg/json/JSONObject;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-static {v2, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->debugOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-static {v4}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getMessageId(Lorg/json/JSONObject;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    new-instance v7, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    const-string v8, "onMessage messageId:"

    .line 156
    .line 157
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v7

    .line 167
    invoke-static {v2, v7}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v3}, Lcom/google/firebase/messaging/w;->b()Lc5/h;

    .line 171
    .line 172
    .line 173
    move-result-object v3
    :try_end_ad
    .catchall {:try_start_8 .. :try_end_ad} :catchall_47

    .line 174
    const/16 v7, 0x8

    .line 175
    .line 176
    const-string v8, "message"

    .line 177
    .line 178
    if-nez v3, :cond_103

    .line 179
    .line 180
    :try_start_b3
    const-string v3, "is data"

    .line 181
    .line 182
    invoke-static {v2, v3}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    const-string v3, "title"

    .line 186
    .line 187
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v6

    .line 195
    const-string v9, "content_type"

    .line 196
    .line 197
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v9

    .line 201
    const-string v10, "extras"

    .line 202
    .line 203
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    invoke-static {v4}, Lcom/engagelab/privates/push/utils/NotificationUtil;->convertJsonToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    new-instance v10, Lcom/engagelab/privates/push/api/CustomMessage;

    .line 212
    .line 213
    invoke-direct {v10}, Lcom/engagelab/privates/push/api/CustomMessage;-><init>()V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v10, v0}, Lcom/engagelab/privates/push/api/CustomMessage;->setMessageId(Ljava/lang/String;)Lcom/engagelab/privates/push/api/CustomMessage;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-virtual {v0, v7}, Lcom/engagelab/privates/push/api/CustomMessage;->setPlatform(B)Lcom/engagelab/privates/push/api/CustomMessage;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-virtual {v0, v5}, Lcom/engagelab/privates/push/api/CustomMessage;->setPlatformMessageId(Ljava/lang/String;)Lcom/engagelab/privates/push/api/CustomMessage;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-virtual {v0, v3}, Lcom/engagelab/privates/push/api/CustomMessage;->setTitle(Ljava/lang/String;)Lcom/engagelab/privates/push/api/CustomMessage;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-virtual {v0, v6}, Lcom/engagelab/privates/push/api/CustomMessage;->setContent(Ljava/lang/String;)Lcom/engagelab/privates/push/api/CustomMessage;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-virtual {v0, v9}, Lcom/engagelab/privates/push/api/CustomMessage;->setContentType(Ljava/lang/String;)Lcom/engagelab/privates/push/api/CustomMessage;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-virtual {v0, v4}, Lcom/engagelab/privates/push/api/CustomMessage;->setExtras(Landroid/os/Bundle;)Lcom/engagelab/privates/push/api/CustomMessage;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    new-instance v3, Landroid/os/Bundle;

    .line 245
    .line 246
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v3, v8, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 250
    .line 251
    .line 252
    iget-object v0, v1, Lcom/engagelab/privates/push/platform/google/callback/MTGoogleCallbackImp;->mContext:Landroid/content/Context;

    .line 253
    .line 254
    const/16 v4, 0xbb9

    .line 255
    .line 256
    invoke-static {v0, v4, v3}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToMainProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 257
    .line 258
    .line 259
    return-void

    .line 260
    :cond_103
    const-string v9, "is notification"

    .line 261
    .line 262
    invoke-static {v2, v9}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    invoke-static {v0}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getNotificationId(Ljava/lang/String;)I

    .line 266
    .line 267
    .line 268
    move-result v9

    .line 269
    iget-object v10, v3, Lc5/h;->b:Ljava/lang/Object;

    .line 270
    .line 271
    check-cast v10, Ljava/lang/String;

    .line 272
    .line 273
    iget-object v11, v3, Lc5/h;->c:Ljava/lang/Object;

    .line 274
    .line 275
    check-cast v11, Ljava/lang/String;

    .line 276
    .line 277
    const-string v12, "n_extras"

    .line 278
    .line 279
    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 280
    .line 281
    .line 282
    move-result-object v12

    .line 283
    invoke-static {v12}, Lcom/engagelab/privates/push/utils/NotificationUtil;->convertJsonToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    .line 284
    .line 285
    .line 286
    move-result-object v12

    .line 287
    const-string v13, "n_alert_type"

    .line 288
    .line 289
    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 290
    .line 291
    .line 292
    move-result v13

    .line 293
    invoke-static {v4}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getPriority(Lorg/json/JSONObject;)I

    .line 294
    .line 295
    .line 296
    move-result v14

    .line 297
    invoke-static {v4}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getNotificationImportance(Lorg/json/JSONObject;)I

    .line 298
    .line 299
    .line 300
    move-result v15

    .line 301
    const-string v7, "n_sound"

    .line 302
    .line 303
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v7
    :try_end_132
    .catchall {:try_start_b3 .. :try_end_132} :catchall_47

    .line 307
    move-object/from16 v16, v2

    .line 308
    .line 309
    :try_start_134
    const-string v2, "n_category"

    .line 310
    .line 311
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v2

    .line 315
    move-object/from16 v17, v8

    .line 316
    .line 317
    const-string v8, "n_channel_id"

    .line 318
    .line 319
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v8

    .line 323
    move-object/from16 v18, v8

    .line 324
    .line 325
    const-string v8, "n_group_id"

    .line 326
    .line 327
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v8

    .line 331
    move-object/from16 v19, v8

    .line 332
    .line 333
    const-string v8, "n_is_fold"

    .line 334
    .line 335
    move-object/from16 v20, v7

    .line 336
    .line 337
    const/4 v7, 0x0

    .line 338
    invoke-virtual {v4, v8, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 339
    .line 340
    .line 341
    move-result v8

    .line 342
    const/4 v7, 0x1

    .line 343
    if-ne v8, v7, :cond_15a

    .line 344
    .line 345
    move v8, v7

    .line 346
    goto :goto_15b

    .line 347
    :cond_15a
    const/4 v8, 0x0

    .line 348
    :goto_15b
    const-string v7, "n_display_foreground"

    .line 349
    .line 350
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v7

    .line 354
    move/from16 v21, v8

    .line 355
    .line 356
    const-string v8, "n_small_icon"

    .line 357
    .line 358
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v8

    .line 362
    move-object/from16 v22, v2

    .line 363
    .line 364
    const-string v2, "n_color"

    .line 365
    .line 366
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v2

    .line 370
    move/from16 v23, v15

    .line 371
    .line 372
    const-string v15, "n_large_icon"

    .line 373
    .line 374
    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v15

    .line 378
    move/from16 v24, v14

    .line 379
    .line 380
    const-string v14, "n_big_text"

    .line 381
    .line 382
    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v14

    .line 386
    move/from16 v25, v13

    .line 387
    .line 388
    const-string v13, "n_big_pic_path"

    .line 389
    .line 390
    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v13

    .line 394
    move-object/from16 v26, v12

    .line 395
    .line 396
    const-string v12, "n_inbox"

    .line 397
    .line 398
    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v12

    .line 402
    invoke-static {v12}, Lcom/engagelab/privates/push/utils/NotificationUtil;->convertJsonToArray(Ljava/lang/String;)[Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v12

    .line 406
    move-object/from16 v27, v2

    .line 407
    .line 408
    const-string v2, "n_style"

    .line 409
    .line 410
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 411
    .line 412
    .line 413
    move-result v2

    .line 414
    move-object/from16 v28, v11

    .line 415
    .line 416
    sget-object v11, Lcom/engagelab/privates/push/api/MTPushPrivatesApi;->SDK_VERSION_NAME:Ljava/lang/String;

    .line 417
    .line 418
    move-object/from16 v29, v10

    .line 419
    .line 420
    const-string v10, "3"

    .line 421
    .line 422
    invoke-virtual {v11, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 423
    .line 424
    .line 425
    move-result v10
    :try_end_1a9
    .catchall {:try_start_134 .. :try_end_1a9} :catchall_1d0

    .line 426
    const-string v11, ""

    .line 427
    .line 428
    if-eqz v10, :cond_1d6

    .line 429
    .line 430
    :try_start_1ad
    iget-object v3, v3, Lc5/h;->d:Ljava/lang/Object;

    .line 431
    .line 432
    check-cast v3, Ljava/lang/String;

    .line 433
    .line 434
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 435
    .line 436
    .line 437
    move-result v10

    .line 438
    if-nez v10, :cond_1d3

    .line 439
    .line 440
    new-instance v10, Landroid/content/Intent;

    .line 441
    .line 442
    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v10, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v10, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 449
    .line 450
    .line 451
    iget-object v3, v1, Lcom/engagelab/privates/push/platform/google/callback/MTGoogleCallbackImp;->mContext:Landroid/content/Context;

    .line 452
    .line 453
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v3

    .line 457
    invoke-virtual {v10, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 458
    .line 459
    .line 460
    invoke-virtual {v10}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v3

    .line 464
    goto :goto_1d4

    .line 465
    :catchall_1d0
    move-exception v0

    .line 466
    goto/16 :goto_2a4

    .line 467
    .line 468
    :cond_1d3
    move-object v3, v11

    .line 469
    :goto_1d4
    const/4 v6, 0x0

    .line 470
    goto :goto_1e2

    .line 471
    :cond_1d6
    const-string v3, "n_intent_uri"

    .line 472
    .line 473
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v3

    .line 477
    const-string v6, "n_intent_ssl"

    .line 478
    .line 479
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v6

    .line 483
    :goto_1e2
    const-string v10, "n_target_event"

    .line 484
    .line 485
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 486
    .line 487
    .line 488
    move-result-object v10

    .line 489
    if-eqz v10, :cond_1f4

    .line 490
    .line 491
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    .line 492
    .line 493
    .line 494
    move-result v30

    .line 495
    if-lez v30, :cond_1f4

    .line 496
    .line 497
    invoke-virtual {v10}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v11

    .line 501
    :cond_1f4
    const-string v10, "n_appkey"

    .line 502
    .line 503
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v4

    .line 507
    new-instance v10, Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 508
    .line 509
    invoke-direct {v10}, Lcom/engagelab/privates/push/api/NotificationMessage;-><init>()V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v10, v0}, Lcom/engagelab/privates/push/api/NotificationMessage;->setMessageId(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    const/16 v10, 0x8

    .line 517
    .line 518
    invoke-virtual {v0, v10}, Lcom/engagelab/privates/push/api/NotificationMessage;->setPlatform(B)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    invoke-virtual {v0, v5}, Lcom/engagelab/privates/push/api/NotificationMessage;->setPlatformMessageId(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    invoke-virtual {v0, v7}, Lcom/engagelab/privates/push/api/NotificationMessage;->setDisplayForeground(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    invoke-virtual {v0, v9}, Lcom/engagelab/privates/push/api/NotificationMessage;->setNotificationId(I)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    invoke-virtual {v0, v8}, Lcom/engagelab/privates/push/api/NotificationMessage;->setSmallIcon(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    invoke-virtual {v0, v15}, Lcom/engagelab/privates/push/api/NotificationMessage;->setLargeIcon(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 539
    .line 540
    .line 541
    move-result-object v0

    .line 542
    invoke-virtual {v0, v2}, Lcom/engagelab/privates/push/api/NotificationMessage;->setStyle(I)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    invoke-virtual {v0, v14}, Lcom/engagelab/privates/push/api/NotificationMessage;->setBigText(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 547
    .line 548
    .line 549
    move-result-object v0

    .line 550
    invoke-virtual {v0, v12}, Lcom/engagelab/privates/push/api/NotificationMessage;->setInbox([Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 551
    .line 552
    .line 553
    move-result-object v0

    .line 554
    invoke-virtual {v0, v13}, Lcom/engagelab/privates/push/api/NotificationMessage;->setBigPicture(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 555
    .line 556
    .line 557
    move-result-object v0

    .line 558
    move-object/from16 v10, v29

    .line 559
    .line 560
    invoke-virtual {v0, v10}, Lcom/engagelab/privates/push/api/NotificationMessage;->setTitle(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 561
    .line 562
    .line 563
    move-result-object v0

    .line 564
    move-object/from16 v2, v28

    .line 565
    .line 566
    invoke-virtual {v0, v2}, Lcom/engagelab/privates/push/api/NotificationMessage;->setContent(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 567
    .line 568
    .line 569
    move-result-object v0

    .line 570
    move-object/from16 v2, v27

    .line 571
    .line 572
    invoke-virtual {v0, v2}, Lcom/engagelab/privates/push/api/NotificationMessage;->setColor(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 573
    .line 574
    .line 575
    move-result-object v0

    .line 576
    move-object/from16 v2, v26

    .line 577
    .line 578
    invoke-virtual {v0, v2}, Lcom/engagelab/privates/push/api/NotificationMessage;->setExtras(Landroid/os/Bundle;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 579
    .line 580
    .line 581
    move-result-object v0

    .line 582
    move/from16 v2, v25

    .line 583
    .line 584
    invoke-virtual {v0, v2}, Lcom/engagelab/privates/push/api/NotificationMessage;->setDefaults(I)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 585
    .line 586
    .line 587
    move-result-object v0

    .line 588
    move/from16 v2, v24

    .line 589
    .line 590
    invoke-virtual {v0, v2}, Lcom/engagelab/privates/push/api/NotificationMessage;->setPriority(I)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 591
    .line 592
    .line 593
    move-result-object v0

    .line 594
    move/from16 v2, v23

    .line 595
    .line 596
    invoke-virtual {v0, v2}, Lcom/engagelab/privates/push/api/NotificationMessage;->setImportance(I)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 597
    .line 598
    .line 599
    move-result-object v0

    .line 600
    move-object/from16 v2, v22

    .line 601
    .line 602
    invoke-virtual {v0, v2}, Lcom/engagelab/privates/push/api/NotificationMessage;->setCategory(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 603
    .line 604
    .line 605
    move-result-object v0

    .line 606
    move-object/from16 v2, v20

    .line 607
    .line 608
    invoke-virtual {v0, v2}, Lcom/engagelab/privates/push/api/NotificationMessage;->setSound(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 609
    .line 610
    .line 611
    move-result-object v0

    .line 612
    move-object/from16 v2, v18

    .line 613
    .line 614
    invoke-virtual {v0, v2}, Lcom/engagelab/privates/push/api/NotificationMessage;->setChannelId(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 615
    .line 616
    .line 617
    move-result-object v0

    .line 618
    move-object/from16 v2, v19

    .line 619
    .line 620
    invoke-virtual {v0, v2}, Lcom/engagelab/privates/push/api/NotificationMessage;->setGroupId(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 621
    .line 622
    .line 623
    move-result-object v0

    .line 624
    move/from16 v7, v21

    .line 625
    .line 626
    invoke-virtual {v0, v7}, Lcom/engagelab/privates/push/api/NotificationMessage;->setGroupSummary(Z)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 627
    .line 628
    .line 629
    move-result-object v0

    .line 630
    invoke-virtual {v0, v3}, Lcom/engagelab/privates/push/api/NotificationMessage;->setIntentUri(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 631
    .line 632
    .line 633
    move-result-object v0

    .line 634
    invoke-virtual {v0, v6}, Lcom/engagelab/privates/push/api/NotificationMessage;->setIntentSsl(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 635
    .line 636
    .line 637
    move-result-object v0

    .line 638
    invoke-virtual {v0, v11}, Lcom/engagelab/privates/push/api/NotificationMessage;->setTargetEvent(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 639
    .line 640
    .line 641
    move-result-object v0

    .line 642
    invoke-virtual {v0, v4}, Lcom/engagelab/privates/push/api/NotificationMessage;->setAppkey(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 643
    .line 644
    .line 645
    move-result-object v0

    .line 646
    new-instance v2, Landroid/os/Bundle;

    .line 647
    .line 648
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 649
    .line 650
    .line 651
    move-object/from16 v3, v17

    .line 652
    .line 653
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 654
    .line 655
    .line 656
    const-string v0, "message_limit"

    .line 657
    .line 658
    const/4 v3, 0x1

    .line 659
    invoke-virtual {v2, v0, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 660
    .line 661
    .line 662
    iget-object v0, v1, Lcom/engagelab/privates/push/platform/google/callback/MTGoogleCallbackImp;->mContext:Landroid/content/Context;

    .line 663
    .line 664
    const/16 v3, 0xf37

    .line 665
    .line 666
    invoke-static {v0, v3, v2}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 667
    .line 668
    .line 669
    iget-object v0, v1, Lcom/engagelab/privates/push/platform/google/callback/MTGoogleCallbackImp;->mContext:Landroid/content/Context;

    .line 670
    .line 671
    const/16 v3, 0xbba

    .line 672
    .line 673
    invoke-static {v0, v3, v2}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToMainProcess(Landroid/content/Context;ILandroid/os/Bundle;)V
    :try_end_2a3
    .catchall {:try_start_1ad .. :try_end_2a3} :catchall_1d0

    .line 674
    .line 675
    .line 676
    return-void

    .line 677
    :goto_2a4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 678
    .line 679
    const-string v3, "onMessage failed "

    .line 680
    .line 681
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 682
    .line 683
    .line 684
    move-object/from16 v3, v16

    .line 685
    .line 686
    invoke-static {v0, v2, v3}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 687
    .line 688
    .line 689
    return-void
.end method

.method public onNewToken(Ljava/lang/String;)V
    .registers 10

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "MTGoogleCallbackImp"

    .line 6
    .line 7
    if-eqz v0, :cond_1d

    .line 8
    .line 9
    const-string p1, "onTokenFailed:get token is empty"

    .line 10
    .line 11
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/engagelab/privates/push/platform/google/business/MTGoogleBusiness;->getInstance()Lcom/engagelab/privates/push/platform/google/business/MTGoogleBusiness;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iget-object v3, p0, Lcom/engagelab/privates/push/platform/google/callback/MTGoogleCallbackImp;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    const/16 v6, 0xf3c

    .line 21
    .line 22
    const/4 v7, 0x2

    .line 23
    const/16 v4, 0xbbc

    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    invoke-virtual/range {v2 .. v7}, Lcom/engagelab/privates/push/platform/google/business/MTGoogleBusiness;->onNode(Landroid/content/Context;IIII)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v2, "onTokenSuccess:callback token is "

    .line 33
    .line 34
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lcom/engagelab/privates/push/platform/google/business/MTGoogleBusiness;->getInstance()Lcom/engagelab/privates/push/platform/google/business/MTGoogleBusiness;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/engagelab/privates/push/platform/google/callback/MTGoogleCallbackImp;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    const/4 v2, 0x2

    .line 54
    invoke-virtual {v0, v1, p1, v2}, Lcom/engagelab/privates/push/platform/google/business/MTGoogleBusiness;->onToken(Landroid/content/Context;Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    return-void
.end method
