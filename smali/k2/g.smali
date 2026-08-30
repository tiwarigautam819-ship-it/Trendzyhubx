###### Class k2.g (k2.g)
.class public abstract Lk2/g;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lr6/d;

    .line 2
    .line 3
    sget-object v1, Lk2/f;->a:Lk2/f;

    .line 4
    .line 5
    const-string v2, "MOBILE_APP_INSTALL"

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lr6/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lr6/d;

    .line 11
    .line 12
    sget-object v2, Lk2/f;->b:Lk2/f;

    .line 13
    .line 14
    const-string v3, "CUSTOM_APP_EVENTS"

    .line 15
    .line 16
    invoke-direct {v1, v2, v3}, Lr6/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    new-array v2, v2, [Lr6/d;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    aput-object v0, v2, v3

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    aput-object v1, v2, v0

    .line 27
    .line 28
    invoke-static {v2}, Ls6/r;->r([Lr6/d;)Ljava/util/HashMap;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sput-object v0, Lk2/g;->a:Ljava/util/HashMap;

    .line 33
    .line 34
    return-void
.end method

.method public static final a(Lk2/f;Lq2/c;Ljava/lang/String;ZLandroid/content/Context;)Lorg/json/JSONObject;
    .registers 10

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lk2/g;->a:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-string v1, "event"

    .line 13
    .line 14
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    .line 16
    .line 17
    sget-boolean p0, Ly1/c;->c:Z

    .line 18
    .line 19
    if-nez p0, :cond_1e

    .line 20
    .line 21
    const-string p0, "c"

    .line 22
    .line 23
    const-string v1, "initStore should have been called before calling setUserID"

    .line 24
    .line 25
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    invoke-static {}, Ly1/c;->a()V

    .line 29
    .line 30
    .line 31
    :cond_1e
    sget-object p0, Ly1/c;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 38
    .line 39
    .line 40
    :try_start_27
    sget-object v1, Ly1/c;->b:Ljava/lang/String;
    :try_end_29
    .catchall {:try_start_27 .. :try_end_29} :catchall_169

    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 47
    .line 48
    .line 49
    if-eqz v1, :cond_37

    .line 50
    .line 51
    const-string p0, "app_user_id"

    .line 52
    .line 53
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    .line 55
    .line 56
    :cond_37
    sget-object p0, Lq2/o;->R:Lq2/o;

    .line 57
    .line 58
    invoke-static {p0}, Lq2/q;->b(Lq2/o;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    const-string v2, "anon_id"

    .line 63
    .line 64
    if-nez v1, :cond_44

    .line 65
    .line 66
    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    .line 68
    .line 69
    :cond_44
    const-string v1, "application_tracking_enabled"

    .line 70
    .line 71
    const/4 v3, 0x1

    .line 72
    xor-int/2addr p3, v3

    .line 73
    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 74
    .line 75
    .line 76
    sget-object p3, Lx1/r;->a:Lx1/r;

    .line 77
    .line 78
    invoke-static {}, Lx1/j0;->b()Z

    .line 79
    .line 80
    .line 81
    move-result p3

    .line 82
    const-string v1, "advertiser_id_collection_enabled"

    .line 83
    .line 84
    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 85
    .line 86
    .line 87
    const/4 p3, 0x0

    .line 88
    if-eqz p1, :cond_105

    .line 89
    .line 90
    invoke-static {p0}, Lq2/q;->b(Lq2/o;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    const/16 v4, 0x1f

    .line 95
    .line 96
    if-eqz v1, :cond_76

    .line 97
    .line 98
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 99
    .line 100
    if-lt v1, v4, :cond_73

    .line 101
    .line 102
    invoke-static {p4}, Lq2/g0;->A(Landroid/content/Context;)Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_73

    .line 107
    .line 108
    iget-boolean v1, p1, Lq2/c;->e:Z

    .line 109
    .line 110
    if-nez v1, :cond_76

    .line 111
    .line 112
    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    .line 114
    .line 115
    goto :goto_76

    .line 116
    :cond_73
    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    .line 118
    .line 119
    :cond_76
    :goto_76
    iget-object p2, p1, Lq2/c;->c:Ljava/lang/String;

    .line 120
    .line 121
    if-eqz p2, :cond_a1

    .line 122
    .line 123
    invoke-static {p0}, Lq2/q;->b(Lq2/o;)Z

    .line 124
    .line 125
    .line 126
    move-result p0

    .line 127
    const-string p2, "attribution"

    .line 128
    .line 129
    if-eqz p0, :cond_9c

    .line 130
    .line 131
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 132
    .line 133
    if-lt p0, v4, :cond_96

    .line 134
    .line 135
    invoke-static {p4}, Lq2/g0;->A(Landroid/content/Context;)Z

    .line 136
    .line 137
    .line 138
    move-result p0

    .line 139
    if-eqz p0, :cond_96

    .line 140
    .line 141
    iget-boolean p0, p1, Lq2/c;->e:Z

    .line 142
    .line 143
    if-nez p0, :cond_a1

    .line 144
    .line 145
    iget-object p0, p1, Lq2/c;->c:Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {v0, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    .line 149
    .line 150
    goto :goto_a1

    .line 151
    :cond_96
    iget-object p0, p1, Lq2/c;->c:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {v0, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    .line 155
    .line 156
    goto :goto_a1

    .line 157
    :cond_9c
    iget-object p0, p1, Lq2/c;->c:Ljava/lang/String;

    .line 158
    .line 159
    invoke-virtual {v0, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    .line 161
    .line 162
    :cond_a1
    :goto_a1
    invoke-virtual {p1}, Lq2/c;->a()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    if-eqz p0, :cond_b8

    .line 167
    .line 168
    const-string p0, "advertiser_id"

    .line 169
    .line 170
    invoke-virtual {p1}, Lq2/c;->a()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    .line 176
    .line 177
    iget-boolean p0, p1, Lq2/c;->e:Z

    .line 178
    .line 179
    xor-int/2addr p0, v3

    .line 180
    const-string p2, "advertiser_tracking_enabled"

    .line 181
    .line 182
    invoke-virtual {v0, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 183
    .line 184
    .line 185
    :cond_b8
    iget-boolean p0, p1, Lq2/c;->e:Z

    .line 186
    .line 187
    if-nez p0, :cond_fc

    .line 188
    .line 189
    sget-object p0, Ly1/t;->a:Ly1/t;

    .line 190
    .line 191
    const-class p2, Ly1/t;

    .line 192
    .line 193
    invoke-static {p2}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    if-eqz v1, :cond_c8

    .line 198
    .line 199
    :goto_c6
    move-object p0, p3

    .line 200
    goto :goto_f0

    .line 201
    :cond_c8
    :try_start_c8
    sget-object v1, Ly1/t;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 202
    .line 203
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    if-nez v1, :cond_d6

    .line 208
    .line 209
    invoke-virtual {p0}, Ly1/t;->b()V

    .line 210
    .line 211
    .line 212
    goto :goto_d6

    .line 213
    :catchall_d4
    move-exception p0

    .line 214
    goto :goto_ec

    .line 215
    :cond_d6
    :goto_d6
    new-instance v1, Ljava/util/HashMap;

    .line 216
    .line 217
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 218
    .line 219
    .line 220
    sget-object v2, Ly1/t;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 221
    .line 222
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p0}, Ly1/t;->a()Ljava/util/HashMap;

    .line 226
    .line 227
    .line 228
    move-result-object p0

    .line 229
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 230
    .line 231
    .line 232
    invoke-static {v1}, Lq2/g0;->F(Ljava/util/Map;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p0
    :try_end_eb
    .catchall {:try_start_c8 .. :try_end_eb} :catchall_d4

    .line 236
    goto :goto_f0

    .line 237
    :goto_ec
    invoke-static {p0, p2}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    goto :goto_c6

    .line 241
    :goto_f0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 242
    .line 243
    .line 244
    move-result p2

    .line 245
    if-nez p2, :cond_f7

    .line 246
    .line 247
    goto :goto_fc

    .line 248
    :cond_f7
    const-string p2, "ud"

    .line 249
    .line 250
    invoke-virtual {v0, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    .line 252
    .line 253
    :cond_fc
    :goto_fc
    iget-object p0, p1, Lq2/c;->d:Ljava/lang/String;

    .line 254
    .line 255
    if-eqz p0, :cond_105

    .line 256
    .line 257
    const-string p1, "installer_package"

    .line 258
    .line 259
    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 260
    .line 261
    .line 262
    :cond_105
    sget-object p0, Lk2/i;->b:Lk2/o;

    .line 263
    .line 264
    invoke-virtual {p0}, Lk2/o;->a()Lk2/i;

    .line 265
    .line 266
    .line 267
    move-result-object p0

    .line 268
    const-string p1, "campaign_ids"

    .line 269
    .line 270
    if-eqz p0, :cond_123

    .line 271
    .line 272
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result p2

    .line 276
    if-eqz p2, :cond_116

    .line 277
    .line 278
    goto :goto_123

    .line 279
    :cond_116
    :try_start_116
    invoke-virtual {p0}, Lk2/i;->a()Landroid/content/SharedPreferences;

    .line 280
    .line 281
    .line 282
    move-result-object p2

    .line 283
    invoke-interface {p2, p1, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object p3
    :try_end_11e
    .catchall {:try_start_116 .. :try_end_11e} :catchall_11f

    .line 287
    goto :goto_123

    .line 288
    :catchall_11f
    move-exception p2

    .line 289
    invoke-static {p2, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    :cond_123
    :goto_123
    if-eqz p3, :cond_128

    .line 293
    .line 294
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 295
    .line 296
    .line 297
    :cond_128
    :try_start_128
    invoke-static {p4, v0}, Lq2/g0;->L(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_12b
    .catch Ljava/lang/Exception; {:try_start_128 .. :try_end_12b} :catch_12c

    .line 298
    .line 299
    .line 300
    goto :goto_141

    .line 301
    :catch_12c
    move-exception p0

    .line 302
    sget-object p1, Lq2/z;->c:Lo3/a;

    .line 303
    .line 304
    sget-object p1, Lx1/e0;->d:Lx1/e0;

    .line 305
    .line 306
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object p0

    .line 310
    new-array p2, v3, [Ljava/lang/Object;

    .line 311
    .line 312
    const/4 p3, 0x0

    .line 313
    aput-object p0, p2, p3

    .line 314
    .line 315
    const-string p0, "AppEvents"

    .line 316
    .line 317
    const-string p3, "Fetching extended device info parameters failed: \'%s\'"

    .line 318
    .line 319
    invoke-static {p1, p0, p3, p2}, Lo3/a;->j(Lx1/e0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    .line 321
    .line 322
    :goto_141
    invoke-static {}, Lq2/g0;->o()Lorg/json/JSONObject;

    .line 323
    .line 324
    .line 325
    move-result-object p0

    .line 326
    if-eqz p0, :cond_15f

    .line 327
    .line 328
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 329
    .line 330
    .line 331
    move-result-object p1

    .line 332
    :goto_14b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 333
    .line 334
    .line 335
    move-result p2

    .line 336
    if-eqz p2, :cond_15f

    .line 337
    .line 338
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object p2

    .line 342
    check-cast p2, Ljava/lang/String;

    .line 343
    .line 344
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object p3

    .line 348
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 349
    .line 350
    .line 351
    goto :goto_14b

    .line 352
    :cond_15f
    const-string p0, "application_package_name"

    .line 353
    .line 354
    invoke-virtual {p4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object p1

    .line 358
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 359
    .line 360
    .line 361
    return-object v0

    .line 362
    :catchall_169
    move-exception p0

    .line 363
    sget-object p1, Ly1/c;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 364
    .line 365
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 366
    .line 367
    .line 368
    move-result-object p1

    .line 369
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 370
    .line 371
    .line 372
    throw p0
.end method
