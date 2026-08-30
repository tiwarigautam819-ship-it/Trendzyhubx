###### Class i8.j (i8.j)
.class public abstract Li8/j;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 1
    sget-object v3, Ls5/g;->c:Ls5/g;

    .line 2
    .line 3
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 4
    .line 5
    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 6
    .line 7
    new-instance v1, Ljava/lang/ThreadLocal;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v1, Lp4/p;

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-direct {v1, v0, v2, v5}, Lp4/p;-><init>(Ljava/util/Map;ZLjava/util/List;)V

    .line 21
    .line 22
    .line 23
    new-instance v6, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    sget-object v0, Lt5/s;->z:Lt5/p;

    .line 29
    .line 30
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    sget-object v0, Lt5/i;->b:Lt5/a;

    .line 34
    .line 35
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 42
    .line 43
    .line 44
    sget-object v0, Lt5/s;->p:Lt5/p;

    .line 45
    .line 46
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    sget-object v0, Lt5/s;->g:Lt5/q;

    .line 50
    .line 51
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    sget-object v0, Lt5/s;->d:Lt5/q;

    .line 55
    .line 56
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    sget-object v0, Lt5/s;->e:Lt5/q;

    .line 60
    .line 61
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    sget-object v0, Lt5/s;->f:Lt5/q;

    .line 65
    .line 66
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    sget-object v0, Lt5/s;->k:Lt5/h;

    .line 70
    .line 71
    new-instance v2, Lt5/q;

    .line 72
    .line 73
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 74
    .line 75
    const-class v7, Ljava/lang/Long;

    .line 76
    .line 77
    invoke-direct {v2, v4, v7, v0}, Lt5/q;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lq5/x;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    new-instance v2, Lq5/i;

    .line 84
    .line 85
    const/4 v4, 0x0

    .line 86
    invoke-direct {v2, v4}, Lq5/i;-><init>(I)V

    .line 87
    .line 88
    .line 89
    new-instance v4, Lt5/q;

    .line 90
    .line 91
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 92
    .line 93
    const-class v8, Ljava/lang/Double;

    .line 94
    .line 95
    invoke-direct {v4, v7, v8, v2}, Lt5/q;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lq5/x;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    new-instance v2, Lq5/i;

    .line 102
    .line 103
    const/4 v4, 0x1

    .line 104
    invoke-direct {v2, v4}, Lq5/i;-><init>(I)V

    .line 105
    .line 106
    .line 107
    new-instance v4, Lt5/q;

    .line 108
    .line 109
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 110
    .line 111
    const-class v8, Ljava/lang/Float;

    .line 112
    .line 113
    invoke-direct {v4, v7, v8, v2}, Lt5/q;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lq5/x;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    sget-object v2, Lt5/h;->b:Lt5/g;

    .line 120
    .line 121
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    sget-object v2, Lt5/s;->h:Lt5/p;

    .line 125
    .line 126
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    sget-object v2, Lt5/s;->i:Lt5/p;

    .line 130
    .line 131
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    new-instance v2, Lq5/j;

    .line 135
    .line 136
    const/4 v4, 0x0

    .line 137
    invoke-direct {v2, v0, v4}, Lq5/j;-><init>(Lq5/x;I)V

    .line 138
    .line 139
    .line 140
    new-instance v4, Lq5/j;

    .line 141
    .line 142
    const/4 v7, 0x2

    .line 143
    invoke-direct {v4, v2, v7}, Lq5/j;-><init>(Lq5/x;I)V

    .line 144
    .line 145
    .line 146
    new-instance v2, Lt5/p;

    .line 147
    .line 148
    const/4 v7, 0x0

    .line 149
    const-class v8, Ljava/util/concurrent/atomic/AtomicLong;

    .line 150
    .line 151
    invoke-direct {v2, v8, v4, v7}, Lt5/p;-><init>(Ljava/lang/Class;Lq5/x;I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    new-instance v2, Lq5/j;

    .line 158
    .line 159
    const/4 v4, 0x1

    .line 160
    invoke-direct {v2, v0, v4}, Lq5/j;-><init>(Lq5/x;I)V

    .line 161
    .line 162
    .line 163
    new-instance v0, Lq5/j;

    .line 164
    .line 165
    const/4 v4, 0x2

    .line 166
    invoke-direct {v0, v2, v4}, Lq5/j;-><init>(Lq5/x;I)V

    .line 167
    .line 168
    .line 169
    new-instance v2, Lt5/p;

    .line 170
    .line 171
    const/4 v4, 0x0

    .line 172
    const-class v7, Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 173
    .line 174
    invoke-direct {v2, v7, v0, v4}, Lt5/p;-><init>(Ljava/lang/Class;Lq5/x;I)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    sget-object v0, Lt5/s;->j:Lt5/p;

    .line 181
    .line 182
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    sget-object v0, Lt5/s;->l:Lt5/q;

    .line 186
    .line 187
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    sget-object v0, Lt5/s;->q:Lt5/p;

    .line 191
    .line 192
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    sget-object v0, Lt5/s;->r:Lt5/p;

    .line 196
    .line 197
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    sget-object v0, Lt5/s;->m:Lt5/h;

    .line 201
    .line 202
    new-instance v2, Lt5/p;

    .line 203
    .line 204
    const-class v7, Ljava/math/BigDecimal;

    .line 205
    .line 206
    invoke-direct {v2, v7, v0, v4}, Lt5/p;-><init>(Ljava/lang/Class;Lq5/x;I)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    sget-object v0, Lt5/s;->n:Lt5/h;

    .line 213
    .line 214
    new-instance v2, Lt5/p;

    .line 215
    .line 216
    const-class v7, Ljava/math/BigInteger;

    .line 217
    .line 218
    invoke-direct {v2, v7, v0, v4}, Lt5/p;-><init>(Ljava/lang/Class;Lq5/x;I)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    sget-object v0, Lt5/s;->o:Lt5/h;

    .line 225
    .line 226
    new-instance v2, Lt5/p;

    .line 227
    .line 228
    const-class v7, Ls5/i;

    .line 229
    .line 230
    invoke-direct {v2, v7, v0, v4}, Lt5/p;-><init>(Ljava/lang/Class;Lq5/x;I)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    sget-object v0, Lt5/s;->s:Lt5/p;

    .line 237
    .line 238
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    sget-object v0, Lt5/s;->t:Lt5/p;

    .line 242
    .line 243
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    sget-object v0, Lt5/s;->v:Lt5/p;

    .line 247
    .line 248
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    sget-object v0, Lt5/s;->w:Lt5/p;

    .line 252
    .line 253
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    sget-object v0, Lt5/s;->y:Lt5/p;

    .line 257
    .line 258
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    sget-object v0, Lt5/s;->u:Lt5/p;

    .line 262
    .line 263
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    sget-object v0, Lt5/s;->b:Lt5/p;

    .line 267
    .line 268
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    sget-object v0, Lt5/d;->c:Lt5/a;

    .line 272
    .line 273
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    sget-object v0, Lt5/s;->x:Lt5/g;

    .line 277
    .line 278
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    sget-boolean v0, Lv5/c;->a:Z

    .line 282
    .line 283
    if-eqz v0, :cond_12b

    .line 284
    .line 285
    sget-object v0, Lv5/c;->e:Lt5/a;

    .line 286
    .line 287
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    sget-object v0, Lv5/c;->d:Lt5/a;

    .line 291
    .line 292
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    sget-object v0, Lv5/c;->f:Lt5/a;

    .line 296
    .line 297
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    :cond_12b
    sget-object v0, Lt5/b;->c:Lt5/a;

    .line 301
    .line 302
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    sget-object v0, Lt5/s;->a:Lt5/p;

    .line 306
    .line 307
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    new-instance v0, Lt5/c;

    .line 311
    .line 312
    const/4 v2, 0x0

    .line 313
    invoke-direct {v0, v1, v2}, Lt5/c;-><init>(Lp4/p;I)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    new-instance v0, Lt5/c;

    .line 320
    .line 321
    const/4 v2, 0x2

    .line 322
    invoke-direct {v0, v1, v2}, Lt5/c;-><init>(Lp4/p;I)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    new-instance v4, Lt5/c;

    .line 329
    .line 330
    const/4 v0, 0x1

    .line 331
    invoke-direct {v4, v1, v0}, Lt5/c;-><init>(Lp4/p;I)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    sget-object v0, Lt5/s;->A:Lt5/a;

    .line 338
    .line 339
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    new-instance v0, Lt5/n;

    .line 343
    .line 344
    sget-object v2, Lq5/h;->a:Lq5/a;

    .line 345
    .line 346
    invoke-direct/range {v0 .. v5}, Lt5/n;-><init>(Lp4/p;Lq5/h;Ls5/g;Lt5/c;Ljava/util/List;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 353
    .line 354
    .line 355
    return-void
.end method

.method public static a(Ljava/lang/String;)Li8/i;
    .registers 8

    .line 1
    const-string v0, "application/json"

    .line 2
    .line 3
    const-string v1, "GET "

    .line 4
    .line 5
    const-string v2, "GET"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    :try_start_7
    const-string v4, "RequestUtil"

    .line 9
    .line 10
    new-instance v5, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    new-instance v1, Ljava/net/URL;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_69

    .line 35
    .line 36
    :try_start_23
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/16 v1, 0x2710

    .line 40
    .line 41
    invoke-virtual {p0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 42
    .line 43
    .line 44
    const/16 v1, 0x3a98

    .line 45
    .line 46
    invoke-virtual {p0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 47
    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-virtual {p0, v1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 51
    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 55
    .line 56
    .line 57
    const-string v3, "Accept"

    .line 58
    .line 59
    invoke-virtual {p0, v3, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    invoke-static {p0, v3}, Li8/j;->c(Ljava/net/HttpURLConnection;I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    if-eqz v5, :cond_5b

    .line 75
    .line 76
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 77
    .line 78
    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_5b

    .line 87
    .line 88
    move v1, v2

    .line 89
    goto :goto_5b

    .line 90
    :goto_59
    move-object v3, p0

    .line 91
    goto :goto_6a

    .line 92
    :cond_5b
    :goto_5b
    new-instance v0, Li8/i;

    .line 93
    .line 94
    invoke-virtual {p0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 95
    .line 96
    .line 97
    invoke-direct {v0, v4, v3, v1}, Li8/i;-><init>(Ljava/lang/String;IZ)V
    :try_end_63
    .catchall {:try_start_23 .. :try_end_63} :catchall_67

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 101
    .line 102
    .line 103
    return-object v0

    .line 104
    :catchall_67
    move-exception v0

    .line 105
    goto :goto_59

    .line 106
    :catchall_69
    move-exception v0

    .line 107
    :goto_6a
    if-eqz v3, :cond_6f

    .line 108
    .line 109
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 110
    .line 111
    .line 112
    :cond_6f
    throw v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Li8/i;
    .registers 14

    .line 1
    const-string v0, "application/json"

    .line 2
    .line 3
    const-string v1, "RequestUtil"

    .line 4
    .line 5
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 6
    .line 7
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    :goto_c
    :try_start_c
    new-instance v4, Ljava/net/URL;

    .line 14
    .line 15
    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v5, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v6, "POST "

    .line 24
    .line 25
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    check-cast p0, Ljava/net/HttpURLConnection;

    .line 43
    .line 44
    const-string v5, "POST"

    .line 45
    .line 46
    invoke-virtual {p0, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const/16 v5, 0x2710

    .line 50
    .line 51
    invoke-virtual {p0, v5}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 52
    .line 53
    .line 54
    const/16 v5, 0x3a98

    .line 55
    .line 56
    invoke-virtual {p0, v5}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v2}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 60
    .line 61
    .line 62
    const/4 v5, 0x1

    .line 63
    invoke-virtual {p0, v5}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v5}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 70
    .line 71
    .line 72
    const-string v6, "Content-Type"

    .line 73
    .line 74
    const-string v7, "application/json; charset=UTF-8"

    .line 75
    .line 76
    invoke-virtual {p0, v6, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const-string v6, "Accept"

    .line 80
    .line 81
    invoke-virtual {p0, v6, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    array-length v6, p1

    .line 85
    invoke-virtual {p0, v6}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 89
    .line 90
    .line 91
    move-result-object v6
    :try_end_5b
    .catch Ljava/net/ProtocolException; {:try_start_c .. :try_end_5b} :catch_bd
    .catchall {:try_start_c .. :try_end_5b} :catchall_da

    .line 92
    :try_start_5b
    invoke-virtual {v6, p1}, Ljava/io/OutputStream;->write([B)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V
    :try_end_61
    .catchall {:try_start_5b .. :try_end_61} :catchall_ce

    .line 96
    .line 97
    .line 98
    :try_start_61
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    invoke-static {p0, v6}, Li8/j;->c(Ljava/net/HttpURLConnection;I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v8

    .line 113
    if-eqz v8, :cond_7f

    .line 114
    .line 115
    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 116
    .line 117
    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v8

    .line 121
    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 122
    .line 123
    .line 124
    move-result v8

    .line 125
    if-eqz v8, :cond_7f

    .line 126
    .line 127
    goto :goto_80

    .line 128
    :cond_7f
    move v5, v2

    .line 129
    :goto_80
    const/16 v8, 0x12d

    .line 130
    .line 131
    const/16 v9, 0x134

    .line 132
    .line 133
    const/16 v10, 0x133

    .line 134
    .line 135
    if-eq v6, v8, :cond_94

    .line 136
    .line 137
    const/16 v8, 0x12e

    .line 138
    .line 139
    if-eq v6, v8, :cond_94

    .line 140
    .line 141
    const/16 v8, 0x12f

    .line 142
    .line 143
    if-eq v6, v8, :cond_94

    .line 144
    .line 145
    if-eq v6, v10, :cond_94

    .line 146
    .line 147
    if-ne v6, v9, :cond_c5

    .line 148
    .line 149
    :cond_94
    const/4 v8, 0x5

    .line 150
    if-ge v3, v8, :cond_c5

    .line 151
    .line 152
    const-string v8, "Location"

    .line 153
    .line 154
    invoke-virtual {p0, v8}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v8

    .line 158
    if-eqz v8, :cond_c5

    .line 159
    .line 160
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 161
    .line 162
    .line 163
    move-result v11

    .line 164
    if-nez v11, :cond_c5

    .line 165
    .line 166
    add-int/lit8 v3, v3, 0x1

    .line 167
    .line 168
    new-instance v5, Ljava/net/URL;

    .line 169
    .line 170
    invoke-direct {v5, v4, v8}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    if-eq v6, v10, :cond_bf

    .line 178
    .line 179
    if-ne v6, v9, :cond_b5

    .line 180
    .line 181
    goto :goto_bf

    .line 182
    :cond_b5
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 183
    .line 184
    .line 185
    invoke-static {v4}, Li8/j;->a(Ljava/lang/String;)Li8/i;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    return-object p0

    .line 190
    :catch_bd
    move-exception p0

    .line 191
    goto :goto_dc

    .line 192
    :cond_bf
    :goto_bf
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 193
    .line 194
    .line 195
    move-object p0, v4

    .line 196
    goto/16 :goto_c

    .line 197
    .line 198
    :cond_c5
    new-instance p1, Li8/i;

    .line 199
    .line 200
    invoke-virtual {p0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 201
    .line 202
    .line 203
    invoke-direct {p1, v7, v6, v5}, Li8/i;-><init>(Ljava/lang/String;IZ)V
    :try_end_cd
    .catch Ljava/net/ProtocolException; {:try_start_61 .. :try_end_cd} :catch_bd
    .catchall {:try_start_61 .. :try_end_cd} :catchall_da

    .line 204
    .line 205
    .line 206
    return-object p1

    .line 207
    :catchall_ce
    move-exception p0

    .line 208
    if-eqz v6, :cond_d9

    .line 209
    .line 210
    :try_start_d1
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_d4
    .catchall {:try_start_d1 .. :try_end_d4} :catchall_d5

    .line 211
    .line 212
    .line 213
    goto :goto_d9

    .line 214
    :catchall_d5
    move-exception p1

    .line 215
    :try_start_d6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 216
    .line 217
    .line 218
    :cond_d9
    :goto_d9
    throw p0
    :try_end_da
    .catch Ljava/net/ProtocolException; {:try_start_d6 .. :try_end_da} :catch_bd
    .catchall {:try_start_d6 .. :try_end_da} :catchall_da

    .line 219
    :catchall_da
    move-exception p0

    .line 220
    throw p0

    .line 221
    :goto_dc
    new-instance p1, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    const-string v0, "ProtocolException: "

    .line 224
    .line 225
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 240
    .line 241
    .line 242
    throw p0
.end method

.method public static c(Ljava/net/HttpURLConnection;I)Ljava/lang/String;
    .registers 4

    .line 1
    const/16 v0, 0xc8

    .line 2
    .line 3
    if-lt p1, v0, :cond_d

    .line 4
    .line 5
    const/16 v0, 0x12c

    .line 6
    .line 7
    if-ge p1, v0, :cond_d

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto :goto_11

    .line 14
    :cond_d
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    :goto_11
    if-nez p1, :cond_16

    .line 19
    .line 20
    const-string p0, ""

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_16
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    if-eqz p0, :cond_45

    .line 28
    .line 29
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const-string v0, "gzip"

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_31

    .line 42
    .line 43
    new-instance p0, Ljava/util/zip/GZIPInputStream;

    .line 44
    .line 45
    invoke-direct {p0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 46
    .line 47
    .line 48
    :goto_2f
    move-object p1, p0

    .line 49
    goto :goto_45

    .line 50
    :cond_31
    const-string v0, "deflate"

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    if-eqz p0, :cond_45

    .line 57
    .line 58
    new-instance p0, Ljava/util/zip/InflaterInputStream;

    .line 59
    .line 60
    new-instance v0, Ljava/util/zip/Inflater;

    .line 61
    .line 62
    const/4 v1, 0x1

    .line 63
    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 64
    .line 65
    .line 66
    invoke-direct {p0, p1, v0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    .line 67
    .line 68
    .line 69
    goto :goto_2f

    .line 70
    :cond_45
    :goto_45
    new-instance p0, Ljava/io/BufferedReader;

    .line 71
    .line 72
    new-instance v0, Ljava/io/InputStreamReader;

    .line 73
    .line 74
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 75
    .line 76
    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 77
    .line 78
    .line 79
    invoke-direct {p0, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 80
    .line 81
    .line 82
    :try_start_51
    new-instance p1, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    :goto_56
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    if-eqz v0, :cond_62

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    goto :goto_56

    .line 97
    :catchall_60
    move-exception p1

    .line 98
    goto :goto_6a

    .line 99
    :cond_62
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1
    :try_end_66
    .catchall {:try_start_51 .. :try_end_66} :catchall_60

    .line 103
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    .line 104
    .line 105
    .line 106
    return-object p1

    .line 107
    :goto_6a
    :try_start_6a
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_6e

    .line 108
    .line 109
    .line 110
    goto :goto_72

    .line 111
    :catchall_6e
    move-exception p0

    .line 112
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 113
    .line 114
    .line 115
    :goto_72
    throw p1
.end method
