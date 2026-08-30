###### Class v4.e (v4.e)
.class public final Lv4/e;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lv4/c;


# static fields
.field public static final h:Lcom/google/firebase/messaging/l;


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Ljava/util/HashMap;

.field public final c:Ljava/util/HashMap;

.field public final d:Ljava/util/HashSet;

.field public final e:Lv4/j;

.field public final f:Ljava/util/concurrent/atomic/AtomicReference;

.field public final g:Lo3/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/firebase/messaging/l;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lcom/google/firebase/messaging/l;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lv4/e;->h:Lcom/google/firebase/messaging/l;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Lo3/a;)V
    .registers 12

    .line 1
    sget-object v0, Lw4/j;->a:Lw4/j;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lv4/e;->a:Ljava/util/HashMap;

    .line 12
    .line 13
    new-instance v0, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lv4/e;->b:Ljava/util/HashMap;

    .line 19
    .line 20
    new-instance v0, Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lv4/e;->c:Ljava/util/HashMap;

    .line 26
    .line 27
    new-instance v0, Ljava/util/HashSet;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lv4/e;->d:Ljava/util/HashSet;

    .line 33
    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lv4/e;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 40
    .line 41
    new-instance v0, Lv4/j;

    .line 42
    .line 43
    invoke-direct {v0}, Lv4/j;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lv4/e;->e:Lv4/j;

    .line 47
    .line 48
    iput-object p3, p0, Lv4/e;->g:Lo3/a;

    .line 49
    .line 50
    new-instance p3, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    const-class v1, Lv4/j;

    .line 56
    .line 57
    const/4 v2, 0x2

    .line 58
    new-array v3, v2, [Ljava/lang/Class;

    .line 59
    .line 60
    const-class v4, Ld5/d;

    .line 61
    .line 62
    const/4 v5, 0x0

    .line 63
    aput-object v4, v3, v5

    .line 64
    .line 65
    const-class v4, Ld5/c;

    .line 66
    .line 67
    const/4 v6, 0x1

    .line 68
    aput-object v4, v3, v6

    .line 69
    .line 70
    invoke-static {v0, v1, v3}, Lv4/b;->c(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lv4/b;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    const-class v0, Lv4/e;

    .line 78
    .line 79
    new-array v1, v5, [Ljava/lang/Class;

    .line 80
    .line 81
    invoke-static {p0, v0, v1}, Lv4/b;->c(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lv4/b;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    move v1, v5

    .line 93
    :cond_5c
    :goto_5c
    if-ge v1, v0, :cond_6c

    .line 94
    .line 95
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    add-int/lit8 v1, v1, 0x1

    .line 100
    .line 101
    check-cast v3, Lv4/b;

    .line 102
    .line 103
    if-eqz v3, :cond_5c

    .line 104
    .line 105
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    goto :goto_5c

    .line 109
    :cond_6c
    new-instance p2, Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    move v1, v5

    .line 119
    :goto_76
    if-ge v1, v0, :cond_82

    .line 120
    .line 121
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    add-int/lit8 v1, v1, 0x1

    .line 126
    .line 127
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    goto :goto_76

    .line 131
    :cond_82
    new-instance p1, Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .line 135
    .line 136
    monitor-enter p0

    .line 137
    :try_start_88
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    :cond_8c
    :goto_8c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-eqz v0, :cond_bc

    .line 146
    .line 147
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    check-cast v0, Lg5/a;
    :try_end_98
    .catchall {:try_start_88 .. :try_end_98} :catchall_ad

    .line 152
    .line 153
    :try_start_98
    invoke-interface {v0}, Lg5/a;->get()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    check-cast v0, Lcom/google/firebase/components/ComponentRegistrar;

    .line 158
    .line 159
    if-eqz v0, :cond_8c

    .line 160
    .line 161
    iget-object v1, p0, Lv4/e;->g:Lo3/a;

    .line 162
    .line 163
    invoke-virtual {v1, v0}, Lo3/a;->n(Lcom/google/firebase/components/ComponentRegistrar;)Ljava/util/List;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 168
    .line 169
    .line 170
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V
    :try_end_ac
    .catch Lv4/k; {:try_start_98 .. :try_end_ac} :catch_b0
    .catchall {:try_start_98 .. :try_end_ac} :catchall_ad

    .line 171
    .line 172
    .line 173
    goto :goto_8c

    .line 174
    :catchall_ad
    move-exception p1

    .line 175
    goto/16 :goto_174

    .line 176
    .line 177
    :catch_b0
    move-exception v0

    .line 178
    :try_start_b1
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 179
    .line 180
    .line 181
    const-string v1, "ComponentDiscovery"

    .line 182
    .line 183
    const-string v3, "Invalid component registrar."

    .line 184
    .line 185
    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    .line 187
    .line 188
    goto :goto_8c

    .line 189
    :cond_bc
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 190
    .line 191
    .line 192
    move-result-object p2

    .line 193
    :cond_c0
    :goto_c0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-eqz v0, :cond_100

    .line 198
    .line 199
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    check-cast v0, Lv4/b;

    .line 204
    .line 205
    iget-object v0, v0, Lv4/b;->b:Ljava/util/Set;

    .line 206
    .line 207
    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    array-length v1, v0

    .line 212
    move v3, v5

    .line 213
    :goto_d4
    if-ge v3, v1, :cond_c0

    .line 214
    .line 215
    aget-object v4, v0, v3

    .line 216
    .line 217
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v6

    .line 221
    const-string v7, "kotlinx.coroutines.CoroutineDispatcher"

    .line 222
    .line 223
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 224
    .line 225
    .line 226
    move-result v6

    .line 227
    if-eqz v6, :cond_fd

    .line 228
    .line 229
    iget-object v6, p0, Lv4/e;->d:Ljava/util/HashSet;

    .line 230
    .line 231
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v7

    .line 235
    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v6

    .line 239
    if-eqz v6, :cond_f4

    .line 240
    .line 241
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 242
    .line 243
    .line 244
    goto :goto_c0

    .line 245
    :cond_f4
    iget-object v6, p0, Lv4/e;->d:Ljava/util/HashSet;

    .line 246
    .line 247
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v4

    .line 251
    invoke-virtual {v6, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    :cond_fd
    add-int/lit8 v3, v3, 0x1

    .line 255
    .line 256
    goto :goto_d4

    .line 257
    :cond_100
    iget-object p2, p0, Lv4/e;->a:Ljava/util/HashMap;

    .line 258
    .line 259
    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    .line 260
    .line 261
    .line 262
    move-result p2

    .line 263
    if-eqz p2, :cond_10c

    .line 264
    .line 265
    invoke-static {p3}, Lz7/d;->c(Ljava/util/ArrayList;)V

    .line 266
    .line 267
    .line 268
    goto :goto_11d

    .line 269
    :cond_10c
    new-instance p2, Ljava/util/ArrayList;

    .line 270
    .line 271
    iget-object v0, p0, Lv4/e;->a:Ljava/util/HashMap;

    .line 272
    .line 273
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 281
    .line 282
    .line 283
    invoke-static {p2}, Lz7/d;->c(Ljava/util/ArrayList;)V

    .line 284
    .line 285
    .line 286
    :goto_11d
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 287
    .line 288
    .line 289
    move-result p2

    .line 290
    move v0, v5

    .line 291
    :goto_122
    if-ge v0, p2, :cond_13c

    .line 292
    .line 293
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    add-int/lit8 v0, v0, 0x1

    .line 298
    .line 299
    check-cast v1, Lv4/b;

    .line 300
    .line 301
    new-instance v3, Lv4/l;

    .line 302
    .line 303
    new-instance v4, Le5/b;

    .line 304
    .line 305
    invoke-direct {v4, p0, v2, v1}, Le5/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 306
    .line 307
    .line 308
    invoke-direct {v3, v4}, Lv4/l;-><init>(Lg5/a;)V

    .line 309
    .line 310
    .line 311
    iget-object v4, p0, Lv4/e;->a:Ljava/util/HashMap;

    .line 312
    .line 313
    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    goto :goto_122

    .line 317
    :cond_13c
    invoke-virtual {p0, p3}, Lv4/e;->h(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 318
    .line 319
    .line 320
    move-result-object p2

    .line 321
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 322
    .line 323
    .line 324
    invoke-virtual {p0}, Lv4/e;->i()Ljava/util/ArrayList;

    .line 325
    .line 326
    .line 327
    move-result-object p2

    .line 328
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 329
    .line 330
    .line 331
    invoke-virtual {p0}, Lv4/e;->e()V

    .line 332
    .line 333
    .line 334
    monitor-exit p0
    :try_end_14e
    .catchall {:try_start_b1 .. :try_end_14e} :catchall_ad

    .line 335
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 336
    .line 337
    .line 338
    move-result p2

    .line 339
    :goto_152
    if-ge v5, p2, :cond_160

    .line 340
    .line 341
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object p3

    .line 345
    add-int/lit8 v5, v5, 0x1

    .line 346
    .line 347
    check-cast p3, Ljava/lang/Runnable;

    .line 348
    .line 349
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 350
    .line 351
    .line 352
    goto :goto_152

    .line 353
    :cond_160
    iget-object p1, p0, Lv4/e;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 354
    .line 355
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object p1

    .line 359
    check-cast p1, Ljava/lang/Boolean;

    .line 360
    .line 361
    if-eqz p1, :cond_173

    .line 362
    .line 363
    iget-object p2, p0, Lv4/e;->a:Ljava/util/HashMap;

    .line 364
    .line 365
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 366
    .line 367
    .line 368
    move-result p1

    .line 369
    invoke-virtual {p0, p2, p1}, Lv4/e;->b(Ljava/util/HashMap;Z)V

    .line 370
    .line 371
    .line 372
    :cond_173
    return-void

    .line 373
    :goto_174
    :try_start_174
    monitor-exit p0
    :try_end_175
    .catchall {:try_start_174 .. :try_end_175} :catchall_ad

    .line 374
    throw p1
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {p1}, Lv4/p;->a(Ljava/lang/Class;)Lv4/p;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lv4/e;->d(Lv4/p;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final b(Ljava/util/HashMap;Z)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :cond_8
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_2f

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/util/Map$Entry;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lv4/b;

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lg5/a;

    .line 32
    .line 33
    iget v1, v1, Lv4/b;->d:I

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    if-ne v1, v2, :cond_26

    .line 37
    .line 38
    goto :goto_2b

    .line 39
    :cond_26
    const/4 v2, 0x2

    .line 40
    if-ne v1, v2, :cond_8

    .line 41
    .line 42
    if-eqz p2, :cond_8

    .line 43
    .line 44
    :goto_2b
    invoke-interface {v0}, Lg5/a;->get()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    goto :goto_8

    .line 48
    :cond_2f
    iget-object p1, p0, Lv4/e;->e:Lv4/j;

    .line 49
    .line 50
    monitor-enter p1

    .line 51
    :try_start_32
    iget-object p2, p1, Lv4/j;->b:Ljava/util/ArrayDeque;

    .line 52
    .line 53
    const/4 v0, 0x0

    .line 54
    if-eqz p2, :cond_3c

    .line 55
    .line 56
    iput-object v0, p1, Lv4/j;->b:Ljava/util/ArrayDeque;

    .line 57
    .line 58
    goto :goto_3d

    .line 59
    :catchall_3a
    move-exception p2

    .line 60
    goto :goto_59

    .line 61
    :cond_3c
    move-object p2, v0

    .line 62
    :goto_3d
    monitor-exit p1
    :try_end_3e
    .catchall {:try_start_32 .. :try_end_3e} :catchall_3a

    .line 63
    if-eqz p2, :cond_58

    .line 64
    .line 65
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    if-nez p2, :cond_4b

    .line 74
    .line 75
    goto :goto_58

    .line 76
    :cond_4b
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    new-instance p1, Ljava/lang/ClassCastException;

    .line 84
    .line 85
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 86
    .line 87
    .line 88
    throw p1

    .line 89
    :cond_58
    :goto_58
    return-void

    .line 90
    :goto_59
    :try_start_59
    monitor-exit p1
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_3a

    .line 91
    throw p2
.end method

.method public final declared-synchronized c(Lv4/p;)Lg5/a;
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    const-string v0, "Null interface requested."

    .line 3
    .line 4
    invoke-static {v0, p1}, Lz7/l;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lv4/e;->b:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lg5/a;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-object p1

    .line 17
    :catchall_10
    move-exception p1

    .line 18
    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    .line 19
    throw p1
.end method

.method public final d(Lv4/p;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lv4/e;->c(Lv4/p;)Lg5/a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_8

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_8
    invoke-interface {p1}, Lg5/a;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final e()V
    .registers 9

    .line 1
    iget-object v0, p0, Lv4/e;->a:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_a0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lv4/b;

    .line 22
    .line 23
    iget-object v2, v1, Lv4/b;->c:Ljava/util/Set;

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    :cond_1c
    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_a

    .line 34
    .line 35
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Lv4/h;

    .line 40
    .line 41
    iget v4, v3, Lv4/h;->b:I

    .line 42
    .line 43
    const/4 v5, 0x2

    .line 44
    if-ne v4, v5, :cond_5b

    .line 45
    .line 46
    iget-object v4, p0, Lv4/e;->c:Ljava/util/HashMap;

    .line 47
    .line 48
    iget-object v6, v3, Lv4/h;->a:Lv4/p;

    .line 49
    .line 50
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-nez v4, :cond_5b

    .line 55
    .line 56
    iget-object v4, p0, Lv4/e;->c:Ljava/util/HashMap;

    .line 57
    .line 58
    iget-object v3, v3, Lv4/h;->a:Lv4/p;

    .line 59
    .line 60
    sget-object v5, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 61
    .line 62
    check-cast v5, Ljava/util/Set;

    .line 63
    .line 64
    new-instance v6, Lv4/m;

    .line 65
    .line 66
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 67
    .line 68
    .line 69
    const/4 v7, 0x0

    .line 70
    iput-object v7, v6, Lv4/m;->b:Ljava/util/Set;

    .line 71
    .line 72
    new-instance v7, Ljava/util/concurrent/ConcurrentHashMap;

    .line 73
    .line 74
    invoke-direct {v7}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-static {v7}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    iput-object v7, v6, Lv4/m;->a:Ljava/util/Set;

    .line 82
    .line 83
    iget-object v7, v6, Lv4/m;->a:Ljava/util/Set;

    .line 84
    .line 85
    invoke-interface {v7, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    goto :goto_1c

    .line 92
    :cond_5b
    iget-object v4, p0, Lv4/e;->b:Ljava/util/HashMap;

    .line 93
    .line 94
    iget-object v6, v3, Lv4/h;->a:Lv4/p;

    .line 95
    .line 96
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-nez v4, :cond_1c

    .line 101
    .line 102
    iget v4, v3, Lv4/h;->b:I

    .line 103
    .line 104
    const/4 v6, 0x1

    .line 105
    if-eq v4, v6, :cond_82

    .line 106
    .line 107
    if-ne v4, v5, :cond_6d

    .line 108
    .line 109
    goto :goto_1c

    .line 110
    :cond_6d
    iget-object v4, p0, Lv4/e;->b:Ljava/util/HashMap;

    .line 111
    .line 112
    iget-object v3, v3, Lv4/h;->a:Lv4/p;

    .line 113
    .line 114
    new-instance v5, Lv4/n;

    .line 115
    .line 116
    sget-object v6, Lv4/n;->c:Lcom/getcapacitor/n;

    .line 117
    .line 118
    sget-object v7, Lv4/n;->d:Lcom/google/firebase/messaging/l;

    .line 119
    .line 120
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 121
    .line 122
    .line 123
    iput-object v6, v5, Lv4/n;->a:Lcom/getcapacitor/n;

    .line 124
    .line 125
    iput-object v7, v5, Lv4/n;->b:Lg5/a;

    .line 126
    .line 127
    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    goto :goto_1c

    .line 131
    :cond_82
    new-instance v0, Lv4/i;

    .line 132
    .line 133
    iget-object v2, v3, Lv4/h;->a:Lv4/p;

    .line 134
    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    const-string v4, "Unsatisfied dependency for component "

    .line 138
    .line 139
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v1, ": "

    .line 146
    .line 147
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    throw v0

    .line 161
    :cond_a0
    return-void
.end method

.method public final f(Ljava/lang/Class;)Lg5/a;
    .registers 2

    .line 1
    invoke-static {p1}, Lv4/p;->a(Ljava/lang/Class;)Lv4/p;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lv4/e;->c(Lv4/p;)Lg5/a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final g(Lv4/p;)Ljava/util/Set;
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lv4/e;->c:Ljava/util/HashMap;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lv4/m;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_17

    .line 9
    .line 10
    if-eqz p1, :cond_d

    .line 11
    .line 12
    monitor-exit p0

    .line 13
    goto :goto_10

    .line 14
    :cond_d
    :try_start_d
    sget-object p1, Lv4/e;->h:Lcom/google/firebase/messaging/l;
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_17

    .line 15
    .line 16
    monitor-exit p0

    .line 17
    :goto_10
    invoke-interface {p1}, Lg5/a;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Ljava/util/Set;

    .line 22
    .line 23
    return-object p1

    .line 24
    :catchall_17
    move-exception p1

    .line 25
    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    .line 26
    throw p1
.end method

.method public final h(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :cond_a
    if-ge v2, v1, :cond_51

    .line 12
    .line 13
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    add-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    check-cast v3, Lv4/b;

    .line 20
    .line 21
    iget v4, v3, Lv4/b;->e:I

    .line 22
    .line 23
    if-nez v4, :cond_a

    .line 24
    .line 25
    iget-object v4, p0, Lv4/e;->a:Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    check-cast v4, Lg5/a;

    .line 32
    .line 33
    iget-object v3, v3, Lv4/b;->b:Ljava/util/Set;

    .line 34
    .line 35
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-eqz v5, :cond_a

    .line 44
    .line 45
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    check-cast v5, Lv4/p;

    .line 50
    .line 51
    iget-object v6, p0, Lv4/e;->b:Ljava/util/HashMap;

    .line 52
    .line 53
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    if-nez v7, :cond_3e

    .line 58
    .line 59
    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    goto :goto_26

    .line 63
    :cond_3e
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    check-cast v5, Lg5/a;

    .line 68
    .line 69
    check-cast v5, Lv4/n;

    .line 70
    .line 71
    new-instance v6, La2/i;

    .line 72
    .line 73
    const/16 v7, 0x11

    .line 74
    .line 75
    invoke-direct {v6, v5, v7, v4}, La2/i;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    goto :goto_26

    .line 82
    :cond_51
    return-object v0
.end method

.method public final i()Ljava/util/ArrayList;
    .registers 9

    .line 1
    iget-object v0, p0, Lv4/e;->c:Ljava/util/HashMap;

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v3, p0, Lv4/e;->a:Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    :cond_16
    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_5d

    .line 28
    .line 29
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Ljava/util/Map$Entry;

    .line 34
    .line 35
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    check-cast v5, Lv4/b;

    .line 40
    .line 41
    iget v6, v5, Lv4/b;->e:I

    .line 42
    .line 43
    if-nez v6, :cond_2d

    .line 44
    .line 45
    goto :goto_16

    .line 46
    :cond_2d
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Lg5/a;

    .line 51
    .line 52
    iget-object v5, v5, Lv4/b;->b:Ljava/util/Set;

    .line 53
    .line 54
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    :goto_39
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    if-eqz v6, :cond_16

    .line 63
    .line 64
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    check-cast v6, Lv4/p;

    .line 69
    .line 70
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    if-nez v7, :cond_53

    .line 75
    .line 76
    new-instance v7, Ljava/util/HashSet;

    .line 77
    .line 78
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    :cond_53
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    check-cast v6, Ljava/util/Set;

    .line 89
    .line 90
    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    goto :goto_39

    .line 94
    :cond_5d
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    :cond_65
    :goto_65
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-eqz v3, :cond_d0

    .line 107
    .line 108
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    check-cast v3, Ljava/util/Map$Entry;

    .line 113
    .line 114
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    if-nez v4, :cond_a5

    .line 123
    .line 124
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    check-cast v4, Lv4/p;

    .line 129
    .line 130
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    check-cast v3, Ljava/util/Collection;

    .line 135
    .line 136
    check-cast v3, Ljava/util/Set;

    .line 137
    .line 138
    new-instance v5, Lv4/m;

    .line 139
    .line 140
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 141
    .line 142
    .line 143
    const/4 v6, 0x0

    .line 144
    iput-object v6, v5, Lv4/m;->b:Ljava/util/Set;

    .line 145
    .line 146
    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    .line 147
    .line 148
    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 149
    .line 150
    .line 151
    invoke-static {v6}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    iput-object v6, v5, Lv4/m;->a:Ljava/util/Set;

    .line 156
    .line 157
    iget-object v6, v5, Lv4/m;->a:Ljava/util/Set;

    .line 158
    .line 159
    invoke-interface {v6, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    goto :goto_65

    .line 166
    :cond_a5
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    check-cast v4, Lv4/m;

    .line 175
    .line 176
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    check-cast v3, Ljava/util/Set;

    .line 181
    .line 182
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    :goto_b9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 187
    .line 188
    .line 189
    move-result v5

    .line 190
    if-eqz v5, :cond_65

    .line 191
    .line 192
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    check-cast v5, Lg5/a;

    .line 197
    .line 198
    new-instance v6, La2/i;

    .line 199
    .line 200
    const/16 v7, 0x12

    .line 201
    .line 202
    invoke-direct {v6, v4, v7, v5}, La2/i;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    goto :goto_b9

    .line 209
    :cond_d0
    return-object v1
.end method
