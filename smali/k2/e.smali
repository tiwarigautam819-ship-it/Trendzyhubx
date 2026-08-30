###### Class k2.e (k2.e)
.class public abstract Lk2/e;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# direct methods
.method public static a()Le8/e;
    .registers 7

    .line 1
    sget-object v0, Le8/e;->l:Le8/e;

    .line 2
    .line 3
    invoke-static {v0}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Le8/e;->f:Le8/e;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_2f

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    sget-object v0, Le8/e;->i:Ljava/util/concurrent/locks/Condition;

    .line 16
    .line 17
    sget-wide v4, Le8/e;->j:J

    .line 18
    .line 19
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 20
    .line 21
    invoke-interface {v0, v4, v5, v6}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 22
    .line 23
    .line 24
    sget-object v0, Le8/e;->l:Le8/e;

    .line 25
    .line 26
    invoke-static {v0}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, v0, Le8/e;->f:Le8/e;

    .line 30
    .line 31
    if-nez v0, :cond_2e

    .line 32
    .line 33
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 34
    .line 35
    .line 36
    move-result-wide v4

    .line 37
    sub-long/2addr v4, v2

    .line 38
    sget-wide v2, Le8/e;->k:J

    .line 39
    .line 40
    cmp-long v0, v4, v2

    .line 41
    .line 42
    if-ltz v0, :cond_2e

    .line 43
    .line 44
    sget-object v0, Le8/e;->l:Le8/e;

    .line 45
    .line 46
    return-object v0

    .line 47
    :cond_2e
    return-object v1

    .line 48
    :cond_2f
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 49
    .line 50
    .line 51
    move-result-wide v2

    .line 52
    iget-wide v4, v0, Le8/e;->g:J

    .line 53
    .line 54
    sub-long/2addr v4, v2

    .line 55
    const-wide/16 v2, 0x0

    .line 56
    .line 57
    cmp-long v2, v4, v2

    .line 58
    .line 59
    if-lez v2, :cond_44

    .line 60
    .line 61
    sget-object v0, Le8/e;->i:Ljava/util/concurrent/locks/Condition;

    .line 62
    .line 63
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 64
    .line 65
    invoke-interface {v0, v4, v5, v2}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 66
    .line 67
    .line 68
    return-object v1

    .line 69
    :cond_44
    sget-object v2, Le8/e;->l:Le8/e;

    .line 70
    .line 71
    invoke-static {v2}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    iget-object v3, v0, Le8/e;->f:Le8/e;

    .line 75
    .line 76
    iput-object v3, v2, Le8/e;->f:Le8/e;

    .line 77
    .line 78
    iput-object v1, v0, Le8/e;->f:Le8/e;

    .line 79
    .line 80
    return-object v0
.end method

