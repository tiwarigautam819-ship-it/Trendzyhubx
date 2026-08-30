###### Class a2.b (a2.b)
.class public final synthetic La2/b;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lx1/v;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, La2/b;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final b(Lx1/c0;)V
    .registers 2

    .line 1
    return-void
.end method


# virtual methods
.method public final a(Lx1/c0;)V
    .registers 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget v2, v1, La2/b;->a:I

    .line 6
    .line 7
    sget-object v3, Lx1/e0;->d:Lx1/e0;

    .line 8
    .line 9
    packed-switch v2, :pswitch_data_19a

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :pswitch_c
    sget-object v0, Lq2/z;->c:Lo3/a;

    .line 14
    .line 15
    invoke-static {}, Lb2/n;->a()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v2, "App index sent to FB!"

    .line 20
    .line 21
    invoke-static {v3, v0, v2}, Lo3/a;->i(Lx1/e0;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_18
    iget-object v2, v0, Lx1/c0;->c:Lx1/o;

    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    const/4 v5, 0x0

    .line 29
    const/4 v6, 0x0

    .line 30
    const-string v7, "dataset_id"

    .line 31
    .line 32
    const-string v8, "endpoint"

    .line 33
    .line 34
    const-string v9, "access_key"

    .line 35
    .line 36
    const-string v10, "a2.c"

    .line 37
    .line 38
    if-eqz v2, :cond_e8

    .line 39
    .line 40
    sget-object v0, Lq2/z;->c:Lo3/a;

    .line 41
    .line 42
    invoke-virtual {v2}, Lx1/o;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v2, v2, Lx1/o;->i:Lx1/l;

    .line 47
    .line 48
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    const/4 v11, 0x2

    .line 53
    new-array v12, v11, [Ljava/lang/Object;

    .line 54
    .line 55
    aput-object v0, v12, v5

    .line 56
    .line 57
    aput-object v2, v12, v4

    .line 58
    .line 59
    const-string v0, " \n\nGraph Response Error: \n================\nResponse Error: %s\nResponse Error Exception: %s\n\n "

    .line 60
    .line 61
    invoke-static {v3, v10, v0, v12}, Lo3/a;->j(Lx1/e0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    const-class v2, La2/c;

    .line 65
    .line 66
    invoke-static {v2}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_48

    .line 71
    .line 72
    goto :goto_a6

    .line 73
    :cond_48
    :try_start_48
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const-string v12, "com.facebook.sdk.CloudBridgeSavedCredentials"

    .line 78
    .line 79
    invoke-virtual {v0, v12, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    if-nez v0, :cond_55

    .line 84
    .line 85
    goto :goto_a6

    .line 86
    :cond_55
    invoke-interface {v0, v7, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v12

    .line 90
    invoke-interface {v0, v8, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v13

    .line 94
    invoke-interface {v0, v9, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    if-eqz v12, :cond_a0

    .line 99
    .line 100
    invoke-static {v12}, Lk7/o;->r(Ljava/lang/String;)Z

    .line 101
    .line 102
    .line 103
    move-result v14

    .line 104
    if-eqz v14, :cond_6a

    .line 105
    .line 106
    goto :goto_a0

    .line 107
    :cond_6a
    if-eqz v13, :cond_a0

    .line 108
    .line 109
    invoke-static {v13}, Lk7/o;->r(Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result v14

    .line 113
    if-eqz v14, :cond_73

    .line 114
    .line 115
    goto :goto_a0

    .line 116
    :cond_73
    if-eqz v0, :cond_a0

    .line 117
    .line 118
    invoke-static {v0}, Lk7/o;->r(Ljava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    move-result v14

    .line 122
    if-eqz v14, :cond_7c

    .line 123
    .line 124
    goto :goto_a0

    .line 125
    :cond_7c
    new-instance v14, Ljava/util/LinkedHashMap;

    .line 126
    .line 127
    invoke-direct {v14}, Ljava/util/LinkedHashMap;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-interface {v14, v8, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    invoke-interface {v14, v7, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    invoke-interface {v14, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v10

    .line 143
    const-string v15, " \n\nLoading Cloudbridge settings from saved Prefs: \n================\n DATASETID: %s\n URL: %s \n ACCESSKEY: %s \n\n "

    .line 144
    .line 145
    const/4 v6, 0x3

    .line 146
    new-array v6, v6, [Ljava/lang/Object;

    .line 147
    .line 148
    aput-object v12, v6, v5

    .line 149
    .line 150
    aput-object v13, v6, v4

    .line 151
    .line 152
    aput-object v0, v6, v11

    .line 153
    .line 154
    invoke-static {v3, v10, v15, v6}, Lo3/a;->j(Lx1/e0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9c
    .catchall {:try_start_48 .. :try_end_9c} :catchall_9e

    .line 155
    .line 156
    .line 157
    move-object v6, v14

    .line 158
    goto :goto_a6

    .line 159
    :catchall_9e
    move-exception v0

    .line 160
    goto :goto_a2

    .line 161
    :cond_a0
    :goto_a0
    const/4 v6, 0x0

    .line 162
    goto :goto_a6

    .line 163
    :goto_a2
    invoke-static {v0, v2}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    goto :goto_a0

    .line 167
    :goto_a6
    if-eqz v6, :cond_199

    .line 168
    .line 169
    new-instance v0, Ljava/net/URL;

    .line 170
    .line 171
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    new-instance v3, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    const-string v5, "://"

    .line 203
    .line 204
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    invoke-static {v2, v0, v3}, La2/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    sput-boolean v4, La2/c;->a:Z

    .line 230
    .line 231
    goto/16 :goto_199

    .line 232
    .line 233
    :cond_e8
    sget-object v2, Lq2/z;->c:Lo3/a;

    .line 234
    .line 235
    new-array v2, v4, [Ljava/lang/Object;

    .line 236
    .line 237
    aput-object v0, v2, v5

    .line 238
    .line 239
    const-string v6, " \n\nGraph Response Received: \n================\n%s\n\n "

    .line 240
    .line 241
    invoke-static {v3, v10, v6, v2}, Lo3/a;->j(Lx1/e0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    iget-object v0, v0, Lx1/c0;->b:Lorg/json/JSONObject;

    .line 245
    .line 246
    const-string v2, "CloudBridge Settings API response is not a valid json: \n%s "

    .line 247
    .line 248
    if-eqz v0, :cond_106

    .line 249
    .line 250
    :try_start_f9
    const-string v6, "data"

    .line 251
    .line 252
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    goto :goto_107

    .line 257
    :catch_100
    move-exception v0

    .line 258
    goto/16 :goto_17e

    .line 259
    .line 260
    :catch_103
    move-exception v0

    .line 261
    goto/16 :goto_18c

    .line 262
    .line 263
    :cond_106
    const/4 v0, 0x0

    .line 264
    :goto_107
    const-string v6, "null cannot be cast to non-null type org.json.JSONArray"

    .line 265
    .line 266
    invoke-static {v6, v0}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    check-cast v0, Lorg/json/JSONArray;

    .line 270
    .line 271
    invoke-static {v0}, Lq2/g0;->g(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    new-instance v6, Lorg/json/JSONObject;

    .line 276
    .line 277
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 278
    .line 279
    .line 280
    move-result v11

    .line 281
    if-eqz v11, :cond_11d

    .line 282
    .line 283
    const/16 v16, 0x0

    .line 284
    .line 285
    goto :goto_123

    .line 286
    :cond_11d
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    move-object/from16 v16, v0

    .line 291
    .line 292
    :goto_123
    move-object/from16 v0, v16

    .line 293
    .line 294
    check-cast v0, Ljava/lang/String;

    .line 295
    .line 296
    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    invoke-static {v6}, Lq2/g0;->h(Lorg/json/JSONObject;)Ljava/util/HashMap;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v6

    .line 307
    check-cast v6, Ljava/lang/String;

    .line 308
    .line 309
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v7

    .line 313
    check-cast v7, Ljava/lang/String;

    .line 314
    .line 315
    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v8

    .line 319
    check-cast v8, Ljava/lang/String;
    :try_end_140
    .catch Lorg/json/JSONException; {:try_start_f9 .. :try_end_140} :catch_103
    .catch Ljava/lang/NullPointerException; {:try_start_f9 .. :try_end_140} :catch_100

    .line 320
    .line 321
    if-eqz v6, :cond_178

    .line 322
    .line 323
    if-eqz v7, :cond_178

    .line 324
    .line 325
    if-nez v8, :cond_147

    .line 326
    .line 327
    goto :goto_178

    .line 328
    :cond_147
    :try_start_147
    invoke-static {v7, v6, v8}, La2/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    invoke-static {v0}, La2/c;->k(Ljava/util/HashMap;)V
    :try_end_14d
    .catch Ljava/net/MalformedURLException; {:try_start_147 .. :try_end_14d} :catch_167

    .line 332
    .line 333
    .line 334
    const-string v2, "is_enabled"

    .line 335
    .line 336
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v3

    .line 340
    if-eqz v3, :cond_164

    .line 341
    .line 342
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    const-string v2, "null cannot be cast to non-null type kotlin.Boolean"

    .line 347
    .line 348
    invoke-static {v2, v0}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 349
    .line 350
    .line 351
    check-cast v0, Ljava/lang/Boolean;

    .line 352
    .line 353
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 354
    .line 355
    .line 356
    move-result v5

    .line 357
    :cond_164
    sput-boolean v5, La2/c;->a:Z

    .line 358
    .line 359
    goto :goto_199

    .line 360
    :catch_167
    move-exception v0

    .line 361
    sget-object v2, Lq2/z;->c:Lo3/a;

    .line 362
    .line 363
    invoke-static {v0}, Li2/t;->q(Ljava/lang/Exception;)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    new-array v2, v4, [Ljava/lang/Object;

    .line 368
    .line 369
    aput-object v0, v2, v5

    .line 370
    .line 371
    const-string v0, "CloudBridge Settings API response doesn\'t have valid url\n %s "

    .line 372
    .line 373
    invoke-static {v3, v10, v0, v2}, Lo3/a;->j(Lx1/e0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 374
    .line 375
    .line 376
    goto :goto_199

    .line 377
    :cond_178
    :goto_178
    const-string v0, "CloudBridge Settings API response doesn\'t have valid data"

    .line 378
    .line 379
    invoke-static {v3, v10, v0}, Lo3/a;->i(Lx1/e0;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    goto :goto_199

    .line 383
    :goto_17e
    sget-object v6, Lq2/z;->c:Lo3/a;

    .line 384
    .line 385
    invoke-static {v0}, Li2/t;->q(Ljava/lang/Exception;)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    new-array v4, v4, [Ljava/lang/Object;

    .line 390
    .line 391
    aput-object v0, v4, v5

    .line 392
    .line 393
    invoke-static {v3, v10, v2, v4}, Lo3/a;->j(Lx1/e0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 394
    .line 395
    .line 396
    goto :goto_199

    .line 397
    :goto_18c
    sget-object v6, Lq2/z;->c:Lo3/a;

    .line 398
    .line 399
    invoke-static {v0}, Li2/t;->q(Ljava/lang/Exception;)Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    new-array v4, v4, [Ljava/lang/Object;

    .line 404
    .line 405
    aput-object v0, v4, v5

    .line 406
    .line 407
    invoke-static {v3, v10, v2, v4}, Lo3/a;->j(Lx1/e0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 408
    .line 409
    .line 410
    :cond_199
    :goto_199
    return-void

    .line 411
    :pswitch_data_19a
    .packed-switch 0x0
        :pswitch_18
        :pswitch_c
    .end packed-switch
.end method
