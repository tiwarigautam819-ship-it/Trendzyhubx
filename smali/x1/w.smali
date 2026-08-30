###### Class x1.w (x1.w)
.class public final Lx1/w;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lq2/f0;
.implements Ly5/d;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, Lx1/w;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static A(Ljava/util/HashMap;Lm/x2;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :cond_8
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_3e

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/util/Map$Entry;

    .line 20
    .line 21
    sget-object v1, Lx1/z;->j:Ljava/lang/String;

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lx1/u;

    .line 28
    .line 29
    iget-object v1, v1, Lx1/u;->b:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {v1}, Lx1/w;->s(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_8

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Ljava/lang/String;

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Lx1/u;

    .line 48
    .line 49
    iget-object v2, v2, Lx1/u;->b:Ljava/lang/Object;

    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lx1/u;

    .line 56
    .line 57
    iget-object v0, v0, Lx1/u;->a:Lx1/z;

    .line 58
    .line 59
    invoke-virtual {p1, v1, v2, v0}, Lm/x2;->l(Ljava/lang/String;Ljava/lang/Object;Lx1/z;)V

    .line 60
    .line 61
    .line 62
    goto :goto_8

    .line 63
    :cond_3e
    return-void
.end method

.method public static B(Ljava/net/HttpURLConnection;Lx1/b0;)V
    .registers 16

    .line 1
    const-string v0, "User-Agent"

    .line 2
    .line 3
    sget-object v1, Lx1/d0;->b:Lx1/d0;

    .line 4
    .line 5
    const-string v2, "Content-Type"

    .line 6
    .line 7
    const-string v3, "requests"

    .line 8
    .line 9
    invoke-static {v3, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    new-instance v5, Lq2/z;

    .line 13
    .line 14
    invoke-direct {v5}, Lq2/z;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v3, p1, Lx1/b0;->c:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    :cond_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    const/4 v7, 0x1

    .line 32
    const/4 v8, 0x0

    .line 33
    if-eqz v4, :cond_4c

    .line 34
    .line 35
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Lx1/z;

    .line 40
    .line 41
    iget-object v9, v4, Lx1/z;->d:Landroid/os/Bundle;

    .line 42
    .line 43
    invoke-virtual {v9}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 44
    .line 45
    .line 46
    move-result-object v9

    .line 47
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v9

    .line 51
    :cond_32
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v10

    .line 55
    if-eqz v10, :cond_1a

    .line 56
    .line 57
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v10

    .line 61
    check-cast v10, Ljava/lang/String;

    .line 62
    .line 63
    iget-object v11, v4, Lx1/z;->d:Landroid/os/Bundle;

    .line 64
    .line 65
    invoke-virtual {v11, v10}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v10

    .line 69
    invoke-static {v10}, Lx1/w;->s(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v10

    .line 73
    if-eqz v10, :cond_32

    .line 74
    .line 75
    move v9, v8

    .line 76
    goto :goto_4d

    .line 77
    :cond_4c
    move v9, v7

    .line 78
    :goto_4d
    const/4 v3, 0x0

    .line 79
    if-ne v6, v7, :cond_5b

    .line 80
    .line 81
    iget-object v4, p1, Lx1/b0;->c:Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    check-cast v4, Lx1/z;

    .line 88
    .line 89
    iget-object v4, v4, Lx1/z;->h:Lx1/d0;

    .line 90
    .line 91
    goto :goto_5c

    .line 92
    :cond_5b
    move-object v4, v3

    .line 93
    :goto_5c
    if-nez v4, :cond_5f

    .line 94
    .line 95
    move-object v4, v1

    .line 96
    :cond_5f
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v10

    .line 100
    invoke-virtual {p0, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    if-eqz v9, :cond_76

    .line 104
    .line 105
    const-string v10, "application/x-www-form-urlencoded"

    .line 106
    .line 107
    invoke-virtual {p0, v2, v10}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    const-string v10, "Content-Encoding"

    .line 111
    .line 112
    const-string v11, "gzip"

    .line 113
    .line 114
    invoke-virtual {p0, v10, v11}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :goto_74
    move v10, v7

    .line 118
    goto :goto_8a

    .line 119
    :cond_76
    const-string v10, "multipart/form-data; boundary=%s"

    .line 120
    .line 121
    new-array v11, v7, [Ljava/lang/Object;

    .line 122
    .line 123
    sget-object v12, Lx1/z;->j:Ljava/lang/String;

    .line 124
    .line 125
    aput-object v12, v11, v8

    .line 126
    .line 127
    invoke-static {v11, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v11

    .line 131
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v10

    .line 135
    invoke-virtual {p0, v2, v10}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    goto :goto_74

    .line 139
    :goto_8a
    invoke-virtual {p0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    .line 140
    .line 141
    .line 142
    move-result-object v7

    .line 143
    sget-object v11, Lx1/r;->b:Ljava/util/HashSet;

    .line 144
    .line 145
    monitor-enter v11

    .line 146
    monitor-exit v11

    .line 147
    const-string v11, "Id"

    .line 148
    .line 149
    iget-object v12, p1, Lx1/b0;->b:Ljava/lang/String;

    .line 150
    .line 151
    invoke-virtual {v5, v11, v12}, Lq2/z;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    const-string v11, "URL"

    .line 155
    .line 156
    const-string v12, "url"

    .line 157
    .line 158
    invoke-static {v12, v7}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v5, v11, v7}, Lq2/z;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    const-string v11, "Method"

    .line 165
    .line 166
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v12

    .line 170
    const-string v13, "connection.requestMethod"

    .line 171
    .line 172
    invoke-static {v13, v12}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v5, v11, v12}, Lq2/z;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v11

    .line 182
    const-string v12, "connection.getRequestProperty(\"User-Agent\")"

    .line 183
    .line 184
    invoke-static {v12, v11}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v5, v0, v11}, Lq2/z;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0, v2}, Ljava/net/URLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    const-string v11, "connection.getRequestProperty(\"Content-Type\")"

    .line 195
    .line 196
    invoke-static {v11, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v5, v2, v0}, Lq2/z;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0, v8}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0, v8}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 206
    .line 207
    .line 208
    if-ne v4, v1, :cond_144

    .line 209
    .line 210
    invoke-virtual {p0, v10}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 211
    .line 212
    .line 213
    :try_start_d4
    new-instance v1, Ljava/io/BufferedOutputStream;

    .line 214
    .line 215
    invoke-virtual {p0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    invoke-direct {v1, p0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_dd
    .catchall {:try_start_d4 .. :try_end_dd} :catchall_13c

    .line 220
    .line 221
    .line 222
    if-eqz v9, :cond_ea

    .line 223
    .line 224
    :try_start_df
    new-instance p0, Ljava/util/zip/GZIPOutputStream;

    .line 225
    .line 226
    invoke-direct {p0, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_e4
    .catchall {:try_start_df .. :try_end_e4} :catchall_e6

    .line 227
    .line 228
    .line 229
    move-object v1, p0

    .line 230
    goto :goto_ea

    .line 231
    :catchall_e6
    move-exception v0

    .line 232
    move-object p0, v0

    .line 233
    move-object v3, v1

    .line 234
    goto :goto_13e

    .line 235
    :cond_ea
    :goto_ea
    :try_start_ea
    iget-object p0, p1, Lx1/b0;->d:Ljava/util/ArrayList;

    .line 236
    .line 237
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 238
    .line 239
    .line 240
    move-result v0
    :try_end_f0
    .catchall {:try_start_ea .. :try_end_f0} :catchall_139

    .line 241
    :goto_f0
    if-ge v8, v0, :cond_fb

    .line 242
    .line 243
    :try_start_f2
    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    add-int/lit8 v8, v8, 0x1

    .line 248
    .line 249
    check-cast v2, Lx1/d;
    :try_end_fa
    .catchall {:try_start_f2 .. :try_end_fa} :catchall_136

    .line 250
    .line 251
    goto :goto_f0

    .line 252
    :cond_fb
    :try_start_fb
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 253
    .line 254
    .line 255
    move-result-object p0
    :try_end_ff
    .catchall {:try_start_fb .. :try_end_ff} :catchall_139

    .line 256
    :goto_ff
    :try_start_ff
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 257
    .line 258
    .line 259
    move-result v0

    .line 260
    if-eqz v0, :cond_110

    .line 261
    .line 262
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    check-cast v0, Lx1/z;

    .line 267
    .line 268
    iget-object v0, v0, Lx1/z;->g:Lx1/v;
    :try_end_10d
    .catchall {:try_start_ff .. :try_end_10d} :catchall_136

    .line 269
    .line 270
    goto :goto_ff

    .line 271
    :goto_10e
    move-object v8, v1

    .line 272
    goto :goto_134

    .line 273
    :cond_110
    move-object v4, p1

    .line 274
    move-object v8, v1

    .line 275
    :try_start_112
    invoke-static/range {v4 .. v9}, Lx1/w;->y(Lx1/b0;Lq2/z;ILjava/net/URL;Ljava/io/FilterOutputStream;Z)V
    :try_end_115
    .catchall {:try_start_112 .. :try_end_115} :catchall_132

    .line 276
    .line 277
    .line 278
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 279
    .line 280
    .line 281
    iget-object p0, v5, Lq2/z;->b:Ljava/lang/StringBuilder;

    .line 282
    .line 283
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object p0

    .line 287
    const-string p1, "contents.toString()"

    .line 288
    .line 289
    invoke-static {p1, p0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    sget-object p1, Lx1/e0;->a:Lx1/e0;

    .line 293
    .line 294
    iget-object v0, v5, Lq2/z;->a:Ljava/lang/String;

    .line 295
    .line 296
    invoke-static {p1, v0, p0}, Lo3/a;->k(Lx1/e0;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    new-instance p0, Ljava/lang/StringBuilder;

    .line 300
    .line 301
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    .line 303
    .line 304
    iput-object p0, v5, Lq2/z;->b:Ljava/lang/StringBuilder;

    .line 305
    .line 306
    return-void

    .line 307
    :catchall_132
    move-exception v0

    .line 308
    :goto_133
    move-object p0, v0

    .line 309
    :goto_134
    move-object v3, v8

    .line 310
    goto :goto_13e

    .line 311
    :catchall_136
    move-exception v0

    .line 312
    move-object p0, v0

    .line 313
    goto :goto_10e

    .line 314
    :catchall_139
    move-exception v0

    .line 315
    move-object v8, v1

    .line 316
    goto :goto_133

    .line 317
    :catchall_13c
    move-exception v0

    .line 318
    move-object p0, v0

    .line 319
    :goto_13e
    if-eqz v3, :cond_143

    .line 320
    .line 321
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 322
    .line 323
    .line 324
    :cond_143
    throw p0

    .line 325
    :cond_144
    iget-object p0, v5, Lq2/z;->b:Ljava/lang/StringBuilder;

    .line 326
    .line 327
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object p0

    .line 331
    const-string p1, "contents.toString()"

    .line 332
    .line 333
    invoke-static {p1, p0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 334
    .line 335
    .line 336
    sget-object p1, Lx1/e0;->a:Lx1/e0;

    .line 337
    .line 338
    iget-object v0, v5, Lq2/z;->a:Ljava/lang/String;

    .line 339
    .line 340
    invoke-static {p1, v0, p0}, Lo3/a;->k(Lx1/e0;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    new-instance p0, Ljava/lang/StringBuilder;

    .line 344
    .line 345
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 346
    .line 347
    .line 348
    iput-object p0, v5, Lq2/z;->b:Ljava/lang/StringBuilder;

    .line 349
    .line 350
    return-void
.end method

.method public static C(Lx1/b0;)Ljava/net/HttpURLConnection;
    .registers 8

    .line 1
    const-string v0, "could not construct request body"

    .line 2
    .line 3
    const-string v1, "requests"

    .line 4
    .line 5
    invoke-static {v1, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lx1/b0;->c:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_50

    .line 19
    .line 20
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Lx1/z;

    .line 25
    .line 26
    sget-object v4, Lx1/d0;->a:Lx1/d0;

    .line 27
    .line 28
    iget-object v5, v3, Lx1/z;->h:Lx1/d0;

    .line 29
    .line 30
    if-ne v4, v5, :cond_d

    .line 31
    .line 32
    iget-object v4, v3, Lx1/z;->d:Landroid/os/Bundle;

    .line 33
    .line 34
    const-string v5, "fields"

    .line 35
    .line 36
    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-static {v4}, Lq2/g0;->B(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_d

    .line 45
    .line 46
    sget-object v4, Lq2/z;->c:Lo3/a;

    .line 47
    .line 48
    new-instance v4, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v5, "GET requests for /"

    .line 51
    .line 52
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v3, v3, Lx1/z;->b:Ljava/lang/String;

    .line 56
    .line 57
    if-nez v3, :cond_3c

    .line 58
    .line 59
    const-string v3, ""

    .line 60
    .line 61
    :cond_3c
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v3, " should contain an explicit \"fields\" parameter."

    .line 65
    .line 66
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    sget-object v4, Lx1/e0;->e:Lx1/e0;

    .line 74
    .line 75
    const-string v5, "Request"

    .line 76
    .line 77
    invoke-static {v4, v5, v3}, Lo3/a;->k(Lx1/e0;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto :goto_d

    .line 81
    :cond_50
    :try_start_50
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    const/4 v3, 0x0

    .line 86
    const/4 v4, 0x1

    .line 87
    if-ne v2, v4, :cond_68

    .line 88
    .line 89
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    check-cast v1, Lx1/z;

    .line 94
    .line 95
    new-instance v2, Ljava/net/URL;

    .line 96
    .line 97
    invoke-virtual {v1}, Lx1/z;->g()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    goto :goto_7f

    .line 105
    :cond_68
    new-instance v2, Ljava/net/URL;

    .line 106
    .line 107
    const-string v1, "https://graph.%s"

    .line 108
    .line 109
    invoke-static {}, Lx1/r;->e()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    new-array v6, v4, [Ljava/lang/Object;

    .line 114
    .line 115
    aput-object v5, v6, v3

    .line 116
    .line 117
    invoke-static {v6, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_7f
    .catch Ljava/net/MalformedURLException; {:try_start_50 .. :try_end_7f} :catch_9e

    .line 126
    .line 127
    .line 128
    :goto_7f
    const/4 v1, 0x0

    .line 129
    :try_start_80
    invoke-static {v2}, Lx1/w;->k(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-static {v1, p0}, Lx1/w;->B(Ljava/net/HttpURLConnection;Lx1/b0;)V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_87} :catch_8a
    .catch Lorg/json/JSONException; {:try_start_80 .. :try_end_87} :catch_88

    .line 134
    .line 135
    .line 136
    return-object v1

    .line 137
    :catch_88
    move-exception p0

    .line 138
    goto :goto_8c

    .line 139
    :catch_8a
    move-exception p0

    .line 140
    goto :goto_95

    .line 141
    :goto_8c
    invoke-static {v1}, Lq2/g0;->k(Ljava/net/HttpURLConnection;)V

    .line 142
    .line 143
    .line 144
    new-instance v1, Lx1/l;

    .line 145
    .line 146
    invoke-direct {v1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    .line 148
    .line 149
    throw v1

    .line 150
    :goto_95
    invoke-static {v1}, Lq2/g0;->k(Ljava/net/HttpURLConnection;)V

    .line 151
    .line 152
    .line 153
    new-instance v1, Lx1/l;

    .line 154
    .line 155
    invoke-direct {v1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    .line 157
    .line 158
    throw v1

    .line 159
    :catch_9e
    move-exception p0

    .line 160
    new-instance v0, Lx1/l;

    .line 161
    .line 162
    const-string v1, "could not construct URL for request"

    .line 163
    .line 164
    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    .line 166
    .line 167
    throw v0
.end method

.method public static final b(Lorg/json/JSONObject;)Lc5/h;
    .registers 10

    .line 1
    const-string v0, "permissions"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "data"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v2, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    const/4 v4, 0x0

    .line 33
    :goto_20
    if-ge v4, v3, :cond_83

    .line 34
    .line 35
    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    const-string v6, "permission"

    .line 40
    .line 41
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    invoke-static {v6, v7}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    if-nez v6, :cond_36

    .line 53
    .line 54
    goto :goto_80

    .line 55
    :cond_36
    const-string v6, "installed"

    .line 56
    .line 57
    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    if-eqz v6, :cond_3f

    .line 62
    .line 63
    goto :goto_80

    .line 64
    :cond_3f
    const-string v6, "status"

    .line 65
    .line 66
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    if-eqz v5, :cond_80

    .line 71
    .line 72
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    const v8, -0x4e0958db

    .line 77
    .line 78
    .line 79
    if-eq v6, v8, :cond_74

    .line 80
    .line 81
    const v8, 0x10b4f6bb

    .line 82
    .line 83
    .line 84
    if-eq v6, v8, :cond_68

    .line 85
    .line 86
    const v8, 0x21ddfc2e

    .line 87
    .line 88
    .line 89
    if-eq v6, v8, :cond_5b

    .line 90
    .line 91
    goto :goto_80

    .line 92
    :cond_5b
    const-string v6, "declined"

    .line 93
    .line 94
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    if-nez v5, :cond_64

    .line 99
    .line 100
    goto :goto_80

    .line 101
    :cond_64
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    goto :goto_80

    .line 105
    :cond_68
    const-string v6, "granted"

    .line 106
    .line 107
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    if-eqz v5, :cond_80

    .line 112
    .line 113
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    goto :goto_80

    .line 117
    :cond_74
    const-string v6, "expired"

    .line 118
    .line 119
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    if-nez v5, :cond_7d

    .line 124
    .line 125
    goto :goto_80

    .line 126
    :cond_7d
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    :cond_80
    :goto_80
    add-int/lit8 v4, v4, 0x1

    .line 130
    .line 131
    goto :goto_20

    .line 132
    :cond_83
    new-instance p0, Lc5/h;

    .line 133
    .line 134
    const/16 v3, 0x13

    .line 135
    .line 136
    invoke-direct {p0, v3}, Lc5/h;-><init>(I)V

    .line 137
    .line 138
    .line 139
    iput-object v0, p0, Lc5/h;->b:Ljava/lang/Object;

    .line 140
    .line 141
    iput-object v1, p0, Lc5/h;->c:Ljava/lang/Object;

    .line 142
    .line 143
    iput-object v2, p0, Lc5/h;->d:Ljava/lang/Object;

    .line 144
    .line 145
    return-object p0
.end method

.method public static final c(Ly1/e;Ly1/b;)V
    .registers 10

    .line 1
    iget-object v0, p0, Ly1/e;->e:Ljava/lang/String;

    .line 2
    .line 3
    iget-boolean v1, p0, Ly1/e;->c:Z

    .line 4
    .line 5
    sget-object v2, Ly1/k;->c:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v2, Ly1/i;->a:Ly2/p;

    .line 8
    .line 9
    const-class v2, Ly1/i;

    .line 10
    .line 11
    invoke-static {v2}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_11

    .line 16
    .line 17
    goto :goto_27

    .line 18
    :cond_11
    :try_start_11
    const-string v3, "accessTokenAppId"

    .line 19
    .line 20
    invoke-static {v3, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    sget-object v3, Ly1/i;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 24
    .line 25
    new-instance v4, La2/i;

    .line 26
    .line 27
    const/16 v5, 0x16

    .line 28
    .line 29
    invoke-direct {v4, p1, v5, p0}, La2/i;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_23

    .line 33
    .line 34
    .line 35
    goto :goto_27

    .line 36
    :catchall_23
    move-exception v3

    .line 37
    invoke-static {v3, v2}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :goto_27
    sget-object v2, Lq2/o;->D:Lq2/o;

    .line 41
    .line 42
    invoke-static {v2}, Lq2/q;->b(Lq2/o;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    const/4 v3, 0x0

    .line 47
    const/4 v4, 0x1

    .line 48
    if-eqz v2, :cond_72

    .line 49
    .line 50
    invoke-static {}, Lm2/b;->a()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_72

    .line 55
    .line 56
    iget-object v2, p1, Ly1/b;->a:Ljava/lang/String;

    .line 57
    .line 58
    const-class v5, Lm2/b;

    .line 59
    .line 60
    invoke-static {v5}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    if-eqz v6, :cond_42

    .line 65
    .line 66
    goto :goto_72

    .line 67
    :cond_42
    :try_start_42
    sget-object v6, Lm2/b;->a:Lm2/b;

    .line 68
    .line 69
    invoke-static {v6}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v7
    :try_end_48
    .catchall {:try_start_42 .. :try_end_48} :catchall_6e

    .line 73
    if-eqz v7, :cond_4b

    .line 74
    .line 75
    goto :goto_72

    .line 76
    :cond_4b
    if-eqz v1, :cond_5c

    .line 77
    .line 78
    :try_start_4d
    sget-object v7, Lm2/b;->b:Ljava/util/Set;

    .line 79
    .line 80
    invoke-interface {v7, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v6
    :try_end_53
    .catchall {:try_start_4d .. :try_end_53} :catchall_57

    .line 84
    if-eqz v6, :cond_5c

    .line 85
    .line 86
    move v6, v4

    .line 87
    goto :goto_5d

    .line 88
    :catchall_57
    move-exception v2

    .line 89
    :try_start_58
    invoke-static {v2, v6}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    goto :goto_72

    .line 93
    :cond_5c
    move v6, v3

    .line 94
    :goto_5d
    if-eqz v1, :cond_61

    .line 95
    .line 96
    if-eqz v6, :cond_72

    .line 97
    .line 98
    :cond_61
    invoke-static {}, Lx1/r;->c()Ljava/util/concurrent/Executor;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    new-instance v7, Lf2/a;

    .line 103
    .line 104
    invoke-direct {v7, v2, p0, v4}, Lf2/a;-><init>(Ljava/lang/String;Ly1/e;I)V

    .line 105
    .line 106
    .line 107
    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_6d
    .catchall {:try_start_58 .. :try_end_6d} :catchall_6e

    .line 108
    .line 109
    .line 110
    goto :goto_72

    .line 111
    :catchall_6e
    move-exception v2

    .line 112
    invoke-static {v2, v5}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    :cond_72
    :goto_72
    sget-object v2, Lq2/o;->S:Lq2/o;

    .line 116
    .line 117
    invoke-static {v2}, Lq2/q;->b(Lq2/o;)Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-eqz v2, :cond_81

    .line 122
    .line 123
    sget-object v2, Lf2/d;->a:Lf2/d;

    .line 124
    .line 125
    iget-object v5, p1, Ly1/b;->a:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {v2, v5, p0}, Lf2/d;->d(Ljava/lang/String;Ly1/e;)V

    .line 128
    .line 129
    .line 130
    :cond_81
    sget-object v2, Lq2/o;->T:Lq2/o;

    .line 131
    .line 132
    invoke-static {v2}, Lq2/q;->b(Lq2/o;)Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-eqz v2, :cond_bd

    .line 137
    .line 138
    sget-object v2, Lg2/b;->a:Lg2/b;

    .line 139
    .line 140
    iget-object p1, p1, Ly1/b;->a:Ljava/lang/String;

    .line 141
    .line 142
    invoke-static {v2}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    if-eqz v5, :cond_94

    .line 147
    .line 148
    goto :goto_bd

    .line 149
    :cond_94
    :try_start_94
    sget-boolean v5, Lg2/b;->d:Z

    .line 150
    .line 151
    if-nez v5, :cond_9e

    .line 152
    .line 153
    invoke-static {}, Lg2/b;->a()V

    .line 154
    .line 155
    .line 156
    goto :goto_9e

    .line 157
    :catchall_9c
    move-exception p0

    .line 158
    goto :goto_ba

    .line 159
    :cond_9e
    :goto_9e
    sget-boolean v5, Lg2/b;->c:Z
    :try_end_a0
    .catchall {:try_start_94 .. :try_end_a0} :catchall_9c

    .line 160
    .line 161
    if-nez v5, :cond_a3

    .line 162
    .line 163
    goto :goto_bd

    .line 164
    :cond_a3
    const/4 v5, 0x0

    .line 165
    :try_start_a4
    iget-object p0, p0, Ly1/e;->a:Lorg/json/JSONObject;

    .line 166
    .line 167
    if-eqz p0, :cond_b6

    .line 168
    .line 169
    const-string v6, "_eventName"

    .line 170
    .line 171
    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v5
    :try_end_ae
    .catch Lorg/json/JSONException; {:try_start_a4 .. :try_end_ae} :catch_af
    .catchall {:try_start_a4 .. :try_end_ae} :catchall_9c

    .line 175
    goto :goto_b6

    .line 176
    :catch_af
    :try_start_af
    sget-object p0, Lg2/b;->b:Ljava/lang/String;

    .line 177
    .line 178
    const-string v6, "Failed to get event name from event."

    .line 179
    .line 180
    invoke-static {p0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    :cond_b6
    :goto_b6
    invoke-virtual {v2, p1, v5}, Lg2/b;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b9
    .catchall {:try_start_af .. :try_end_b9} :catchall_9c

    .line 184
    .line 185
    .line 186
    goto :goto_bd

    .line 187
    :goto_ba
    invoke-static {p0, v2}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    :cond_bd
    :goto_bd
    if-nez v1, :cond_f3

    .line 191
    .line 192
    const-class p0, Ly1/k;

    .line 193
    .line 194
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result p1

    .line 198
    if-eqz p1, :cond_c8

    .line 199
    .line 200
    goto :goto_cf

    .line 201
    :cond_c8
    :try_start_c8
    sget-boolean v3, Ly1/k;->g:Z
    :try_end_ca
    .catchall {:try_start_c8 .. :try_end_ca} :catchall_cb

    .line 202
    .line 203
    goto :goto_cf

    .line 204
    :catchall_cb
    move-exception p1

    .line 205
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    :goto_cf
    if-nez v3, :cond_f3

    .line 209
    .line 210
    const-string p1, "fb_mobile_activate_app"

    .line 211
    .line 212
    invoke-static {v0, p1}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result p1

    .line 216
    if-eqz p1, :cond_e8

    .line 217
    .line 218
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result p1

    .line 222
    if-eqz p1, :cond_e0

    .line 223
    .line 224
    goto :goto_f3

    .line 225
    :cond_e0
    :try_start_e0
    sput-boolean v4, Ly1/k;->g:Z
    :try_end_e2
    .catchall {:try_start_e0 .. :try_end_e2} :catchall_e3

    .line 226
    .line 227
    goto :goto_f3

    .line 228
    :catchall_e3
    move-exception p1

    .line 229
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    goto :goto_f3

    .line 233
    :cond_e8
    sget-object p0, Lq2/z;->c:Lo3/a;

    .line 234
    .line 235
    sget-object p0, Lx1/e0;->d:Lx1/e0;

    .line 236
    .line 237
    const-string p1, "AppEvents"

    .line 238
    .line 239
    const-string v0, "Warning: Please call AppEventsLogger.activateApp(...)from the long-lived activity\'s onResume() methodbefore logging other app events."

    .line 240
    .line 241
    invoke-static {p0, p1, v0}, Lo3/a;->i(Lx1/e0;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    :cond_f3
    :goto_f3
    return-void
.end method

.method public static final d(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 5

    .line 1
    sget v0, Ly2/r;->c:I

    .line 2
    .line 3
    new-instance v0, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "1_timestamp_ms"

    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 15
    .line 16
    .line 17
    const-string v1, "0_auth_logger_id"

    .line 18
    .line 19
    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string p0, "3_method"

    .line 23
    .line 24
    const-string v1, ""

    .line 25
    .line 26
    invoke-virtual {v0, p0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string p0, "2_result"

    .line 30
    .line 31
    invoke-virtual {v0, p0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string p0, "5_error_message"

    .line 35
    .line 36
    invoke-virtual {v0, p0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string p0, "4_error_code"

    .line 40
    .line 41
    invoke-virtual {v0, p0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string p0, "6_extras"

    .line 45
    .line 46
    invoke-virtual {v0, p0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-object v0
.end method

.method public static final e(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    .line 1
    sget-object v0, Lx1/z;->j:Ljava/lang/String;

    .line 2
    .line 3
    instance-of v0, p0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v0, :cond_9

    .line 6
    .line 7
    check-cast p0, Ljava/lang/String;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_9
    instance-of v0, p0, Ljava/lang/Boolean;

    .line 11
    .line 12
    if-nez v0, :cond_33

    .line 13
    .line 14
    instance-of v0, p0, Ljava/lang/Number;

    .line 15
    .line 16
    if-eqz v0, :cond_12

    .line 17
    .line 18
    goto :goto_33

    .line 19
    :cond_12
    instance-of v0, p0, Ljava/util/Date;

    .line 20
    .line 21
    if-eqz v0, :cond_2b

    .line 22
    .line 23
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 24
    .line 25
    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    .line 26
    .line 27
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 28
    .line 29
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 30
    .line 31
    .line 32
    check-cast p0, Ljava/util/Date;

    .line 33
    .line 34
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const-string v0, "iso8601DateFormat.format(value)"

    .line 39
    .line 40
    invoke-static {v0, p0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return-object p0

    .line 44
    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 45
    .line 46
    const-string v0, "Unsupported parameter type."

    .line 47
    .line 48
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p0

    .line 52
    :cond_33
    :goto_33
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0
.end method

.method public static g(Landroid/os/Bundle;Ly1/o;Z)Lr6/d;
    .registers 9

    .line 1
    invoke-static {}, Lk2/k;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "0"

    .line 6
    .line 7
    const-string v2, "1"

    .line 8
    .line 9
    if-eqz v0, :cond_c

    .line 10
    .line 11
    move-object v0, v2

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    move-object v0, v1

    .line 14
    :goto_d
    sget-object v3, Ly1/o;->b:Ljava/util/Map;

    .line 15
    .line 16
    const-string v3, "is_implicit_purchase_logging_enabled"

    .line 17
    .line 18
    invoke-static {v3, v0, p0, p1}, Ly1/g;->c(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ly1/o;)Lr6/d;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v3, "fb_iap_product_id"

    .line 23
    .line 24
    invoke-static {v3, p0, p1}, Ly1/g;->o(Ljava/lang/String;Landroid/os/Bundle;Ly1/o;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    instance-of v4, v3, Ljava/lang/String;

    .line 29
    .line 30
    const/4 v5, 0x0

    .line 31
    if-eqz v4, :cond_23

    .line 32
    .line 33
    check-cast v3, Ljava/lang/String;

    .line 34
    .line 35
    goto :goto_24

    .line 36
    :cond_23
    move-object v3, v5

    .line 37
    :goto_24
    if-nez p2, :cond_46

    .line 38
    .line 39
    const-string p2, "fb_content_id"

    .line 40
    .line 41
    if-eqz p0, :cond_2e

    .line 42
    .line 43
    invoke-virtual {p0, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    :cond_2e
    if-nez v5, :cond_46

    .line 48
    .line 49
    if-eqz v3, :cond_46

    .line 50
    .line 51
    invoke-static {p2, v3, p0, p1}, Ly1/g;->c(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ly1/o;)Lr6/d;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    iget-object p1, p0, Lr6/d;->a:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast p1, Landroid/os/Bundle;

    .line 58
    .line 59
    iget-object p0, p0, Lr6/d;->b:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast p0, Ly1/o;

    .line 62
    .line 63
    const-string p2, "android_dynamic_ads_content_id"

    .line 64
    .line 65
    const-string v0, "client_manual"

    .line 66
    .line 67
    invoke-static {p2, v0, p1, p0}, Ly1/g;->c(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ly1/o;)Lr6/d;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    :cond_46
    iget-object p0, v0, Lr6/d;->a:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast p0, Landroid/os/Bundle;

    .line 74
    .line 75
    iget-object p1, v0, Lr6/d;->b:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast p1, Ly1/o;

    .line 78
    .line 79
    invoke-static {}, Lx1/j0;->c()Z

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    if-eqz p2, :cond_55

    .line 84
    .line 85
    move-object v1, v2

    .line 86
    :cond_55
    const-string p2, "is_autolog_app_events_enabled"

    .line 87
    .line 88
    invoke-static {p2, v1, p0, p1}, Ly1/g;->c(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ly1/o;)Lr6/d;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    iget-object p1, p0, Lr6/d;->a:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast p1, Landroid/os/Bundle;

    .line 95
    .line 96
    iget-object p0, p0, Lr6/d;->b:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast p0, Ly1/o;

    .line 99
    .line 100
    new-instance p2, Lr6/d;

    .line 101
    .line 102
    invoke-direct {p2, p1, p0}, Lr6/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    return-object p2
.end method

.method public static h(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 5

    .line 1
    const-string v0, "protocols"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    check-cast p0, Ljava/lang/Iterable;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :cond_10
    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_25

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    move-object v2, v1

    .line 28
    check-cast v2, Lr7/s;

    .line 29
    .line 30
    sget-object v3, Lr7/s;->b:Lr7/s;

    .line 31
    .line 32
    if-eq v2, v3, :cond_10

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_10

    .line 38
    :cond_25
    new-instance p0, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-static {v0}, Ls6/i;->n(Ljava/lang/Iterable;)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    const/4 v2, 0x0

    .line 52
    :goto_33
    if-ge v2, v1, :cond_43

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    check-cast v3, Lr7/s;

    .line 61
    .line 62
    iget-object v3, v3, Lr7/s;->a:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    goto :goto_33

    .line 68
    :cond_43
    return-object p0
.end method

.method public static i(Ljava/util/List;)[B
    .registers 6

    .line 1
    const-string v0, "protocols"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Le8/g;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Lx1/w;->h(Ljava/util/List;)Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_13
    if-ge v2, v1, :cond_28

    .line 21
    .line 22
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    check-cast v3, Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    invoke-virtual {v0, v4}, Le8/g;->z(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v3}, Le8/g;->E(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    goto :goto_13

    .line 41
    :cond_28
    iget-wide v1, v0, Le8/g;->b:J

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Le8/g;->s(J)[B

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0
.end method

.method public static k(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .registers 6

    .line 1
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "null cannot be cast to non-null type java.net.HttpURLConnection"

    .line 6
    .line 7
    invoke-static {v0, p0}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    check-cast p0, Ljava/net/HttpURLConnection;

    .line 11
    .line 12
    sget-object v0, Lx1/z;->l:Ljava/lang/String;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-nez v0, :cond_28

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    new-array v2, v0, [Ljava/lang/Object;

    .line 19
    .line 20
    const-string v3, "FBAndroidSDK"

    .line 21
    .line 22
    aput-object v3, v2, v1

    .line 23
    .line 24
    const-string v3, "18.1.3"

    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    aput-object v3, v2, v4

    .line 28
    .line 29
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v2, "%s.%s"

    .line 34
    .line 35
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lx1/z;->l:Ljava/lang/String;

    .line 40
    .line 41
    :cond_28
    sget-object v0, Lx1/z;->l:Ljava/lang/String;

    .line 42
    .line 43
    const-string v2, "User-Agent"

    .line 44
    .line 45
    invoke-virtual {p0, v2, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v2, "Accept-Language"

    .line 57
    .line 58
    invoke-virtual {p0, v2, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 62
    .line 63
    .line 64
    return-object p0
.end method

.method public static l(Lx1/b0;)Ljava/util/ArrayList;
    .registers 6

    .line 1
    const-string v0, "requests"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lq2/g;->i(Lx1/b0;)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    :try_start_9
    invoke-static {p0}, Lx1/w;->C(Lx1/b0;)Ljava/net/HttpURLConnection;

    .line 11
    .line 12
    .line 13
    move-result-object v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_d} :catch_11
    .catchall {:try_start_9 .. :try_end_d} :catchall_f

    .line 14
    move-object v2, v0

    .line 15
    goto :goto_14

    .line 16
    :catchall_f
    move-exception p0

    .line 17
    goto :goto_31

    .line 18
    :catch_11
    move-exception v1

    .line 19
    move-object v2, v1

    .line 20
    move-object v1, v0

    .line 21
    :goto_14
    if-eqz v1, :cond_1e

    .line 22
    .line 23
    :try_start_16
    invoke-static {v1, p0}, Lx1/w;->m(Ljava/net/HttpURLConnection;Lx1/b0;)Ljava/util/ArrayList;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    goto :goto_2d

    .line 28
    :catchall_1b
    move-exception p0

    .line 29
    move-object v0, v1

    .line 30
    goto :goto_31

    .line 31
    :cond_1e
    iget-object v3, p0, Lx1/b0;->c:Ljava/util/ArrayList;

    .line 32
    .line 33
    new-instance v4, Lx1/l;

    .line 34
    .line 35
    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v3, v0, v4}, Lk2/e;->b(Ljava/util/AbstractList;Ljava/net/HttpURLConnection;Lx1/l;)Ljava/util/ArrayList;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {p0, v0}, Lx1/w;->z(Lx1/b0;Ljava/util/ArrayList;)V
    :try_end_2c
    .catchall {:try_start_16 .. :try_end_2c} :catchall_1b

    .line 43
    .line 44
    .line 45
    move-object p0, v0

    .line 46
    :goto_2d
    invoke-static {v1}, Lq2/g0;->k(Ljava/net/HttpURLConnection;)V

    .line 47
    .line 48
    .line 49
    return-object p0

    .line 50
    :goto_31
    invoke-static {v0}, Lq2/g0;->k(Ljava/net/HttpURLConnection;)V

    .line 51
    .line 52
    .line 53
    throw p0
.end method

.method public static m(Ljava/net/HttpURLConnection;Lx1/b0;)Ljava/util/ArrayList;
    .registers 10

    .line 1
    const-string v0, "requests"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "Response <Error>: %s"

    .line 7
    .line 8
    const-string v1, "Response"

    .line 9
    .line 10
    sget-object v2, Lx1/e0;->a:Lx1/e0;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x1

    .line 14
    const/4 v5, 0x0

    .line 15
    :try_start_e
    invoke-static {}, Lx1/r;->g()Z

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    if-eqz v6, :cond_34

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    const/16 v7, 0x190

    .line 26
    .line 27
    if-lt v6, v7, :cond_28

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    goto :goto_2c

    .line 34
    :catchall_21
    move-exception p0

    .line 35
    goto/16 :goto_f6

    .line 36
    .line 37
    :catch_24
    move-exception v6

    .line 38
    goto :goto_41

    .line 39
    :catch_26
    move-exception v6

    .line 40
    goto :goto_54

    .line 41
    :cond_28
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    :goto_2c
    invoke-static {v5, p0, p1}, Lk2/e;->e(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Lx1/b0;)Ljava/util/ArrayList;

    .line 46
    .line 47
    .line 48
    move-result-object v0
    :try_end_30
    .catch Lx1/l; {:try_start_e .. :try_end_30} :catch_26
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_30} :catch_24
    .catchall {:try_start_e .. :try_end_30} :catchall_21

    .line 49
    :goto_30
    invoke-static {v5}, Lq2/g0;->d(Ljava/io/Closeable;)V

    .line 50
    .line 51
    .line 52
    goto :goto_62

    .line 53
    :cond_34
    :try_start_34
    const-string v6, "GraphRequest can\'t be used when Facebook SDK isn\'t fully initialized"

    .line 54
    .line 55
    const-string v7, "x1.c0"

    .line 56
    .line 57
    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    new-instance v7, Lx1/l;

    .line 61
    .line 62
    invoke-direct {v7, v6}, Lx1/l;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v7
    :try_end_41
    .catch Lx1/l; {:try_start_34 .. :try_end_41} :catch_26
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_41} :catch_24
    .catchall {:try_start_34 .. :try_end_41} :catchall_21

    .line 66
    :goto_41
    :try_start_41
    sget-object v7, Lq2/z;->c:Lo3/a;

    .line 67
    .line 68
    new-array v7, v4, [Ljava/lang/Object;

    .line 69
    .line 70
    aput-object v6, v7, v3

    .line 71
    .line 72
    invoke-static {v2, v1, v0, v7}, Lo3/a;->j(Lx1/e0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    new-instance v0, Lx1/l;

    .line 76
    .line 77
    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    invoke-static {p1, p0, v0}, Lk2/e;->b(Ljava/util/AbstractList;Ljava/net/HttpURLConnection;Lx1/l;)Ljava/util/ArrayList;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    goto :goto_30

    .line 85
    :goto_54
    sget-object v7, Lq2/z;->c:Lo3/a;

    .line 86
    .line 87
    new-array v7, v4, [Ljava/lang/Object;

    .line 88
    .line 89
    aput-object v6, v7, v3

    .line 90
    .line 91
    invoke-static {v2, v1, v0, v7}, Lo3/a;->j(Lx1/e0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    invoke-static {p1, p0, v6}, Lk2/e;->b(Ljava/util/AbstractList;Ljava/net/HttpURLConnection;Lx1/l;)Ljava/util/ArrayList;

    .line 95
    .line 96
    .line 97
    move-result-object v0
    :try_end_61
    .catchall {:try_start_41 .. :try_end_61} :catchall_21

    .line 98
    goto :goto_30

    .line 99
    :goto_62
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 100
    .line 101
    .line 102
    iget-object p0, p1, Lx1/b0;->c:Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-ne p0, v1, :cond_d1

    .line 113
    .line 114
    invoke-static {p1, v0}, Lx1/w;->z(Lx1/b0;Ljava/util/ArrayList;)V

    .line 115
    .line 116
    .line 117
    sget-object p0, Lx1/e;->f:Lo3/a;

    .line 118
    .line 119
    invoke-virtual {p0}, Lo3/a;->d()Lx1/e;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    iget-object p1, p0, Lx1/e;->c:Lx1/a;

    .line 124
    .line 125
    if-nez p1, :cond_7f

    .line 126
    .line 127
    goto :goto_d0

    .line 128
    :cond_7f
    new-instance v1, Ljava/util/Date;

    .line 129
    .line 130
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    .line 134
    .line 135
    .line 136
    move-result-wide v1

    .line 137
    iget-object v3, p1, Lx1/a;->f:Lx1/f;

    .line 138
    .line 139
    iget-boolean v3, v3, Lx1/f;->a:Z

    .line 140
    .line 141
    if-eqz v3, :cond_d0

    .line 142
    .line 143
    iget-object v3, p0, Lx1/e;->e:Ljava/util/Date;

    .line 144
    .line 145
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    .line 146
    .line 147
    .line 148
    move-result-wide v3

    .line 149
    sub-long v3, v1, v3

    .line 150
    .line 151
    const-wide/32 v5, 0x36ee80

    .line 152
    .line 153
    .line 154
    cmp-long v3, v3, v5

    .line 155
    .line 156
    if-lez v3, :cond_d0

    .line 157
    .line 158
    iget-object p1, p1, Lx1/a;->g:Ljava/util/Date;

    .line 159
    .line 160
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 161
    .line 162
    .line 163
    move-result-wide v3

    .line 164
    sub-long/2addr v1, v3

    .line 165
    const-wide/32 v3, 0x5265c00

    .line 166
    .line 167
    .line 168
    cmp-long p1, v1, v3

    .line 169
    .line 170
    if-lez p1, :cond_d0

    .line 171
    .line 172
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-static {p1, v1}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    if-eqz p1, :cond_bd

    .line 185
    .line 186
    invoke-virtual {p0}, Lx1/e;->a()V

    .line 187
    .line 188
    .line 189
    goto :goto_d0

    .line 190
    :cond_bd
    new-instance p1, Landroid/os/Handler;

    .line 191
    .line 192
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 197
    .line 198
    .line 199
    new-instance v1, La2/g;

    .line 200
    .line 201
    const/16 v2, 0xf

    .line 202
    .line 203
    invoke-direct {v1, v2, p0}, La2/g;-><init>(ILjava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 207
    .line 208
    .line 209
    :cond_d0
    :goto_d0
    return-object v0

    .line 210
    :cond_d1
    new-instance p1, Lx1/l;

    .line 211
    .line 212
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 213
    .line 214
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    const/4 v2, 0x2

    .line 227
    new-array v5, v2, [Ljava/lang/Object;

    .line 228
    .line 229
    aput-object v0, v5, v3

    .line 230
    .line 231
    aput-object p0, v5, v4

    .line 232
    .line 233
    invoke-static {v5, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    const-string v0, "Received %d responses while expecting %d"

    .line 238
    .line 239
    invoke-static {v1, v0, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p0

    .line 243
    invoke-direct {p1, p0}, Lx1/l;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    throw p1

    .line 247
    :goto_f6
    invoke-static {v5}, Lq2/g0;->d(Ljava/io/Closeable;)V

    .line 248
    .line 249
    .line 250
    throw p0
.end method

.method public static n()I
    .registers 2

    .line 1
    invoke-static {}, Ly1/k;->c()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    :try_start_5
    const-class v1, Ly1/k;

    .line 7
    .line 8
    invoke-static {v1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_f

    .line 12
    xor-int/lit8 v1, v1, 0x1

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return v1

    .line 16
    :catchall_f
    move-exception v1

    .line 17
    monitor-exit v0

    .line 18
    throw v1
.end method

.method public static o()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Lx1/w;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, v1}, Lx1/w;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "com.facebook.sdk.appEventPreferences"

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v4, "is_referrer_updated"

    .line 19
    .line 20
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_2d

    .line 25
    .line 26
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v1}, Lcom/android/installreferrer/api/InstallReferrerClient;->newBuilder(Landroid/content/Context;)Lcom/android/installreferrer/api/InstallReferrerClient$Builder;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lcom/android/installreferrer/api/InstallReferrerClient$Builder;->build()Lcom/android/installreferrer/api/InstallReferrerClient;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    new-instance v4, Lk1/h;

    .line 39
    .line 40
    invoke-direct {v4, v1, v0}, Lk1/h;-><init>(Lcom/android/installreferrer/api/InstallReferrerClient;Lx1/w;)V

    .line 41
    .line 42
    .line 43
    :try_start_2a
    invoke-virtual {v1, v4}, Lcom/android/installreferrer/api/InstallReferrerClient;->startConnection(Lcom/android/installreferrer/api/InstallReferrerStateListener;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_2d

    .line 44
    .line 45
    .line 46
    :catch_2d
    :cond_2d
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const-string v1, "install_referrer"

    .line 55
    .line 56
    const/4 v2, 0x0

    .line 57
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    return-object v0
.end method

.method public static q()V
    .registers 10

    .line 1
    invoke-static {}, Ly1/k;->c()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    monitor-enter v1

    .line 6
    :try_start_5
    invoke-static {}, Ly1/k;->b()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 7
    .line 8
    .line 9
    move-result-object v0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_44

    .line 10
    if-eqz v0, :cond_d

    .line 11
    .line 12
    monitor-exit v1

    .line 13
    return-void

    .line 14
    :cond_d
    :try_start_d
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-direct {v0, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    .line 18
    .line 19
    .line 20
    const-class v2, Ly1/k;

    .line 21
    .line 22
    invoke-static {v2}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v3
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_44

    .line 26
    if-eqz v3, :cond_1c

    .line 27
    .line 28
    goto :goto_23

    .line 29
    :cond_1c
    :try_start_1c
    sput-object v0, Ly1/k;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :try_end_1e
    .catchall {:try_start_1c .. :try_end_1e} :catchall_1f

    .line 30
    .line 31
    goto :goto_23

    .line 32
    :catchall_1f
    move-exception v0

    .line 33
    :try_start_20
    invoke-static {v0, v2}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_44

    .line 34
    .line 35
    .line 36
    :goto_23
    monitor-exit v1

    .line 37
    new-instance v4, Li2/c;

    .line 38
    .line 39
    const/16 v0, 0xe

    .line 40
    .line 41
    invoke-direct {v4, v0}, Li2/c;-><init>(I)V

    .line 42
    .line 43
    .line 44
    invoke-static {}, Ly1/k;->b()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    if-eqz v3, :cond_3c

    .line 49
    .line 50
    const-wide/32 v7, 0x15180

    .line 51
    .line 52
    .line 53
    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 54
    .line 55
    const-wide/16 v5, 0x0

    .line 56
    .line 57
    invoke-virtual/range {v3 .. v9}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_3c
    const-string v0, "Required value was null."

    .line 62
    .line 63
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 64
    .line 65
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v1

    .line 69
    :catchall_44
    move-exception v0

    .line 70
    monitor-exit v1

    .line 71
    throw v0
.end method

.method public static r()Z
    .registers 2

    .line 1
    const-string v0, "java.vm.name"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "Dalvik"

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public static s(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    instance-of v0, p0, Landroid/graphics/Bitmap;

    .line 2
    .line 3
    if-nez v0, :cond_17

    .line 4
    .line 5
    instance-of v0, p0, [B

    .line 6
    .line 7
    if-nez v0, :cond_17

    .line 8
    .line 9
    instance-of v0, p0, Landroid/net/Uri;

    .line 10
    .line 11
    if-nez v0, :cond_17

    .line 12
    .line 13
    instance-of v0, p0, Landroid/os/ParcelFileDescriptor;

    .line 14
    .line 15
    if-nez v0, :cond_17

    .line 16
    .line 17
    instance-of p0, p0, Lx1/y;

    .line 18
    .line 19
    if-eqz p0, :cond_15

    .line 20
    .line 21
    goto :goto_17

    .line 22
    :cond_15
    const/4 p0, 0x0

    .line 23
    return p0

    .line 24
    :cond_17
    :goto_17
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method public static t(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    instance-of v0, p0, Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_13

    .line 4
    .line 5
    instance-of v0, p0, Ljava/lang/Boolean;

    .line 6
    .line 7
    if-nez v0, :cond_13

    .line 8
    .line 9
    instance-of v0, p0, Ljava/lang/Number;

    .line 10
    .line 11
    if-nez v0, :cond_13

    .line 12
    .line 13
    instance-of p0, p0, Ljava/util/Date;

    .line 14
    .line 15
    if-eqz p0, :cond_11

    .line 16
    .line 17
    goto :goto_13

    .line 18
    :cond_11
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    :cond_13
    :goto_13
    const/4 p0, 0x1

    .line 21
    return p0
.end method

.method public static u(Lx1/a;Ljava/lang/String;Lx1/v;)Lx1/z;
    .registers 9

    .line 1
    new-instance v0, Lx1/z;

    .line 2
    .line 3
    const/4 v3, 0x0

    .line 4
    const/4 v4, 0x0

    .line 5
    move-object v1, p0

    .line 6
    move-object v2, p1

    .line 7
    move-object v5, p2

    .line 8
    invoke-direct/range {v0 .. v5}, Lx1/z;-><init>(Lx1/a;Ljava/lang/String;Landroid/os/Bundle;Lx1/d0;Lx1/v;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static v(Lx1/a;Ljava/lang/String;Lorg/json/JSONObject;Lx1/v;)Lx1/z;
    .registers 10

    .line 1
    new-instance v0, Lx1/z;

    .line 2
    .line 3
    const/4 v3, 0x0

    .line 4
    sget-object v4, Lx1/d0;->b:Lx1/d0;

    .line 5
    .line 6
    move-object v1, p0

    .line 7
    move-object v2, p1

    .line 8
    move-object v5, p3

    .line 9
    invoke-direct/range {v0 .. v5}, Lx1/z;-><init>(Lx1/a;Ljava/lang/String;Landroid/os/Bundle;Lx1/d0;Lx1/v;)V

    .line 10
    .line 11
    .line 12
    iput-object p2, v0, Lx1/z;->c:Lorg/json/JSONObject;

    .line 13
    .line 14
    return-object v0
.end method

.method public static w(Lorg/json/JSONObject;Ljava/lang/String;Lx1/x;)V
    .registers 10

    .line 1
    sget-object v0, Lx1/z;->k:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_17

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "matcher.group(1)"

    .line 19
    .line 20
    invoke-static {v1, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    goto :goto_18

    .line 24
    :cond_17
    move-object v0, p1

    .line 25
    :goto_18
    const-string v1, "me/"

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-static {v0, v1, v3}, Lk7/o;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_2c

    .line 33
    .line 34
    const-string v1, "/me/"

    .line 35
    .line 36
    invoke-static {v0, v1, v3}, Lk7/o;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_2a

    .line 41
    .line 42
    goto :goto_2c

    .line 43
    :cond_2a
    move p1, v3

    .line 44
    goto :goto_42

    .line 45
    :cond_2c
    :goto_2c
    const-string v0, ":"

    .line 46
    .line 47
    const/4 v1, 0x6

    .line 48
    invoke-static {p1, v0, v3, v1}, Lk7/g;->B(Ljava/lang/CharSequence;Ljava/lang/String;II)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    const-string v4, "?"

    .line 53
    .line 54
    invoke-static {p1, v4, v3, v1}, Lk7/g;->B(Ljava/lang/CharSequence;Ljava/lang/String;II)I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    const/4 v1, 0x3

    .line 59
    if-le v0, v1, :cond_2a

    .line 60
    .line 61
    const/4 v1, -0x1

    .line 62
    if-eq p1, v1, :cond_41

    .line 63
    .line 64
    if-ge v0, p1, :cond_2a

    .line 65
    .line 66
    :cond_41
    move p1, v2

    .line 67
    :goto_42
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    :goto_46
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_71

    .line 76
    .line 77
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    if-eqz p1, :cond_62

    .line 88
    .line 89
    const-string v5, "image"

    .line 90
    .line 91
    invoke-static {v1, v5}, Lk7/o;->q(Ljava/lang/String;Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    if-eqz v5, :cond_62

    .line 96
    .line 97
    move v5, v2

    .line 98
    goto :goto_63

    .line 99
    :cond_62
    move v5, v3

    .line 100
    :goto_63
    const-string v6, "key"

    .line 101
    .line 102
    invoke-static {v6, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    const-string v6, "value"

    .line 106
    .line 107
    invoke-static {v6, v4}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    invoke-static {v1, v4, p2, v5}, Lx1/w;->x(Ljava/lang/String;Ljava/lang/Object;Lx1/x;Z)V

    .line 111
    .line 112
    .line 113
    goto :goto_46

    .line 114
    :cond_71
    return-void
.end method

.method public static x(Ljava/lang/String;Ljava/lang/Object;Lx1/x;Z)V
    .registers 12

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lorg/json/JSONObject;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x2

    .line 14
    if-eqz v1, :cond_7f

    .line 15
    .line 16
    check-cast p1, Lorg/json/JSONObject;

    .line 17
    .line 18
    if-eqz p3, :cond_40

    .line 19
    .line 20
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_b7

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/lang/String;

    .line 35
    .line 36
    new-array v5, v4, [Ljava/lang/Object;

    .line 37
    .line 38
    aput-object p0, v5, v3

    .line 39
    .line 40
    aput-object v1, v5, v2

    .line 41
    .line 42
    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    const-string v6, "%s[%s]"

    .line 47
    .line 48
    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const-string v6, "jsonObject.opt(propertyName)"

    .line 57
    .line 58
    invoke-static {v6, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-static {v5, v1, p2, p3}, Lx1/w;->x(Ljava/lang/String;Ljava/lang/Object;Lx1/x;Z)V

    .line 62
    .line 63
    .line 64
    goto :goto_17

    .line 65
    :cond_40
    const-string v0, "id"

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_55

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    const-string v0, "jsonObject.optString(\"id\")"

    .line 78
    .line 79
    invoke-static {v0, p1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    invoke-static {p0, p1, p2, p3}, Lx1/w;->x(Ljava/lang/String;Ljava/lang/Object;Lx1/x;Z)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_55
    const-string v0, "url"

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_6a

    .line 93
    .line 94
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    const-string v0, "jsonObject.optString(\"url\")"

    .line 99
    .line 100
    invoke-static {v0, p1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    invoke-static {p0, p1, p2, p3}, Lx1/w;->x(Ljava/lang/String;Ljava/lang/Object;Lx1/x;Z)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_6a
    const-string v0, "fbsdk:create_object"

    .line 108
    .line 109
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_b7

    .line 114
    .line 115
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    const-string v0, "jsonObject.toString()"

    .line 120
    .line 121
    invoke-static {v0, p1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    invoke-static {p0, p1, p2, p3}, Lx1/w;->x(Ljava/lang/String;Ljava/lang/Object;Lx1/x;Z)V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :cond_7f
    const-class v1, Lorg/json/JSONArray;

    .line 129
    .line 130
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-eqz v1, :cond_b8

    .line 135
    .line 136
    check-cast p1, Lorg/json/JSONArray;

    .line 137
    .line 138
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    move v1, v3

    .line 143
    :goto_8e
    if-ge v1, v0, :cond_b7

    .line 144
    .line 145
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 146
    .line 147
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    new-array v7, v4, [Ljava/lang/Object;

    .line 152
    .line 153
    aput-object p0, v7, v3

    .line 154
    .line 155
    aput-object v6, v7, v2

    .line 156
    .line 157
    invoke-static {v7, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    const-string v7, "%s[%d]"

    .line 162
    .line 163
    invoke-static {v5, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    const-string v7, "jsonArray.opt(i)"

    .line 172
    .line 173
    invoke-static {v7, v6}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    :try_start_af
    invoke-static {v5, v6, p2, p3}, Lx1/w;->x(Ljava/lang/String;Ljava/lang/Object;Lx1/x;Z)V
    :try_end_b2
    .catchall {:try_start_af .. :try_end_b2} :catchall_b5

    .line 177
    .line 178
    .line 179
    add-int/lit8 v1, v1, 0x1

    .line 180
    .line 181
    goto :goto_8e

    .line 182
    :catchall_b5
    move-exception p0

    .line 183
    throw p0

    .line 184
    :cond_b7
    return-void

    .line 185
    :cond_b8
    const-class p3, Ljava/lang/String;

    .line 186
    .line 187
    invoke-virtual {p3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 188
    .line 189
    .line 190
    move-result p3

    .line 191
    if-nez p3, :cond_f6

    .line 192
    .line 193
    const-class p3, Ljava/lang/Number;

    .line 194
    .line 195
    invoke-virtual {p3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 196
    .line 197
    .line 198
    move-result p3

    .line 199
    if-nez p3, :cond_f6

    .line 200
    .line 201
    const-class p3, Ljava/lang/Boolean;

    .line 202
    .line 203
    invoke-virtual {p3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 204
    .line 205
    .line 206
    move-result p3

    .line 207
    if-eqz p3, :cond_d1

    .line 208
    .line 209
    goto :goto_f6

    .line 210
    :cond_d1
    const-class p3, Ljava/util/Date;

    .line 211
    .line 212
    invoke-virtual {p3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 213
    .line 214
    .line 215
    move-result p3

    .line 216
    if-eqz p3, :cond_f1

    .line 217
    .line 218
    check-cast p1, Ljava/util/Date;

    .line 219
    .line 220
    new-instance p3, Ljava/text/SimpleDateFormat;

    .line 221
    .line 222
    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    .line 223
    .line 224
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 225
    .line 226
    invoke-direct {p3, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p3, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    const-string p3, "iso8601DateFormat.format(date)"

    .line 234
    .line 235
    invoke-static {p3, p1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    invoke-interface {p2, p0, p1}, Lx1/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    return-void

    .line 242
    :cond_f1
    sget-object p0, Lx1/z;->j:Ljava/lang/String;

    .line 243
    .line 244
    sget-object p0, Lx1/r;->a:Lx1/r;

    .line 245
    .line 246
    return-void

    .line 247
    :cond_f6
    :goto_f6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    invoke-interface {p2, p0, p1}, Lx1/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    return-void
.end method

.method public static y(Lx1/b0;Lq2/z;ILjava/net/URL;Ljava/io/FilterOutputStream;Z)V
    .registers 24

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    new-instance v1, Lm/x2;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    move-object/from16 v2, p4

    .line 9
    .line 10
    iput-object v2, v1, Lm/x2;->c:Ljava/lang/Object;

    .line 11
    .line 12
    move-object/from16 v2, p1

    .line 13
    .line 14
    iput-object v2, v1, Lm/x2;->d:Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    iput-boolean v3, v1, Lm/x2;->a:Z

    .line 18
    .line 19
    move/from16 v4, p5

    .line 20
    .line 21
    iput-boolean v4, v1, Lm/x2;->b:Z

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    move/from16 v5, p2

    .line 25
    .line 26
    if-ne v5, v3, :cond_9a

    .line 27
    .line 28
    move-object/from16 v5, p0

    .line 29
    .line 30
    iget-object v3, v5, Lx1/b0;->c:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Lx1/z;

    .line 37
    .line 38
    new-instance v4, Ljava/util/HashMap;

    .line 39
    .line 40
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 41
    .line 42
    .line 43
    iget-object v5, v3, Lx1/z;->d:Landroid/os/Bundle;

    .line 44
    .line 45
    invoke-virtual {v5}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    :cond_34
    :goto_34
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-eqz v6, :cond_58

    .line 58
    .line 59
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    check-cast v6, Ljava/lang/String;

    .line 64
    .line 65
    iget-object v7, v3, Lx1/z;->d:Landroid/os/Bundle;

    .line 66
    .line 67
    invoke-virtual {v7, v6}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    invoke-static {v7}, Lx1/w;->s(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    if-eqz v8, :cond_34

    .line 76
    .line 77
    invoke-static {v0, v6}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    new-instance v8, Lx1/u;

    .line 81
    .line 82
    invoke-direct {v8, v3, v7}, Lx1/u;-><init>(Lx1/z;Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    goto :goto_34

    .line 89
    :cond_58
    sget-object v5, Lx1/r;->b:Ljava/util/HashSet;

    .line 90
    .line 91
    monitor-enter v5

    .line 92
    monitor-exit v5

    .line 93
    iget-object v5, v3, Lx1/z;->d:Landroid/os/Bundle;

    .line 94
    .line 95
    invoke-virtual {v5}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    :cond_66
    :goto_66
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v7

    .line 107
    if-eqz v7, :cond_83

    .line 108
    .line 109
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    check-cast v7, Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v5, v7}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v8

    .line 119
    invoke-static {v8}, Lx1/w;->t(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v9

    .line 123
    if-eqz v9, :cond_66

    .line 124
    .line 125
    invoke-static {v0, v7}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, v7, v8, v3}, Lm/x2;->l(Ljava/lang/String;Ljava/lang/Object;Lx1/z;)V

    .line 129
    .line 130
    .line 131
    goto :goto_66

    .line 132
    :cond_83
    invoke-virtual {v2}, Lq2/z;->b()V

    .line 133
    .line 134
    .line 135
    invoke-static {v4, v1}, Lx1/w;->A(Ljava/util/HashMap;Lm/x2;)V

    .line 136
    .line 137
    .line 138
    iget-object v0, v3, Lx1/z;->c:Lorg/json/JSONObject;

    .line 139
    .line 140
    if-eqz v0, :cond_99

    .line 141
    .line 142
    invoke-virtual/range {p3 .. p3}, Ljava/net/URL;->getPath()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    const-string v3, "url.path"

    .line 147
    .line 148
    invoke-static {v3, v2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    invoke-static {v0, v2, v1}, Lx1/w;->w(Lorg/json/JSONObject;Ljava/lang/String;Lx1/x;)V

    .line 152
    .line 153
    .line 154
    :cond_99
    return-void

    .line 155
    :cond_9a
    move-object/from16 v5, p0

    .line 156
    .line 157
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v5}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    :cond_a3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 165
    .line 166
    .line 167
    move-result v6

    .line 168
    if-eqz v6, :cond_b6

    .line 169
    .line 170
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    check-cast v6, Lx1/z;

    .line 175
    .line 176
    iget-object v6, v6, Lx1/z;->a:Lx1/a;

    .line 177
    .line 178
    if-eqz v6, :cond_a3

    .line 179
    .line 180
    iget-object v0, v6, Lx1/a;->h:Ljava/lang/String;

    .line 181
    .line 182
    goto :goto_bc

    .line 183
    :cond_b6
    sget-object v0, Lx1/z;->j:Ljava/lang/String;

    .line 184
    .line 185
    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    :goto_bc
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 190
    .line 191
    .line 192
    move-result v6

    .line 193
    if-eqz v6, :cond_1da

    .line 194
    .line 195
    const-string v6, "batch_app_id"

    .line 196
    .line 197
    invoke-virtual {v1, v6, v0}, Lm/x2;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    new-instance v0, Ljava/util/HashMap;

    .line 201
    .line 202
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 203
    .line 204
    .line 205
    new-instance v6, Lorg/json/JSONArray;

    .line 206
    .line 207
    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v5}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    :goto_d5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 215
    .line 216
    .line 217
    move-result v7

    .line 218
    if-eqz v7, :cond_1c5

    .line 219
    .line 220
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v7

    .line 224
    check-cast v7, Lx1/z;

    .line 225
    .line 226
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    .line 228
    .line 229
    sget-object v8, Lx1/z;->j:Ljava/lang/String;

    .line 230
    .line 231
    new-instance v8, Lorg/json/JSONObject;

    .line 232
    .line 233
    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 234
    .line 235
    .line 236
    const-string v9, "https://graph.%s"

    .line 237
    .line 238
    invoke-static {}, Lx1/r;->e()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v10

    .line 242
    new-array v11, v3, [Ljava/lang/Object;

    .line 243
    .line 244
    aput-object v10, v11, v4

    .line 245
    .line 246
    invoke-static {v11, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v10

    .line 250
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v9

    .line 254
    invoke-virtual {v7, v9}, Lx1/z;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v9

    .line 258
    invoke-virtual {v7}, Lx1/z;->a()V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v7, v9, v3}, Lx1/z;->b(Ljava/lang/String;Z)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v9

    .line 265
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 266
    .line 267
    .line 268
    move-result-object v9

    .line 269
    const-string v10, "%s?%s"

    .line 270
    .line 271
    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v11

    .line 275
    invoke-virtual {v9}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v9

    .line 279
    const/4 v12, 0x2

    .line 280
    new-array v13, v12, [Ljava/lang/Object;

    .line 281
    .line 282
    aput-object v11, v13, v4

    .line 283
    .line 284
    aput-object v9, v13, v3

    .line 285
    .line 286
    invoke-static {v13, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v9

    .line 290
    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v9

    .line 294
    const-string v10, "relative_url"

    .line 295
    .line 296
    invoke-virtual {v8, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 297
    .line 298
    .line 299
    const-string v10, "method"

    .line 300
    .line 301
    iget-object v11, v7, Lx1/z;->h:Lx1/d0;

    .line 302
    .line 303
    invoke-virtual {v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 304
    .line 305
    .line 306
    iget-object v10, v7, Lx1/z;->a:Lx1/a;

    .line 307
    .line 308
    if-eqz v10, :cond_13c

    .line 309
    .line 310
    iget-object v10, v10, Lx1/a;->e:Ljava/lang/String;

    .line 311
    .line 312
    sget-object v11, Lq2/z;->c:Lo3/a;

    .line 313
    .line 314
    invoke-virtual {v11, v10}, Lo3/a;->o(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    :cond_13c
    new-instance v10, Ljava/util/ArrayList;

    .line 318
    .line 319
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 320
    .line 321
    .line 322
    iget-object v11, v7, Lx1/z;->d:Landroid/os/Bundle;

    .line 323
    .line 324
    invoke-virtual {v11}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 325
    .line 326
    .line 327
    move-result-object v11

    .line 328
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 329
    .line 330
    .line 331
    move-result-object v11

    .line 332
    :cond_14b
    :goto_14b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 333
    .line 334
    .line 335
    move-result v13

    .line 336
    if-eqz v13, :cond_18f

    .line 337
    .line 338
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v13

    .line 342
    check-cast v13, Ljava/lang/String;

    .line 343
    .line 344
    iget-object v14, v7, Lx1/z;->d:Landroid/os/Bundle;

    .line 345
    .line 346
    invoke-virtual {v14, v13}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v13

    .line 350
    invoke-static {v13}, Lx1/w;->s(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    move-result v14

    .line 354
    if-eqz v14, :cond_14b

    .line 355
    .line 356
    sget-object v14, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 357
    .line 358
    const-string v15, "%s%d"

    .line 359
    .line 360
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 361
    .line 362
    .line 363
    move-result v16

    .line 364
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 365
    .line 366
    .line 367
    move-result-object v16

    .line 368
    move/from16 p4, v3

    .line 369
    .line 370
    new-array v3, v12, [Ljava/lang/Object;

    .line 371
    .line 372
    const-string v17, "file"

    .line 373
    .line 374
    aput-object v17, v3, v4

    .line 375
    .line 376
    aput-object v16, v3, p4

    .line 377
    .line 378
    invoke-static {v3, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v3

    .line 382
    invoke-static {v14, v15, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v3

    .line 386
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    new-instance v14, Lx1/u;

    .line 390
    .line 391
    invoke-direct {v14, v7, v13}, Lx1/u;-><init>(Lx1/z;Ljava/lang/Object;)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v0, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move/from16 v3, p4

    .line 398
    .line 399
    goto :goto_14b

    .line 400
    :cond_18f
    move/from16 p4, v3

    .line 401
    .line 402
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 403
    .line 404
    .line 405
    move-result v3

    .line 406
    if-nez v3, :cond_1a2

    .line 407
    .line 408
    const-string v3, ","

    .line 409
    .line 410
    invoke-static {v3, v10}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v3

    .line 414
    const-string v10, "attached_files"

    .line 415
    .line 416
    invoke-virtual {v8, v10, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 417
    .line 418
    .line 419
    :cond_1a2
    iget-object v3, v7, Lx1/z;->c:Lorg/json/JSONObject;

    .line 420
    .line 421
    if-eqz v3, :cond_1be

    .line 422
    .line 423
    new-instance v7, Ljava/util/ArrayList;

    .line 424
    .line 425
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 426
    .line 427
    .line 428
    new-instance v10, Lr7/j;

    .line 429
    .line 430
    invoke-direct {v10, v7}, Lr7/j;-><init>(Ljava/util/ArrayList;)V

    .line 431
    .line 432
    .line 433
    invoke-static {v3, v9, v10}, Lx1/w;->w(Lorg/json/JSONObject;Ljava/lang/String;Lx1/x;)V

    .line 434
    .line 435
    .line 436
    const-string v3, "&"

    .line 437
    .line 438
    invoke-static {v3, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v3

    .line 442
    const-string v7, "body"

    .line 443
    .line 444
    invoke-virtual {v8, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 445
    .line 446
    .line 447
    :cond_1be
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 448
    .line 449
    .line 450
    move/from16 v3, p4

    .line 451
    .line 452
    goto/16 :goto_d5

    .line 453
    .line 454
    :cond_1c5
    const-string v3, "batch"

    .line 455
    .line 456
    const-string v4, "requestJsonArray.toString()"

    .line 457
    .line 458
    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v5

    .line 462
    invoke-static {v4, v5}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v1, v3, v5}, Lm/x2;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v2}, Lq2/z;->b()V

    .line 469
    .line 470
    .line 471
    invoke-static {v0, v1}, Lx1/w;->A(Ljava/util/HashMap;Lm/x2;)V

    .line 472
    .line 473
    .line 474
    return-void

    .line 475
    :cond_1da
    new-instance v0, Lx1/l;

    .line 476
    .line 477
    const-string v1, "App ID was not specified at the request or Settings."

    .line 478
    .line 479
    invoke-direct {v0, v1}, Lx1/l;-><init>(Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    throw v0
.end method

.method public static z(Lx1/b0;Ljava/util/ArrayList;)V
    .registers 9

    .line 1
    const-string v0, "requests"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lx1/b0;->c:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    new-instance v2, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    :goto_11
    if-ge v3, v1, :cond_2e

    .line 19
    .line 20
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Lx1/z;

    .line 25
    .line 26
    iget-object v5, v4, Lx1/z;->g:Lx1/v;

    .line 27
    .line 28
    if-eqz v5, :cond_2b

    .line 29
    .line 30
    new-instance v5, Landroid/util/Pair;

    .line 31
    .line 32
    iget-object v4, v4, Lx1/z;->g:Lx1/v;

    .line 33
    .line 34
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    invoke-direct {v5, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    .line 45
    .line 46
    goto :goto_11

    .line 47
    :cond_2e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-lez p1, :cond_46

    .line 52
    .line 53
    new-instance p1, La2/i;

    .line 54
    .line 55
    const/16 v0, 0x15

    .line 56
    .line 57
    invoke-direct {p1, v2, v0, p0}, La2/i;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iget-object p0, p0, Lx1/b0;->a:Landroid/os/Handler;

    .line 61
    .line 62
    if-eqz p0, :cond_43

    .line 63
    .line 64
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_43
    invoke-virtual {p1}, La2/i;->run()V

    .line 69
    .line 70
    .line 71
    :cond_46
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .registers 12

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_b

    .line 3
    .line 4
    const-string v1, "id"

    .line 5
    .line 6
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    move-object v3, v1

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    move-object v3, v0

    .line 13
    :goto_c
    if-nez v3, :cond_16

    .line 14
    .line 15
    const-string p1, "f0"

    .line 16
    .line 17
    const-string v0, "No user ID returned on Me request"

    .line 18
    .line 19
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_16
    const-string v1, "link"

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "profile_picture"

    .line 30
    .line 31
    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    move-object v4, v2

    .line 36
    new-instance v2, Lx1/f0;

    .line 37
    .line 38
    const-string v5, "first_name"

    .line 39
    .line 40
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    const-string v6, "middle_name"

    .line 45
    .line 46
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    const-string v7, "last_name"

    .line 51
    .line 52
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    const-string v8, "name"

    .line 57
    .line 58
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-eqz v1, :cond_45

    .line 63
    .line 64
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    move-object v8, v1

    .line 69
    goto :goto_46

    .line 70
    :cond_45
    move-object v8, v0

    .line 71
    :goto_46
    if-eqz v4, :cond_4c

    .line 72
    .line 73
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    :cond_4c
    move-object v9, v0

    .line 78
    move-object v4, v5

    .line 79
    move-object v5, v6

    .line 80
    move-object v6, v7

    .line 81
    move-object v7, p1

    .line 82
    invoke-direct/range {v2 .. v9}, Lx1/f0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V

    .line 83
    .line 84
    .line 85
    sget-object p1, Lx1/g0;->d:Lx1/w;

    .line 86
    .line 87
    invoke-virtual {p1}, Lx1/w;->p()Lx1/g0;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    const/4 v0, 0x1

    .line 92
    invoke-virtual {p1, v2, v0}, Lx1/g0;->a(Lx1/f0;Z)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public f(Lx1/l;)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Got unexpected exception: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "f0"

    .line 16
    .line 17
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public j(Ljava/lang/String;ILjava/util/EnumMap;)Lb6/b;
    .registers 24

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p0

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    iget v4, v2, Lx1/w;->a:I

    .line 10
    .line 11
    packed-switch v4, :pswitch_data_502

    .line 12
    .line 13
    .line 14
    sget-object v4, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 15
    .line 16
    sget-object v5, Ly5/a;->b:Ly5/a;

    .line 17
    .line 18
    invoke-virtual {v3, v5}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v6

    .line 22
    if-eqz v6, :cond_23

    .line 23
    .line 24
    invoke-virtual {v3, v5}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    :cond_23
    sget-object v5, Ly5/a;->a:Ly5/a;

    .line 37
    .line 38
    invoke-virtual {v3, v5}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    if-eqz v6, :cond_38

    .line 43
    .line 44
    invoke-virtual {v3, v5}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    goto :goto_3a

    .line 57
    :cond_38
    const/16 v5, 0x21

    .line 58
    .line 59
    :goto_3a
    sget-object v6, Ly5/a;->j:Ly5/a;

    .line 60
    .line 61
    invoke-virtual {v3, v6}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    if-eqz v7, :cond_4f

    .line 66
    .line 67
    invoke-virtual {v3, v6}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    goto :goto_50

    .line 80
    :cond_4f
    const/4 v3, 0x0

    .line 81
    :goto_50
    const/4 v6, 0x1

    .line 82
    if-ne v1, v6, :cond_478

    .line 83
    .line 84
    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    new-instance v1, La6/d;

    .line 89
    .line 90
    sget-object v1, La6/f;->e:La6/f;

    .line 91
    .line 92
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    const/4 v4, 0x0

    .line 97
    :goto_60
    array-length v7, v0

    .line 98
    const/4 v9, 0x4

    .line 99
    const/4 v10, 0x2

    .line 100
    const/16 v12, 0xa

    .line 101
    .line 102
    const/4 v14, 0x3

    .line 103
    const/16 v15, 0x20

    .line 104
    .line 105
    if-ge v4, v7, :cond_174

    .line 106
    .line 107
    add-int/lit8 v7, v4, 0x1

    .line 108
    .line 109
    array-length v8, v0

    .line 110
    if-ge v7, v8, :cond_72

    .line 111
    .line 112
    aget-byte v8, v0, v7

    .line 113
    .line 114
    goto :goto_73

    .line 115
    :cond_72
    const/4 v8, 0x0

    .line 116
    :goto_73
    aget-byte v11, v0, v4

    .line 117
    .line 118
    const/16 v13, 0xd

    .line 119
    .line 120
    if-eq v11, v13, :cond_93

    .line 121
    .line 122
    const/16 v12, 0x2c

    .line 123
    .line 124
    if-eq v11, v12, :cond_8f

    .line 125
    .line 126
    const/16 v12, 0x2e

    .line 127
    .line 128
    if-eq v11, v12, :cond_8b

    .line 129
    .line 130
    const/16 v12, 0x3a

    .line 131
    .line 132
    if-eq v11, v12, :cond_87

    .line 133
    .line 134
    :cond_85
    const/4 v13, 0x0

    .line 135
    goto :goto_96

    .line 136
    :cond_87
    if-ne v8, v15, :cond_85

    .line 137
    .line 138
    const/4 v13, 0x5

    .line 139
    goto :goto_96

    .line 140
    :cond_8b
    if-ne v8, v15, :cond_85

    .line 141
    .line 142
    move v13, v14

    .line 143
    goto :goto_96

    .line 144
    :cond_8f
    if-ne v8, v15, :cond_85

    .line 145
    .line 146
    move v13, v9

    .line 147
    goto :goto_96

    .line 148
    :cond_93
    if-ne v8, v12, :cond_85

    .line 149
    .line 150
    move v13, v10

    .line 151
    :goto_96
    if-lez v13, :cond_ed

    .line 152
    .line 153
    new-instance v8, Ljava/util/LinkedList;

    .line 154
    .line 155
    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    :cond_a1
    :goto_a1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 163
    .line 164
    .line 165
    move-result v11

    .line 166
    if-eqz v11, :cond_e4

    .line 167
    .line 168
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v11

    .line 172
    check-cast v11, La6/f;

    .line 173
    .line 174
    invoke-virtual {v11, v4}, La6/f;->b(I)La6/f;

    .line 175
    .line 176
    .line 177
    move-result-object v12

    .line 178
    invoke-virtual {v12, v9, v13}, La6/f;->d(II)La6/f;

    .line 179
    .line 180
    .line 181
    move-result-object v15

    .line 182
    invoke-virtual {v8, v15}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    iget v15, v11, La6/f;->a:I

    .line 186
    .line 187
    if-eq v15, v9, :cond_c3

    .line 188
    .line 189
    invoke-virtual {v12, v9, v13}, La6/f;->e(II)La6/f;

    .line 190
    .line 191
    .line 192
    move-result-object v15

    .line 193
    invoke-virtual {v8, v15}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    :cond_c3
    if-eq v13, v14, :cond_c7

    .line 197
    .line 198
    if-ne v13, v9, :cond_d4

    .line 199
    .line 200
    :cond_c7
    rsub-int/lit8 v15, v13, 0x10

    .line 201
    .line 202
    invoke-virtual {v12, v10, v15}, La6/f;->d(II)La6/f;

    .line 203
    .line 204
    .line 205
    move-result-object v12

    .line 206
    invoke-virtual {v12, v10, v6}, La6/f;->d(II)La6/f;

    .line 207
    .line 208
    .line 209
    move-result-object v12

    .line 210
    invoke-virtual {v8, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    :cond_d4
    iget v12, v11, La6/f;->c:I

    .line 214
    .line 215
    if-lez v12, :cond_a1

    .line 216
    .line 217
    invoke-virtual {v11, v4}, La6/f;->a(I)La6/f;

    .line 218
    .line 219
    .line 220
    move-result-object v11

    .line 221
    invoke-virtual {v11, v7}, La6/f;->a(I)La6/f;

    .line 222
    .line 223
    .line 224
    move-result-object v11

    .line 225
    invoke-virtual {v8, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    goto :goto_a1

    .line 229
    :cond_e4
    invoke-static {v8}, La6/d;->a(Ljava/util/LinkedList;)Ljava/util/LinkedList;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    move/from16 p3, v6

    .line 234
    .line 235
    move v4, v7

    .line 236
    goto/16 :goto_16e

    .line 237
    .line 238
    :cond_ed
    new-instance v7, Ljava/util/LinkedList;

    .line 239
    .line 240
    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 241
    .line 242
    .line 243
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    :goto_f6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 248
    .line 249
    .line 250
    move-result v8

    .line 251
    if-eqz v8, :cond_168

    .line 252
    .line 253
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v8

    .line 257
    check-cast v8, La6/f;

    .line 258
    .line 259
    aget-byte v11, v0, v4

    .line 260
    .line 261
    and-int/lit16 v11, v11, 0xff

    .line 262
    .line 263
    int-to-char v11, v11

    .line 264
    sget-object v12, La6/d;->c:[[I

    .line 265
    .line 266
    iget v13, v8, La6/f;->a:I

    .line 267
    .line 268
    aget-object v14, v12, v13

    .line 269
    .line 270
    aget v14, v14, v11

    .line 271
    .line 272
    if-lez v14, :cond_113

    .line 273
    .line 274
    move v14, v6

    .line 275
    goto :goto_114

    .line 276
    :cond_113
    const/4 v14, 0x0

    .line 277
    :goto_114
    const/4 v15, 0x0

    .line 278
    const/16 v16, 0x0

    .line 279
    .line 280
    :goto_117
    if-gt v15, v9, :cond_150

    .line 281
    .line 282
    aget-object v17, v12, v15

    .line 283
    .line 284
    move/from16 p3, v6

    .line 285
    .line 286
    aget v6, v17, v11

    .line 287
    .line 288
    if-lez v6, :cond_149

    .line 289
    .line 290
    if-nez v16, :cond_127

    .line 291
    .line 292
    invoke-virtual {v8, v4}, La6/f;->b(I)La6/f;

    .line 293
    .line 294
    .line 295
    move-result-object v16

    .line 296
    :cond_127
    move-object/from16 v9, v16

    .line 297
    .line 298
    if-eqz v14, :cond_12f

    .line 299
    .line 300
    if-eq v15, v13, :cond_12f

    .line 301
    .line 302
    if-ne v15, v10, :cond_136

    .line 303
    .line 304
    :cond_12f
    invoke-virtual {v9, v15, v6}, La6/f;->d(II)La6/f;

    .line 305
    .line 306
    .line 307
    move-result-object v10

    .line 308
    invoke-virtual {v7, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    :cond_136
    if-nez v14, :cond_147

    .line 312
    .line 313
    sget-object v10, La6/d;->d:[[I

    .line 314
    .line 315
    aget-object v10, v10, v13

    .line 316
    .line 317
    aget v10, v10, v15

    .line 318
    .line 319
    if-ltz v10, :cond_147

    .line 320
    .line 321
    invoke-virtual {v9, v15, v6}, La6/f;->e(II)La6/f;

    .line 322
    .line 323
    .line 324
    move-result-object v6

    .line 325
    invoke-virtual {v7, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    :cond_147
    move-object/from16 v16, v9

    .line 329
    .line 330
    :cond_149
    add-int/lit8 v15, v15, 0x1

    .line 331
    .line 332
    move/from16 v6, p3

    .line 333
    .line 334
    const/4 v9, 0x4

    .line 335
    const/4 v10, 0x2

    .line 336
    goto :goto_117

    .line 337
    :cond_150
    move/from16 p3, v6

    .line 338
    .line 339
    iget v6, v8, La6/f;->c:I

    .line 340
    .line 341
    if-gtz v6, :cond_15c

    .line 342
    .line 343
    aget-object v6, v12, v13

    .line 344
    .line 345
    aget v6, v6, v11

    .line 346
    .line 347
    if-nez v6, :cond_163

    .line 348
    .line 349
    :cond_15c
    invoke-virtual {v8, v4}, La6/f;->a(I)La6/f;

    .line 350
    .line 351
    .line 352
    move-result-object v6

    .line 353
    invoke-virtual {v7, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    :cond_163
    move/from16 v6, p3

    .line 357
    .line 358
    const/4 v9, 0x4

    .line 359
    const/4 v10, 0x2

    .line 360
    goto :goto_f6

    .line 361
    :cond_168
    move/from16 p3, v6

    .line 362
    .line 363
    invoke-static {v7}, La6/d;->a(Ljava/util/LinkedList;)Ljava/util/LinkedList;

    .line 364
    .line 365
    .line 366
    move-result-object v1

    .line 367
    :goto_16e
    add-int/lit8 v4, v4, 0x1

    .line 368
    .line 369
    move/from16 v6, p3

    .line 370
    .line 371
    goto/16 :goto_60

    .line 372
    .line 373
    :cond_174
    move/from16 p3, v6

    .line 374
    .line 375
    new-instance v4, La6/c;

    .line 376
    .line 377
    const/4 v6, 0x0

    .line 378
    invoke-direct {v4, v6}, La6/c;-><init>(I)V

    .line 379
    .line 380
    .line 381
    invoke-static {v1, v4}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v1

    .line 385
    check-cast v1, La6/f;

    .line 386
    .line 387
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 388
    .line 389
    .line 390
    new-instance v4, Ljava/util/LinkedList;

    .line 391
    .line 392
    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 393
    .line 394
    .line 395
    array-length v6, v0

    .line 396
    invoke-virtual {v1, v6}, La6/f;->b(I)La6/f;

    .line 397
    .line 398
    .line 399
    move-result-object v1

    .line 400
    iget-object v1, v1, La6/f;->b:La6/g;

    .line 401
    .line 402
    :goto_191
    if-eqz v1, :cond_199

    .line 403
    .line 404
    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 405
    .line 406
    .line 407
    iget-object v1, v1, La6/g;->a:La6/g;

    .line 408
    .line 409
    goto :goto_191

    .line 410
    :cond_199
    new-instance v1, Lb6/a;

    .line 411
    .line 412
    invoke-direct {v1}, Lb6/a;-><init>()V

    .line 413
    .line 414
    .line 415
    invoke-interface {v4}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    .line 416
    .line 417
    .line 418
    move-result-object v4

    .line 419
    :goto_1a2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 420
    .line 421
    .line 422
    move-result v6

    .line 423
    if-eqz v6, :cond_1b2

    .line 424
    .line 425
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v6

    .line 429
    check-cast v6, La6/g;

    .line 430
    .line 431
    invoke-virtual {v6, v1, v0}, La6/g;->a(Lb6/a;[B)V

    .line 432
    .line 433
    .line 434
    goto :goto_1a2

    .line 435
    :cond_1b2
    iget v0, v1, Lb6/a;->b:I

    .line 436
    .line 437
    mul-int/2addr v5, v0

    .line 438
    div-int/lit8 v5, v5, 0x64

    .line 439
    .line 440
    const/16 v4, 0xb

    .line 441
    .line 442
    add-int/2addr v5, v4

    .line 443
    add-int/2addr v0, v5

    .line 444
    sget-object v8, La6/b;->a:[I

    .line 445
    .line 446
    if-eqz v3, :cond_20c

    .line 447
    .line 448
    if-gez v3, :cond_1c4

    .line 449
    .line 450
    move/from16 v0, p3

    .line 451
    .line 452
    goto :goto_1c5

    .line 453
    :cond_1c4
    const/4 v0, 0x0

    .line 454
    :goto_1c5
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 455
    .line 456
    .line 457
    move-result v9

    .line 458
    if-eqz v0, :cond_1cc

    .line 459
    .line 460
    const/4 v15, 0x4

    .line 461
    :cond_1cc
    if-gt v9, v15, :cond_1fe

    .line 462
    .line 463
    if-eqz v0, :cond_1d3

    .line 464
    .line 465
    const/16 v6, 0x58

    .line 466
    .line 467
    goto :goto_1d5

    .line 468
    :cond_1d3
    const/16 v6, 0x70

    .line 469
    .line 470
    :goto_1d5
    shl-int/lit8 v3, v9, 0x4

    .line 471
    .line 472
    add-int/2addr v6, v3

    .line 473
    mul-int/2addr v6, v9

    .line 474
    aget v3, v8, v9

    .line 475
    .line 476
    rem-int v7, v6, v3

    .line 477
    .line 478
    sub-int v7, v6, v7

    .line 479
    .line 480
    invoke-static {v1, v3}, La6/b;->c(Lb6/a;I)Lb6/a;

    .line 481
    .line 482
    .line 483
    move-result-object v1

    .line 484
    iget v8, v1, Lb6/a;->b:I

    .line 485
    .line 486
    add-int/2addr v5, v8

    .line 487
    const-string v10, "Data to large for user specified layer"

    .line 488
    .line 489
    if-gt v5, v7, :cond_1f8

    .line 490
    .line 491
    if-eqz v0, :cond_25a

    .line 492
    .line 493
    shl-int/lit8 v5, v3, 0x6

    .line 494
    .line 495
    if-gt v8, v5, :cond_1f2

    .line 496
    .line 497
    goto/16 :goto_25a

    .line 498
    .line 499
    :cond_1f2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 500
    .line 501
    invoke-direct {v0, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    throw v0

    .line 505
    :cond_1f8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 506
    .line 507
    invoke-direct {v0, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    throw v0

    .line 511
    :cond_1fe
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 512
    .line 513
    const-string v1, "Illegal value "

    .line 514
    .line 515
    const-string v4, " for layers"

    .line 516
    .line 517
    invoke-static {v3, v1, v4}, La1/a;->j(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v1

    .line 521
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 522
    .line 523
    .line 524
    throw v0

    .line 525
    :cond_20c
    const/4 v3, 0x0

    .line 526
    const/4 v9, 0x0

    .line 527
    const/4 v11, 0x0

    .line 528
    :goto_20f
    if-gt v3, v15, :cond_470

    .line 529
    .line 530
    if-gt v3, v14, :cond_216

    .line 531
    .line 532
    move/from16 v10, p3

    .line 533
    .line 534
    goto :goto_217

    .line 535
    :cond_216
    const/4 v10, 0x0

    .line 536
    :goto_217
    if-eqz v10, :cond_21c

    .line 537
    .line 538
    add-int/lit8 v13, v3, 0x1

    .line 539
    .line 540
    goto :goto_21d

    .line 541
    :cond_21c
    move v13, v3

    .line 542
    :goto_21d
    if-eqz v10, :cond_222

    .line 543
    .line 544
    const/16 v16, 0x58

    .line 545
    .line 546
    goto :goto_224

    .line 547
    :cond_222
    const/16 v16, 0x70

    .line 548
    .line 549
    :goto_224
    shl-int/lit8 v19, v13, 0x4

    .line 550
    .line 551
    add-int v16, v16, v19

    .line 552
    .line 553
    mul-int v6, v16, v13

    .line 554
    .line 555
    if-gt v0, v6, :cond_463

    .line 556
    .line 557
    if-eqz v11, :cond_236

    .line 558
    .line 559
    aget v7, v8, v13

    .line 560
    .line 561
    if-eq v9, v7, :cond_233

    .line 562
    .line 563
    goto :goto_236

    .line 564
    :cond_233
    move v7, v9

    .line 565
    move-object v9, v11

    .line 566
    goto :goto_23c

    .line 567
    :cond_236
    :goto_236
    aget v7, v8, v13

    .line 568
    .line 569
    invoke-static {v1, v7}, La6/b;->c(Lb6/a;I)Lb6/a;

    .line 570
    .line 571
    .line 572
    move-result-object v9

    .line 573
    :goto_23c
    rem-int v11, v6, v7

    .line 574
    .line 575
    sub-int v11, v6, v11

    .line 576
    .line 577
    if-eqz v10, :cond_248

    .line 578
    .line 579
    iget v14, v9, Lb6/a;->b:I

    .line 580
    .line 581
    shl-int/lit8 v15, v7, 0x6

    .line 582
    .line 583
    if-gt v14, v15, :cond_24d

    .line 584
    .line 585
    :cond_248
    iget v14, v9, Lb6/a;->b:I

    .line 586
    .line 587
    add-int/2addr v14, v5

    .line 588
    if-le v14, v11, :cond_256

    .line 589
    .line 590
    :cond_24d
    move-object v11, v9

    .line 591
    move v9, v7

    .line 592
    const/4 v6, 0x4

    .line 593
    const/4 v10, 0x5

    .line 594
    const/16 v18, 0x2

    .line 595
    .line 596
    move v7, v12

    .line 597
    goto/16 :goto_468

    .line 598
    .line 599
    :cond_256
    move v3, v7

    .line 600
    move-object v1, v9

    .line 601
    move v0, v10

    .line 602
    move v9, v13

    .line 603
    :cond_25a
    :goto_25a
    invoke-static {v1, v6, v3}, La6/b;->b(Lb6/a;II)Lb6/a;

    .line 604
    .line 605
    .line 606
    move-result-object v5

    .line 607
    iget v1, v1, Lb6/a;->b:I

    .line 608
    .line 609
    div-int/2addr v1, v3

    .line 610
    new-instance v3, Lb6/a;

    .line 611
    .line 612
    invoke-direct {v3}, Lb6/a;-><init>()V

    .line 613
    .line 614
    .line 615
    if-eqz v0, :cond_27c

    .line 616
    .line 617
    add-int/lit8 v6, v9, -0x1

    .line 618
    .line 619
    const/4 v7, 0x2

    .line 620
    invoke-virtual {v3, v6, v7}, Lb6/a;->b(II)V

    .line 621
    .line 622
    .line 623
    add-int/lit8 v1, v1, -0x1

    .line 624
    .line 625
    const/4 v6, 0x6

    .line 626
    invoke-virtual {v3, v1, v6}, Lb6/a;->b(II)V

    .line 627
    .line 628
    .line 629
    const/16 v1, 0x1c

    .line 630
    .line 631
    const/4 v6, 0x4

    .line 632
    invoke-static {v3, v1, v6}, La6/b;->b(Lb6/a;II)Lb6/a;

    .line 633
    .line 634
    .line 635
    move-result-object v1

    .line 636
    goto :goto_28e

    .line 637
    :cond_27c
    const/4 v6, 0x4

    .line 638
    add-int/lit8 v7, v9, -0x1

    .line 639
    .line 640
    const/4 v8, 0x5

    .line 641
    invoke-virtual {v3, v7, v8}, Lb6/a;->b(II)V

    .line 642
    .line 643
    .line 644
    add-int/lit8 v1, v1, -0x1

    .line 645
    .line 646
    invoke-virtual {v3, v1, v4}, Lb6/a;->b(II)V

    .line 647
    .line 648
    .line 649
    const/16 v1, 0x28

    .line 650
    .line 651
    invoke-static {v3, v1, v6}, La6/b;->b(Lb6/a;II)Lb6/a;

    .line 652
    .line 653
    .line 654
    move-result-object v1

    .line 655
    :goto_28e
    if-eqz v0, :cond_291

    .line 656
    .line 657
    goto :goto_293

    .line 658
    :cond_291
    const/16 v4, 0xe

    .line 659
    .line 660
    :goto_293
    shl-int/lit8 v3, v9, 0x2

    .line 661
    .line 662
    add-int/2addr v4, v3

    .line 663
    new-array v3, v4, [I

    .line 664
    .line 665
    if-eqz v0, :cond_2a4

    .line 666
    .line 667
    const/4 v6, 0x0

    .line 668
    :goto_29b
    if-ge v6, v4, :cond_2a2

    .line 669
    .line 670
    aput v6, v3, v6

    .line 671
    .line 672
    add-int/lit8 v6, v6, 0x1

    .line 673
    .line 674
    goto :goto_29b

    .line 675
    :cond_2a2
    move v8, v4

    .line 676
    goto :goto_2cd

    .line 677
    :cond_2a4
    add-int/lit8 v6, v4, 0x1

    .line 678
    .line 679
    div-int/lit8 v7, v4, 0x2

    .line 680
    .line 681
    add-int/lit8 v8, v7, -0x1

    .line 682
    .line 683
    div-int/lit8 v8, v8, 0xf

    .line 684
    .line 685
    const/16 v18, 0x2

    .line 686
    .line 687
    mul-int/lit8 v8, v8, 0x2

    .line 688
    .line 689
    add-int/2addr v8, v6

    .line 690
    div-int/lit8 v6, v8, 0x2

    .line 691
    .line 692
    const/4 v10, 0x0

    .line 693
    :goto_2b4
    if-ge v10, v7, :cond_2cd

    .line 694
    .line 695
    div-int/lit8 v11, v10, 0xf

    .line 696
    .line 697
    add-int/2addr v11, v10

    .line 698
    sub-int v13, v7, v10

    .line 699
    .line 700
    add-int/lit8 v13, v13, -0x1

    .line 701
    .line 702
    sub-int v14, v6, v11

    .line 703
    .line 704
    add-int/lit8 v14, v14, -0x1

    .line 705
    .line 706
    aput v14, v3, v13

    .line 707
    .line 708
    add-int v13, v7, v10

    .line 709
    .line 710
    add-int/2addr v11, v6

    .line 711
    add-int/lit8 v11, v11, 0x1

    .line 712
    .line 713
    aput v11, v3, v13

    .line 714
    .line 715
    add-int/lit8 v10, v10, 0x1

    .line 716
    .line 717
    goto :goto_2b4

    .line 718
    :cond_2cd
    :goto_2cd
    new-instance v6, Lb6/b;

    .line 719
    .line 720
    invoke-direct {v6, v8, v8}, Lb6/b;-><init>(II)V

    .line 721
    .line 722
    .line 723
    const/4 v7, 0x0

    .line 724
    const/4 v10, 0x0

    .line 725
    :goto_2d4
    if-ge v7, v9, :cond_36f

    .line 726
    .line 727
    sub-int v11, v9, v7

    .line 728
    .line 729
    const/16 v18, 0x2

    .line 730
    .line 731
    shl-int/lit8 v11, v11, 0x2

    .line 732
    .line 733
    if-eqz v0, :cond_2e1

    .line 734
    .line 735
    const/16 v13, 0x9

    .line 736
    .line 737
    goto :goto_2e3

    .line 738
    :cond_2e1
    const/16 v13, 0xc

    .line 739
    .line 740
    :goto_2e3
    add-int/2addr v11, v13

    .line 741
    const/4 v13, 0x0

    .line 742
    :goto_2e5
    if-ge v13, v11, :cond_362

    .line 743
    .line 744
    shl-int/lit8 v14, v13, 0x1

    .line 745
    .line 746
    const/4 v15, 0x0

    .line 747
    :goto_2ea
    const/4 v12, 0x2

    .line 748
    if-ge v15, v12, :cond_35b

    .line 749
    .line 750
    add-int v12, v10, v14

    .line 751
    .line 752
    add-int/2addr v12, v15

    .line 753
    invoke-virtual {v5, v12}, Lb6/a;->d(I)Z

    .line 754
    .line 755
    .line 756
    move-result v12

    .line 757
    if-eqz v12, :cond_305

    .line 758
    .line 759
    shl-int/lit8 v12, v7, 0x1

    .line 760
    .line 761
    add-int v16, v12, v15

    .line 762
    .line 763
    move/from16 p1, v0

    .line 764
    .line 765
    aget v0, v3, v16

    .line 766
    .line 767
    add-int/2addr v12, v13

    .line 768
    aget v12, v3, v12

    .line 769
    .line 770
    invoke-virtual {v6, v0, v12}, Lb6/b;->b(II)V

    .line 771
    .line 772
    .line 773
    goto :goto_307

    .line 774
    :cond_305
    move/from16 p1, v0

    .line 775
    .line 776
    :goto_307
    shl-int/lit8 v0, v11, 0x1

    .line 777
    .line 778
    add-int/2addr v0, v10

    .line 779
    add-int/2addr v0, v14

    .line 780
    add-int/2addr v0, v15

    .line 781
    invoke-virtual {v5, v0}, Lb6/a;->d(I)Z

    .line 782
    .line 783
    .line 784
    move-result v0

    .line 785
    if-eqz v0, :cond_323

    .line 786
    .line 787
    shl-int/lit8 v0, v7, 0x1

    .line 788
    .line 789
    add-int v12, v0, v13

    .line 790
    .line 791
    aget v12, v3, v12

    .line 792
    .line 793
    add-int/lit8 v16, v4, -0x1

    .line 794
    .line 795
    sub-int v16, v16, v0

    .line 796
    .line 797
    sub-int v16, v16, v15

    .line 798
    .line 799
    aget v0, v3, v16

    .line 800
    .line 801
    invoke-virtual {v6, v12, v0}, Lb6/b;->b(II)V

    .line 802
    .line 803
    .line 804
    :cond_323
    shl-int/lit8 v0, v11, 0x2

    .line 805
    .line 806
    add-int/2addr v0, v10

    .line 807
    add-int/2addr v0, v14

    .line 808
    add-int/2addr v0, v15

    .line 809
    invoke-virtual {v5, v0}, Lb6/a;->d(I)Z

    .line 810
    .line 811
    .line 812
    move-result v0

    .line 813
    if-eqz v0, :cond_33d

    .line 814
    .line 815
    add-int/lit8 v0, v4, -0x1

    .line 816
    .line 817
    shl-int/lit8 v12, v7, 0x1

    .line 818
    .line 819
    sub-int/2addr v0, v12

    .line 820
    sub-int v12, v0, v15

    .line 821
    .line 822
    aget v12, v3, v12

    .line 823
    .line 824
    sub-int/2addr v0, v13

    .line 825
    aget v0, v3, v0

    .line 826
    .line 827
    invoke-virtual {v6, v12, v0}, Lb6/b;->b(II)V

    .line 828
    .line 829
    .line 830
    :cond_33d
    mul-int/lit8 v0, v11, 0x6

    .line 831
    .line 832
    add-int/2addr v0, v10

    .line 833
    add-int/2addr v0, v14

    .line 834
    add-int/2addr v0, v15

    .line 835
    invoke-virtual {v5, v0}, Lb6/a;->d(I)Z

    .line 836
    .line 837
    .line 838
    move-result v0

    .line 839
    if-eqz v0, :cond_356

    .line 840
    .line 841
    add-int/lit8 v0, v4, -0x1

    .line 842
    .line 843
    shl-int/lit8 v12, v7, 0x1

    .line 844
    .line 845
    sub-int/2addr v0, v12

    .line 846
    sub-int/2addr v0, v13

    .line 847
    aget v0, v3, v0

    .line 848
    .line 849
    add-int/2addr v12, v15

    .line 850
    aget v12, v3, v12

    .line 851
    .line 852
    invoke-virtual {v6, v0, v12}, Lb6/b;->b(II)V

    .line 853
    .line 854
    .line 855
    :cond_356
    add-int/lit8 v15, v15, 0x1

    .line 856
    .line 857
    move/from16 v0, p1

    .line 858
    .line 859
    goto :goto_2ea

    .line 860
    :cond_35b
    move/from16 p1, v0

    .line 861
    .line 862
    add-int/lit8 v13, v13, 0x1

    .line 863
    .line 864
    const/16 v12, 0xa

    .line 865
    .line 866
    goto :goto_2e5

    .line 867
    :cond_362
    move/from16 p1, v0

    .line 868
    .line 869
    shl-int/lit8 v0, v11, 0x3

    .line 870
    .line 871
    add-int/2addr v10, v0

    .line 872
    add-int/lit8 v7, v7, 0x1

    .line 873
    .line 874
    move/from16 v0, p1

    .line 875
    .line 876
    const/16 v12, 0xa

    .line 877
    .line 878
    goto/16 :goto_2d4

    .line 879
    .line 880
    :cond_36f
    move/from16 p1, v0

    .line 881
    .line 882
    div-int/lit8 v0, v8, 0x2

    .line 883
    .line 884
    const/4 v3, 0x7

    .line 885
    if-eqz p1, :cond_3b1

    .line 886
    .line 887
    const/4 v5, 0x0

    .line 888
    :goto_377
    if-ge v5, v3, :cond_3f1

    .line 889
    .line 890
    add-int/lit8 v7, v0, -0x3

    .line 891
    .line 892
    add-int/2addr v7, v5

    .line 893
    invoke-virtual {v1, v5}, Lb6/a;->d(I)Z

    .line 894
    .line 895
    .line 896
    move-result v9

    .line 897
    if-eqz v9, :cond_387

    .line 898
    .line 899
    add-int/lit8 v9, v0, -0x5

    .line 900
    .line 901
    invoke-virtual {v6, v7, v9}, Lb6/b;->b(II)V

    .line 902
    .line 903
    .line 904
    :cond_387
    add-int/lit8 v9, v5, 0x7

    .line 905
    .line 906
    invoke-virtual {v1, v9}, Lb6/a;->d(I)Z

    .line 907
    .line 908
    .line 909
    move-result v9

    .line 910
    if-eqz v9, :cond_394

    .line 911
    .line 912
    add-int/lit8 v9, v0, 0x5

    .line 913
    .line 914
    invoke-virtual {v6, v9, v7}, Lb6/b;->b(II)V

    .line 915
    .line 916
    .line 917
    :cond_394
    rsub-int/lit8 v9, v5, 0x14

    .line 918
    .line 919
    invoke-virtual {v1, v9}, Lb6/a;->d(I)Z

    .line 920
    .line 921
    .line 922
    move-result v9

    .line 923
    if-eqz v9, :cond_3a1

    .line 924
    .line 925
    add-int/lit8 v9, v0, 0x5

    .line 926
    .line 927
    invoke-virtual {v6, v7, v9}, Lb6/b;->b(II)V

    .line 928
    .line 929
    .line 930
    :cond_3a1
    rsub-int/lit8 v9, v5, 0x1b

    .line 931
    .line 932
    invoke-virtual {v1, v9}, Lb6/a;->d(I)Z

    .line 933
    .line 934
    .line 935
    move-result v9

    .line 936
    if-eqz v9, :cond_3ae

    .line 937
    .line 938
    add-int/lit8 v9, v0, -0x5

    .line 939
    .line 940
    invoke-virtual {v6, v9, v7}, Lb6/b;->b(II)V

    .line 941
    .line 942
    .line 943
    :cond_3ae
    add-int/lit8 v5, v5, 0x1

    .line 944
    .line 945
    goto :goto_377

    .line 946
    :cond_3b1
    const/4 v5, 0x0

    .line 947
    const/16 v7, 0xa

    .line 948
    .line 949
    :goto_3b4
    if-ge v5, v7, :cond_3f1

    .line 950
    .line 951
    add-int/lit8 v9, v0, -0x5

    .line 952
    .line 953
    add-int/2addr v9, v5

    .line 954
    div-int/lit8 v10, v5, 0x5

    .line 955
    .line 956
    add-int/2addr v10, v9

    .line 957
    invoke-virtual {v1, v5}, Lb6/a;->d(I)Z

    .line 958
    .line 959
    .line 960
    move-result v9

    .line 961
    if-eqz v9, :cond_3c7

    .line 962
    .line 963
    add-int/lit8 v9, v0, -0x7

    .line 964
    .line 965
    invoke-virtual {v6, v10, v9}, Lb6/b;->b(II)V

    .line 966
    .line 967
    .line 968
    :cond_3c7
    add-int/lit8 v9, v5, 0xa

    .line 969
    .line 970
    invoke-virtual {v1, v9}, Lb6/a;->d(I)Z

    .line 971
    .line 972
    .line 973
    move-result v9

    .line 974
    if-eqz v9, :cond_3d4

    .line 975
    .line 976
    add-int/lit8 v9, v0, 0x7

    .line 977
    .line 978
    invoke-virtual {v6, v9, v10}, Lb6/b;->b(II)V

    .line 979
    .line 980
    .line 981
    :cond_3d4
    rsub-int/lit8 v9, v5, 0x1d

    .line 982
    .line 983
    invoke-virtual {v1, v9}, Lb6/a;->d(I)Z

    .line 984
    .line 985
    .line 986
    move-result v9

    .line 987
    if-eqz v9, :cond_3e1

    .line 988
    .line 989
    add-int/lit8 v9, v0, 0x7

    .line 990
    .line 991
    invoke-virtual {v6, v10, v9}, Lb6/b;->b(II)V

    .line 992
    .line 993
    .line 994
    :cond_3e1
    rsub-int/lit8 v9, v5, 0x27

    .line 995
    .line 996
    invoke-virtual {v1, v9}, Lb6/a;->d(I)Z

    .line 997
    .line 998
    .line 999
    move-result v9

    .line 1000
    if-eqz v9, :cond_3ee

    .line 1001
    .line 1002
    add-int/lit8 v9, v0, -0x7

    .line 1003
    .line 1004
    invoke-virtual {v6, v9, v10}, Lb6/b;->b(II)V

    .line 1005
    .line 1006
    .line 1007
    :cond_3ee
    add-int/lit8 v5, v5, 0x1

    .line 1008
    .line 1009
    goto :goto_3b4

    .line 1010
    :cond_3f1
    if-eqz p1, :cond_3f8

    .line 1011
    .line 1012
    const/4 v10, 0x5

    .line 1013
    invoke-static {v6, v0, v10}, La6/b;->a(Lb6/b;II)V

    .line 1014
    .line 1015
    .line 1016
    goto :goto_421

    .line 1017
    :cond_3f8
    invoke-static {v6, v0, v3}, La6/b;->a(Lb6/b;II)V

    .line 1018
    .line 1019
    .line 1020
    const/4 v1, 0x0

    .line 1021
    const/4 v3, 0x0

    .line 1022
    :goto_3fd
    const/16 v18, 0x2

    .line 1023
    .line 1024
    div-int/lit8 v5, v4, 0x2

    .line 1025
    .line 1026
    add-int/lit8 v5, v5, -0x1

    .line 1027
    .line 1028
    if-ge v1, v5, :cond_421

    .line 1029
    .line 1030
    and-int/lit8 v5, v0, 0x1

    .line 1031
    .line 1032
    :goto_407
    if-ge v5, v8, :cond_41c

    .line 1033
    .line 1034
    sub-int v7, v0, v3

    .line 1035
    .line 1036
    invoke-virtual {v6, v7, v5}, Lb6/b;->b(II)V

    .line 1037
    .line 1038
    .line 1039
    add-int v9, v0, v3

    .line 1040
    .line 1041
    invoke-virtual {v6, v9, v5}, Lb6/b;->b(II)V

    .line 1042
    .line 1043
    .line 1044
    invoke-virtual {v6, v5, v7}, Lb6/b;->b(II)V

    .line 1045
    .line 1046
    .line 1047
    invoke-virtual {v6, v5, v9}, Lb6/b;->b(II)V

    .line 1048
    .line 1049
    .line 1050
    add-int/lit8 v5, v5, 0x2

    .line 1051
    .line 1052
    goto :goto_407

    .line 1053
    :cond_41c
    add-int/lit8 v1, v1, 0xf

    .line 1054
    .line 1055
    add-int/lit8 v3, v3, 0x10

    .line 1056
    .line 1057
    goto :goto_3fd

    .line 1058
    :cond_421
    :goto_421
    const/16 v0, 0xc8

    .line 1059
    .line 1060
    iget v1, v6, Lb6/b;->a:I

    .line 1061
    .line 1062
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 1063
    .line 1064
    .line 1065
    move-result v3

    .line 1066
    iget v4, v6, Lb6/b;->b:I

    .line 1067
    .line 1068
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    .line 1069
    .line 1070
    .line 1071
    move-result v0

    .line 1072
    div-int v5, v3, v1

    .line 1073
    .line 1074
    div-int v7, v0, v4

    .line 1075
    .line 1076
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    .line 1077
    .line 1078
    .line 1079
    move-result v5

    .line 1080
    mul-int v7, v1, v5

    .line 1081
    .line 1082
    sub-int v7, v3, v7

    .line 1083
    .line 1084
    const/16 v18, 0x2

    .line 1085
    .line 1086
    div-int/lit8 v7, v7, 0x2

    .line 1087
    .line 1088
    mul-int v8, v4, v5

    .line 1089
    .line 1090
    sub-int v8, v0, v8

    .line 1091
    .line 1092
    div-int/lit8 v8, v8, 0x2

    .line 1093
    .line 1094
    new-instance v9, Lb6/b;

    .line 1095
    .line 1096
    invoke-direct {v9, v3, v0}, Lb6/b;-><init>(II)V

    .line 1097
    .line 1098
    .line 1099
    const/4 v0, 0x0

    .line 1100
    :goto_44b
    if-ge v0, v4, :cond_462

    .line 1101
    .line 1102
    move v10, v7

    .line 1103
    const/4 v3, 0x0

    .line 1104
    :goto_44f
    if-ge v3, v1, :cond_45e

    .line 1105
    .line 1106
    invoke-virtual {v6, v3, v0}, Lb6/b;->a(II)Z

    .line 1107
    .line 1108
    .line 1109
    move-result v11

    .line 1110
    if-eqz v11, :cond_45a

    .line 1111
    .line 1112
    invoke-virtual {v9, v10, v8, v5, v5}, Lb6/b;->c(IIII)V

    .line 1113
    .line 1114
    .line 1115
    :cond_45a
    add-int/lit8 v3, v3, 0x1

    .line 1116
    .line 1117
    add-int/2addr v10, v5

    .line 1118
    goto :goto_44f

    .line 1119
    :cond_45e
    add-int/lit8 v0, v0, 0x1

    .line 1120
    .line 1121
    add-int/2addr v8, v5

    .line 1122
    goto :goto_44b

    .line 1123
    :cond_462
    return-object v9

    .line 1124
    :cond_463
    move v7, v12

    .line 1125
    const/4 v6, 0x4

    .line 1126
    const/4 v10, 0x5

    .line 1127
    const/16 v18, 0x2

    .line 1128
    .line 1129
    :goto_468
    add-int/lit8 v3, v3, 0x1

    .line 1130
    .line 1131
    move v12, v7

    .line 1132
    const/4 v14, 0x3

    .line 1133
    const/16 v15, 0x20

    .line 1134
    .line 1135
    goto/16 :goto_20f

    .line 1136
    .line 1137
    :cond_470
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1138
    .line 1139
    const-string v1, "Data too large for an Aztec code"

    .line 1140
    .line 1141
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1142
    .line 1143
    .line 1144
    throw v0

    .line 1145
    :cond_478
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1146
    .line 1147
    const-string v3, "Can only encode AZTEC, but got "

    .line 1148
    .line 1149
    invoke-static {v1}, Lq2/x;->n(I)Ljava/lang/String;

    .line 1150
    .line 1151
    .line 1152
    move-result-object v1

    .line 1153
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1154
    .line 1155
    .line 1156
    move-result-object v1

    .line 1157
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1158
    .line 1159
    .line 1160
    throw v0

    .line 1161
    :pswitch_488
    invoke-static {v1}, Landroidx/fragment/app/m1;->e(I)I

    .line 1162
    .line 1163
    .line 1164
    move-result v4

    .line 1165
    packed-switch v4, :pswitch_data_508

    .line 1166
    .line 1167
    .line 1168
    :pswitch_48f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1169
    .line 1170
    const-string v3, "No encoder available for format "

    .line 1171
    .line 1172
    invoke-static {v1}, Lq2/x;->n(I)Ljava/lang/String;

    .line 1173
    .line 1174
    .line 1175
    move-result-object v1

    .line 1176
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1177
    .line 1178
    .line 1179
    move-result-object v1

    .line 1180
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1181
    .line 1182
    .line 1183
    throw v0

    .line 1184
    :pswitch_49f
    new-instance v4, Lf6/f;

    .line 1185
    .line 1186
    const/4 v5, 0x2

    .line 1187
    invoke-direct {v4, v5}, Lf6/f;-><init>(I)V

    .line 1188
    .line 1189
    .line 1190
    goto :goto_4fc

    .line 1191
    :pswitch_4a6
    new-instance v4, Lo5/c;

    .line 1192
    .line 1193
    const/4 v5, 0x6

    .line 1194
    invoke-direct {v4, v5}, Lo5/c;-><init>(I)V

    .line 1195
    .line 1196
    .line 1197
    goto :goto_4fc

    .line 1198
    :pswitch_4ad
    new-instance v4, Le5/e;

    .line 1199
    .line 1200
    const/16 v5, 0x19

    .line 1201
    .line 1202
    invoke-direct {v4, v5}, Le5/e;-><init>(I)V

    .line 1203
    .line 1204
    .line 1205
    goto :goto_4fc

    .line 1206
    :pswitch_4b5
    new-instance v4, Le5/e;

    .line 1207
    .line 1208
    const/16 v5, 0x17

    .line 1209
    .line 1210
    invoke-direct {v4, v5}, Le5/e;-><init>(I)V

    .line 1211
    .line 1212
    .line 1213
    goto :goto_4fc

    .line 1214
    :pswitch_4bd
    new-instance v4, Lf6/g;

    .line 1215
    .line 1216
    const/4 v5, 0x0

    .line 1217
    invoke-direct {v4, v5}, Lf6/g;-><init>(I)V

    .line 1218
    .line 1219
    .line 1220
    goto :goto_4fc

    .line 1221
    :pswitch_4c4
    new-instance v4, Lf6/f;

    .line 1222
    .line 1223
    const/4 v5, 0x0

    .line 1224
    invoke-direct {v4, v5}, Lf6/f;-><init>(I)V

    .line 1225
    .line 1226
    .line 1227
    goto :goto_4fc

    .line 1228
    :pswitch_4cb
    new-instance v4, Lf6/f;

    .line 1229
    .line 1230
    const/4 v5, 0x1

    .line 1231
    invoke-direct {v4, v5}, Lf6/f;-><init>(I)V

    .line 1232
    .line 1233
    .line 1234
    goto :goto_4fc

    .line 1235
    :pswitch_4d2
    new-instance v4, Le5/e;

    .line 1236
    .line 1237
    const/16 v5, 0xc

    .line 1238
    .line 1239
    invoke-direct {v4, v5}, Le5/e;-><init>(I)V

    .line 1240
    .line 1241
    .line 1242
    goto :goto_4fc

    .line 1243
    :pswitch_4da
    new-instance v4, Lf6/g;

    .line 1244
    .line 1245
    const/4 v5, 0x1

    .line 1246
    invoke-direct {v4, v5}, Lf6/g;-><init>(I)V

    .line 1247
    .line 1248
    .line 1249
    goto :goto_4fc

    .line 1250
    :pswitch_4e1
    new-instance v4, Lf6/g;

    .line 1251
    .line 1252
    const/4 v5, 0x3

    .line 1253
    invoke-direct {v4, v5}, Lf6/g;-><init>(I)V

    .line 1254
    .line 1255
    .line 1256
    goto :goto_4fc

    .line 1257
    :pswitch_4e8
    new-instance v4, Lf6/g;

    .line 1258
    .line 1259
    const/4 v5, 0x2

    .line 1260
    invoke-direct {v4, v5}, Lf6/g;-><init>(I)V

    .line 1261
    .line 1262
    .line 1263
    goto :goto_4fc

    .line 1264
    :pswitch_4ef
    new-instance v4, Lf6/b;

    .line 1265
    .line 1266
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 1267
    .line 1268
    .line 1269
    goto :goto_4fc

    .line 1270
    :pswitch_4f5
    new-instance v4, Lx1/w;

    .line 1271
    .line 1272
    const/16 v5, 0xa

    .line 1273
    .line 1274
    invoke-direct {v4, v5}, Lx1/w;-><init>(I)V

    .line 1275
    .line 1276
    .line 1277
    :goto_4fc
    invoke-interface {v4, v0, v1, v3}, Ly5/d;->j(Ljava/lang/String;ILjava/util/EnumMap;)Lb6/b;

    .line 1278
    .line 1279
    .line 1280
    move-result-object v0

    .line 1281
    return-object v0

    .line 1282
    nop

    .line 1283
    :pswitch_data_502
    .packed-switch 0x9
        :pswitch_488
    .end packed-switch

    .line 1284
    .line 1285
    .line 1286
    .line 1287
    .line 1288
    .line 1289
    :pswitch_data_508
    .packed-switch 0x0
        :pswitch_4f5
        :pswitch_4ef
        :pswitch_4e8
        :pswitch_4e1
        :pswitch_4da
        :pswitch_4d2
        :pswitch_4cb
        :pswitch_4c4
        :pswitch_4bd
        :pswitch_48f
        :pswitch_4b5
        :pswitch_4ad
        :pswitch_48f
        :pswitch_48f
        :pswitch_4a6
        :pswitch_49f
    .end packed-switch
.end method

.method public declared-synchronized p()Lx1/g0;
    .registers 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    sget-object v0, Lx1/g0;->e:Lx1/g0;

    .line 3
    .line 4
    if-nez v0, :cond_22

    .line 5
    .line 6
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Ly0/b;->a(Landroid/content/Context;)Ly0/b;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "getInstance(applicationContext)"

    .line 15
    .line 16
    invoke-static {v1, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Lx1/g0;

    .line 20
    .line 21
    new-instance v2, Lx1/b;

    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    invoke-direct {v2, v3}, Lx1/b;-><init>(I)V

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, v0, v2}, Lx1/g0;-><init>(Ly0/b;Lx1/b;)V

    .line 28
    .line 29
    .line 30
    sput-object v1, Lx1/g0;->e:Lx1/g0;

    .line 31
    .line 32
    goto :goto_22

    .line 33
    :catchall_20
    move-exception v0

    .line 34
    goto :goto_2f

    .line 35
    :cond_22
    :goto_22
    sget-object v0, Lx1/g0;->e:Lx1/g0;
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_20

    .line 36
    .line 37
    if-eqz v0, :cond_28

    .line 38
    .line 39
    monitor-exit p0

    .line 40
    return-object v0

    .line 41
    :cond_28
    :try_start_28
    const-string v0, "instance"

    .line 42
    .line 43
    invoke-static {v0}, Ld7/g;->i(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    throw v0

    .line 48
    :goto_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_20

    .line 49
    throw v0
.end method