.method public static b(Ljava/util/AbstractList;Ljava/net/HttpURLConnection;Lx1/l;)Ljava/util/ArrayList;
    .registers 7

    .line 1
    const-string v0, "requests"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-static {p0}, Ls6/i;->n(Ljava/lang/Iterable;)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_2c

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lx1/z;

    .line 30
    .line 31
    new-instance v2, Lx1/c0;

    .line 32
    .line 33
    new-instance v3, Lx1/o;

    .line 34
    .line 35
    invoke-direct {v3, p2}, Lx1/o;-><init>(Ljava/lang/Exception;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {v2, v1, p1, v3}, Lx1/c0;-><init>(Lx1/z;Ljava/net/HttpURLConnection;Lx1/o;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    goto :goto_12

    .line 45
    :cond_2c
    return-object v0
.end method

.method public static final c(Ljava/lang/Throwable;)Lr6/e;
    .registers 2

    .line 1
    const-string v0, "exception"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lr6/e;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lr6/e;-><init>(Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static d(Lx1/z;Ljava/net/HttpURLConnection;Ljava/lang/Object;Ljava/lang/Object;)Lx1/c0;
    .registers 28

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    const-string v3, "body"

    .line 8
    .line 9
    const-string v4, "FACEBOOK_NON_JSON_RESULT"

    .line 10
    .line 11
    instance-of v5, v0, Lorg/json/JSONObject;

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    if-eqz v5, :cond_1e1

    .line 15
    .line 16
    check-cast v0, Lorg/json/JSONObject;

    .line 17
    .line 18
    const-string v5, "error_code"

    .line 19
    .line 20
    const-string v7, "error"

    .line 21
    .line 22
    const-string v8, "code"

    .line 23
    .line 24
    :try_start_17
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v10

    .line 28
    if-eqz v10, :cond_11a

    .line 29
    .line 30
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v12

    .line 34
    invoke-static {v0, v3, v4}, Lq2/g0;->v(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v10

    .line 38
    if-eqz v10, :cond_f0

    .line 39
    .line 40
    instance-of v11, v10, Lorg/json/JSONObject;

    .line 41
    .line 42
    if-eqz v11, :cond_f0

    .line 43
    .line 44
    move-object v11, v10

    .line 45
    check-cast v11, Lorg/json/JSONObject;

    .line 46
    .line 47
    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v11
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_32} :catch_11a

    .line 51
    const-string v13, "error_subcode"

    .line 52
    .line 53
    const/4 v14, 0x0

    .line 54
    const/4 v15, -0x1

    .line 55
    if-eqz v11, :cond_8c

    .line 56
    .line 57
    :try_start_38
    move-object v5, v10

    .line 58
    check-cast v5, Lorg/json/JSONObject;

    .line 59
    .line 60
    invoke-static {v5, v7, v6}, Lq2/g0;->v(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    check-cast v5, Lorg/json/JSONObject;

    .line 65
    .line 66
    if-eqz v5, :cond_4a

    .line 67
    .line 68
    const-string v7, "type"

    .line 69
    .line 70
    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    goto :goto_4b

    .line 75
    :cond_4a
    move-object v7, v6

    .line 76
    :goto_4b
    if-eqz v5, :cond_54

    .line 77
    .line 78
    const-string v11, "message"

    .line 79
    .line 80
    invoke-virtual {v5, v11, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v11

    .line 84
    goto :goto_55

    .line 85
    :cond_54
    move-object v11, v6

    .line 86
    :goto_55
    if-eqz v5, :cond_5c

    .line 87
    .line 88
    invoke-virtual {v5, v8, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 89
    .line 90
    .line 91
    move-result v8

    .line 92
    goto :goto_5d

    .line 93
    :cond_5c
    move v8, v15

    .line 94
    :goto_5d
    if-eqz v5, :cond_63

    .line 95
    .line 96
    invoke-virtual {v5, v13, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 97
    .line 98
    .line 99
    move-result v15

    .line 100
    :cond_63
    if-eqz v5, :cond_6c

    .line 101
    .line 102
    const-string v13, "error_user_msg"

    .line 103
    .line 104
    invoke-virtual {v5, v13, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v13

    .line 108
    goto :goto_6d

    .line 109
    :cond_6c
    move-object v13, v6

    .line 110
    :goto_6d
    if-eqz v5, :cond_76

    .line 111
    .line 112
    const-string v9, "error_user_title"

    .line 113
    .line 114
    invoke-virtual {v5, v9, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v9

    .line 118
    goto :goto_77

    .line 119
    :cond_76
    move-object v9, v6

    .line 120
    :goto_77
    if-eqz v5, :cond_7f

    .line 121
    .line 122
    const-string v6, "is_transient"

    .line 123
    .line 124
    invoke-virtual {v5, v6, v14}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 125
    .line 126
    .line 127
    move-result v14

    .line 128
    :cond_7f
    move-object/from16 v17, v9

    .line 129
    .line 130
    move-object/from16 v16, v11

    .line 131
    .line 132
    move-object/from16 v18, v13

    .line 133
    .line 134
    move/from16 v21, v14

    .line 135
    .line 136
    move v5, v15

    .line 137
    const/4 v14, 0x1

    .line 138
    move-object v15, v7

    .line 139
    move v13, v8

    .line 140
    goto :goto_e1

    .line 141
    :cond_8c
    move-object v6, v10

    .line 142
    check-cast v6, Lorg/json/JSONObject;

    .line 143
    .line 144
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 145
    .line 146
    .line 147
    move-result v6
    :try_end_93
    .catch Lorg/json/JSONException; {:try_start_38 .. :try_end_93} :catch_11a

    .line 148
    const-string v7, "error_reason"

    .line 149
    .line 150
    const-string v8, "error_msg"

    .line 151
    .line 152
    if-nez v6, :cond_b8

    .line 153
    .line 154
    :try_start_99
    move-object v6, v10

    .line 155
    check-cast v6, Lorg/json/JSONObject;

    .line 156
    .line 157
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 158
    .line 159
    .line 160
    move-result v6

    .line 161
    if-nez v6, :cond_b8

    .line 162
    .line 163
    move-object v6, v10

    .line 164
    check-cast v6, Lorg/json/JSONObject;

    .line 165
    .line 166
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 167
    .line 168
    .line 169
    move-result v6

    .line 170
    if-eqz v6, :cond_ac

    .line 171
    .line 172
    goto :goto_b8

    .line 173
    :cond_ac
    move/from16 v21, v14

    .line 174
    .line 175
    move v5, v15

    .line 176
    move v13, v5

    .line 177
    const/4 v15, 0x0

    .line 178
    const/16 v16, 0x0

    .line 179
    .line 180
    const/16 v17, 0x0

    .line 181
    .line 182
    const/16 v18, 0x0

    .line 183
    .line 184
    goto :goto_e1

    .line 185
    :cond_b8
    :goto_b8
    move-object v6, v10

    .line 186
    check-cast v6, Lorg/json/JSONObject;

    .line 187
    .line 188
    const/4 v9, 0x0

    .line 189
    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v7

    .line 193
    move-object v6, v10

    .line 194
    check-cast v6, Lorg/json/JSONObject;

    .line 195
    .line 196
    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v11

    .line 200
    move-object v6, v10

    .line 201
    check-cast v6, Lorg/json/JSONObject;

    .line 202
    .line 203
    invoke-virtual {v6, v5, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 204
    .line 205
    .line 206
    move-result v5

    .line 207
    move-object v6, v10

    .line 208
    check-cast v6, Lorg/json/JSONObject;

    .line 209
    .line 210
    invoke-virtual {v6, v13, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 211
    .line 212
    .line 213
    move-result v15

    .line 214
    move v13, v5

    .line 215
    move-object/from16 v16, v11

    .line 216
    .line 217
    move/from16 v21, v14

    .line 218
    .line 219
    move v5, v15

    .line 220
    const/4 v14, 0x1

    .line 221
    const/16 v17, 0x0

    .line 222
    .line 223
    const/16 v18, 0x0

    .line 224
    .line 225
    move-object v15, v7

    .line 226
    :goto_e1
    if-eqz v14, :cond_f0

    .line 227
    .line 228
    new-instance v11, Lx1/o;

    .line 229
    .line 230
    check-cast v10, Lorg/json/JSONObject;

    .line 231
    .line 232
    const/16 v20, 0x0

    .line 233
    .line 234
    move-object/from16 v19, p3

    .line 235
    .line 236
    move v14, v5

    .line 237
    invoke-direct/range {v11 .. v21}, Lx1/o;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lx1/l;Z)V

    .line 238
    .line 239
    .line 240
    goto :goto_11b

    .line 241
    :cond_f0
    const/16 v5, 0x12b

    .line 242
    .line 243
    if-gt v12, v5, :cond_f9

    .line 244
    .line 245
    const/16 v5, 0xc8

    .line 246
    .line 247
    if-gt v5, v12, :cond_f9

    .line 248
    .line 249
    goto :goto_11a

    .line 250
    :cond_f9
    new-instance v11, Lx1/o;

    .line 251
    .line 252
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 253
    .line 254
    .line 255
    move-result v5

    .line 256
    if-eqz v5, :cond_107

    .line 257
    .line 258
    invoke-static {v0, v3, v4}, Lq2/g0;->v(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v5

    .line 262
    check-cast v5, Lorg/json/JSONObject;

    .line 263
    .line 264
    :cond_107
    const/16 v20, 0x0

    .line 265
    .line 266
    const/16 v21, 0x0

    .line 267
    .line 268
    const/4 v13, -0x1

    .line 269
    const/4 v14, -0x1

    .line 270
    const/4 v15, 0x0

    .line 271
    const/16 v16, 0x0

    .line 272
    .line 273
    const/16 v17, 0x0

    .line 274
    .line 275
    const/16 v18, 0x0

    .line 276
    .line 277
    move-object/from16 v19, p3

    .line 278
    .line 279
    invoke-direct/range {v11 .. v21}, Lx1/o;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lx1/l;Z)V
    :try_end_119
    .catch Lorg/json/JSONException; {:try_start_99 .. :try_end_119} :catch_11a

    .line 280
    .line 281
    .line 282
    goto :goto_11b

    .line 283
    :catch_11a
    :cond_11a
    :goto_11a
    const/4 v11, 0x0

    .line 284
    :goto_11b
    if-eqz v11, :cond_1a8

    .line 285
    .line 286
    const-string v0, "x1.c0"

    .line 287
    .line 288
    invoke-virtual {v11}, Lx1/o;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v3

    .line 292
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    .line 294
    .line 295
    iget v0, v11, Lx1/o;->b:I

    .line 296
    .line 297
    const/16 v3, 0xbe

    .line 298
    .line 299
    if-ne v0, v3, :cond_1a2

    .line 300
    .line 301
    iget-object v0, v1, Lx1/z;->a:Lx1/a;

    .line 302
    .line 303
    if-eqz v0, :cond_1a2

    .line 304
    .line 305
    sget-object v3, Lx1/a;->l:Ljava/util/Date;

    .line 306
    .line 307
    invoke-static {}, Lh8/b;->f()Lx1/a;

    .line 308
    .line 309
    .line 310
    move-result-object v3

    .line 311
    invoke-virtual {v0, v3}, Lx1/a;->equals(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    if-eqz v0, :cond_1a2

    .line 316
    .line 317
    iget v0, v11, Lx1/o;->c:I

    .line 318
    .line 319
    const/16 v3, 0x1ed

    .line 320
    .line 321
    sget-object v4, Lx1/e;->f:Lo3/a;

    .line 322
    .line 323
    if-eq v0, v3, :cond_14e

    .line 324
    .line 325
    invoke-virtual {v4}, Lo3/a;->d()Lx1/e;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    const/4 v3, 0x1

    .line 330
    const/4 v9, 0x0

    .line 331
    invoke-virtual {v0, v9, v3}, Lx1/e;->c(Lx1/a;Z)V

    .line 332
    .line 333
    .line 334
    goto :goto_1a2

    .line 335
    :cond_14e
    invoke-static {}, Lh8/b;->f()Lx1/a;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    if-eqz v0, :cond_1a2

    .line 340
    .line 341
    new-instance v3, Ljava/util/Date;

    .line 342
    .line 343
    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 344
    .line 345
    .line 346
    iget-object v0, v0, Lx1/a;->a:Ljava/util/Date;

    .line 347
    .line 348
    invoke-virtual {v3, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    .line 349
    .line 350
    .line 351
    move-result v0

    .line 352
    if-nez v0, :cond_1a2

    .line 353
    .line 354
    invoke-virtual {v4}, Lo3/a;->d()Lx1/e;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    iget-object v0, v0, Lx1/e;->c:Lx1/a;

    .line 359
    .line 360
    if-eqz v0, :cond_1a2

    .line 361
    .line 362
    new-instance v12, Lx1/a;

    .line 363
    .line 364
    iget-object v13, v0, Lx1/a;->e:Ljava/lang/String;

    .line 365
    .line 366
    iget-object v14, v0, Lx1/a;->h:Ljava/lang/String;

    .line 367
    .line 368
    iget-object v15, v0, Lx1/a;->i:Ljava/lang/String;

    .line 369
    .line 370
    iget-object v3, v0, Lx1/a;->b:Ljava/util/Set;

    .line 371
    .line 372
    move-object/from16 v16, v3

    .line 373
    .line 374
    check-cast v16, Ljava/util/Collection;

    .line 375
    .line 376
    iget-object v3, v0, Lx1/a;->c:Ljava/util/Set;

    .line 377
    .line 378
    move-object/from16 v17, v3

    .line 379
    .line 380
    check-cast v17, Ljava/util/Collection;

    .line 381
    .line 382
    iget-object v3, v0, Lx1/a;->d:Ljava/util/Set;

    .line 383
    .line 384
    move-object/from16 v18, v3

    .line 385
    .line 386
    check-cast v18, Ljava/util/Collection;

    .line 387
    .line 388
    iget-object v3, v0, Lx1/a;->f:Lx1/f;

    .line 389
    .line 390
    new-instance v20, Ljava/util/Date;

    .line 391
    .line 392
    invoke-direct/range {v20 .. v20}, Ljava/util/Date;-><init>()V

    .line 393
    .line 394
    .line 395
    new-instance v21, Ljava/util/Date;

    .line 396
    .line 397
    invoke-direct/range {v21 .. v21}, Ljava/util/Date;-><init>()V

    .line 398
    .line 399
    .line 400
    iget-object v0, v0, Lx1/a;->j:Ljava/util/Date;

    .line 401
    .line 402
    const-string v23, "facebook"

    .line 403
    .line 404
    move-object/from16 v22, v0

    .line 405
    .line 406
    move-object/from16 v19, v3

    .line 407
    .line 408
    invoke-direct/range {v12 .. v23}, Lx1/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lx1/f;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v4}, Lo3/a;->d()Lx1/e;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    const/4 v3, 0x1

    .line 416
    invoke-virtual {v0, v12, v3}, Lx1/e;->c(Lx1/a;Z)V

    .line 417
    .line 418
    .line 419
    :cond_1a2
    :goto_1a2
    new-instance v0, Lx1/c0;

    .line 420
    .line 421
    invoke-direct {v0, v1, v2, v11}, Lx1/c0;-><init>(Lx1/z;Ljava/net/HttpURLConnection;Lx1/o;)V

    .line 422
    .line 423
    .line 424
    return-object v0

    .line 425
    :cond_1a8
    invoke-static {v0, v3, v4}, Lq2/g0;->v(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    instance-of v3, v0, Lorg/json/JSONObject;

    .line 430
    .line 431
    if-eqz v3, :cond_1bc

    .line 432
    .line 433
    new-instance v3, Lx1/c0;

    .line 434
    .line 435
    check-cast v0, Lorg/json/JSONObject;

    .line 436
    .line 437
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v4

    .line 441
    invoke-direct {v3, v1, v2, v4, v0}, Lx1/c0;-><init>(Lx1/z;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 442
    .line 443
    .line 444
    return-object v3

    .line 445
    :cond_1bc
    instance-of v3, v0, Lorg/json/JSONArray;

    .line 446
    .line 447
    if-eqz v3, :cond_1da

    .line 448
    .line 449
    move-object v3, v0

    .line 450
    new-instance v0, Lx1/c0;

    .line 451
    .line 452
    move-object v4, v3

    .line 453
    check-cast v4, Lorg/json/JSONArray;

    .line 454
    .line 455
    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v3

    .line 459
    const-string v5, "request"

    .line 460
    .line 461
    invoke-static {v5, v1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 462
    .line 463
    .line 464
    const-string v5, "rawResponse"

    .line 465
    .line 466
    invoke-static {v5, v3}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 467
    .line 468
    .line 469
    const/4 v3, 0x0

    .line 470
    const/4 v5, 0x0

    .line 471
    invoke-direct/range {v0 .. v5}, Lx1/c0;-><init>(Lx1/z;Ljava/net/HttpURLConnection;Lorg/json/JSONObject;Lorg/json/JSONArray;Lx1/o;)V

    .line 472
    .line 473
    .line 474
    return-object v0

    .line 475
    :cond_1da
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 476
    .line 477
    const-string v3, "NULL"

    .line 478
    .line 479
    invoke-static {v3, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 480
    .line 481
    .line 482
    :cond_1e1
    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 483
    .line 484
    if-ne v0, v3, :cond_1f0

    .line 485
    .line 486
    new-instance v3, Lx1/c0;

    .line 487
    .line 488
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v0

    .line 492
    const/4 v9, 0x0

    .line 493
    invoke-direct {v3, v1, v2, v0, v9}, Lx1/c0;-><init>(Lx1/z;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 494
    .line 495
    .line 496
    return-object v3

    .line 497
    :cond_1f0
    new-instance v1, Lx1/l;

    .line 498
    .line 499
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v0

    .line 507
    const-string v2, "Got unexpected object type in response, class: "

    .line 508
    .line 509
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    invoke-direct {v1, v0}, Lx1/l;-><init>(Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    throw v1
.end method

.method public static e(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Lx1/b0;)Ljava/util/ArrayList;
    .registers 16

    .line 1
    const-string v0, "requests"

    .line 2
    .line 3
    invoke-static {v0, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lq2/g0;->J(Ljava/io/InputStream;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    sget-object v0, Lq2/z;->c:Lo3/a;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x2

    .line 21
    new-array v2, v1, [Ljava/lang/Object;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    aput-object v0, v2, v3

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    aput-object p0, v2, v0

    .line 28
    .line 29
    sget-object v4, Lx1/e0;->c:Lx1/e0;

    .line 30
    .line 31
    const-string v5, "Response"

    .line 32
    .line 33
    const-string v6, "Response (raw)\n  Size: %d\n  Response:\n%s\n"

    .line 34
    .line 35
    invoke-static {v4, v5, v6, v2}, Lo3/a;->j(Lx1/e0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    new-instance v2, Lorg/json/JSONTokener;

    .line 39
    .line 40
    invoke-direct {v2, p0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const-string v4, "resultObject"

    .line 48
    .line 49
    invoke-static {v4, v2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iget-object v4, p2, Lx1/b0;->c:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    new-instance v6, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    .line 62
    .line 63
    if-ne v4, v0, :cond_81

    .line 64
    .line 65
    invoke-virtual {p2, v3}, Lx1/b0;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    check-cast v7, Lx1/z;

    .line 70
    .line 71
    :try_start_46
    new-instance v8, Lorg/json/JSONObject;

    .line 72
    .line 73
    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v9, "body"

    .line 77
    .line 78
    invoke-virtual {v8, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 82
    .line 83
    .line 84
    move-result v9

    .line 85
    const-string v10, "code"

    .line 86
    .line 87
    invoke-virtual {v8, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 88
    .line 89
    .line 90
    new-instance v9, Lorg/json/JSONArray;

    .line 91
    .line 92
    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v9, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_61
    .catch Lorg/json/JSONException; {:try_start_46 .. :try_end_61} :catch_64
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_61} :catch_62

    .line 96
    .line 97
    .line 98
    goto :goto_82

    .line 99
    :catch_62
    move-exception v8

    .line 100
    goto :goto_66

    .line 101
    :catch_64
    move-exception v8

    .line 102
    goto :goto_74

    .line 103
    :goto_66
    new-instance v9, Lx1/c0;

    .line 104
    .line 105
    new-instance v10, Lx1/o;

    .line 106
    .line 107
    invoke-direct {v10, v8}, Lx1/o;-><init>(Ljava/lang/Exception;)V

    .line 108
    .line 109
    .line 110
    invoke-direct {v9, v7, p1, v10}, Lx1/c0;-><init>(Lx1/z;Ljava/net/HttpURLConnection;Lx1/o;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    goto :goto_81

    .line 117
    :goto_74
    new-instance v9, Lx1/c0;

    .line 118
    .line 119
    new-instance v10, Lx1/o;

    .line 120
    .line 121
    invoke-direct {v10, v8}, Lx1/o;-><init>(Ljava/lang/Exception;)V

    .line 122
    .line 123
    .line 124
    invoke-direct {v9, v7, p1, v10}, Lx1/c0;-><init>(Lx1/z;Ljava/net/HttpURLConnection;Lx1/o;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    :cond_81
    :goto_81
    move-object v9, v2

    .line 131
    :goto_82
    instance-of v7, v9, Lorg/json/JSONArray;

    .line 132
    .line 133
    if-eqz v7, :cond_ef

    .line 134
    .line 135
    move-object v7, v9

    .line 136
    check-cast v7, Lorg/json/JSONArray;

    .line 137
    .line 138
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    .line 139
    .line 140
    .line 141
    move-result v8

    .line 142
    if-ne v8, v4, :cond_ef

    .line 143
    .line 144
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    move v7, v3

    .line 149
    :goto_94
    if-ge v7, v4, :cond_d2

    .line 150
    .line 151
    invoke-virtual {p2, v7}, Lx1/b0;->get(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v8

    .line 155
    check-cast v8, Lx1/z;

    .line 156
    .line 157
    :try_start_9c
    move-object v10, v9

    .line 158
    check-cast v10, Lorg/json/JSONArray;

    .line 159
    .line 160
    invoke-virtual {v10, v7}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v10

    .line 164
    const-string v11, "obj"

    .line 165
    .line 166
    invoke-static {v11, v10}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    invoke-static {v8, p1, v10, v2}, Lk2/e;->d(Lx1/z;Ljava/net/HttpURLConnection;Ljava/lang/Object;Ljava/lang/Object;)Lx1/c0;

    .line 170
    .line 171
    .line 172
    move-result-object v10

    .line 173
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_af
    .catch Lorg/json/JSONException; {:try_start_9c .. :try_end_af} :catch_b2
    .catch Lx1/l; {:try_start_9c .. :try_end_af} :catch_b0

    .line 174
    .line 175
    .line 176
    goto :goto_cf

    .line 177
    :catch_b0
    move-exception v10

    .line 178
    goto :goto_b4

    .line 179
    :catch_b2
    move-exception v10

    .line 180
    goto :goto_c2

    .line 181
    :goto_b4
    new-instance v11, Lx1/c0;

    .line 182
    .line 183
    new-instance v12, Lx1/o;

    .line 184
    .line 185
    invoke-direct {v12, v10}, Lx1/o;-><init>(Ljava/lang/Exception;)V

    .line 186
    .line 187
    .line 188
    invoke-direct {v11, v8, p1, v12}, Lx1/c0;-><init>(Lx1/z;Ljava/net/HttpURLConnection;Lx1/o;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    goto :goto_cf

    .line 195
    :goto_c2
    new-instance v11, Lx1/c0;

    .line 196
    .line 197
    new-instance v12, Lx1/o;

    .line 198
    .line 199
    invoke-direct {v12, v10}, Lx1/o;-><init>(Ljava/lang/Exception;)V

    .line 200
    .line 201
    .line 202
    invoke-direct {v11, v8, p1, v12}, Lx1/c0;-><init>(Lx1/z;Ljava/net/HttpURLConnection;Lx1/o;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    :goto_cf
    add-int/lit8 v7, v7, 0x1

    .line 209
    .line 210
    goto :goto_94

    .line 211
    :cond_d2
    sget-object p1, Lq2/z;->c:Lo3/a;

    .line 212
    .line 213
    iget-object p1, p2, Lx1/b0;->b:Ljava/lang/String;

    .line 214
    .line 215
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 216
    .line 217
    .line 218
    move-result p0

    .line 219
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    const/4 p2, 0x3

    .line 224
    new-array p2, p2, [Ljava/lang/Object;

    .line 225
    .line 226
    aput-object p1, p2, v3

    .line 227
    .line 228
    aput-object p0, p2, v0

    .line 229
    .line 230
    aput-object v6, p2, v1

    .line 231
    .line 232
    sget-object p0, Lx1/e0;->a:Lx1/e0;

    .line 233
    .line 234
    const-string p1, "Response\n  Id: %s\n  Size: %d\n  Responses:\n%s\n"

    .line 235
    .line 236
    invoke-static {p0, v5, p1, p2}, Lo3/a;->j(Lx1/e0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    return-object v6

    .line 240
    :cond_ef
    new-instance p0, Lx1/l;

    .line 241
    .line 242
    const-string p1, "Unexpected number of results"

    .line 243
    .line 244
    invoke-direct {p0, p1}, Lx1/l;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    throw p0
.end method

.method public static final f(ILjava/lang/String;I)Ljava/net/InetAddress;
    .registers 20

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    const/16 v2, 0x10

    .line 6
    .line 7
    new-array v3, v2, [B

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, -0x1

    .line 11
    move/from16 v6, p0

    .line 12
    .line 13
    move v7, v4

    .line 14
    move v8, v5

    .line 15
    move v9, v8

    .line 16
    :goto_f
    if-ge v6, v1, :cond_cb

    .line 17
    .line 18
    if-ne v7, v2, :cond_15

    .line 19
    .line 20
    goto/16 :goto_cf

    .line 21
    .line 22
    :cond_15
    add-int/lit8 v10, v6, 0x2

    .line 23
    .line 24
    const/16 v11, 0xff

    .line 25
    .line 26
    if-gt v10, v1, :cond_31

    .line 27
    .line 28
    const-string v12, "::"

    .line 29
    .line 30
    invoke-static {v0, v12, v6, v4}, Lk7/o;->u(Ljava/lang/String;Ljava/lang/String;IZ)Z

    .line 31
    .line 32
    .line 33
    move-result v12

    .line 34
    if-eqz v12, :cond_31

    .line 35
    .line 36
    if-eq v8, v5, :cond_27

    .line 37
    .line 38
    goto/16 :goto_cf

    .line 39
    .line 40
    :cond_27
    add-int/lit8 v7, v7, 0x2

    .line 41
    .line 42
    move v8, v7

    .line 43
    if-ne v10, v1, :cond_2e

    .line 44
    .line 45
    goto/16 :goto_cb

    .line 46
    .line 47
    :cond_2e
    move v9, v10

    .line 48
    goto/16 :goto_9e

    .line 49
    .line 50
    :cond_31
    if-eqz v7, :cond_3d

    .line 51
    .line 52
    const-string v10, ":"

    .line 53
    .line 54
    invoke-static {v0, v10, v6, v4}, Lk7/o;->u(Ljava/lang/String;Ljava/lang/String;IZ)Z

    .line 55
    .line 56
    .line 57
    move-result v10

    .line 58
    if-eqz v10, :cond_40

    .line 59
    .line 60
    add-int/lit8 v6, v6, 0x1

    .line 61
    .line 62
    :cond_3d
    move v9, v6

    .line 63
    goto/16 :goto_9e

    .line 64
    .line 65
    :cond_40
    const-string v10, "."

    .line 66
    .line 67
    invoke-static {v0, v10, v6, v4}, Lk7/o;->u(Ljava/lang/String;Ljava/lang/String;IZ)Z

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-eqz v6, :cond_cf

    .line 72
    .line 73
    add-int/lit8 v6, v7, -0x2

    .line 74
    .line 75
    move v10, v6

    .line 76
    :goto_4b
    if-ge v9, v1, :cond_97

    .line 77
    .line 78
    if-ne v10, v2, :cond_51

    .line 79
    .line 80
    goto/16 :goto_cf

    .line 81
    .line 82
    :cond_51
    if-eq v10, v6, :cond_5f

    .line 83
    .line 84
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    .line 85
    .line 86
    .line 87
    move-result v12

    .line 88
    const/16 v13, 0x2e

    .line 89
    .line 90
    if-eq v12, v13, :cond_5d

    .line 91
    .line 92
    goto/16 :goto_cf

    .line 93
    .line 94
    :cond_5d
    add-int/lit8 v9, v9, 0x1

    .line 95
    .line 96
    :cond_5f
    move v13, v4

    .line 97
    move v12, v9

    .line 98
    :goto_61
    if-ge v12, v1, :cond_8a

    .line 99
    .line 100
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    .line 101
    .line 102
    .line 103
    move-result v14

    .line 104
    const/16 v15, 0x30

    .line 105
    .line 106
    invoke-static {v14, v15}, Ld7/g;->g(II)I

    .line 107
    .line 108
    .line 109
    move-result v16

    .line 110
    if-ltz v16, :cond_8a

    .line 111
    .line 112
    move/from16 p0, v15

    .line 113
    .line 114
    const/16 v15, 0x39

    .line 115
    .line 116
    invoke-static {v14, v15}, Ld7/g;->g(II)I

    .line 117
    .line 118
    .line 119
    move-result v15

    .line 120
    if-lez v15, :cond_7a

    .line 121
    .line 122
    goto :goto_8a

    .line 123
    :cond_7a
    if-nez v13, :cond_7f

    .line 124
    .line 125
    if-eq v9, v12, :cond_7f

    .line 126
    .line 127
    goto :goto_cf

    .line 128
    :cond_7f
    mul-int/lit8 v13, v13, 0xa

    .line 129
    .line 130
    add-int/2addr v13, v14

    .line 131
    add-int/lit8 v13, v13, -0x30

    .line 132
    .line 133
    if-le v13, v11, :cond_87

    .line 134
    .line 135
    goto :goto_cf

    .line 136
    :cond_87
    add-int/lit8 v12, v12, 0x1

    .line 137
    .line 138
    goto :goto_61

    .line 139
    :cond_8a
    :goto_8a
    sub-int v9, v12, v9

    .line 140
    .line 141
    if-nez v9, :cond_8f

    .line 142
    .line 143
    goto :goto_cf

    .line 144
    :cond_8f
    add-int/lit8 v9, v10, 0x1

    .line 145
    .line 146
    int-to-byte v13, v13

    .line 147
    aput-byte v13, v3, v10

    .line 148
    .line 149
    move v10, v9

    .line 150
    move v9, v12

    .line 151
    goto :goto_4b

    .line 152
    :cond_97
    add-int/lit8 v0, v7, 0x2

    .line 153
    .line 154
    if-ne v10, v0, :cond_cf

    .line 155
    .line 156
    add-int/lit8 v7, v7, 0x2

    .line 157
    .line 158
    goto :goto_cb

    .line 159
    :goto_9e
    move v10, v4

    .line 160
    move v6, v9

    .line 161
    :goto_a0
    if-ge v6, v1, :cond_b2

    .line 162
    .line 163
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    .line 164
    .line 165
    .line 166
    move-result v12

    .line 167
    invoke-static {v12}, Ls7/b;->q(C)I

    .line 168
    .line 169
    .line 170
    move-result v12

    .line 171
    if-eq v12, v5, :cond_b2

    .line 172
    .line 173
    shl-int/lit8 v10, v10, 0x4

    .line 174
    .line 175
    add-int/2addr v10, v12

    .line 176
    add-int/lit8 v6, v6, 0x1

    .line 177
    .line 178
    goto :goto_a0

    .line 179
    :cond_b2
    sub-int v12, v6, v9

    .line 180
    .line 181
    if-eqz v12, :cond_cf

    .line 182
    .line 183
    const/4 v13, 0x4

    .line 184
    if-le v12, v13, :cond_ba

    .line 185
    .line 186
    goto :goto_cf

    .line 187
    :cond_ba
    add-int/lit8 v12, v7, 0x1

    .line 188
    .line 189
    ushr-int/lit8 v13, v10, 0x8

    .line 190
    .line 191
    and-int/2addr v11, v13

    .line 192
    int-to-byte v11, v11

    .line 193
    aput-byte v11, v3, v7

    .line 194
    .line 195
    add-int/lit8 v7, v7, 0x2

    .line 196
    .line 197
    and-int/lit16 v10, v10, 0xff

    .line 198
    .line 199
    int-to-byte v10, v10

    .line 200
    aput-byte v10, v3, v12

    .line 201
    .line 202
    goto/16 :goto_f

    .line 203
    .line 204
    :cond_cb
    :goto_cb
    if-eq v7, v2, :cond_dd

    .line 205
    .line 206
    if-ne v8, v5, :cond_d1

    .line 207
    .line 208
    :cond_cf
    :goto_cf
    const/4 v0, 0x0

    .line 209
    return-object v0

    .line 210
    :cond_d1
    sub-int v0, v7, v8

    .line 211
    .line 212
    rsub-int/lit8 v1, v0, 0x10

    .line 213
    .line 214
    invoke-static {v3, v8, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    .line 216
    .line 217
    sub-int/2addr v2, v7

    .line 218
    add-int/2addr v2, v8

    .line 219
    invoke-static {v3, v8, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 220
    .line 221
    .line 222
    :cond_dd
    invoke-static {v3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    return-object v0
.end method

.method public static g(Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/ArrayList;
    .registers 13

    .line 1
    const-string v0, "path"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "mapKey"

    .line 7
    .line 8
    invoke-static {v0, p4}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const/16 p4, 0x2e

    .line 20
    .line 21
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p4

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    if-nez p0, :cond_27

    .line 37
    .line 38
    goto/16 :goto_1b9

    .line 39
    .line 40
    :cond_27
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const/4 v2, 0x0

    .line 45
    if-lt p2, v1, :cond_38

    .line 46
    .line 47
    new-instance p3, Lb2/g;

    .line 48
    .line 49
    invoke-direct {p3, p0, p4}, Lb2/g;-><init>(Landroid/view/View;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    goto/16 :goto_197

    .line 56
    .line 57
    :cond_38
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Lc2/c;

    .line 62
    .line 63
    iget-object v3, v1, Lc2/c;->a:Ljava/lang/String;

    .line 64
    .line 65
    const-string v4, ".."

    .line 66
    .line 67
    invoke-static {v3, v4}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-eqz v4, :cond_6e

    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    instance-of p3, p0, Landroid/view/ViewGroup;

    .line 78
    .line 79
    if-eqz p3, :cond_1b9

    .line 80
    .line 81
    check-cast p0, Landroid/view/ViewGroup;

    .line 82
    .line 83
    invoke-static {p0}, Lk2/e;->h(Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 88
    .line 89
    .line 90
    move-result p3

    .line 91
    :goto_5a
    if-ge v2, p3, :cond_1b9

    .line 92
    .line 93
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    check-cast v1, Landroid/view/View;

    .line 98
    .line 99
    add-int/lit8 v3, p2, 0x1

    .line 100
    .line 101
    invoke-static {v1, p1, v3, v2, p4}, Lk2/e;->g(Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/ArrayList;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 106
    .line 107
    .line 108
    add-int/lit8 v2, v2, 0x1

    .line 109
    .line 110
    goto :goto_5a

    .line 111
    :cond_6e
    const-string v4, "."

    .line 112
    .line 113
    invoke-static {v3, v4}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    if-eqz v5, :cond_7f

    .line 118
    .line 119
    new-instance p1, Lb2/g;

    .line 120
    .line 121
    invoke-direct {p1, p0, p4}, Lb2/g;-><init>(Landroid/view/View;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    return-object v0

    .line 128
    :cond_7f
    iget v5, v1, Lc2/c;->b:I

    .line 129
    .line 130
    iget v6, v1, Lc2/c;->h:I

    .line 131
    .line 132
    const/4 v7, -0x1

    .line 133
    if-eq v5, v7, :cond_8a

    .line 134
    .line 135
    if-eq p3, v5, :cond_8a

    .line 136
    .line 137
    goto/16 :goto_1b9

    .line 138
    .line 139
    :cond_8a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    move-result-object p3

    .line 143
    invoke-virtual {p3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p3

    .line 147
    invoke-static {p3, v3}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result p3

    .line 151
    if-nez p3, :cond_e2

    .line 152
    .line 153
    const-string p3, ".*android\\..*"

    .line 154
    .line 155
    invoke-static {p3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 156
    .line 157
    .line 158
    move-result-object p3

    .line 159
    const-string v5, "compile(...)"

    .line 160
    .line 161
    invoke-static {v5, p3}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    const-string v5, "input"

    .line 165
    .line 166
    invoke-static {v5, v3}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p3, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 170
    .line 171
    .line 172
    move-result-object p3

    .line 173
    invoke-virtual {p3}, Ljava/util/regex/Matcher;->matches()Z

    .line 174
    .line 175
    .line 176
    move-result p3

    .line 177
    if-eqz p3, :cond_1b9

    .line 178
    .line 179
    iget-object p3, v1, Lc2/c;->a:Ljava/lang/String;

    .line 180
    .line 181
    filled-new-array {v4}, [Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    const/4 v4, 0x6

    .line 186
    invoke-static {p3, v3, v2, v4}, Lk7/g;->J(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    .line 187
    .line 188
    .line 189
    move-result-object p3

    .line 190
    move-object v3, p3

    .line 191
    check-cast v3, Ljava/util/Collection;

    .line 192
    .line 193
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 194
    .line 195
    .line 196
    move-result v3

    .line 197
    if-nez v3, :cond_1b9

    .line 198
    .line 199
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    add-int/lit8 v3, v3, -0x1

    .line 204
    .line 205
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object p3

    .line 209
    check-cast p3, Ljava/lang/String;

    .line 210
    .line 211
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    invoke-virtual {v3, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result p3

    .line 223
    if-nez p3, :cond_e2

    .line 224
    .line 225
    goto/16 :goto_1b9

    .line 226
    .line 227
    :cond_e2
    and-int/lit8 p3, v6, 0x1

    .line 228
    .line 229
    if-lez p3, :cond_f0

    .line 230
    .line 231
    iget p3, v1, Lc2/c;->c:I

    .line 232
    .line 233
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 234
    .line 235
    .line 236
    move-result v3

    .line 237
    if-eq p3, v3, :cond_f0

    .line 238
    .line 239
    goto/16 :goto_1b9

    .line 240
    .line 241
    :cond_f0
    and-int/lit8 p3, v6, 0x2

    .line 242
    .line 243
    if-lez p3, :cond_110

    .line 244
    .line 245
    iget-object p3, v1, Lc2/c;->d:Ljava/lang/String;

    .line 246
    .line 247
    invoke-static {p0}, Lc2/e;->i(Landroid/view/View;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    invoke-static {v3}, Lq2/g0;->M(Ljava/lang/String;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    invoke-static {v4}, Lq2/g0;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v4

    .line 259
    invoke-static {p3, v3}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v3

    .line 263
    if-nez v3, :cond_110

    .line 264
    .line 265
    invoke-static {p3, v4}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result p3

    .line 269
    if-nez p3, :cond_110

    .line 270
    .line 271
    goto/16 :goto_1b9

    .line 272
    .line 273
    :cond_110
    and-int/lit8 p3, v6, 0x8

    .line 274
    .line 275
    const-string v3, ""

    .line 276
    .line 277
    if-lez p3, :cond_13e

    .line 278
    .line 279
    iget-object p3, v1, Lc2/c;->f:Ljava/lang/String;

    .line 280
    .line 281
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 282
    .line 283
    .line 284
    move-result-object v4

    .line 285
    if-nez v4, :cond_120

    .line 286
    .line 287
    move-object v4, v3

    .line 288
    goto :goto_128

    .line 289
    :cond_120
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v4

    .line 297
    :goto_128
    invoke-static {v4}, Lq2/g0;->M(Ljava/lang/String;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v5

    .line 301
    invoke-static {v5}, Lq2/g0;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v5

    .line 305
    invoke-static {p3, v4}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result v4

    .line 309
    if-nez v4, :cond_13e

    .line 310
    .line 311
    invoke-static {p3, v5}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result p3

    .line 315
    if-nez p3, :cond_13e

    .line 316
    .line 317
    goto/16 :goto_1b9

    .line 318
    .line 319
    :cond_13e
    and-int/lit8 p3, v6, 0x10

    .line 320
    .line 321
    if-lez p3, :cond_15d

    .line 322
    .line 323
    iget-object p3, v1, Lc2/c;->g:Ljava/lang/String;

    .line 324
    .line 325
    invoke-static {p0}, Lc2/e;->g(Landroid/view/View;)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v4

    .line 329
    invoke-static {v4}, Lq2/g0;->M(Ljava/lang/String;)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v5

    .line 333
    invoke-static {v5}, Lq2/g0;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v5

    .line 337
    invoke-static {p3, v4}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    move-result v4

    .line 341
    if-nez v4, :cond_15d

    .line 342
    .line 343
    invoke-static {p3, v5}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    move-result p3

    .line 347
    if-nez p3, :cond_15d

    .line 348
    .line 349
    goto :goto_1b9

    .line 350
    :cond_15d
    and-int/lit8 p3, v6, 0x4

    .line 351
    .line 352
    if-lez p3, :cond_187

    .line 353
    .line 354
    iget-object p3, v1, Lc2/c;->e:Ljava/lang/String;

    .line 355
    .line 356
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    if-nez v1, :cond_16a

    .line 361
    .line 362
    goto :goto_172

    .line 363
    :cond_16a
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v1

    .line 367
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v3

    .line 371
    :goto_172
    invoke-static {v3}, Lq2/g0;->M(Ljava/lang/String;)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    invoke-static {v1}, Lq2/g0;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    invoke-static {p3, v3}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 380
    .line 381
    .line 382
    move-result v3

    .line 383
    if-nez v3, :cond_187

    .line 384
    .line 385
    invoke-static {p3, v1}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    move-result p3

    .line 389
    if-nez p3, :cond_187

    .line 390
    .line 391
    goto :goto_1b9

    .line 392
    :cond_187
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 393
    .line 394
    .line 395
    move-result p3

    .line 396
    add-int/lit8 p3, p3, -0x1

    .line 397
    .line 398
    if-ne p2, p3, :cond_197

    .line 399
    .line 400
    new-instance p3, Lb2/g;

    .line 401
    .line 402
    invoke-direct {p3, p0, p4}, Lb2/g;-><init>(Landroid/view/View;Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    :cond_197
    :goto_197
    instance-of p3, p0, Landroid/view/ViewGroup;

    .line 409
    .line 410
    if-eqz p3, :cond_1b9

    .line 411
    .line 412
    check-cast p0, Landroid/view/ViewGroup;

    .line 413
    .line 414
    invoke-static {p0}, Lk2/e;->h(Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    .line 415
    .line 416
    .line 417
    move-result-object p0

    .line 418
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 419
    .line 420
    .line 421
    move-result p3

    .line 422
    :goto_1a5
    if-ge v2, p3, :cond_1b9

    .line 423
    .line 424
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    check-cast v1, Landroid/view/View;

    .line 429
    .line 430
    add-int/lit8 v3, p2, 0x1

    .line 431
    .line 432
    invoke-static {v1, p1, v3, v2, p4}, Lk2/e;->g(Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/ArrayList;

    .line 433
    .line 434
    .line 435
    move-result-object v1

    .line 436
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 437
    .line 438
    .line 439
    add-int/lit8 v2, v2, 0x1

    .line 440
    .line 441
    goto :goto_1a5

    .line 442
    :cond_1b9
    :goto_1b9
    return-object v0
.end method

.method public static h(Landroid/view/ViewGroup;)Ljava/util/ArrayList;
    .registers 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_a
    if-ge v2, v1, :cond_1c

    .line 12
    .line 13
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-nez v4, :cond_19

    .line 22
    .line 23
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    :cond_19
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_a

    .line 29
    :cond_1c
    return-object v0
.end method

.method public static final i(Landroid/app/Activity;)Landroid/view/View;
    .registers 4

    .line 1
    const-class v0, Lk2/e;

    .line 2
    .line 3
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_a

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_a
    if-nez p0, :cond_d

    .line 12
    .line 13
    return-object v2

    .line 14
    :cond_d
    :try_start_d
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-nez p0, :cond_14

    .line 19
    .line 20
    return-object v2

    .line 21
    :cond_14
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1c} :catch_21
    .catchall {:try_start_d .. :try_end_1c} :catchall_1d

    .line 29
    return-object p0

    .line 30
    :catchall_1d
    move-exception p0

    .line 31
    invoke-static {p0, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :catch_21
    return-object v2
.end method

.method public static final j()Z
    .registers 5

    .line 1
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "FINGERPRINT"

    .line 4
    .line 5
    invoke-static {v1, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "generic"

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {v0, v1, v2}, Lk7/o;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-nez v3, :cond_6a

    .line 16
    .line 17
    const-string v3, "unknown"

    .line 18
    .line 19
    invoke-static {v0, v3, v2}, Lk7/o;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_6a

    .line 24
    .line 25
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 26
    .line 27
    const-string v3, "MODEL"

    .line 28
    .line 29
    invoke-static {v3, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    const-string v3, "google_sdk"

    .line 33
    .line 34
    invoke-static {v0, v3}, Lk7/g;->x(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-nez v4, :cond_6a

    .line 39
    .line 40
    const-string v4, "Emulator"

    .line 41
    .line 42
    invoke-static {v0, v4}, Lk7/g;->x(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-nez v4, :cond_6a

    .line 47
    .line 48
    const-string v4, "Android SDK built for x86"

    .line 49
    .line 50
    invoke-static {v0, v4}, Lk7/g;->x(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_6a

    .line 55
    .line 56
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 57
    .line 58
    const-string v4, "MANUFACTURER"

    .line 59
    .line 60
    invoke-static {v4, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    const-string v4, "Genymotion"

    .line 64
    .line 65
    invoke-static {v0, v4}, Lk7/g;->x(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_6a

    .line 70
    .line 71
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 72
    .line 73
    const-string v4, "BRAND"

    .line 74
    .line 75
    invoke-static {v4, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    invoke-static {v0, v1, v2}, Lk7/o;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_60

    .line 83
    .line 84
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 85
    .line 86
    const-string v4, "DEVICE"

    .line 87
    .line 88
    invoke-static {v4, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    invoke-static {v0, v1, v2}, Lk7/o;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-nez v0, :cond_6a

    .line 96
    .line 97
    :cond_60
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_69

    .line 104
    .line 105
    goto :goto_6a

    .line 106
    :cond_69
    return v2

    .line 107
    :cond_6a
    :goto_6a
    const/4 v0, 0x1

    .line 108
    return v0
.end method

.method public static k(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

    .line 10
    .line 11
    goto/16 :goto_85

    .line 12
    .line 13
    :cond_c
    const-string v0, "http://"

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_20

    .line 20
    .line 21
    const-string v0, "https://"

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_20

    .line 28
    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    :cond_20
    :try_start_20
    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_85

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-nez v0, :cond_31

    .line 48
    .line 49
    goto :goto_85

    .line 50
    :cond_31
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {p0}, Ljava/net/URI;->getPort()I

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    const/4 v2, -0x1

    .line 71
    if-eq p0, v2, :cond_63

    .line 72
    .line 73
    const-string v2, "http"

    .line 74
    .line 75
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-eqz v2, :cond_54

    .line 80
    .line 81
    const/16 v2, 0x50

    .line 82
    .line 83
    if-eq p0, v2, :cond_63

    .line 84
    .line 85
    :cond_54
    const-string v2, "https"

    .line 86
    .line 87
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-eqz v2, :cond_61

    .line 92
    .line 93
    const/16 v2, 0x1bb

    .line 94
    .line 95
    if-ne p0, v2, :cond_61

    .line 96
    .line 97
    goto :goto_63

    .line 98
    :cond_61
    const/4 v2, 0x0

    .line 99
    goto :goto_64

    .line 100
    :cond_63
    :goto_63
    const/4 v2, 0x1

    .line 101
    :goto_64
    new-instance v3, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v0, "://"

    .line 110
    .line 111
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    if-nez v2, :cond_80

    .line 118
    .line 119
    if-lez p0, :cond_80

    .line 120
    .line 121
    const-string v0, ":"

    .line 122
    .line 123
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    :cond_80
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p0
    :try_end_84
    .catchall {:try_start_20 .. :try_end_84} :catchall_85

    .line 133
    return-object p0

    .line 134
    :catchall_85
    :cond_85
    :goto_85
    const/4 p0, 0x0

    .line 135
    return-object p0
.end method

.method public static final l(Ljava/lang/Object;)V
    .registers 2

    .line 1
    instance-of v0, p0, Lr6/e;

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    return-void

    .line 6
    :cond_5
    check-cast p0, Lr6/e;

    .line 7
    .line 8
    iget-object p0, p0, Lr6/e;->a:Ljava/lang/Throwable;

    .line 9
    .line 10
    throw p0
.end method

.method public static final m(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string v0, ":"

    .line 7
    .line 8
    invoke-static {p0, v0}, Lk7/g;->x(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, -0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v0, :cond_bb

    .line 15
    .line 16
    const-string v0, "["

    .line 17
    .line 18
    invoke-static {p0, v0, v2}, Lk7/o;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_2a

    .line 23
    .line 24
    const-string v0, "]"

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_2a

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const/4 v3, 0x1

    .line 37
    sub-int/2addr v0, v3

    .line 38
    invoke-static {v3, p0, v0}, Lk2/e;->f(ILjava/lang/String;I)Ljava/net/InetAddress;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    goto :goto_32

    .line 43
    :cond_2a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    invoke-static {v2, p0, v0}, Lk2/e;->f(ILjava/lang/String;I)Ljava/net/InetAddress;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :goto_32
    if-nez v0, :cond_36

    .line 52
    .line 53
    goto/16 :goto_105

    .line 54
    .line 55
    :cond_36
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    array-length v4, v3

    .line 60
    const/4 v5, 0x4

    .line 61
    const/16 v6, 0x10

    .line 62
    .line 63
    if-ne v4, v6, :cond_9a

    .line 64
    .line 65
    move p0, v2

    .line 66
    move v0, p0

    .line 67
    :goto_42
    array-length v4, v3

    .line 68
    if-ge p0, v4, :cond_60

    .line 69
    .line 70
    move v4, p0

    .line 71
    :goto_46
    if-ge v4, v6, :cond_55

    .line 72
    .line 73
    aget-byte v7, v3, v4

    .line 74
    .line 75
    if-nez v7, :cond_55

    .line 76
    .line 77
    add-int/lit8 v7, v4, 0x1

    .line 78
    .line 79
    aget-byte v7, v3, v7

    .line 80
    .line 81
    if-nez v7, :cond_55

    .line 82
    .line 83
    add-int/lit8 v4, v4, 0x2

    .line 84
    .line 85
    goto :goto_46

    .line 86
    :cond_55
    sub-int v7, v4, p0

    .line 87
    .line 88
    if-le v7, v0, :cond_5d

    .line 89
    .line 90
    if-lt v7, v5, :cond_5d

    .line 91
    .line 92
    move v1, p0

    .line 93
    move v0, v7

    .line 94
    :cond_5d
    add-int/lit8 p0, v4, 0x2

    .line 95
    .line 96
    goto :goto_42

    .line 97
    :cond_60
    new-instance p0, Le8/g;

    .line 98
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    .line 101
    .line 102
    :cond_65
    :goto_65
    array-length v4, v3

    .line 103
    if-ge v2, v4, :cond_91

    .line 104
    .line 105
    const/16 v4, 0x3a

    .line 106
    .line 107
    if-ne v2, v1, :cond_76

    .line 108
    .line 109
    invoke-virtual {p0, v4}, Le8/g;->z(I)V

    .line 110
    .line 111
    .line 112
    add-int/2addr v2, v0

    .line 113
    if-ne v2, v6, :cond_65

    .line 114
    .line 115
    invoke-virtual {p0, v4}, Le8/g;->z(I)V

    .line 116
    .line 117
    .line 118
    goto :goto_65

    .line 119
    :cond_76
    if-lez v2, :cond_7b

    .line 120
    .line 121
    invoke-virtual {p0, v4}, Le8/g;->z(I)V

    .line 122
    .line 123
    .line 124
    :cond_7b
    aget-byte v4, v3, v2

    .line 125
    .line 126
    sget-object v5, Ls7/b;->a:[B

    .line 127
    .line 128
    and-int/lit16 v4, v4, 0xff

    .line 129
    .line 130
    shl-int/lit8 v4, v4, 0x8

    .line 131
    .line 132
    add-int/lit8 v5, v2, 0x1

    .line 133
    .line 134
    aget-byte v5, v3, v5

    .line 135
    .line 136
    and-int/lit16 v5, v5, 0xff

    .line 137
    .line 138
    or-int/2addr v4, v5

    .line 139
    int-to-long v4, v4

    .line 140
    invoke-virtual {p0, v4, v5}, Le8/g;->A(J)V

    .line 141
    .line 142
    .line 143
    add-int/lit8 v2, v2, 0x2

    .line 144
    .line 145
    goto :goto_65

    .line 146
    :cond_91
    iget-wide v0, p0, Le8/g;->b:J

    .line 147
    .line 148
    sget-object v2, Lk7/a;->a:Ljava/nio/charset/Charset;

    .line 149
    .line 150
    invoke-virtual {p0, v0, v1, v2}, Le8/g;->t(JLjava/nio/charset/Charset;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    return-object p0

    .line 155
    :cond_9a
    array-length v1, v3

    .line 156
    if-ne v1, v5, :cond_a2

    .line 157
    .line 158
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    return-object p0

    .line 163
    :cond_a2
    new-instance v0, Ljava/lang/AssertionError;

    .line 164
    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    const-string v2, "Invalid IPv6 address: \'"

    .line 168
    .line 169
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const/16 p0, 0x27

    .line 176
    .line 177
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    throw v0

    .line 188
    :cond_bb
    :try_start_bb
    invoke-static {p0}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    const-string v0, "toASCII(host)"

    .line 193
    .line 194
    invoke-static {v0, p0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 198
    .line 199
    const-string v3, "US"

    .line 200
    .line 201
    invoke-static {v3, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    const-string v0, "this as java.lang.String).toLowerCase(locale)"

    .line 209
    .line 210
    invoke-static {v0, p0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    if-nez v0, :cond_db

    .line 218
    .line 219
    goto :goto_105

    .line 220
    :cond_db
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    move v3, v2

    .line 225
    :goto_e0
    if-ge v3, v0, :cond_104

    .line 226
    .line 227
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 228
    .line 229
    .line 230
    move-result v4

    .line 231
    const/16 v5, 0x1f

    .line 232
    .line 233
    invoke-static {v4, v5}, Ld7/g;->g(II)I

    .line 234
    .line 235
    .line 236
    move-result v5

    .line 237
    if-lez v5, :cond_105

    .line 238
    .line 239
    const/16 v5, 0x7f

    .line 240
    .line 241
    invoke-static {v4, v5}, Ld7/g;->g(II)I

    .line 242
    .line 243
    .line 244
    move-result v5

    .line 245
    if-ltz v5, :cond_f7

    .line 246
    .line 247
    goto :goto_105

    .line 248
    :cond_f7
    const-string v5, " #%/:?@[\\]"

    .line 249
    .line 250
    const/4 v6, 0x6

    .line 251
    invoke-static {v5, v4, v2, v6}, Lk7/g;->A(Ljava/lang/CharSequence;CII)I

    .line 252
    .line 253
    .line 254
    move-result v4
    :try_end_fe
    .catch Ljava/lang/IllegalArgumentException; {:try_start_bb .. :try_end_fe} :catch_105

    .line 255
    if-eq v4, v1, :cond_101

    .line 256
    .line 257
    goto :goto_105

    .line 258
    :cond_101
    add-int/lit8 v3, v3, 0x1

    .line 259
    .line 260
    goto :goto_e0

    .line 261
    :cond_104
    return-object p0

    .line 262
    :catch_105
    :cond_105
    :goto_105
    const/4 p0, 0x0

    .line 263
    return-object p0
.end method
