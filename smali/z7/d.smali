###### Class z7.d (z7.d)
.class public abstract Lz7/d;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static a:J

.field public static b:Ljava/lang/reflect/Method;


# direct methods
.method public static a(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x7f

    .line 6
    .line 7
    if-gt v0, v1, :cond_9

    .line 8
    .line 9
    goto :goto_e

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :goto_e
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static b()Z
    .registers 6

    .line 1
    const-string v0, "delivery_metrics_exported_to_big_query_enabled"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_3
    invoke-static {}, Lt4/g;->c()Lt4/g;
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_6} :catch_46

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lt4/g;->c()Lt4/g;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Lt4/g;->a()V

    .line 12
    .line 13
    .line 14
    iget-object v2, v2, Lt4/g;->a:Landroid/content/Context;

    .line 15
    .line 16
    const-string v3, "com.google.firebase.messaging"

    .line 17
    .line 18
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    const-string v4, "export_to_big_query"

    .line 23
    .line 24
    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-eqz v5, :cond_22

    .line 29
    .line 30
    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    return v0

    .line 35
    :cond_22
    :try_start_22
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    if-eqz v3, :cond_45

    .line 40
    .line 41
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const/16 v4, 0x80

    .line 46
    .line 47
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    if-eqz v2, :cond_45

    .line 52
    .line 53
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 54
    .line 55
    if-eqz v3, :cond_45

    .line 56
    .line 57
    invoke-virtual {v3, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_45

    .line 62
    .line 63
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 64
    .line 65
    invoke-virtual {v2, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 66
    .line 67
    .line 68
    move-result v0
    :try_end_44
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_22 .. :try_end_44} :catch_45

    .line 69
    return v0

    .line 70
    :catch_45
    :cond_45
    return v1

    .line 71
    :catch_46
    const-string v0, "FirebaseMessaging"

    .line 72
    .line 73
    const-string v2, "FirebaseApp has not being initialized. Device might be in direct boot mode. Skip exporting delivery metrics to Big Query"

    .line 74
    .line 75
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    return v1
.end method

.method public static c(Ljava/util/ArrayList;)V
    .registers 13

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    move v3, v2

    .line 16
    :cond_f
    const/4 v4, 0x1

    .line 17
    if-ge v3, v1, :cond_79

    .line 18
    .line 19
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    add-int/lit8 v3, v3, 0x1

    .line 24
    .line 25
    check-cast v5, Lv4/b;

    .line 26
    .line 27
    new-instance v6, Lv4/f;

    .line 28
    .line 29
    invoke-direct {v6, v5}, Lv4/f;-><init>(Lv4/b;)V

    .line 30
    .line 31
    .line 32
    iget-object v7, v5, Lv4/b;->b:Ljava/util/Set;

    .line 33
    .line 34
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    :goto_25
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v8

    .line 42
    if-eqz v8, :cond_f

    .line 43
    .line 44
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v8

    .line 48
    check-cast v8, Lv4/p;

    .line 49
    .line 50
    new-instance v9, Lv4/g;

    .line 51
    .line 52
    iget v10, v5, Lv4/b;->e:I

    .line 53
    .line 54
    if-nez v10, :cond_39

    .line 55
    .line 56
    move v10, v4

    .line 57
    goto :goto_3a

    .line 58
    :cond_39
    move v10, v2

    .line 59
    :goto_3a
    xor-int/lit8 v11, v10, 0x1

    .line 60
    .line 61
    invoke-direct {v9, v8, v11}, Lv4/g;-><init>(Lv4/p;Z)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v11

    .line 68
    if-nez v11, :cond_4d

    .line 69
    .line 70
    new-instance v11, Ljava/util/HashSet;

    .line 71
    .line 72
    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    :cond_4d
    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v9

    .line 82
    check-cast v9, Ljava/util/Set;

    .line 83
    .line 84
    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    .line 85
    .line 86
    .line 87
    move-result v11

    .line 88
    if-nez v11, :cond_75

    .line 89
    .line 90
    if-nez v10, :cond_5c

    .line 91
    .line 92
    goto :goto_75

    .line 93
    :cond_5c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 94
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string v1, "Multiple components provide "

    .line 98
    .line 99
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v1, "."

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw p0

    .line 118
    :cond_75
    :goto_75
    invoke-interface {v9, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    goto :goto_25

    .line 122
    :cond_79
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    :cond_81
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    if-eqz v3, :cond_e8

    .line 135
    .line 136
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    check-cast v3, Ljava/util/Set;

    .line 141
    .line 142
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    :cond_91
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    if-eqz v5, :cond_81

    .line 151
    .line 152
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    check-cast v5, Lv4/f;

    .line 157
    .line 158
    iget-object v6, v5, Lv4/f;->a:Lv4/b;

    .line 159
    .line 160
    iget-object v6, v6, Lv4/b;->c:Ljava/util/Set;

    .line 161
    .line 162
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    :cond_a5
    :goto_a5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 167
    .line 168
    .line 169
    move-result v7

    .line 170
    if-eqz v7, :cond_91

    .line 171
    .line 172
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v7

    .line 176
    check-cast v7, Lv4/h;

    .line 177
    .line 178
    iget v8, v7, Lv4/h;->c:I

    .line 179
    .line 180
    if-nez v8, :cond_a5

    .line 181
    .line 182
    new-instance v8, Lv4/g;

    .line 183
    .line 184
    iget-object v9, v7, Lv4/h;->a:Lv4/p;

    .line 185
    .line 186
    iget v7, v7, Lv4/h;->b:I

    .line 187
    .line 188
    const/4 v10, 0x2

    .line 189
    if-ne v7, v10, :cond_c0

    .line 190
    .line 191
    move v7, v4

    .line 192
    goto :goto_c1

    .line 193
    :cond_c0
    move v7, v2

    .line 194
    :goto_c1
    invoke-direct {v8, v9, v7}, Lv4/g;-><init>(Lv4/p;Z)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v7

    .line 201
    check-cast v7, Ljava/util/Set;

    .line 202
    .line 203
    if-nez v7, :cond_cd

    .line 204
    .line 205
    goto :goto_a5

    .line 206
    :cond_cd
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 207
    .line 208
    .line 209
    move-result-object v7

    .line 210
    :goto_d1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 211
    .line 212
    .line 213
    move-result v8

    .line 214
    if-eqz v8, :cond_a5

    .line 215
    .line 216
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v8

    .line 220
    check-cast v8, Lv4/f;

    .line 221
    .line 222
    iget-object v9, v5, Lv4/f;->b:Ljava/util/HashSet;

    .line 223
    .line 224
    invoke-virtual {v9, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    iget-object v8, v8, Lv4/f;->c:Ljava/util/HashSet;

    .line 228
    .line 229
    invoke-virtual {v8, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    goto :goto_d1

    .line 233
    :cond_e8
    new-instance v1, Ljava/util/HashSet;

    .line 234
    .line 235
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    :goto_f5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    if-eqz v3, :cond_105

    .line 251
    .line 252
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    check-cast v3, Ljava/util/Set;

    .line 257
    .line 258
    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 259
    .line 260
    .line 261
    goto :goto_f5

    .line 262
    :cond_105
    new-instance v0, Ljava/util/HashSet;

    .line 263
    .line 264
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    :cond_10e
    :goto_10e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 272
    .line 273
    .line 274
    move-result v4

    .line 275
    if-eqz v4, :cond_126

    .line 276
    .line 277
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v4

    .line 281
    check-cast v4, Lv4/f;

    .line 282
    .line 283
    iget-object v5, v4, Lv4/f;->c:Ljava/util/HashSet;

    .line 284
    .line 285
    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    .line 286
    .line 287
    .line 288
    move-result v5

    .line 289
    if-eqz v5, :cond_10e

    .line 290
    .line 291
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    goto :goto_10e

    .line 295
    :cond_126
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 296
    .line 297
    .line 298
    move-result v3

    .line 299
    if-nez v3, :cond_15e

    .line 300
    .line 301
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v3

    .line 309
    check-cast v3, Lv4/f;

    .line 310
    .line 311
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    add-int/lit8 v2, v2, 0x1

    .line 315
    .line 316
    iget-object v4, v3, Lv4/f;->b:Ljava/util/HashSet;

    .line 317
    .line 318
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 319
    .line 320
    .line 321
    move-result-object v4

    .line 322
    :cond_141
    :goto_141
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 323
    .line 324
    .line 325
    move-result v5

    .line 326
    if-eqz v5, :cond_126

    .line 327
    .line 328
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v5

    .line 332
    check-cast v5, Lv4/f;

    .line 333
    .line 334
    iget-object v6, v5, Lv4/f;->c:Ljava/util/HashSet;

    .line 335
    .line 336
    invoke-virtual {v6, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    iget-object v6, v5, Lv4/f;->c:Ljava/util/HashSet;

    .line 340
    .line 341
    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    .line 342
    .line 343
    .line 344
    move-result v6

    .line 345
    if-eqz v6, :cond_141

    .line 346
    .line 347
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    goto :goto_141

    .line 351
    :cond_15e
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 352
    .line 353
    .line 354
    move-result p0

    .line 355
    if-ne v2, p0, :cond_165

    .line 356
    .line 357
    return-void

    .line 358
    :cond_165
    new-instance p0, Ljava/util/ArrayList;

    .line 359
    .line 360
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    :cond_16e
    :goto_16e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 368
    .line 369
    .line 370
    move-result v1

    .line 371
    if-eqz v1, :cond_190

    .line 372
    .line 373
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    check-cast v1, Lv4/f;

    .line 378
    .line 379
    iget-object v2, v1, Lv4/f;->c:Ljava/util/HashSet;

    .line 380
    .line 381
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    .line 382
    .line 383
    .line 384
    move-result v2

    .line 385
    if-nez v2, :cond_16e

    .line 386
    .line 387
    iget-object v2, v1, Lv4/f;->b:Ljava/util/HashSet;

    .line 388
    .line 389
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    .line 390
    .line 391
    .line 392
    move-result v2

    .line 393
    if-nez v2, :cond_16e

    .line 394
    .line 395
    iget-object v1, v1, Lv4/f;->a:Lv4/b;

    .line 396
    .line 397
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    goto :goto_16e

    .line 401
    :cond_190
    new-instance v0, Lv4/i;

    .line 402
    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    .line 404
    .line 405
    const-string v2, "Dependency cycle detected: "

    .line 406
    .line 407
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {p0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object p0

    .line 414
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object p0

    .line 418
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object p0

    .line 425
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    throw v0
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    .line 1
    if-eq p0, p1, :cond_d

    .line 2
    .line 3
    if-eqz p0, :cond_b

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_b

    .line 10
    .line 11
    goto :goto_d

    .line 12
    :cond_b
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_d
    :goto_d
    const/4 p0, 0x1

    .line 15
    return p0
.end method

.method public static e(Ljava/lang/String;)Lr7/y;
    .registers 3

    .line 1
    const-string v0, "javaName"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const v1, 0x4b88569

    .line 11
    .line 12
    .line 13
    if-eq v0, v1, :cond_43

    .line 14
    .line 15
    const v1, 0x4c38896

    .line 16
    .line 17
    .line 18
    if-eq v0, v1, :cond_38

    .line 19
    .line 20
    packed-switch v0, :pswitch_data_5a

    .line 21
    .line 22
    .line 23
    goto :goto_4e

    .line 24
    :pswitch_17
    const-string v0, "TLSv1.3"

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_4e

    .line 31
    .line 32
    sget-object p0, Lr7/y;->b:Lr7/y;

    .line 33
    .line 34
    return-object p0

    .line 35
    :pswitch_22
    const-string v0, "TLSv1.2"

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_4e

    .line 42
    .line 43
    sget-object p0, Lr7/y;->c:Lr7/y;

    .line 44
    .line 45
    return-object p0

    .line 46
    :pswitch_2d
    const-string v0, "TLSv1.1"

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_4e

    .line 53
    .line 54
    sget-object p0, Lr7/y;->d:Lr7/y;

    .line 55
    .line 56
    return-object p0

    .line 57
    :cond_38
    const-string v0, "TLSv1"

    .line 58
    .line 59
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_4e

    .line 64
    .line 65
    sget-object p0, Lr7/y;->e:Lr7/y;

    .line 66
    .line 67
    return-object p0

    .line 68
    :cond_43
    const-string v0, "SSLv3"

    .line 69
    .line 70
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_4e

    .line 75
    .line 76
    sget-object p0, Lr7/y;->f:Lr7/y;

    .line 77
    .line 78
    return-object p0

    .line 79
    :cond_4e
    :goto_4e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 80
    .line 81
    const-string v1, "Unexpected TLS version: "

    .line 82
    .line 83
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw v0

    .line 91
    :pswitch_data_5a
    .packed-switch -0x1dfc3f27
        :pswitch_2d
        :pswitch_22
        :pswitch_17
    .end packed-switch
.end method

.method public static f()Z
    .registers 7

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_b

    .line 6
    .line 7
    invoke-static {}, Lg1/a;->a()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_b
    const-class v0, Landroid/os/Trace;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    :try_start_e
    sget-object v2, Lz7/d;->b:Ljava/lang/reflect/Method;

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    const/4 v4, 0x0

    .line 19
    if-nez v2, :cond_31

    .line 20
    .line 21
    const-string v2, "TRACE_TAG_APP"

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    .line 28
    .line 29
    .line 30
    move-result-wide v5

    .line 31
    sput-wide v5, Lz7/d;->a:J

    .line 32
    .line 33
    const-string v2, "isTagEnabled"

    .line 34
    .line 35
    new-array v5, v3, [Ljava/lang/Class;

    .line 36
    .line 37
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 38
    .line 39
    aput-object v6, v5, v1

    .line 40
    .line 41
    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lz7/d;->b:Ljava/lang/reflect/Method;

    .line 46
    .line 47
    goto :goto_31

    .line 48
    :catch_2f
    move-exception v0

    .line 49
    goto :goto_48

    .line 50
    :cond_31
    :goto_31
    sget-object v0, Lz7/d;->b:Ljava/lang/reflect/Method;

    .line 51
    .line 52
    sget-wide v5, Lz7/d;->a:J

    .line 53
    .line 54
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    new-array v3, v3, [Ljava/lang/Object;

    .line 59
    .line 60
    aput-object v2, v3, v1

    .line 61
    .line 62
    invoke-virtual {v0, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Ljava/lang/Boolean;

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 69
    .line 70
    .line 71
    move-result v0
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_47} :catch_2f

    .line 72
    return v0

    .line 73
    :goto_48
    instance-of v2, v0, Ljava/lang/reflect/InvocationTargetException;

    .line 74
    .line 75
    if-eqz v2, :cond_5d

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    instance-of v1, v0, Ljava/lang/RuntimeException;

    .line 82
    .line 83
    if-eqz v1, :cond_57

    .line 84
    .line 85
    check-cast v0, Ljava/lang/RuntimeException;

    .line 86
    .line 87
    throw v0

    .line 88
    :cond_57
    new-instance v1, Ljava/lang/RuntimeException;

    .line 89
    .line 90
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 91
    .line 92
    .line 93
    throw v1

    .line 94
    :cond_5d
    const-string v2, "Trace"

    .line 95
    .line 96
    const-string v3, "Unable to call isTagEnabled via reflection"

    .line 97
    .line 98
    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    .line 100
    .line 101
    return v1
.end method

.method public static g(Landroid/content/Intent;)V
    .registers 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-static {v1}, Lz7/d;->i(Landroid/content/Intent;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_11

    .line 8
    .line 9
    const-string v0, "_nr"

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-static {v2, v0}, Lz7/d;->h(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_11
    const/4 v2, 0x0

    .line 19
    if-eqz v1, :cond_26

    .line 20
    .line 21
    const-string v0, "com.google.firebase.messaging.RECEIVE_DIRECT_BOOT"

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_21

    .line 32
    .line 33
    goto :goto_26

    .line 34
    :cond_21
    invoke-static {}, Lz7/d;->b()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    goto :goto_27

    .line 39
    :cond_26
    :goto_26
    move v0, v2

    .line 40
    :goto_27
    if-eqz v0, :cond_22d

    .line 41
    .line 42
    sget-object v0, Lcom/google/firebase/messaging/FirebaseMessaging;->l:Lg5/a;

    .line 43
    .line 44
    invoke-interface {v0}, Lg5/a;->get()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    move-object v3, v0

    .line 49
    check-cast v3, Lc3/e;

    .line 50
    .line 51
    const-string v4, "FirebaseMessaging"

    .line 52
    .line 53
    if-nez v3, :cond_3c

    .line 54
    .line 55
    const-string v0, "TransportFactory is null. Skip exporting message delivery metrics to Big Query"

    .line 56
    .line 57
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_3c
    const/4 v5, 0x5

    .line 62
    const/4 v6, 0x1

    .line 63
    const/4 v7, 0x2

    .line 64
    const/4 v0, 0x0

    .line 65
    if-nez v1, :cond_44

    .line 66
    .line 67
    goto/16 :goto_1c8

    .line 68
    .line 69
    :cond_44
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    if-nez v8, :cond_4c

    .line 74
    .line 75
    sget-object v8, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 76
    .line 77
    :cond_4c
    const-string v9, "google.ttl"

    .line 78
    .line 79
    invoke-virtual {v8, v9}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    instance-of v10, v9, Ljava/lang/Integer;

    .line 84
    .line 85
    if-eqz v10, :cond_5f

    .line 86
    .line 87
    check-cast v9, Ljava/lang/Integer;

    .line 88
    .line 89
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 90
    .line 91
    .line 92
    move-result v9

    .line 93
    :goto_5c
    move/from16 v19, v9

    .line 94
    .line 95
    goto :goto_7e

    .line 96
    :cond_5f
    instance-of v10, v9, Ljava/lang/String;

    .line 97
    .line 98
    if-eqz v10, :cond_7c

    .line 99
    .line 100
    :try_start_63
    move-object v10, v9

    .line 101
    check-cast v10, Ljava/lang/String;

    .line 102
    .line 103
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    move-result v9
    :try_end_6a
    .catch Ljava/lang/NumberFormatException; {:try_start_63 .. :try_end_6a} :catch_6b

    .line 107
    goto :goto_5c

    .line 108
    :catch_6b
    new-instance v10, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const-string v11, "Invalid TTL: "

    .line 111
    .line 112
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v9

    .line 122
    invoke-static {v4, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    :cond_7c
    move/from16 v19, v2

    .line 126
    .line 127
    :goto_7e
    const-string v9, "google.to"

    .line 128
    .line 129
    invoke-virtual {v8, v9}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v9

    .line 133
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 134
    .line 135
    .line 136
    move-result v10

    .line 137
    if-nez v10, :cond_8c

    .line 138
    .line 139
    :goto_8a
    move-object v14, v9

    .line 140
    goto :goto_a5

    .line 141
    :cond_8c
    :try_start_8c
    invoke-static {}, Lt4/g;->c()Lt4/g;

    .line 142
    .line 143
    .line 144
    move-result-object v9
    :try_end_90
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_8c .. :try_end_90} :catch_226
    .catch Ljava/lang/InterruptedException; {:try_start_8c .. :try_end_90} :catch_226

    .line 145
    :try_start_90
    sget-object v10, Lh5/d;->m:Ljava/lang/Object;

    .line 146
    .line 147
    const-class v10, Lh5/e;

    .line 148
    .line 149
    invoke-virtual {v9, v10}, Lt4/g;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v9

    .line 153
    check-cast v9, Lh5/d;
    :try_end_9a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_90 .. :try_end_9a} :catch_226
    .catch Ljava/lang/InterruptedException; {:try_start_90 .. :try_end_9a} :catch_224

    .line 154
    .line 155
    :try_start_9a
    invoke-virtual {v9}, Lh5/d;->d()Lp4/q;

    .line 156
    .line 157
    .line 158
    move-result-object v9

    .line 159
    invoke-static {v9}, Lj7/g;->a(Lp4/i;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v9

    .line 163
    check-cast v9, Ljava/lang/String;
    :try_end_a4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_9a .. :try_end_a4} :catch_226
    .catch Ljava/lang/InterruptedException; {:try_start_9a .. :try_end_a4} :catch_226

    .line 164
    .line 165
    goto :goto_8a

    .line 166
    :goto_a5
    invoke-static {}, Lt4/g;->c()Lt4/g;

    .line 167
    .line 168
    .line 169
    move-result-object v9

    .line 170
    invoke-virtual {v9}, Lt4/g;->a()V

    .line 171
    .line 172
    .line 173
    iget-object v9, v9, Lt4/g;->a:Landroid/content/Context;

    .line 174
    .line 175
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v16

    .line 179
    invoke-static {v8}, Lk1/h;->D(Landroid/os/Bundle;)Z

    .line 180
    .line 181
    .line 182
    move-result v9

    .line 183
    if-eqz v9, :cond_bc

    .line 184
    .line 185
    sget-object v9, Ln5/b;->c:Ln5/b;

    .line 186
    .line 187
    :goto_ba
    move-object v15, v9

    .line 188
    goto :goto_bf

    .line 189
    :cond_bc
    sget-object v9, Ln5/b;->b:Ln5/b;

    .line 190
    .line 191
    goto :goto_ba

    .line 192
    :goto_bf
    const-string v9, "google.delivered_priority"

    .line 193
    .line 194
    invoke-virtual {v8, v9}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v9

    .line 198
    if-nez v9, :cond_dd

    .line 199
    .line 200
    const-string v9, "google.priority_reduced"

    .line 201
    .line 202
    invoke-virtual {v8, v9}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v9

    .line 206
    const-string v10, "1"

    .line 207
    .line 208
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v9

    .line 212
    if-eqz v9, :cond_d7

    .line 213
    .line 214
    :goto_d5
    move v9, v7

    .line 215
    goto :goto_f1

    .line 216
    :cond_d7
    const-string v9, "google.priority"

    .line 217
    .line 218
    invoke-virtual {v8, v9}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v9

    .line 222
    :cond_dd
    const-string v10, "high"

    .line 223
    .line 224
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v10

    .line 228
    if-eqz v10, :cond_e7

    .line 229
    .line 230
    move v9, v6

    .line 231
    goto :goto_f1

    .line 232
    :cond_e7
    const-string v10, "normal"

    .line 233
    .line 234
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v9

    .line 238
    if-eqz v9, :cond_f0

    .line 239
    .line 240
    goto :goto_d5

    .line 241
    :cond_f0
    move v9, v2

    .line 242
    :goto_f1
    if-ne v9, v7, :cond_f6

    .line 243
    .line 244
    move/from16 v18, v5

    .line 245
    .line 246
    goto :goto_ff

    .line 247
    :cond_f6
    if-ne v9, v6, :cond_fd

    .line 248
    .line 249
    const/16 v9, 0xa

    .line 250
    .line 251
    move/from16 v18, v9

    .line 252
    .line 253
    goto :goto_ff

    .line 254
    :cond_fd
    move/from16 v18, v2

    .line 255
    .line 256
    :goto_ff
    const-string v9, "google.message_id"

    .line 257
    .line 258
    invoke-virtual {v8, v9}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v9

    .line 262
    if-nez v9, :cond_10d

    .line 263
    .line 264
    const-string v9, "message_id"

    .line 265
    .line 266
    invoke-virtual {v8, v9}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v9

    .line 270
    :cond_10d
    const-string v10, ""

    .line 271
    .line 272
    if-eqz v9, :cond_113

    .line 273
    .line 274
    move-object v13, v9

    .line 275
    goto :goto_114

    .line 276
    :cond_113
    move-object v13, v10

    .line 277
    :goto_114
    const-string v9, "from"

    .line 278
    .line 279
    invoke-virtual {v8, v9}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v9

    .line 283
    if-eqz v9, :cond_125

    .line 284
    .line 285
    const-string v11, "/topics/"

    .line 286
    .line 287
    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 288
    .line 289
    .line 290
    move-result v11

    .line 291
    if-eqz v11, :cond_125

    .line 292
    .line 293
    move-object v0, v9

    .line 294
    :cond_125
    if-eqz v0, :cond_12a

    .line 295
    .line 296
    move-object/from16 v20, v0

    .line 297
    .line 298
    goto :goto_12c

    .line 299
    :cond_12a
    move-object/from16 v20, v10

    .line 300
    .line 301
    :goto_12c
    const-string v0, "collapse_key"

    .line 302
    .line 303
    invoke-virtual {v8, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    if-eqz v0, :cond_137

    .line 308
    .line 309
    move-object/from16 v17, v0

    .line 310
    .line 311
    goto :goto_139

    .line 312
    :cond_137
    move-object/from16 v17, v10

    .line 313
    .line 314
    :goto_139
    const-string v0, "google.c.a.m_l"

    .line 315
    .line 316
    invoke-virtual {v8, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    if-eqz v0, :cond_144

    .line 321
    .line 322
    move-object/from16 v21, v0

    .line 323
    .line 324
    goto :goto_146

    .line 325
    :cond_144
    move-object/from16 v21, v10

    .line 326
    .line 327
    :goto_146
    const-string v0, "google.c.a.c_l"

    .line 328
    .line 329
    invoke-virtual {v8, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    if-eqz v0, :cond_151

    .line 334
    .line 335
    move-object/from16 v22, v0

    .line 336
    .line 337
    goto :goto_153

    .line 338
    :cond_151
    move-object/from16 v22, v10

    .line 339
    .line 340
    :goto_153
    const-string v0, "google.c.sender.id"

    .line 341
    .line 342
    invoke-virtual {v8, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 343
    .line 344
    .line 345
    move-result v9

    .line 346
    const-wide/16 v10, 0x0

    .line 347
    .line 348
    if-eqz v9, :cond_16c

    .line 349
    .line 350
    :try_start_15d
    invoke-virtual {v8, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 355
    .line 356
    .line 357
    move-result-wide v8
    :try_end_165
    .catch Ljava/lang/NumberFormatException; {:try_start_15d .. :try_end_165} :catch_166

    .line 358
    goto :goto_1bb

    .line 359
    :catch_166
    move-exception v0

    .line 360
    const-string v8, "error parsing project number"

    .line 361
    .line 362
    invoke-static {v4, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 363
    .line 364
    .line 365
    :cond_16c
    invoke-static {}, Lt4/g;->c()Lt4/g;

    .line 366
    .line 367
    .line 368
    move-result-object v8

    .line 369
    iget-object v9, v8, Lt4/g;->c:Lt4/j;

    .line 370
    .line 371
    invoke-virtual {v8}, Lt4/g;->a()V

    .line 372
    .line 373
    .line 374
    iget-object v0, v9, Lt4/j;->e:Ljava/lang/String;

    .line 375
    .line 376
    if-eqz v0, :cond_184

    .line 377
    .line 378
    :try_start_179
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 379
    .line 380
    .line 381
    move-result-wide v8
    :try_end_17d
    .catch Ljava/lang/NumberFormatException; {:try_start_179 .. :try_end_17d} :catch_17e

    .line 382
    goto :goto_1bb

    .line 383
    :catch_17e
    move-exception v0

    .line 384
    const-string v12, "error parsing sender ID"

    .line 385
    .line 386
    invoke-static {v4, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 387
    .line 388
    .line 389
    :cond_184
    invoke-virtual {v8}, Lt4/g;->a()V

    .line 390
    .line 391
    .line 392
    iget-object v0, v9, Lt4/j;->b:Ljava/lang/String;

    .line 393
    .line 394
    const-string v8, "1:"

    .line 395
    .line 396
    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 397
    .line 398
    .line 399
    move-result v8

    .line 400
    const-string v9, "error parsing app ID"

    .line 401
    .line 402
    if-nez v8, :cond_19d

    .line 403
    .line 404
    :try_start_193
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 405
    .line 406
    .line 407
    move-result-wide v8
    :try_end_197
    .catch Ljava/lang/NumberFormatException; {:try_start_193 .. :try_end_197} :catch_198

    .line 408
    goto :goto_1bb

    .line 409
    :catch_198
    move-exception v0

    .line 410
    invoke-static {v4, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 411
    .line 412
    .line 413
    goto :goto_1a6

    .line 414
    :cond_19d
    const-string v8, ":"

    .line 415
    .line 416
    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    array-length v8, v0

    .line 421
    if-ge v8, v7, :cond_1a8

    .line 422
    .line 423
    :goto_1a6
    move-wide v8, v10

    .line 424
    goto :goto_1bb

    .line 425
    :cond_1a8
    aget-object v0, v0, v6

    .line 426
    .line 427
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 428
    .line 429
    .line 430
    move-result v8

    .line 431
    if-eqz v8, :cond_1b1

    .line 432
    .line 433
    goto :goto_1a6

    .line 434
    :cond_1b1
    :try_start_1b1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 435
    .line 436
    .line 437
    move-result-wide v8
    :try_end_1b5
    .catch Ljava/lang/NumberFormatException; {:try_start_1b1 .. :try_end_1b5} :catch_1b6

    .line 438
    goto :goto_1bb

    .line 439
    :catch_1b6
    move-exception v0

    .line 440
    invoke-static {v4, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 441
    .line 442
    .line 443
    goto :goto_1a6

    .line 444
    :goto_1bb
    cmp-long v0, v8, v10

    .line 445
    .line 446
    if-lez v0, :cond_1c1

    .line 447
    .line 448
    move-wide v11, v8

    .line 449
    goto :goto_1c2

    .line 450
    :cond_1c1
    move-wide v11, v10

    .line 451
    :goto_1c2
    new-instance v10, Ln5/d;

    .line 452
    .line 453
    invoke-direct/range {v10 .. v22}, Ln5/d;-><init>(JLjava/lang/String;Ljava/lang/String;Ln5/b;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    move-object v0, v10

    .line 457
    :goto_1c8
    if-nez v0, :cond_1cb

    .line 458
    .line 459
    goto :goto_22d

    .line 460
    :cond_1cb
    :try_start_1cb
    const-string v8, "google.product_id"

    .line 461
    .line 462
    const v9, 0x6ab2d1f

    .line 463
    .line 464
    .line 465
    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 466
    .line 467
    .line 468
    move-result v1

    .line 469
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 470
    .line 471
    .line 472
    move-result-object v1

    .line 473
    new-instance v8, Lc3/b;

    .line 474
    .line 475
    invoke-direct {v8, v1}, Lc3/b;-><init>(Ljava/lang/Integer;)V

    .line 476
    .line 477
    .line 478
    const-string v1, "proto"

    .line 479
    .line 480
    new-instance v9, Lc3/c;

    .line 481
    .line 482
    invoke-direct {v9, v1}, Lc3/c;-><init>(Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    new-instance v1, Lcom/getcapacitor/n;

    .line 486
    .line 487
    invoke-direct {v1, v5}, Lcom/getcapacitor/n;-><init>(I)V

    .line 488
    .line 489
    .line 490
    check-cast v3, Lf3/p;

    .line 491
    .line 492
    iget-object v5, v3, Lf3/p;->a:Ljava/util/Set;

    .line 493
    .line 494
    invoke-interface {v5, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 495
    .line 496
    .line 497
    move-result v10

    .line 498
    if-eqz v10, :cond_20c

    .line 499
    .line 500
    new-instance v2, Lc5/h;

    .line 501
    .line 502
    iget-object v5, v3, Lf3/p;->b:Lf3/i;

    .line 503
    .line 504
    iget-object v3, v3, Lf3/p;->c:Lf3/q;

    .line 505
    .line 506
    invoke-direct {v2, v5, v9, v1, v3}, Lc5/h;-><init>(Lf3/i;Lc3/c;Lcom/getcapacitor/n;Lf3/q;)V

    .line 507
    .line 508
    .line 509
    new-instance v1, Ln5/e;

    .line 510
    .line 511
    invoke-direct {v1, v0}, Ln5/e;-><init>(Ln5/d;)V

    .line 512
    .line 513
    .line 514
    new-instance v0, Lc3/a;

    .line 515
    .line 516
    invoke-direct {v0, v1, v8}, Lc3/a;-><init>(Ln5/e;Lc3/b;)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v2, v0}, Lc5/h;->u(Lc3/a;)V

    .line 520
    .line 521
    .line 522
    goto :goto_22d

    .line 523
    :catch_20a
    move-exception v0

    .line 524
    goto :goto_21e

    .line 525
    :cond_20c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 526
    .line 527
    const-string v1, "%s is not supported byt this factory. Supported encodings are: %s."

    .line 528
    .line 529
    new-array v3, v7, [Ljava/lang/Object;

    .line 530
    .line 531
    aput-object v9, v3, v2

    .line 532
    .line 533
    aput-object v5, v3, v6

    .line 534
    .line 535
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v1

    .line 539
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 540
    .line 541
    .line 542
    throw v0
    :try_end_21e
    .catch Ljava/lang/RuntimeException; {:try_start_1cb .. :try_end_21e} :catch_20a

    .line 543
    :goto_21e
    const-string v1, "Failed to send big query analytics payload."

    .line 544
    .line 545
    invoke-static {v4, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 546
    .line 547
    .line 548
    goto :goto_22d

    .line 549
    :catch_224
    move-exception v0

    .line 550
    goto :goto_227

    .line 551
    :catch_226
    move-exception v0

    .line 552
    :goto_227
    new-instance v1, Ljava/lang/RuntimeException;

    .line 553
    .line 554
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 555
    .line 556
    .line 557
    throw v1

    .line 558
    :cond_22d
    :goto_22d
    return-void
.end method

.method public static h(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 7

    .line 1
    const-string v0, "FirebaseMessaging"

    .line 2
    .line 3
    :try_start_2
    invoke-static {}, Lt4/g;->c()Lt4/g;
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_5} :catch_f7

    .line 4
    .line 5
    .line 6
    if-nez p0, :cond_c

    .line 7
    .line 8
    new-instance p0, Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 11
    .line 12
    .line 13
    :cond_c
    new-instance v1, Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "google.c.a.c_id"

    .line 19
    .line 20
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-eqz v2, :cond_1e

    .line 25
    .line 26
    const-string v3, "_nmid"

    .line 27
    .line 28
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_1e
    const-string v2, "google.c.a.c_l"

    .line 32
    .line 33
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    if-eqz v2, :cond_2b

    .line 38
    .line 39
    const-string v3, "_nmn"

    .line 40
    .line 41
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_2b
    const-string v2, "google.c.a.m_l"

    .line 45
    .line 46
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-nez v3, :cond_3c

    .line 55
    .line 56
    const-string v3, "label"

    .line 57
    .line 58
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_3c
    const-string v2, "google.c.a.m_c"

    .line 62
    .line 63
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-nez v3, :cond_4d

    .line 72
    .line 73
    const-string v3, "message_channel"

    .line 74
    .line 75
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :cond_4d
    const-string v2, "from"

    .line 79
    .line 80
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    const/4 v3, 0x0

    .line 85
    if-eqz v2, :cond_5f

    .line 86
    .line 87
    const-string v4, "/topics/"

    .line 88
    .line 89
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    if-eqz v4, :cond_5f

    .line 94
    .line 95
    goto :goto_60

    .line 96
    :cond_5f
    move-object v2, v3

    .line 97
    :goto_60
    if-eqz v2, :cond_67

    .line 98
    .line 99
    const-string v4, "_nt"

    .line 100
    .line 101
    invoke-virtual {v1, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :cond_67
    const-string v2, "google.c.a.ts"

    .line 105
    .line 106
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    if-eqz v2, :cond_7f

    .line 111
    .line 112
    :try_start_6f
    const-string v4, "_nmt"

    .line 113
    .line 114
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    invoke-virtual {v1, v4, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_78
    .catch Ljava/lang/NumberFormatException; {:try_start_6f .. :try_end_78} :catch_79

    .line 119
    .line 120
    .line 121
    goto :goto_7f

    .line 122
    :catch_79
    move-exception v2

    .line 123
    const-string v4, "Error while parsing timestamp in GCM event"

    .line 124
    .line 125
    invoke-static {v0, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    .line 127
    .line 128
    :cond_7f
    :goto_7f
    const-string v2, "google.c.a.udt"

    .line 129
    .line 130
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    if-eqz v4, :cond_8b

    .line 135
    .line 136
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    :cond_8b
    if-eqz v3, :cond_9d

    .line 141
    .line 142
    :try_start_8d
    const-string v2, "_ndt"

    .line 143
    .line 144
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_96
    .catch Ljava/lang/NumberFormatException; {:try_start_8d .. :try_end_96} :catch_97

    .line 149
    .line 150
    .line 151
    goto :goto_9d

    .line 152
    :catch_97
    move-exception v2

    .line 153
    const-string v3, "Error while parsing use_device_time in GCM event"

    .line 154
    .line 155
    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    .line 157
    .line 158
    :cond_9d
    :goto_9d
    invoke-static {p0}, Lk1/h;->D(Landroid/os/Bundle;)Z

    .line 159
    .line 160
    .line 161
    move-result p0

    .line 162
    if-eqz p0, :cond_a6

    .line 163
    .line 164
    const-string p0, "display"

    .line 165
    .line 166
    goto :goto_a8

    .line 167
    :cond_a6
    const-string p0, "data"

    .line 168
    .line 169
    :goto_a8
    const-string v2, "_nr"

    .line 170
    .line 171
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    if-nez v2, :cond_b8

    .line 176
    .line 177
    const-string v2, "_nf"

    .line 178
    .line 179
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    if-eqz v2, :cond_bd

    .line 184
    .line 185
    :cond_b8
    const-string v2, "_nmc"

    .line 186
    .line 187
    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    :cond_bd
    const/4 p0, 0x3

    .line 191
    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 192
    .line 193
    .line 194
    move-result p0

    .line 195
    if-eqz p0, :cond_dd

    .line 196
    .line 197
    new-instance p0, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    const-string v2, "Logging to scion event="

    .line 200
    .line 201
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    const-string v2, " scionPayload="

    .line 208
    .line 209
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .line 221
    .line 222
    :cond_dd
    invoke-static {}, Lt4/g;->c()Lt4/g;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    const-class v2, Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    .line 227
    .line 228
    invoke-virtual {p0, v2}, Lt4/g;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object p0

    .line 232
    check-cast p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    .line 233
    .line 234
    if-eqz p0, :cond_f1

    .line 235
    .line 236
    const-string v0, "fcm"

    .line 237
    .line 238
    invoke-interface {p0, v0, p1, v1}, Lcom/google/firebase/analytics/connector/AnalyticsConnector;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 239
    .line 240
    .line 241
    goto :goto_f6

    .line 242
    :cond_f1
    const-string p0, "Unable to log event: analytics library is missing"

    .line 243
    .line 244
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    .line 246
    .line 247
    :goto_f6
    return-void

    .line 248
    :catch_f7
    const-string p0, "Default FirebaseApp has not been initialized. Skip logging event to GA."

    .line 249
    .line 250
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    .line 252
    .line 253
    return-void
.end method

.method public static i(Landroid/content/Intent;)Z
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_24

    .line 3
    .line 4
    const-string v1, "com.google.firebase.messaging.RECEIVE_DIRECT_BOOT"

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_10

    .line 15
    .line 16
    goto :goto_24

    .line 17
    :cond_10
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-nez p0, :cond_17

    .line 22
    .line 23
    return v0

    .line 24
    :cond_17
    const-string v0, "google.c.a.e"

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string v0, "1"

    .line 31
    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    return p0

    .line 37
    :cond_24
    :goto_24
    return v0
.end method

.method public static j(Landroid/os/Parcel;ILandroid/os/Bundle;)V
    .registers 3

    .line 1
    if-nez p2, :cond_3

    .line 2
    .line 3
    return-void

    .line 4
    :cond_3
    invoke-static {p1, p0}, Lz7/d;->p(ILandroid/os/Parcel;)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p0}, Lz7/d;->q(ILandroid/os/Parcel;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static k(Landroid/os/Parcel;ILandroid/os/IBinder;)V
    .registers 3

    .line 1
    if-nez p2, :cond_3

    .line 2
    .line 3
    return-void

    .line 4
    :cond_3
    invoke-static {p1, p0}, Lz7/d;->p(ILandroid/os/Parcel;)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p0}, Lz7/d;->q(ILandroid/os/Parcel;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static l(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V
    .registers 4

    .line 1
    if-nez p2, :cond_3

    .line 2
    .line 3
    return-void

    .line 4
    :cond_3
    invoke-static {p1, p0}, Lz7/d;->p(ILandroid/os/Parcel;)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-interface {p2, p0, p3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p0}, Lz7/d;->q(ILandroid/os/Parcel;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static m(Landroid/os/Parcel;ILjava/lang/String;)V
    .registers 3

    .line 1
    if-nez p2, :cond_3

    .line 2
    .line 3
    return-void

    .line 4
    :cond_3
    invoke-static {p1, p0}, Lz7/d;->p(ILandroid/os/Parcel;)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p0}, Lz7/d;->q(ILandroid/os/Parcel;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static n(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V
    .registers 10

    .line 1
    if-nez p2, :cond_3

    .line 2
    .line 3
    return-void

    .line 4
    :cond_3
    invoke-static {p1, p0}, Lz7/d;->p(ILandroid/os/Parcel;)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    array-length v0, p2

    .line 9
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    move v2, v1

    .line 14
    :goto_d
    if-ge v2, v0, :cond_38

    .line 15
    .line 16
    aget-object v3, p2, v2

    .line 17
    .line 18
    if-nez v3, :cond_17

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    .line 22
    .line 23
    goto :goto_35

    .line 24
    :cond_17
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    const/4 v5, 0x1

    .line 29
    invoke-virtual {p0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    invoke-interface {v3, p0, p3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-virtual {p0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 44
    .line 45
    .line 46
    sub-int v4, v3, v5

    .line 47
    .line 48
    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 52
    .line 53
    .line 54
    :goto_35
    add-int/lit8 v2, v2, 0x1

    .line 55
    .line 56
    goto :goto_d

    .line 57
    :cond_38
    invoke-static {p1, p0}, Lz7/d;->q(ILandroid/os/Parcel;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public static o(Landroid/os/Parcel;ILjava/util/List;)V
    .registers 9

    .line 1
    if-nez p2, :cond_3

    .line 2
    .line 3
    return-void

    .line 4
    :cond_3
    invoke-static {p1, p0}, Lz7/d;->p(ILandroid/os/Parcel;)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    move v2, v1

    .line 17
    :goto_10
    if-ge v2, v0, :cond_3f

    .line 18
    .line 19
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Landroid/os/Parcelable;

    .line 24
    .line 25
    if-nez v3, :cond_1e

    .line 26
    .line 27
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    .line 29
    .line 30
    goto :goto_3c

    .line 31
    :cond_1e
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    const/4 v5, 0x1

    .line 36
    invoke-virtual {p0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    invoke-interface {v3, p0, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    invoke-virtual {p0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 51
    .line 52
    .line 53
    sub-int v4, v3, v5

    .line 54
    .line 55
    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 59
    .line 60
    .line 61
    :goto_3c
    add-int/lit8 v2, v2, 0x1

    .line 62
    .line 63
    goto :goto_10

    .line 64
    :cond_3f
    invoke-static {p1, p0}, Lz7/d;->q(ILandroid/os/Parcel;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public static p(ILandroid/os/Parcel;)I
    .registers 3

    .line 1
    const/high16 v0, -0x10000

    .line 2
    .line 3
    or-int/2addr p0, v0

    .line 4
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public static q(ILandroid/os/Parcel;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sub-int v1, v0, p0

    .line 6
    .line 7
    add-int/lit8 p0, p0, -0x4

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static r(Landroid/os/Parcel;II)V
    .registers 3

    .line 1
    shl-int/lit8 p2, p2, 0x10

    .line 2
    .line 3
    or-int/2addr p1, p2

    .line 4
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
