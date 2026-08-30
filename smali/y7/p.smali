###### Class y7.p (y7.p)
.class public final Ly7/p;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lw7/d;


# static fields
.field public static final g:Ljava/util/List;

.field public static final h:Ljava/util/List;


# instance fields
.field public final a:Lv7/l;

.field public final b:Lw7/f;

.field public final c:Ly7/o;

.field public volatile d:Ly7/w;

.field public final e:Lr7/s;

.field public volatile f:Z


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 1
    const-string v10, ":scheme"

    .line 2
    .line 3
    const-string v11, ":authority"

    .line 4
    .line 5
    const-string v0, "connection"

    .line 6
    .line 7
    const-string v1, "host"

    .line 8
    .line 9
    const-string v2, "keep-alive"

    .line 10
    .line 11
    const-string v3, "proxy-connection"

    .line 12
    .line 13
    const-string v4, "te"

    .line 14
    .line 15
    const-string v5, "transfer-encoding"

    .line 16
    .line 17
    const-string v6, "encoding"

    .line 18
    .line 19
    const-string v7, "upgrade"

    .line 20
    .line 21
    const-string v8, ":method"

    .line 22
    .line 23
    const-string v9, ":path"

    .line 24
    .line 25
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Ls7/b;->k([Ljava/lang/Object;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Ly7/p;->g:Ljava/util/List;

    .line 34
    .line 35
    const-string v7, "encoding"

    .line 36
    .line 37
    const-string v8, "upgrade"

    .line 38
    .line 39
    const-string v1, "connection"

    .line 40
    .line 41
    const-string v2, "host"

    .line 42
    .line 43
    const-string v3, "keep-alive"

    .line 44
    .line 45
    const-string v4, "proxy-connection"

    .line 46
    .line 47
    const-string v5, "te"

    .line 48
    .line 49
    const-string v6, "transfer-encoding"

    .line 50
    .line 51
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Ls7/b;->k([Ljava/lang/Object;)Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sput-object v0, Ly7/p;->h:Ljava/util/List;

    .line 60
    .line 61
    return-void
.end method

.method public constructor <init>(Lr7/r;Lv7/l;Lw7/f;Ly7/o;)V
    .registers 6

    .line 1
    const-string v0, "http2Connection"

    .line 2
    .line 3
    invoke-static {v0, p4}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Ly7/p;->a:Lv7/l;

    .line 10
    .line 11
    iput-object p3, p0, Ly7/p;->b:Lw7/f;

    .line 12
    .line 13
    iput-object p4, p0, Ly7/p;->c:Ly7/o;

    .line 14
    .line 15
    iget-object p1, p1, Lr7/r;->z:Ljava/util/List;

    .line 16
    .line 17
    sget-object p2, Lr7/s;->f:Lr7/s;

    .line 18
    .line 19
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_19

    .line 24
    .line 25
    goto :goto_1b

    .line 26
    :cond_19
    sget-object p2, Lr7/s;->e:Lr7/s;

    .line 27
    .line 28
    :goto_1b
    iput-object p2, p0, Ly7/p;->e:Lr7/s;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/internal/g;)V
    .registers 16

    .line 1
    iget-object v0, p0, Ly7/p;->d:Ly7/w;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p1, Lcom/google/android/gms/common/internal/g;->e:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lb0/d;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v0, :cond_f

    .line 13
    .line 14
    move v0, v2

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    move v0, v1

    .line 17
    :goto_10
    iget-object v3, p1, Lcom/google/android/gms/common/internal/g;->c:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v3, Lr7/k;

    .line 20
    .line 21
    new-instance v4, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v3}, Lr7/k;->size()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    add-int/lit8 v5, v5, 0x4

    .line 28
    .line 29
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    .line 31
    .line 32
    new-instance v5, Ly7/b;

    .line 33
    .line 34
    sget-object v6, Ly7/b;->f:Le8/j;

    .line 35
    .line 36
    iget-object v7, p1, Lcom/google/android/gms/common/internal/g;->d:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v7, Ljava/lang/String;

    .line 39
    .line 40
    invoke-direct {v5, v6, v7}, Ly7/b;-><init>(Le8/j;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    new-instance v5, Ly7/b;

    .line 47
    .line 48
    sget-object v6, Ly7/b;->g:Le8/j;

    .line 49
    .line 50
    iget-object v7, p1, Lcom/google/android/gms/common/internal/g;->b:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v7, Lr7/m;

    .line 53
    .line 54
    const-string v8, "url"

    .line 55
    .line 56
    invoke-static {v8, v7}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v7}, Lr7/m;->b()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    invoke-virtual {v7}, Lr7/m;->d()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v9

    .line 67
    if-eqz v9, :cond_58

    .line 68
    .line 69
    new-instance v10, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const/16 v8, 0x3f

    .line 78
    .line 79
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    :cond_58
    invoke-direct {v5, v6, v8}, Ly7/b;-><init>(Le8/j;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    const-string v5, "Host"

    .line 96
    .line 97
    iget-object p1, p1, Lcom/google/android/gms/common/internal/g;->c:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast p1, Lr7/k;

    .line 100
    .line 101
    invoke-virtual {p1, v5}, Lr7/k;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    if-eqz p1, :cond_74

    .line 106
    .line 107
    new-instance v5, Ly7/b;

    .line 108
    .line 109
    sget-object v6, Ly7/b;->i:Le8/j;

    .line 110
    .line 111
    invoke-direct {v5, v6, p1}, Ly7/b;-><init>(Le8/j;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    :cond_74
    new-instance p1, Ly7/b;

    .line 118
    .line 119
    sget-object v5, Ly7/b;->h:Le8/j;

    .line 120
    .line 121
    iget-object v6, v7, Lr7/m;->a:Ljava/lang/String;

    .line 122
    .line 123
    invoke-direct {p1, v5, v6}, Ly7/b;-><init>(Le8/j;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3}, Lr7/k;->size()I

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    move v5, v1

    .line 134
    :goto_85
    if-ge v5, p1, :cond_c6

    .line 135
    .line 136
    invoke-virtual {v3, v5}, Lr7/k;->b(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 141
    .line 142
    const-string v8, "US"

    .line 143
    .line 144
    invoke-static {v8, v7}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    const-string v7, "this as java.lang.String).toLowerCase(locale)"

    .line 152
    .line 153
    invoke-static {v7, v6}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    sget-object v7, Ly7/p;->g:Ljava/util/List;

    .line 157
    .line 158
    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v7

    .line 162
    if-eqz v7, :cond_b7

    .line 163
    .line 164
    const-string v7, "te"

    .line 165
    .line 166
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v7

    .line 170
    if-eqz v7, :cond_c3

    .line 171
    .line 172
    invoke-virtual {v3, v5}, Lr7/k;->d(I)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v7

    .line 176
    const-string v8, "trailers"

    .line 177
    .line 178
    invoke-static {v7, v8}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v7

    .line 182
    if-eqz v7, :cond_c3

    .line 183
    .line 184
    :cond_b7
    new-instance v7, Ly7/b;

    .line 185
    .line 186
    invoke-virtual {v3, v5}, Lr7/k;->d(I)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v8

    .line 190
    invoke-direct {v7, v6, v8}, Ly7/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    :cond_c3
    add-int/lit8 v5, v5, 0x1

    .line 197
    .line 198
    goto :goto_85

    .line 199
    :cond_c6
    iget-object v8, p0, Ly7/p;->c:Ly7/o;

    .line 200
    .line 201
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    xor-int/lit8 v9, v0, 0x1

    .line 205
    .line 206
    iget-object p1, v8, Ly7/o;->E:Ly7/x;

    .line 207
    .line 208
    monitor-enter p1

    .line 209
    :try_start_d0
    monitor-enter v8
    :try_end_d1
    .catchall {:try_start_d0 .. :try_end_d1} :catchall_15b

    .line 210
    :try_start_d1
    iget v3, v8, Ly7/o;->e:I

    .line 211
    .line 212
    const v5, 0x3fffffff    # 1.9999999f

    .line 213
    .line 214
    .line 215
    if-le v3, v5, :cond_e1

    .line 216
    .line 217
    const/16 v3, 0x8

    .line 218
    .line 219
    invoke-virtual {v8, v3}, Ly7/o;->s(I)V

    .line 220
    .line 221
    .line 222
    goto :goto_e1

    .line 223
    :catchall_de
    move-exception v0

    .line 224
    goto/16 :goto_163

    .line 225
    .line 226
    :cond_e1
    :goto_e1
    iget-boolean v3, v8, Ly7/o;->f:Z

    .line 227
    .line 228
    if-nez v3, :cond_15d

    .line 229
    .line 230
    iget v7, v8, Ly7/o;->e:I

    .line 231
    .line 232
    add-int/lit8 v3, v7, 0x2

    .line 233
    .line 234
    iput v3, v8, Ly7/o;->e:I

    .line 235
    .line 236
    new-instance v6, Ly7/w;

    .line 237
    .line 238
    const/4 v11, 0x0

    .line 239
    const/4 v10, 0x0

    .line 240
    invoke-direct/range {v6 .. v11}, Ly7/w;-><init>(ILy7/o;ZZLr7/k;)V

    .line 241
    .line 242
    .line 243
    if-eqz v0, :cond_104

    .line 244
    .line 245
    iget-wide v10, v8, Ly7/o;->B:J

    .line 246
    .line 247
    iget-wide v12, v8, Ly7/o;->C:J

    .line 248
    .line 249
    cmp-long v0, v10, v12

    .line 250
    .line 251
    if-gez v0, :cond_104

    .line 252
    .line 253
    iget-wide v10, v6, Ly7/w;->e:J

    .line 254
    .line 255
    iget-wide v12, v6, Ly7/w;->f:J

    .line 256
    .line 257
    cmp-long v0, v10, v12

    .line 258
    .line 259
    if-ltz v0, :cond_105

    .line 260
    .line 261
    :cond_104
    move v1, v2

    .line 262
    :cond_105
    invoke-virtual {v6}, Ly7/w;->i()Z

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    if-eqz v0, :cond_114

    .line 267
    .line 268
    iget-object v0, v8, Ly7/o;->b:Ljava/util/LinkedHashMap;

    .line 269
    .line 270
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 271
    .line 272
    .line 273
    move-result-object v2

    .line 274
    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_114
    .catchall {:try_start_d1 .. :try_end_114} :catchall_de

    .line 275
    .line 276
    .line 277
    :cond_114
    :try_start_114
    monitor-exit v8

    .line 278
    iget-object v0, v8, Ly7/o;->E:Ly7/x;

    .line 279
    .line 280
    invoke-virtual {v0, v9, v7, v4}, Ly7/x;->s(ZILjava/util/ArrayList;)V
    :try_end_11a
    .catchall {:try_start_114 .. :try_end_11a} :catchall_15b

    .line 281
    .line 282
    .line 283
    monitor-exit p1

    .line 284
    if-eqz v1, :cond_122

    .line 285
    .line 286
    iget-object p1, v8, Ly7/o;->E:Ly7/x;

    .line 287
    .line 288
    invoke-virtual {p1}, Ly7/x;->flush()V

    .line 289
    .line 290
    .line 291
    :cond_122
    iput-object v6, p0, Ly7/p;->d:Ly7/w;

    .line 292
    .line 293
    iget-boolean p1, p0, Ly7/p;->f:Z

    .line 294
    .line 295
    if-nez p1, :cond_149

    .line 296
    .line 297
    iget-object p1, p0, Ly7/p;->d:Ly7/w;

    .line 298
    .line 299
    invoke-static {p1}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 300
    .line 301
    .line 302
    iget-object p1, p1, Ly7/w;->k:Ly7/v;

    .line 303
    .line 304
    iget-object v0, p0, Ly7/p;->b:Lw7/f;

    .line 305
    .line 306
    iget v0, v0, Lw7/f;->g:I

    .line 307
    .line 308
    int-to-long v0, v0

    .line 309
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 310
    .line 311
    invoke-virtual {p1, v0, v1}, Le8/y;->g(J)Le8/y;

    .line 312
    .line 313
    .line 314
    iget-object p1, p0, Ly7/p;->d:Ly7/w;

    .line 315
    .line 316
    invoke-static {p1}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 317
    .line 318
    .line 319
    iget-object p1, p1, Ly7/w;->l:Ly7/v;

    .line 320
    .line 321
    iget-object v0, p0, Ly7/p;->b:Lw7/f;

    .line 322
    .line 323
    iget v0, v0, Lw7/f;->h:I

    .line 324
    .line 325
    int-to-long v0, v0

    .line 326
    invoke-virtual {p1, v0, v1}, Le8/y;->g(J)Le8/y;

    .line 327
    .line 328
    .line 329
    return-void

    .line 330
    :cond_149
    iget-object p1, p0, Ly7/p;->d:Ly7/w;

    .line 331
    .line 332
    invoke-static {p1}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 333
    .line 334
    .line 335
    const/16 v0, 0x9

    .line 336
    .line 337
    invoke-virtual {p1, v0}, Ly7/w;->e(I)V

    .line 338
    .line 339
    .line 340
    new-instance p1, Ljava/io/IOException;

    .line 341
    .line 342
    const-string v0, "Canceled"

    .line 343
    .line 344
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    throw p1

    .line 348
    :catchall_15b
    move-exception v0

    .line 349
    goto :goto_165

    .line 350
    :cond_15d
    :try_start_15d
    new-instance v0, Ly7/a;

    .line 351
    .line 352
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    .line 353
    .line 354
    .line 355
    throw v0
    :try_end_163
    .catchall {:try_start_15d .. :try_end_163} :catchall_de

    .line 356
    :goto_163
    :try_start_163
    monitor-exit v8

    .line 357
    throw v0
    :try_end_165
    .catchall {:try_start_163 .. :try_end_165} :catchall_15b

    .line 358
    :goto_165
    monitor-exit p1

    .line 359
    throw v0
.end method

.method public final b(Lr7/u;)Le8/w;
    .registers 2

    .line 1
    iget-object p1, p0, Ly7/p;->d:Ly7/w;

    .line 2
    .line 3
    invoke-static {p1}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Ly7/w;->i:Ly7/u;

    .line 7
    .line 8
    return-object p1
.end method

.method public final c()V
    .registers 2

    .line 1
    iget-object v0, p0, Ly7/p;->d:Ly7/w;

    .line 2
    .line 3
    invoke-static {v0}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ly7/w;->g()Ly7/t;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ly7/t;->close()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final cancel()V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ly7/p;->f:Z

    .line 3
    .line 4
    iget-object v0, p0, Ly7/p;->d:Ly7/w;

    .line 5
    .line 6
    if-eqz v0, :cond_c

    .line 7
    .line 8
    const/16 v1, 0x9

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ly7/w;->e(I)V

    .line 11
    .line 12
    .line 13
    :cond_c
    return-void
.end method

.method public final d(Lcom/google/android/gms/common/internal/g;J)Le8/u;
    .registers 4

    .line 1
    iget-object p1, p0, Ly7/p;->d:Ly7/w;

    .line 2
    .line 3
    invoke-static {p1}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ly7/w;->g()Ly7/t;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public final e()V
    .registers 2

    .line 1
    iget-object v0, p0, Ly7/p;->c:Ly7/o;

    .line 2
    .line 3
    invoke-virtual {v0}, Ly7/o;->flush()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final f(Lr7/u;)J
    .registers 4

    .line 1
    invoke-static {p1}, Lw7/e;->a(Lr7/u;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_9

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_9
    invoke-static {p1}, Ls7/b;->j(Lr7/u;)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    return-wide v0
.end method

.method public final g(Z)Lr7/t;
    .registers 13

    .line 1
    iget-object v0, p0, Ly7/p;->d:Ly7/w;

    .line 2
    .line 3
    if-eqz v0, :cond_106

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_5
    iget-object v1, v0, Ly7/w;->k:Ly7/v;

    .line 7
    .line 8
    invoke-virtual {v1}, Le8/e;->h()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_ec

    .line 9
    .line 10
    .line 11
    :goto_a
    :try_start_a
    iget-object v1, v0, Ly7/w;->g:Ljava/util/ArrayDeque;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_2a

    .line 18
    .line 19
    iget v1, v0, Ly7/w;->m:I
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_27

    .line 20
    .line 21
    if-nez v1, :cond_2a

    .line 22
    .line 23
    :try_start_16
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_19} :catch_1a
    .catchall {:try_start_16 .. :try_end_19} :catchall_27

    .line 24
    .line 25
    .line 26
    goto :goto_a

    .line 27
    :catch_1a
    :try_start_1a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 32
    .line 33
    .line 34
    new-instance p1, Ljava/io/InterruptedIOException;

    .line 35
    .line 36
    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    .line 37
    .line 38
    .line 39
    throw p1
    :try_end_27
    .catchall {:try_start_1a .. :try_end_27} :catchall_27

    .line 40
    :catchall_27
    move-exception p1

    .line 41
    goto/16 :goto_fe

    .line 42
    .line 43
    :cond_2a
    :try_start_2a
    iget-object v1, v0, Ly7/w;->k:Ly7/v;

    .line 44
    .line 45
    invoke-virtual {v1}, Ly7/v;->k()V

    .line 46
    .line 47
    .line 48
    iget-object v1, v0, Ly7/w;->g:Ljava/util/ArrayDeque;

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_ee

    .line 55
    .line 56
    iget-object v1, v0, Ly7/w;->g:Ljava/util/ArrayDeque;

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const-string v2, "headersQueue.removeFirst()"

    .line 63
    .line 64
    invoke-static {v2, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    check-cast v1, Lr7/k;
    :try_end_44
    .catchall {:try_start_2a .. :try_end_44} :catchall_ec

    .line 68
    .line 69
    monitor-exit v0

    .line 70
    iget-object v0, p0, Ly7/p;->e:Lr7/s;

    .line 71
    .line 72
    const-string v2, "protocol"

    .line 73
    .line 74
    invoke-static {v2, v0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    new-instance v2, Ljava/util/ArrayList;

    .line 78
    .line 79
    const/16 v3, 0x14

    .line 80
    .line 81
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Lr7/k;->size()I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    const/4 v4, 0x0

    .line 89
    const/4 v5, 0x0

    .line 90
    move-object v7, v4

    .line 91
    move v6, v5

    .line 92
    :goto_5b
    if-ge v6, v3, :cond_a3

    .line 93
    .line 94
    invoke-virtual {v1, v6}, Lr7/k;->b(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v8

    .line 98
    invoke-virtual {v1, v6}, Lr7/k;->d(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v9

    .line 102
    const-string v10, ":status"

    .line 103
    .line 104
    invoke-static {v8, v10}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v10

    .line 108
    if-eqz v10, :cond_80

    .line 109
    .line 110
    new-instance v7, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string v8, "HTTP/1.1 "

    .line 113
    .line 114
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    invoke-static {v7}, Lf4/f;->c(Ljava/lang/String;)Lb0/d;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    goto :goto_a0

    .line 129
    :cond_80
    sget-object v10, Ly7/p;->h:Ljava/util/List;

    .line 130
    .line 131
    invoke-interface {v10, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v10

    .line 135
    if-nez v10, :cond_a0

    .line 136
    .line 137
    const-string v10, "name"

    .line 138
    .line 139
    invoke-static {v10, v8}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    const-string v10, "value"

    .line 143
    .line 144
    invoke-static {v10, v9}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    invoke-static {v9}, Lk7/g;->P(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 151
    .line 152
    .line 153
    move-result-object v8

    .line 154
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v8

    .line 158
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    :cond_a0
    :goto_a0
    add-int/lit8 v6, v6, 0x1

    .line 162
    .line 163
    goto :goto_5b

    .line 164
    :cond_a3
    if-eqz v7, :cond_e4

    .line 165
    .line 166
    new-instance v1, Lr7/t;

    .line 167
    .line 168
    invoke-direct {v1}, Lr7/t;-><init>()V

    .line 169
    .line 170
    .line 171
    iput-object v0, v1, Lr7/t;->b:Lr7/s;

    .line 172
    .line 173
    iget v0, v7, Lb0/d;->b:I

    .line 174
    .line 175
    iput v0, v1, Lr7/t;->c:I

    .line 176
    .line 177
    iget-object v0, v7, Lb0/d;->d:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast v0, Ljava/lang/String;

    .line 180
    .line 181
    iput-object v0, v1, Lr7/t;->d:Ljava/lang/String;

    .line 182
    .line 183
    new-array v0, v5, [Ljava/lang/String;

    .line 184
    .line 185
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    check-cast v0, [Ljava/lang/String;

    .line 190
    .line 191
    new-instance v2, Lr7/j;

    .line 192
    .line 193
    invoke-direct {v2}, Lr7/j;-><init>()V

    .line 194
    .line 195
    .line 196
    iget-object v3, v2, Lr7/j;->a:Ljava/util/ArrayList;

    .line 197
    .line 198
    const-string v5, "<this>"

    .line 199
    .line 200
    invoke-static {v5, v3}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    const-string v5, "elements"

    .line 204
    .line 205
    invoke-static {v5, v0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    invoke-static {v0}, Ls6/f;->h([Ljava/lang/Object;)Ljava/util/List;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    check-cast v0, Ljava/util/Collection;

    .line 213
    .line 214
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 215
    .line 216
    .line 217
    iput-object v2, v1, Lr7/t;->f:Lr7/j;

    .line 218
    .line 219
    if-eqz p1, :cond_e3

    .line 220
    .line 221
    iget p1, v1, Lr7/t;->c:I

    .line 222
    .line 223
    const/16 v0, 0x64

    .line 224
    .line 225
    if-ne p1, v0, :cond_e3

    .line 226
    .line 227
    return-object v4

    .line 228
    :cond_e3
    return-object v1

    .line 229
    :cond_e4
    new-instance p1, Ljava/net/ProtocolException;

    .line 230
    .line 231
    const-string v0, "Expected \':status\' header not present"

    .line 232
    .line 233
    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    throw p1

    .line 237
    :catchall_ec
    move-exception p1

    .line 238
    goto :goto_104

    .line 239
    :cond_ee
    :try_start_ee
    iget-object p1, v0, Ly7/w;->n:Ljava/io/IOException;

    .line 240
    .line 241
    if-eqz p1, :cond_f3

    .line 242
    .line 243
    goto :goto_fd

    .line 244
    :cond_f3
    new-instance p1, Ly7/b0;

    .line 245
    .line 246
    iget v1, v0, Ly7/w;->m:I

    .line 247
    .line 248
    invoke-static {v1}, La1/a;->m(I)V

    .line 249
    .line 250
    .line 251
    invoke-direct {p1, v1}, Ly7/b0;-><init>(I)V

    .line 252
    .line 253
    .line 254
    :goto_fd
    throw p1

    .line 255
    :goto_fe
    iget-object v1, v0, Ly7/w;->k:Ly7/v;

    .line 256
    .line 257
    invoke-virtual {v1}, Ly7/v;->k()V

    .line 258
    .line 259
    .line 260
    throw p1

    .line 261
    :goto_104
    monitor-exit v0
    :try_end_105
    .catchall {:try_start_ee .. :try_end_105} :catchall_ec

    .line 262
    throw p1

    .line 263
    :cond_106
    new-instance p1, Ljava/io/IOException;

    .line 264
    .line 265
    const-string v0, "stream wasn\'t created"

    .line 266
    .line 267
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    throw p1
.end method

.method public final h()Lv7/l;
    .registers 2

    .line 1
    iget-object v0, p0, Ly7/p;->a:Lv7/l;

    .line 2
    .line 3
    return-object v0
.end method
