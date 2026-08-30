###### Class r7.r (r7.r)
.class public final Lr7/r;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final H:Ljava/util/List;

.field public static final I:Ljava/util/List;


# instance fields
.field public final A:Ld8/c;

.field public final B:Lr7/d;

.field public final C:Ld4/a;

.field public final D:I

.field public final E:I

.field public final F:I

.field public final G:Lo5/c;

.field public final a:Lcom/google/firebase/messaging/y;

.field public final b:Lk1/h;

.field public final c:Ljava/util/List;

.field public final d:Ljava/util/List;

.field public final e:Lcom/getcapacitor/n;

.field public final f:Z

.field public final g:Lr7/b;

.field public final h:Z

.field public final i:Z

.field public final j:Lr7/b;

.field public final k:Lr7/b;

.field public final l:Ljava/net/ProxySelector;

.field public final m:Lr7/b;

.field public final v:Ljavax/net/SocketFactory;

.field public final w:Ljavax/net/ssl/SSLSocketFactory;

.field public final x:Ljavax/net/ssl/X509TrustManager;

.field public final y:Ljava/util/List;

.field public final z:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [Lr7/s;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    sget-object v3, Lr7/s;->e:Lr7/s;

    .line 6
    .line 7
    aput-object v3, v1, v2

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    sget-object v4, Lr7/s;->c:Lr7/s;

    .line 11
    .line 12
    aput-object v4, v1, v3

    .line 13
    .line 14
    invoke-static {v1}, Ls7/b;->k([Ljava/lang/Object;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    sput-object v1, Lr7/r;->H:Ljava/util/List;

    .line 19
    .line 20
    new-array v0, v0, [Lr7/g;

    .line 21
    .line 22
    sget-object v1, Lr7/g;->e:Lr7/g;

    .line 23
    .line 24
    aput-object v1, v0, v2

    .line 25
    .line 26
    sget-object v1, Lr7/g;->f:Lr7/g;

    .line 27
    .line 28
    aput-object v1, v0, v3

    .line 29
    .line 30
    invoke-static {v0}, Ls7/b;->k([Ljava/lang/Object;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sput-object v0, Lr7/r;->I:Ljava/util/List;

    .line 35
    .line 36
    return-void
.end method

.method public constructor <init>(Lr7/q;)V
    .registers 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lr7/q;->a:Lcom/google/firebase/messaging/y;

    .line 5
    .line 6
    iput-object v0, p0, Lr7/r;->a:Lcom/google/firebase/messaging/y;

    .line 7
    .line 8
    iget-object v0, p1, Lr7/q;->b:Lk1/h;

    .line 9
    .line 10
    iput-object v0, p0, Lr7/r;->b:Lk1/h;

    .line 11
    .line 12
    iget-object v0, p1, Lr7/q;->c:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-static {v0}, Ls7/b;->w(Ljava/util/List;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lr7/r;->c:Ljava/util/List;

    .line 19
    .line 20
    iget-object v0, p1, Lr7/q;->d:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-static {v0}, Ls7/b;->w(Ljava/util/List;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lr7/r;->d:Ljava/util/List;

    .line 27
    .line 28
    iget-object v0, p1, Lr7/q;->e:Lcom/getcapacitor/n;

    .line 29
    .line 30
    iput-object v0, p0, Lr7/r;->e:Lcom/getcapacitor/n;

    .line 31
    .line 32
    iget-boolean v0, p1, Lr7/q;->f:Z

    .line 33
    .line 34
    iput-boolean v0, p0, Lr7/r;->f:Z

    .line 35
    .line 36
    iget-object v0, p1, Lr7/q;->g:Lr7/b;

    .line 37
    .line 38
    iput-object v0, p0, Lr7/r;->g:Lr7/b;

    .line 39
    .line 40
    iget-boolean v0, p1, Lr7/q;->h:Z

    .line 41
    .line 42
    iput-boolean v0, p0, Lr7/r;->h:Z

    .line 43
    .line 44
    iget-boolean v0, p1, Lr7/q;->i:Z

    .line 45
    .line 46
    iput-boolean v0, p0, Lr7/r;->i:Z

    .line 47
    .line 48
    iget-object v0, p1, Lr7/q;->j:Lr7/b;

    .line 49
    .line 50
    iput-object v0, p0, Lr7/r;->j:Lr7/b;

    .line 51
    .line 52
    iget-object v0, p1, Lr7/q;->k:Lr7/b;

    .line 53
    .line 54
    iput-object v0, p0, Lr7/r;->k:Lr7/b;

    .line 55
    .line 56
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-nez v0, :cond_3f

    .line 61
    .line 62
    sget-object v0, Lb8/a;->a:Lb8/a;

    .line 63
    .line 64
    :cond_3f
    iput-object v0, p0, Lr7/r;->l:Ljava/net/ProxySelector;

    .line 65
    .line 66
    iget-object v0, p1, Lr7/q;->l:Lr7/b;

    .line 67
    .line 68
    iput-object v0, p0, Lr7/r;->m:Lr7/b;

    .line 69
    .line 70
    iget-object v0, p1, Lr7/q;->m:Ljavax/net/SocketFactory;

    .line 71
    .line 72
    iput-object v0, p0, Lr7/r;->v:Ljavax/net/SocketFactory;

    .line 73
    .line 74
    iget-object v0, p1, Lr7/q;->n:Ljava/util/List;

    .line 75
    .line 76
    iput-object v0, p0, Lr7/r;->y:Ljava/util/List;

    .line 77
    .line 78
    iget-object v1, p1, Lr7/q;->o:Ljava/util/List;

    .line 79
    .line 80
    iput-object v1, p0, Lr7/r;->z:Ljava/util/List;

    .line 81
    .line 82
    iget-object v1, p1, Lr7/q;->p:Ld8/c;

    .line 83
    .line 84
    iput-object v1, p0, Lr7/r;->A:Ld8/c;

    .line 85
    .line 86
    iget v1, p1, Lr7/q;->r:I

    .line 87
    .line 88
    iput v1, p0, Lr7/r;->D:I

    .line 89
    .line 90
    iget v1, p1, Lr7/q;->s:I

    .line 91
    .line 92
    iput v1, p0, Lr7/r;->E:I

    .line 93
    .line 94
    iget v1, p1, Lr7/q;->t:I

    .line 95
    .line 96
    iput v1, p0, Lr7/r;->F:I

    .line 97
    .line 98
    new-instance v1, Lo5/c;

    .line 99
    .line 100
    const/16 v2, 0x1a

    .line 101
    .line 102
    invoke-direct {v1, v2}, Lo5/c;-><init>(I)V

    .line 103
    .line 104
    .line 105
    iput-object v1, p0, Lr7/r;->G:Lo5/c;

    .line 106
    .line 107
    check-cast v0, Ljava/lang/Iterable;

    .line 108
    .line 109
    instance-of v1, v0, Ljava/util/Collection;

    .line 110
    .line 111
    const/4 v2, 0x0

    .line 112
    if-eqz v1, :cond_7b

    .line 113
    .line 114
    move-object v1, v0

    .line 115
    check-cast v1, Ljava/util/Collection;

    .line 116
    .line 117
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-eqz v1, :cond_7b

    .line 122
    .line 123
    goto :goto_bf

    .line 124
    :cond_7b
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    :cond_7f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-eqz v1, :cond_bf

    .line 133
    .line 134
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    check-cast v1, Lr7/g;

    .line 139
    .line 140
    iget-boolean v1, v1, Lr7/g;->a:Z

    .line 141
    .line 142
    if-eqz v1, :cond_7f

    .line 143
    .line 144
    sget-object v0, Lz7/n;->a:Lz7/n;

    .line 145
    .line 146
    sget-object v0, Lz7/n;->a:Lz7/n;

    .line 147
    .line 148
    invoke-virtual {v0}, Lz7/n;->m()Ljavax/net/ssl/X509TrustManager;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    iput-object v0, p0, Lr7/r;->x:Ljavax/net/ssl/X509TrustManager;

    .line 153
    .line 154
    sget-object v1, Lz7/n;->a:Lz7/n;

    .line 155
    .line 156
    invoke-virtual {v1, v0}, Lz7/n;->l(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    iput-object v1, p0, Lr7/r;->w:Ljavax/net/ssl/SSLSocketFactory;

    .line 161
    .line 162
    sget-object v1, Lz7/n;->a:Lz7/n;

    .line 163
    .line 164
    invoke-virtual {v1, v0}, Lz7/n;->b(Ljavax/net/ssl/X509TrustManager;)Ld4/a;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    iput-object v0, p0, Lr7/r;->C:Ld4/a;

    .line 169
    .line 170
    iget-object p1, p1, Lr7/q;->q:Lr7/d;

    .line 171
    .line 172
    iget-object v1, p1, Lr7/d;->b:Ld4/a;

    .line 173
    .line 174
    invoke-static {v1, v0}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-eqz v1, :cond_b4

    .line 179
    .line 180
    goto :goto_bc

    .line 181
    :cond_b4
    new-instance v1, Lr7/d;

    .line 182
    .line 183
    iget-object p1, p1, Lr7/d;->a:Ljava/util/Set;

    .line 184
    .line 185
    invoke-direct {v1, p1, v0}, Lr7/d;-><init>(Ljava/util/Set;Ld4/a;)V

    .line 186
    .line 187
    .line 188
    move-object p1, v1

    .line 189
    :goto_bc
    iput-object p1, p0, Lr7/r;->B:Lr7/d;

    .line 190
    .line 191
    goto :goto_c9

    .line 192
    :cond_bf
    :goto_bf
    iput-object v2, p0, Lr7/r;->w:Ljavax/net/ssl/SSLSocketFactory;

    .line 193
    .line 194
    iput-object v2, p0, Lr7/r;->C:Ld4/a;

    .line 195
    .line 196
    iput-object v2, p0, Lr7/r;->x:Ljavax/net/ssl/X509TrustManager;

    .line 197
    .line 198
    sget-object p1, Lr7/d;->c:Lr7/d;

    .line 199
    .line 200
    iput-object p1, p0, Lr7/r;->B:Lr7/d;

    .line 201
    .line 202
    :goto_c9
    iget-object p1, p0, Lr7/r;->x:Ljavax/net/ssl/X509TrustManager;

    .line 203
    .line 204
    iget-object v0, p0, Lr7/r;->C:Ld4/a;

    .line 205
    .line 206
    iget-object v1, p0, Lr7/r;->w:Ljavax/net/ssl/SSLSocketFactory;

    .line 207
    .line 208
    iget-object v3, p0, Lr7/r;->d:Ljava/util/List;

    .line 209
    .line 210
    iget-object v4, p0, Lr7/r;->c:Ljava/util/List;

    .line 211
    .line 212
    const-string v5, "null cannot be cast to non-null type kotlin.collections.List<okhttp3.Interceptor?>"

    .line 213
    .line 214
    invoke-static {v5, v4}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v6

    .line 221
    if-nez v6, :cond_16f

    .line 222
    .line 223
    invoke-static {v5, v3}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v2

    .line 230
    if-nez v2, :cond_157

    .line 231
    .line 232
    iget-object v2, p0, Lr7/r;->y:Ljava/util/List;

    .line 233
    .line 234
    check-cast v2, Ljava/lang/Iterable;

    .line 235
    .line 236
    instance-of v3, v2, Ljava/util/Collection;

    .line 237
    .line 238
    if-eqz v3, :cond_f9

    .line 239
    .line 240
    move-object v3, v2

    .line 241
    check-cast v3, Ljava/util/Collection;

    .line 242
    .line 243
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 244
    .line 245
    .line 246
    move-result v3

    .line 247
    if-eqz v3, :cond_f9

    .line 248
    .line 249
    goto :goto_12c

    .line 250
    :cond_f9
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    :cond_fd
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 255
    .line 256
    .line 257
    move-result v3

    .line 258
    if-eqz v3, :cond_12c

    .line 259
    .line 260
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    check-cast v3, Lr7/g;

    .line 265
    .line 266
    iget-boolean v3, v3, Lr7/g;->a:Z

    .line 267
    .line 268
    if-eqz v3, :cond_fd

    .line 269
    .line 270
    if-eqz v1, :cond_124

    .line 271
    .line 272
    if-eqz v0, :cond_11c

    .line 273
    .line 274
    if-eqz p1, :cond_114

    .line 275
    .line 276
    goto :goto_13e

    .line 277
    :cond_114
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 278
    .line 279
    const-string v0, "x509TrustManager == null"

    .line 280
    .line 281
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    throw p1

    .line 285
    :cond_11c
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 286
    .line 287
    const-string v0, "certificateChainCleaner == null"

    .line 288
    .line 289
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    throw p1

    .line 293
    :cond_124
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 294
    .line 295
    const-string v0, "sslSocketFactory == null"

    .line 296
    .line 297
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    throw p1

    .line 301
    :cond_12c
    :goto_12c
    const-string v2, "Check failed."

    .line 302
    .line 303
    if-nez v1, :cond_151

    .line 304
    .line 305
    if-nez v0, :cond_14b

    .line 306
    .line 307
    if-nez p1, :cond_145

    .line 308
    .line 309
    iget-object p1, p0, Lr7/r;->B:Lr7/d;

    .line 310
    .line 311
    sget-object v0, Lr7/d;->c:Lr7/d;

    .line 312
    .line 313
    invoke-static {p1, v0}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result p1

    .line 317
    if-eqz p1, :cond_13f

    .line 318
    .line 319
    :goto_13e
    return-void

    .line 320
    :cond_13f
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 321
    .line 322
    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    throw p1

    .line 326
    :cond_145
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 327
    .line 328
    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    throw p1

    .line 332
    :cond_14b
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 333
    .line 334
    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    throw p1

    .line 338
    :cond_151
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 339
    .line 340
    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    throw p1

    .line 344
    :cond_157
    new-instance p1, Ljava/lang/StringBuilder;

    .line 345
    .line 346
    const-string v0, "Null network interceptor: "

    .line 347
    .line 348
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object p1

    .line 358
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 359
    .line 360
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object p1

    .line 364
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    throw v0

    .line 368
    :cond_16f
    new-instance p1, Ljava/lang/StringBuilder;

    .line 369
    .line 370
    const-string v0, "Null interceptor: "

    .line 371
    .line 372
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object p1

    .line 382
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 383
    .line 384
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object p1

    .line 388
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    throw v0
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
