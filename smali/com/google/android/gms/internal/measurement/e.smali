###### Class com.google.android.gms.internal.measurement.e (com.google.android.gms.internal.measurement.e)
.class public final Lcom/google/android/gms/internal/measurement/e;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/i;
.implements Lcom/google/android/gms/internal/measurement/n;
.implements Ljava/lang/Iterable;


# instance fields
.field public final a:Ljava/util/TreeMap;

.field public final b:Ljava/util/TreeMap;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/e;->a:Ljava/util/TreeMap;

    .line 3
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/e;->b:Ljava/util/TreeMap;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 4

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/e;-><init>()V

    if-eqz p1, :cond_18

    const/4 v0, 0x0

    .line 5
    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 6
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/n;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/e;->j(ILcom/google/android/gms/internal/measurement/n;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_18
    return-void
.end method

.method public varargs constructor <init>([Lcom/google/android/gms/internal/measurement/n;)V
    .registers 2

    .line 7
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/e;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/measurement/n;
    .registers 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/e;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/e;->a:Ljava/util/TreeMap;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_49

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/util/Map$Entry;

    .line 27
    .line 28
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    instance-of v3, v3, Lcom/google/android/gms/internal/measurement/i;

    .line 33
    .line 34
    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/e;->a:Ljava/util/TreeMap;

    .line 35
    .line 36
    if-eqz v3, :cond_35

    .line 37
    .line 38
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Ljava/lang/Integer;

    .line 43
    .line 44
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Lcom/google/android/gms/internal/measurement/n;

    .line 49
    .line 50
    invoke-virtual {v4, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    goto :goto_f

    .line 54
    :cond_35
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Ljava/lang/Integer;

    .line 59
    .line 60
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Lcom/google/android/gms/internal/measurement/n;

    .line 65
    .line 66
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/n;->a()Lcom/google/android/gms/internal/measurement/n;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v4, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    goto :goto_f

    .line 74
    :cond_49
    return-object v0
.end method

.method public final b(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/e;->b:Ljava/util/TreeMap;

    .line 2
    .line 3
    if-nez p2, :cond_8

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_8
    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final c()Ljava/lang/Double;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/e;->a:Ljava/util/TreeMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    if-ne v1, v2, :cond_13

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/e;->e(I)Lcom/google/android/gms/internal/measurement/n;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/Double;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :cond_13
    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-gtz v0, :cond_20

    .line 25
    .line 26
    const-wide/16 v0, 0x0

    .line 27
    .line 28
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0

    .line 33
    :cond_20
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 34
    .line 35
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    return-object v0
.end method

.method public final d(Ljava/lang/String;Lcom/google/firebase/messaging/y;Ljava/util/ArrayList;)Lcom/google/android/gms/internal/measurement/n;
    .registers 30

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    const-string v4, "concat"

    .line 4
    .line 5
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v5

    .line 9
    const-string v6, "splice"

    .line 10
    .line 11
    const-string v7, "reduceRight"

    .line 12
    .line 13
    const-string v8, "reduce"

    .line 14
    .line 15
    const-string v9, "push"

    .line 16
    .line 17
    const-string v10, "toString"

    .line 18
    .line 19
    const-string v11, "sort"

    .line 20
    .line 21
    const-string v12, "some"

    .line 22
    .line 23
    const-string v13, "slice"

    .line 24
    .line 25
    const-string v14, "shift"

    .line 26
    .line 27
    const-string v15, "reverse"

    .line 28
    .line 29
    move/from16 v16, v5

    .line 30
    .line 31
    const-string v5, "pop"

    .line 32
    .line 33
    move-object/from16 v17, v4

    .line 34
    .line 35
    const-string v4, "map"

    .line 36
    .line 37
    const-string v0, "lastIndexOf"

    .line 38
    .line 39
    const-string v2, "join"

    .line 40
    .line 41
    const-string v3, "indexOf"

    .line 42
    .line 43
    move-object/from16 v18, v10

    .line 44
    .line 45
    const-string v10, "forEach"

    .line 46
    .line 47
    move-object/from16 v19, v6

    .line 48
    .line 49
    const-string v6, "filter"

    .line 50
    .line 51
    move-object/from16 v20, v11

    .line 52
    .line 53
    const-string v11, "every"

    .line 54
    .line 55
    if-nez v16, :cond_d6

    .line 56
    .line 57
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v16

    .line 61
    if-nez v16, :cond_d6

    .line 62
    .line 63
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v16

    .line 67
    if-nez v16, :cond_d6

    .line 68
    .line 69
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v16

    .line 73
    if-nez v16, :cond_d6

    .line 74
    .line 75
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v16

    .line 79
    if-nez v16, :cond_d6

    .line 80
    .line 81
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v16

    .line 85
    if-nez v16, :cond_d6

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v16

    .line 91
    if-nez v16, :cond_d6

    .line 92
    .line 93
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v16

    .line 97
    if-nez v16, :cond_d6

    .line 98
    .line 99
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v16

    .line 103
    if-nez v16, :cond_d6

    .line 104
    .line 105
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v16

    .line 109
    if-nez v16, :cond_d6

    .line 110
    .line 111
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v16

    .line 115
    if-nez v16, :cond_d6

    .line 116
    .line 117
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v16

    .line 121
    if-nez v16, :cond_d6

    .line 122
    .line 123
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v16

    .line 127
    if-nez v16, :cond_d6

    .line 128
    .line 129
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v16

    .line 133
    if-nez v16, :cond_d6

    .line 134
    .line 135
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v16

    .line 139
    if-nez v16, :cond_d6

    .line 140
    .line 141
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v16

    .line 145
    if-nez v16, :cond_d6

    .line 146
    .line 147
    move-object/from16 v16, v6

    .line 148
    .line 149
    move-object/from16 v6, v20

    .line 150
    .line 151
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v20

    .line 155
    if-nez v20, :cond_d3

    .line 156
    .line 157
    move-object/from16 v20, v8

    .line 158
    .line 159
    move-object/from16 v8, v19

    .line 160
    .line 161
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v19

    .line 165
    if-nez v19, :cond_d0

    .line 166
    .line 167
    move-object/from16 v19, v8

    .line 168
    .line 169
    move-object/from16 v8, v18

    .line 170
    .line 171
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v18

    .line 175
    if-nez v18, :cond_cd

    .line 176
    .line 177
    move-object/from16 v18, v8

    .line 178
    .line 179
    const-string v8, "unshift"

    .line 180
    .line 181
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v8

    .line 185
    if-eqz v8, :cond_bd

    .line 186
    .line 187
    :goto_ba
    move-object/from16 v8, p0

    .line 188
    .line 189
    goto :goto_db

    .line 190
    :cond_bd
    new-instance v0, Lcom/google/android/gms/internal/measurement/p;

    .line 191
    .line 192
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/p;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    move-object/from16 v8, p0

    .line 196
    .line 197
    move-object/from16 v1, p2

    .line 198
    .line 199
    move-object/from16 v2, p3

    .line 200
    .line 201
    invoke-static {v8, v0, v1, v2}, Lcom/google/android/gms/internal/measurement/w5;->g(Lcom/google/android/gms/internal/measurement/i;Lcom/google/android/gms/internal/measurement/p;Lcom/google/firebase/messaging/y;Ljava/util/ArrayList;)Lcom/google/android/gms/internal/measurement/n;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    return-object v0

    .line 206
    :cond_cd
    move-object/from16 v18, v8

    .line 207
    .line 208
    goto :goto_ba

    .line 209
    :cond_d0
    move-object/from16 v19, v8

    .line 210
    .line 211
    goto :goto_ba

    .line 212
    :cond_d3
    :goto_d3
    move-object/from16 v20, v8

    .line 213
    .line 214
    goto :goto_ba

    .line 215
    :cond_d6
    move-object/from16 v16, v6

    .line 216
    .line 217
    move-object/from16 v6, v20

    .line 218
    .line 219
    goto :goto_d3

    .line 220
    :goto_db
    const-wide/high16 v21, -0x4010000000000000L    # -1.0

    .line 221
    .line 222
    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 223
    .line 224
    .line 225
    move-result-object v8

    .line 226
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 227
    .line 228
    .line 229
    move-result v21

    .line 230
    move-object/from16 v22, v8

    .line 231
    .line 232
    const/16 v25, -0x1

    .line 233
    .line 234
    sparse-switch v21, :sswitch_data_89c

    .line 235
    .line 236
    .line 237
    :goto_ec
    move-object/from16 v1, p0

    .line 238
    .line 239
    move-object/from16 v7, v16

    .line 240
    .line 241
    :goto_f0
    move-object/from16 v9, v18

    .line 242
    .line 243
    goto/16 :goto_1df

    .line 244
    .line 245
    :sswitch_f4
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    if-nez v1, :cond_fb

    .line 250
    .line 251
    goto :goto_ec

    .line 252
    :cond_fb
    const/16 v1, 0x13

    .line 253
    .line 254
    goto/16 :goto_1ac

    .line 255
    .line 256
    :sswitch_ff
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result v1

    .line 260
    if-nez v1, :cond_106

    .line 261
    .line 262
    goto :goto_ec

    .line 263
    :cond_106
    const/16 v1, 0x12

    .line 264
    .line 265
    goto/16 :goto_1ac

    .line 266
    .line 267
    :sswitch_10a
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result v1

    .line 271
    if-nez v1, :cond_111

    .line 272
    .line 273
    goto :goto_ec

    .line 274
    :cond_111
    const/16 v1, 0x11

    .line 275
    .line 276
    goto/16 :goto_1ac

    .line 277
    .line 278
    :sswitch_115
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    if-nez v1, :cond_11c

    .line 283
    .line 284
    goto :goto_ec

    .line 285
    :cond_11c
    const/16 v1, 0x10

    .line 286
    .line 287
    goto/16 :goto_1ac

    .line 288
    .line 289
    :sswitch_120
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result v1

    .line 293
    if-nez v1, :cond_127

    .line 294
    .line 295
    goto :goto_ec

    .line 296
    :cond_127
    const/16 v1, 0xf

    .line 297
    .line 298
    goto/16 :goto_1ac

    .line 299
    .line 300
    :sswitch_12b
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v1

    .line 304
    if-nez v1, :cond_132

    .line 305
    .line 306
    goto :goto_ec

    .line 307
    :cond_132
    const/16 v1, 0xe

    .line 308
    .line 309
    goto/16 :goto_1ac

    .line 310
    .line 311
    :sswitch_136
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v1

    .line 315
    if-nez v1, :cond_13d

    .line 316
    .line 317
    goto :goto_ec

    .line 318
    :cond_13d
    const/16 v1, 0xd

    .line 319
    .line 320
    goto/16 :goto_1ac

    .line 321
    .line 322
    :sswitch_141
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    move-result v1

    .line 326
    if-nez v1, :cond_148

    .line 327
    .line 328
    goto :goto_ec

    .line 329
    :cond_148
    const/16 v1, 0xc

    .line 330
    .line 331
    goto/16 :goto_1ac

    .line 332
    .line 333
    :sswitch_14c
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    move-result v1

    .line 337
    if-nez v1, :cond_153

    .line 338
    .line 339
    goto :goto_ec

    .line 340
    :cond_153
    const/16 v1, 0xb

    .line 341
    .line 342
    goto :goto_1ac

    .line 343
    :sswitch_156
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    move-result v1

    .line 347
    if-nez v1, :cond_15d

    .line 348
    .line 349
    goto :goto_ec

    .line 350
    :cond_15d
    const/16 v1, 0xa

    .line 351
    .line 352
    goto :goto_1ac

    .line 353
    :sswitch_160
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    move-result v1

    .line 357
    if-nez v1, :cond_167

    .line 358
    .line 359
    goto :goto_ec

    .line 360
    :cond_167
    const/16 v1, 0x9

    .line 361
    .line 362
    goto :goto_1ac

    .line 363
    :sswitch_16a
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    move-result v1

    .line 367
    if-nez v1, :cond_172

    .line 368
    .line 369
    goto/16 :goto_ec

    .line 370
    .line 371
    :cond_172
    const/16 v1, 0x8

    .line 372
    .line 373
    goto :goto_1ac

    .line 374
    :sswitch_175
    const-string v7, "unshift"

    .line 375
    .line 376
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    move-result v1

    .line 380
    if-nez v1, :cond_17f

    .line 381
    .line 382
    goto/16 :goto_ec

    .line 383
    .line 384
    :cond_17f
    const/4 v1, 0x7

    .line 385
    goto :goto_1ac

    .line 386
    :sswitch_181
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    move-result v1

    .line 390
    if-nez v1, :cond_189

    .line 391
    .line 392
    goto/16 :goto_ec

    .line 393
    .line 394
    :cond_189
    const/4 v1, 0x6

    .line 395
    goto :goto_1ac

    .line 396
    :sswitch_18b
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 397
    .line 398
    .line 399
    move-result v1

    .line 400
    if-nez v1, :cond_193

    .line 401
    .line 402
    goto/16 :goto_ec

    .line 403
    .line 404
    :cond_193
    const/4 v1, 0x5

    .line 405
    goto :goto_1ac

    .line 406
    :sswitch_195
    move-object/from16 v7, v19

    .line 407
    .line 408
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 409
    .line 410
    .line 411
    move-result v1

    .line 412
    if-nez v1, :cond_19f

    .line 413
    .line 414
    goto/16 :goto_ec

    .line 415
    .line 416
    :cond_19f
    const/4 v1, 0x4

    .line 417
    goto :goto_1ac

    .line 418
    :sswitch_1a1
    move-object/from16 v7, v20

    .line 419
    .line 420
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 421
    .line 422
    .line 423
    move-result v1

    .line 424
    if-nez v1, :cond_1ab

    .line 425
    .line 426
    goto/16 :goto_ec

    .line 427
    .line 428
    :cond_1ab
    const/4 v1, 0x3

    .line 429
    :goto_1ac
    move/from16 v25, v1

    .line 430
    .line 431
    move-object/from16 v7, v16

    .line 432
    .line 433
    move-object/from16 v9, v18

    .line 434
    .line 435
    goto :goto_1dd

    .line 436
    :sswitch_1b3
    move-object/from16 v7, v16

    .line 437
    .line 438
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 439
    .line 440
    .line 441
    move-result v1

    .line 442
    if-nez v1, :cond_1bc

    .line 443
    .line 444
    goto :goto_1c9

    .line 445
    :cond_1bc
    const/16 v25, 0x2

    .line 446
    .line 447
    goto :goto_1cc

    .line 448
    :sswitch_1bf
    move-object/from16 v7, v16

    .line 449
    .line 450
    move-object/from16 v9, v17

    .line 451
    .line 452
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 453
    .line 454
    .line 455
    move-result v1

    .line 456
    if-nez v1, :cond_1ca

    .line 457
    .line 458
    :goto_1c9
    goto :goto_1cc

    .line 459
    :cond_1ca
    const/16 v25, 0x1

    .line 460
    .line 461
    :goto_1cc
    move-object/from16 v1, p0

    .line 462
    .line 463
    goto/16 :goto_f0

    .line 464
    .line 465
    :sswitch_1d0
    move-object/from16 v7, v16

    .line 466
    .line 467
    move-object/from16 v9, v18

    .line 468
    .line 469
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 470
    .line 471
    .line 472
    move-result v1

    .line 473
    if-nez v1, :cond_1db

    .line 474
    .line 475
    goto :goto_1dd

    .line 476
    :cond_1db
    const/16 v25, 0x0

    .line 477
    .line 478
    :goto_1dd
    move-object/from16 v1, p0

    .line 479
    .line 480
    :goto_1df
    iget-object v8, v1, Lcom/google/android/gms/internal/measurement/e;->a:Ljava/util/TreeMap;

    .line 481
    .line 482
    sget-object v17, Lcom/google/android/gms/internal/measurement/n;->n:Lcom/google/android/gms/internal/measurement/t;

    .line 483
    .line 484
    move-object/from16 v18, v9

    .line 485
    .line 486
    const-string v9, ","

    .line 487
    .line 488
    move-object/from16 p1, v9

    .line 489
    .line 490
    const-string v9, "Callback should be a method"

    .line 491
    .line 492
    move-object/from16 v19, v7

    .line 493
    .line 494
    move-object/from16 v20, v8

    .line 495
    .line 496
    const-wide/16 v7, 0x0

    .line 497
    .line 498
    packed-switch v25, :pswitch_data_8ee

    .line 499
    .line 500
    .line 501
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 502
    .line 503
    const-string v2, "Command not supported"

    .line 504
    .line 505
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    throw v0

    .line 509
    :pswitch_1fc
    move-object/from16 v10, p3

    .line 510
    .line 511
    const/4 v0, 0x2

    .line 512
    invoke-static {v3, v0, v10}, Lcom/google/android/gms/internal/measurement/p4;->q(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 513
    .line 514
    .line 515
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 516
    .line 517
    .line 518
    move-result v0

    .line 519
    if-nez v0, :cond_21c

    .line 520
    .line 521
    const/4 v0, 0x0

    .line 522
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 527
    .line 528
    move-object/from16 v3, p2

    .line 529
    .line 530
    iget-object v2, v3, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 531
    .line 532
    check-cast v2, Lcom/google/android/gms/internal/measurement/y4;

    .line 533
    .line 534
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 535
    .line 536
    .line 537
    move-result-object v17

    .line 538
    :goto_219
    move-object/from16 v0, v17

    .line 539
    .line 540
    goto :goto_21f

    .line 541
    :cond_21c
    move-object/from16 v3, p2

    .line 542
    .line 543
    goto :goto_219

    .line 544
    :goto_21f
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 545
    .line 546
    .line 547
    move-result v2

    .line 548
    const/4 v4, 0x1

    .line 549
    if-le v2, v4, :cond_261

    .line 550
    .line 551
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 552
    .line 553
    .line 554
    move-result-object v2

    .line 555
    check-cast v2, Lcom/google/android/gms/internal/measurement/n;

    .line 556
    .line 557
    iget-object v4, v3, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 558
    .line 559
    check-cast v4, Lcom/google/android/gms/internal/measurement/y4;

    .line 560
    .line 561
    invoke-virtual {v4, v3, v2}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 562
    .line 563
    .line 564
    move-result-object v2

    .line 565
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/Double;

    .line 566
    .line 567
    .line 568
    move-result-object v2

    .line 569
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 570
    .line 571
    .line 572
    move-result-wide v2

    .line 573
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/p4;->a(D)D

    .line 574
    .line 575
    .line 576
    move-result-wide v2

    .line 577
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/e;->g()I

    .line 578
    .line 579
    .line 580
    move-result v4

    .line 581
    int-to-double v4, v4

    .line 582
    cmpl-double v4, v2, v4

    .line 583
    .line 584
    if-ltz v4, :cond_251

    .line 585
    .line 586
    new-instance v0, Lcom/google/android/gms/internal/measurement/g;

    .line 587
    .line 588
    move-object/from16 v4, v22

    .line 589
    .line 590
    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    .line 591
    .line 592
    .line 593
    return-object v0

    .line 594
    :cond_251
    move-object/from16 v4, v22

    .line 595
    .line 596
    cmpg-double v5, v2, v7

    .line 597
    .line 598
    if-gez v5, :cond_25f

    .line 599
    .line 600
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/e;->g()I

    .line 601
    .line 602
    .line 603
    move-result v5

    .line 604
    int-to-double v5, v5

    .line 605
    add-double v7, v5, v2

    .line 606
    .line 607
    goto :goto_263

    .line 608
    :cond_25f
    move-wide v7, v2

    .line 609
    goto :goto_263

    .line 610
    :cond_261
    move-object/from16 v4, v22

    .line 611
    .line 612
    :goto_263
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/e;->l()Ljava/util/Iterator;

    .line 613
    .line 614
    .line 615
    move-result-object v2

    .line 616
    :cond_267
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 617
    .line 618
    .line 619
    move-result v3

    .line 620
    if-eqz v3, :cond_290

    .line 621
    .line 622
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 623
    .line 624
    .line 625
    move-result-object v3

    .line 626
    check-cast v3, Ljava/lang/Integer;

    .line 627
    .line 628
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 629
    .line 630
    .line 631
    move-result v3

    .line 632
    int-to-double v5, v3

    .line 633
    cmpg-double v9, v5, v7

    .line 634
    .line 635
    if-ltz v9, :cond_267

    .line 636
    .line 637
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/e;->e(I)Lcom/google/android/gms/internal/measurement/n;

    .line 638
    .line 639
    .line 640
    move-result-object v3

    .line 641
    invoke-static {v3, v0}, Lcom/google/android/gms/internal/measurement/p4;->l(Lcom/google/android/gms/internal/measurement/n;Lcom/google/android/gms/internal/measurement/n;)Z

    .line 642
    .line 643
    .line 644
    move-result v3

    .line 645
    if-eqz v3, :cond_267

    .line 646
    .line 647
    new-instance v0, Lcom/google/android/gms/internal/measurement/g;

    .line 648
    .line 649
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 650
    .line 651
    .line 652
    move-result-object v2

    .line 653
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    .line 654
    .line 655
    .line 656
    return-object v0

    .line 657
    :cond_290
    new-instance v0, Lcom/google/android/gms/internal/measurement/g;

    .line 658
    .line 659
    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    .line 660
    .line 661
    .line 662
    return-object v0

    .line 663
    :pswitch_296
    move-object/from16 v10, p3

    .line 664
    .line 665
    const/4 v0, 0x0

    .line 666
    invoke-static {v0, v15, v10}, Lcom/google/android/gms/internal/measurement/p4;->g(ILjava/lang/String;Ljava/util/List;)V

    .line 667
    .line 668
    .line 669
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/e;->g()I

    .line 670
    .line 671
    .line 672
    move-result v0

    .line 673
    if-eqz v0, :cond_40a

    .line 674
    .line 675
    const/4 v8, 0x0

    .line 676
    :goto_2a3
    div-int/lit8 v2, v0, 0x2

    .line 677
    .line 678
    if-ge v8, v2, :cond_40a

    .line 679
    .line 680
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/measurement/e;->k(I)Z

    .line 681
    .line 682
    .line 683
    move-result v2

    .line 684
    if-eqz v2, :cond_2c8

    .line 685
    .line 686
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/measurement/e;->e(I)Lcom/google/android/gms/internal/measurement/n;

    .line 687
    .line 688
    .line 689
    move-result-object v2

    .line 690
    const/4 v3, 0x0

    .line 691
    invoke-virtual {v1, v8, v3}, Lcom/google/android/gms/internal/measurement/e;->j(ILcom/google/android/gms/internal/measurement/n;)V

    .line 692
    .line 693
    .line 694
    add-int/lit8 v3, v0, -0x1

    .line 695
    .line 696
    sub-int/2addr v3, v8

    .line 697
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/e;->k(I)Z

    .line 698
    .line 699
    .line 700
    move-result v4

    .line 701
    if-eqz v4, :cond_2c5

    .line 702
    .line 703
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/e;->e(I)Lcom/google/android/gms/internal/measurement/n;

    .line 704
    .line 705
    .line 706
    move-result-object v4

    .line 707
    invoke-virtual {v1, v8, v4}, Lcom/google/android/gms/internal/measurement/e;->j(ILcom/google/android/gms/internal/measurement/n;)V

    .line 708
    .line 709
    .line 710
    :cond_2c5
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/measurement/e;->j(ILcom/google/android/gms/internal/measurement/n;)V

    .line 711
    .line 712
    .line 713
    :cond_2c8
    add-int/lit8 v8, v8, 0x1

    .line 714
    .line 715
    goto :goto_2a3

    .line 716
    :pswitch_2cb
    move-object/from16 v3, p2

    .line 717
    .line 718
    move-object/from16 v10, p3

    .line 719
    .line 720
    const/4 v0, 0x0

    .line 721
    invoke-static {v1, v3, v10, v0}, Lcom/google/android/gms/internal/measurement/q0;->b(Lcom/google/android/gms/internal/measurement/e;Lcom/google/firebase/messaging/y;Ljava/util/ArrayList;Z)Lcom/google/android/gms/internal/measurement/n;

    .line 722
    .line 723
    .line 724
    move-result-object v0

    .line 725
    return-object v0

    .line 726
    :pswitch_2d5
    move-object/from16 v3, p2

    .line 727
    .line 728
    move-object/from16 v10, p3

    .line 729
    .line 730
    const/4 v0, 0x0

    .line 731
    const/4 v2, 0x2

    .line 732
    invoke-static {v13, v2, v10}, Lcom/google/android/gms/internal/measurement/p4;->q(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 733
    .line 734
    .line 735
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 736
    .line 737
    .line 738
    move-result v2

    .line 739
    if-eqz v2, :cond_2e9

    .line 740
    .line 741
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/e;->a()Lcom/google/android/gms/internal/measurement/n;

    .line 742
    .line 743
    .line 744
    move-result-object v0

    .line 745
    return-object v0

    .line 746
    :cond_2e9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/e;->g()I

    .line 747
    .line 748
    .line 749
    move-result v2

    .line 750
    int-to-double v4, v2

    .line 751
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 752
    .line 753
    .line 754
    move-result-object v0

    .line 755
    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 756
    .line 757
    iget-object v2, v3, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 758
    .line 759
    check-cast v2, Lcom/google/android/gms/internal/measurement/y4;

    .line 760
    .line 761
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 762
    .line 763
    .line 764
    move-result-object v0

    .line 765
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/Double;

    .line 766
    .line 767
    .line 768
    move-result-object v0

    .line 769
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 770
    .line 771
    .line 772
    move-result-wide v11

    .line 773
    invoke-static {v11, v12}, Lcom/google/android/gms/internal/measurement/p4;->a(D)D

    .line 774
    .line 775
    .line 776
    move-result-wide v11

    .line 777
    cmpg-double v0, v11, v7

    .line 778
    .line 779
    if-gez v0, :cond_312

    .line 780
    .line 781
    add-double/2addr v11, v4

    .line 782
    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->max(DD)D

    .line 783
    .line 784
    .line 785
    move-result-wide v11

    .line 786
    goto :goto_316

    .line 787
    :cond_312
    invoke-static {v11, v12, v4, v5}, Ljava/lang/Math;->min(DD)D

    .line 788
    .line 789
    .line 790
    move-result-wide v11

    .line 791
    :goto_316
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 792
    .line 793
    .line 794
    move-result v0

    .line 795
    const/4 v2, 0x2

    .line 796
    if-ne v0, v2, :cond_346

    .line 797
    .line 798
    const/4 v0, 0x1

    .line 799
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 800
    .line 801
    .line 802
    move-result-object v0

    .line 803
    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 804
    .line 805
    iget-object v2, v3, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 806
    .line 807
    check-cast v2, Lcom/google/android/gms/internal/measurement/y4;

    .line 808
    .line 809
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 810
    .line 811
    .line 812
    move-result-object v0

    .line 813
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/Double;

    .line 814
    .line 815
    .line 816
    move-result-object v0

    .line 817
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 818
    .line 819
    .line 820
    move-result-wide v2

    .line 821
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/p4;->a(D)D

    .line 822
    .line 823
    .line 824
    move-result-wide v2

    .line 825
    cmpg-double v0, v2, v7

    .line 826
    .line 827
    if-gez v0, :cond_342

    .line 828
    .line 829
    add-double/2addr v4, v2

    .line 830
    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->max(DD)D

    .line 831
    .line 832
    .line 833
    move-result-wide v4

    .line 834
    goto :goto_346

    .line 835
    :cond_342
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(DD)D

    .line 836
    .line 837
    .line 838
    move-result-wide v4

    .line 839
    :cond_346
    :goto_346
    new-instance v0, Lcom/google/android/gms/internal/measurement/e;

    .line 840
    .line 841
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/e;-><init>()V

    .line 842
    .line 843
    .line 844
    double-to-int v2, v11

    .line 845
    :goto_34c
    int-to-double v6, v2

    .line 846
    cmpg-double v3, v6, v4

    .line 847
    .line 848
    if-gez v3, :cond_35b

    .line 849
    .line 850
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/e;->e(I)Lcom/google/android/gms/internal/measurement/n;

    .line 851
    .line 852
    .line 853
    move-result-object v3

    .line 854
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/e;->f(Lcom/google/android/gms/internal/measurement/n;)V

    .line 855
    .line 856
    .line 857
    add-int/lit8 v2, v2, 0x1

    .line 858
    .line 859
    goto :goto_34c

    .line 860
    :cond_35b
    return-object v0

    .line 861
    :pswitch_35c
    move-object/from16 v10, p3

    .line 862
    .line 863
    const/4 v0, 0x0

    .line 864
    invoke-static {v0, v14, v10}, Lcom/google/android/gms/internal/measurement/p4;->g(ILjava/lang/String;Ljava/util/List;)V

    .line 865
    .line 866
    .line 867
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/e;->g()I

    .line 868
    .line 869
    .line 870
    move-result v2

    .line 871
    if-nez v2, :cond_36a

    .line 872
    .line 873
    goto/16 :goto_698

    .line 874
    .line 875
    :cond_36a
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/e;->e(I)Lcom/google/android/gms/internal/measurement/n;

    .line 876
    .line 877
    .line 878
    move-result-object v2

    .line 879
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/e;->i(I)V

    .line 880
    .line 881
    .line 882
    return-object v2

    .line 883
    :pswitch_372
    move-object/from16 v3, p2

    .line 884
    .line 885
    move-object/from16 v10, p3

    .line 886
    .line 887
    const/4 v0, 0x0

    .line 888
    const/4 v4, 0x1

    .line 889
    invoke-static {v4, v11, v10}, Lcom/google/android/gms/internal/measurement/p4;->g(ILjava/lang/String;Ljava/util/List;)V

    .line 890
    .line 891
    .line 892
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 893
    .line 894
    .line 895
    move-result-object v0

    .line 896
    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 897
    .line 898
    iget-object v2, v3, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 899
    .line 900
    check-cast v2, Lcom/google/android/gms/internal/measurement/y4;

    .line 901
    .line 902
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 903
    .line 904
    .line 905
    move-result-object v0

    .line 906
    instance-of v2, v0, Lcom/google/android/gms/internal/measurement/o;

    .line 907
    .line 908
    if-eqz v2, :cond_3a9

    .line 909
    .line 910
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/e;->g()I

    .line 911
    .line 912
    .line 913
    move-result v2

    .line 914
    if-eqz v2, :cond_477

    .line 915
    .line 916
    check-cast v0, Lcom/google/android/gms/internal/measurement/o;

    .line 917
    .line 918
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 919
    .line 920
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 921
    .line 922
    invoke-static {v1, v3, v0, v2, v4}, Lcom/google/android/gms/internal/measurement/q0;->a(Lcom/google/android/gms/internal/measurement/e;Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/o;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/measurement/e;

    .line 923
    .line 924
    .line 925
    move-result-object v0

    .line 926
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/e;->g()I

    .line 927
    .line 928
    .line 929
    move-result v0

    .line 930
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/e;->g()I

    .line 931
    .line 932
    .line 933
    move-result v2

    .line 934
    if-eq v0, v2, :cond_477

    .line 935
    .line 936
    goto/16 :goto_47a

    .line 937
    .line 938
    :cond_3a9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 939
    .line 940
    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 941
    .line 942
    .line 943
    throw v0

    .line 944
    :pswitch_3af
    move-object/from16 v3, p2

    .line 945
    .line 946
    move-object/from16 v10, p3

    .line 947
    .line 948
    const/4 v4, 0x1

    .line 949
    invoke-static {v6, v4, v10}, Lcom/google/android/gms/internal/measurement/p4;->q(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 950
    .line 951
    .line 952
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/e;->g()I

    .line 953
    .line 954
    .line 955
    move-result v0

    .line 956
    const/4 v2, 0x2

    .line 957
    if-lt v0, v2, :cond_40a

    .line 958
    .line 959
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/e;->m()Ljava/util/ArrayList;

    .line 960
    .line 961
    .line 962
    move-result-object v0

    .line 963
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 964
    .line 965
    .line 966
    move-result v2

    .line 967
    if-nez v2, :cond_3e7

    .line 968
    .line 969
    const/4 v2, 0x0

    .line 970
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 971
    .line 972
    .line 973
    move-result-object v4

    .line 974
    check-cast v4, Lcom/google/android/gms/internal/measurement/n;

    .line 975
    .line 976
    iget-object v2, v3, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 977
    .line 978
    check-cast v2, Lcom/google/android/gms/internal/measurement/y4;

    .line 979
    .line 980
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 981
    .line 982
    .line 983
    move-result-object v2

    .line 984
    instance-of v4, v2, Lcom/google/android/gms/internal/measurement/j;

    .line 985
    .line 986
    if-eqz v4, :cond_3df

    .line 987
    .line 988
    move-object v7, v2

    .line 989
    check-cast v7, Lcom/google/android/gms/internal/measurement/j;

    .line 990
    .line 991
    goto :goto_3e8

    .line 992
    :cond_3df
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 993
    .line 994
    const-string v2, "Comparator should be a method"

    .line 995
    .line 996
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 997
    .line 998
    .line 999
    throw v0

    .line 1000
    :cond_3e7
    const/4 v7, 0x0

    .line 1001
    :goto_3e8
    new-instance v2, Lcom/google/android/gms/internal/measurement/y;

    .line 1002
    .line 1003
    invoke-direct {v2, v7, v3}, Lcom/google/android/gms/internal/measurement/y;-><init>(Lcom/google/android/gms/internal/measurement/j;Lcom/google/firebase/messaging/y;)V

    .line 1004
    .line 1005
    .line 1006
    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1007
    .line 1008
    .line 1009
    invoke-virtual/range {v20 .. v20}, Ljava/util/TreeMap;->clear()V

    .line 1010
    .line 1011
    .line 1012
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1013
    .line 1014
    .line 1015
    move-result v2

    .line 1016
    const/4 v3, 0x0

    .line 1017
    const/4 v8, 0x0

    .line 1018
    :goto_3f9
    if-ge v3, v2, :cond_40a

    .line 1019
    .line 1020
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v4

    .line 1024
    add-int/lit8 v3, v3, 0x1

    .line 1025
    .line 1026
    check-cast v4, Lcom/google/android/gms/internal/measurement/n;

    .line 1027
    .line 1028
    add-int/lit8 v5, v8, 0x1

    .line 1029
    .line 1030
    invoke-virtual {v1, v8, v4}, Lcom/google/android/gms/internal/measurement/e;->j(ILcom/google/android/gms/internal/measurement/n;)V

    .line 1031
    .line 1032
    .line 1033
    move v8, v5

    .line 1034
    goto :goto_3f9

    .line 1035
    :cond_40a
    return-object v1

    .line 1036
    :pswitch_40b
    move-object/from16 v3, p2

    .line 1037
    .line 1038
    move-object/from16 v10, p3

    .line 1039
    .line 1040
    const/4 v4, 0x1

    .line 1041
    invoke-static {v4, v12, v10}, Lcom/google/android/gms/internal/measurement/p4;->g(ILjava/lang/String;Ljava/util/List;)V

    .line 1042
    .line 1043
    .line 1044
    const/4 v0, 0x0

    .line 1045
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1046
    .line 1047
    .line 1048
    move-result-object v2

    .line 1049
    check-cast v2, Lcom/google/android/gms/internal/measurement/n;

    .line 1050
    .line 1051
    iget-object v0, v3, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 1052
    .line 1053
    check-cast v0, Lcom/google/android/gms/internal/measurement/y4;

    .line 1054
    .line 1055
    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v0

    .line 1059
    instance-of v2, v0, Lcom/google/android/gms/internal/measurement/j;

    .line 1060
    .line 1061
    if-eqz v2, :cond_47d

    .line 1062
    .line 1063
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/e;->g()I

    .line 1064
    .line 1065
    .line 1066
    move-result v2

    .line 1067
    if-eqz v2, :cond_47a

    .line 1068
    .line 1069
    check-cast v0, Lcom/google/android/gms/internal/measurement/j;

    .line 1070
    .line 1071
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/e;->l()Ljava/util/Iterator;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v2

    .line 1075
    :cond_432
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1076
    .line 1077
    .line 1078
    move-result v4

    .line 1079
    if-eqz v4, :cond_47a

    .line 1080
    .line 1081
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v4

    .line 1085
    check-cast v4, Ljava/lang/Integer;

    .line 1086
    .line 1087
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 1088
    .line 1089
    .line 1090
    move-result v4

    .line 1091
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/measurement/e;->k(I)Z

    .line 1092
    .line 1093
    .line 1094
    move-result v5

    .line 1095
    if-eqz v5, :cond_432

    .line 1096
    .line 1097
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/measurement/e;->e(I)Lcom/google/android/gms/internal/measurement/n;

    .line 1098
    .line 1099
    .line 1100
    move-result-object v5

    .line 1101
    new-instance v6, Lcom/google/android/gms/internal/measurement/g;

    .line 1102
    .line 1103
    int-to-double v7, v4

    .line 1104
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v4

    .line 1108
    invoke-direct {v6, v4}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    .line 1109
    .line 1110
    .line 1111
    const/4 v4, 0x3

    .line 1112
    new-array v4, v4, [Lcom/google/android/gms/internal/measurement/n;

    .line 1113
    .line 1114
    const/16 v16, 0x0

    .line 1115
    .line 1116
    aput-object v5, v4, v16

    .line 1117
    .line 1118
    const/16 v24, 0x1

    .line 1119
    .line 1120
    aput-object v6, v4, v24

    .line 1121
    .line 1122
    const/16 v23, 0x2

    .line 1123
    .line 1124
    aput-object v1, v4, v23

    .line 1125
    .line 1126
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v4

    .line 1130
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/measurement/j;->e(Lcom/google/firebase/messaging/y;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/n;

    .line 1131
    .line 1132
    .line 1133
    move-result-object v4

    .line 1134
    invoke-interface {v4}, Lcom/google/android/gms/internal/measurement/n;->zzd()Ljava/lang/Boolean;

    .line 1135
    .line 1136
    .line 1137
    move-result-object v4

    .line 1138
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1139
    .line 1140
    .line 1141
    move-result v4

    .line 1142
    if-eqz v4, :cond_432

    .line 1143
    .line 1144
    :cond_477
    sget-object v0, Lcom/google/android/gms/internal/measurement/n;->s:Lcom/google/android/gms/internal/measurement/f;

    .line 1145
    .line 1146
    return-object v0

    .line 1147
    :cond_47a
    :goto_47a
    sget-object v0, Lcom/google/android/gms/internal/measurement/n;->t:Lcom/google/android/gms/internal/measurement/f;

    .line 1148
    .line 1149
    return-object v0

    .line 1150
    :cond_47d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1151
    .line 1152
    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1153
    .line 1154
    .line 1155
    throw v0

    .line 1156
    :pswitch_483
    move-object/from16 v3, p2

    .line 1157
    .line 1158
    move-object/from16 v10, p3

    .line 1159
    .line 1160
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1161
    .line 1162
    .line 1163
    move-result v0

    .line 1164
    if-nez v0, :cond_4a8

    .line 1165
    .line 1166
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 1167
    .line 1168
    .line 1169
    move-result v0

    .line 1170
    const/4 v8, 0x0

    .line 1171
    :goto_492
    if-ge v8, v0, :cond_4a8

    .line 1172
    .line 1173
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v2

    .line 1177
    add-int/lit8 v8, v8, 0x1

    .line 1178
    .line 1179
    check-cast v2, Lcom/google/android/gms/internal/measurement/n;

    .line 1180
    .line 1181
    iget-object v4, v3, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 1182
    .line 1183
    check-cast v4, Lcom/google/android/gms/internal/measurement/y4;

    .line 1184
    .line 1185
    invoke-virtual {v4, v3, v2}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v2

    .line 1189
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/e;->f(Lcom/google/android/gms/internal/measurement/n;)V

    .line 1190
    .line 1191
    .line 1192
    goto :goto_492

    .line 1193
    :cond_4a8
    new-instance v0, Lcom/google/android/gms/internal/measurement/g;

    .line 1194
    .line 1195
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/e;->g()I

    .line 1196
    .line 1197
    .line 1198
    move-result v2

    .line 1199
    int-to-double v2, v2

    .line 1200
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1201
    .line 1202
    .line 1203
    move-result-object v2

    .line 1204
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    .line 1205
    .line 1206
    .line 1207
    return-object v0

    .line 1208
    :pswitch_4b7
    move-object/from16 v3, p2

    .line 1209
    .line 1210
    move-object/from16 v10, p3

    .line 1211
    .line 1212
    const/4 v4, 0x1

    .line 1213
    invoke-static {v2, v4, v10}, Lcom/google/android/gms/internal/measurement/p4;->q(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1214
    .line 1215
    .line 1216
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/e;->g()I

    .line 1217
    .line 1218
    .line 1219
    move-result v0

    .line 1220
    if-nez v0, :cond_4c8

    .line 1221
    .line 1222
    sget-object v0, Lcom/google/android/gms/internal/measurement/n;->u:Lcom/google/android/gms/internal/measurement/p;

    .line 1223
    .line 1224
    return-object v0

    .line 1225
    :cond_4c8
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1226
    .line 1227
    .line 1228
    move-result v0

    .line 1229
    if-nez v0, :cond_4ee

    .line 1230
    .line 1231
    const/4 v0, 0x0

    .line 1232
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1233
    .line 1234
    .line 1235
    move-result-object v0

    .line 1236
    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 1237
    .line 1238
    iget-object v2, v3, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 1239
    .line 1240
    check-cast v2, Lcom/google/android/gms/internal/measurement/y4;

    .line 1241
    .line 1242
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 1243
    .line 1244
    .line 1245
    move-result-object v0

    .line 1246
    instance-of v2, v0, Lcom/google/android/gms/internal/measurement/l;

    .line 1247
    .line 1248
    if-nez v2, :cond_4eb

    .line 1249
    .line 1250
    instance-of v2, v0, Lcom/google/android/gms/internal/measurement/t;

    .line 1251
    .line 1252
    if-eqz v2, :cond_4e6

    .line 1253
    .line 1254
    goto :goto_4eb

    .line 1255
    :cond_4e6
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/n;->zzf()Ljava/lang/String;

    .line 1256
    .line 1257
    .line 1258
    move-result-object v9

    .line 1259
    goto :goto_4f0

    .line 1260
    :cond_4eb
    :goto_4eb
    const-string v9, ""

    .line 1261
    .line 1262
    goto :goto_4f0

    .line 1263
    :cond_4ee
    move-object/from16 v9, p1

    .line 1264
    .line 1265
    :goto_4f0
    new-instance v0, Lcom/google/android/gms/internal/measurement/p;

    .line 1266
    .line 1267
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/measurement/e;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 1268
    .line 1269
    .line 1270
    move-result-object v2

    .line 1271
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/p;-><init>(Ljava/lang/String;)V

    .line 1272
    .line 1273
    .line 1274
    return-object v0

    .line 1275
    :pswitch_4fa
    move-object/from16 v10, p3

    .line 1276
    .line 1277
    const/4 v0, 0x0

    .line 1278
    invoke-static {v0, v5, v10}, Lcom/google/android/gms/internal/measurement/p4;->g(ILjava/lang/String;Ljava/util/List;)V

    .line 1279
    .line 1280
    .line 1281
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/e;->g()I

    .line 1282
    .line 1283
    .line 1284
    move-result v0

    .line 1285
    if-nez v0, :cond_508

    .line 1286
    .line 1287
    goto/16 :goto_698

    .line 1288
    .line 1289
    :cond_508
    const/4 v2, 0x1

    .line 1290
    sub-int/2addr v0, v2

    .line 1291
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/e;->e(I)Lcom/google/android/gms/internal/measurement/n;

    .line 1292
    .line 1293
    .line 1294
    move-result-object v2

    .line 1295
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/e;->i(I)V

    .line 1296
    .line 1297
    .line 1298
    return-object v2

    .line 1299
    :pswitch_512
    move-object/from16 v3, p2

    .line 1300
    .line 1301
    move-object/from16 v10, p3

    .line 1302
    .line 1303
    const/4 v0, 0x0

    .line 1304
    const/4 v2, 0x1

    .line 1305
    invoke-static {v2, v4, v10}, Lcom/google/android/gms/internal/measurement/p4;->g(ILjava/lang/String;Ljava/util/List;)V

    .line 1306
    .line 1307
    .line 1308
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1309
    .line 1310
    .line 1311
    move-result-object v0

    .line 1312
    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 1313
    .line 1314
    iget-object v2, v3, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 1315
    .line 1316
    check-cast v2, Lcom/google/android/gms/internal/measurement/y4;

    .line 1317
    .line 1318
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 1319
    .line 1320
    .line 1321
    move-result-object v0

    .line 1322
    instance-of v2, v0, Lcom/google/android/gms/internal/measurement/o;

    .line 1323
    .line 1324
    if-eqz v2, :cond_541

    .line 1325
    .line 1326
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/e;->g()I

    .line 1327
    .line 1328
    .line 1329
    move-result v2

    .line 1330
    if-nez v2, :cond_539

    .line 1331
    .line 1332
    new-instance v0, Lcom/google/android/gms/internal/measurement/e;

    .line 1333
    .line 1334
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/e;-><init>()V

    .line 1335
    .line 1336
    .line 1337
    return-object v0

    .line 1338
    :cond_539
    check-cast v0, Lcom/google/android/gms/internal/measurement/o;

    .line 1339
    .line 1340
    const/4 v2, 0x0

    .line 1341
    invoke-static {v1, v3, v0, v2, v2}, Lcom/google/android/gms/internal/measurement/q0;->a(Lcom/google/android/gms/internal/measurement/e;Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/o;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/measurement/e;

    .line 1342
    .line 1343
    .line 1344
    move-result-object v0

    .line 1345
    return-object v0

    .line 1346
    :cond_541
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1347
    .line 1348
    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1349
    .line 1350
    .line 1351
    throw v0

    .line 1352
    :pswitch_547
    move-object/from16 v3, p2

    .line 1353
    .line 1354
    move-object/from16 v10, p3

    .line 1355
    .line 1356
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1357
    .line 1358
    .line 1359
    move-result v0

    .line 1360
    if-nez v0, :cond_5c5

    .line 1361
    .line 1362
    new-instance v0, Lcom/google/android/gms/internal/measurement/e;

    .line 1363
    .line 1364
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/e;-><init>()V

    .line 1365
    .line 1366
    .line 1367
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 1368
    .line 1369
    .line 1370
    move-result v2

    .line 1371
    const/4 v8, 0x0

    .line 1372
    :goto_55b
    if-ge v8, v2, :cond_57d

    .line 1373
    .line 1374
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1375
    .line 1376
    .line 1377
    move-result-object v4

    .line 1378
    add-int/lit8 v8, v8, 0x1

    .line 1379
    .line 1380
    check-cast v4, Lcom/google/android/gms/internal/measurement/n;

    .line 1381
    .line 1382
    iget-object v5, v3, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 1383
    .line 1384
    check-cast v5, Lcom/google/android/gms/internal/measurement/y4;

    .line 1385
    .line 1386
    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 1387
    .line 1388
    .line 1389
    move-result-object v4

    .line 1390
    instance-of v5, v4, Lcom/google/android/gms/internal/measurement/h;

    .line 1391
    .line 1392
    if-nez v5, :cond_575

    .line 1393
    .line 1394
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/measurement/e;->f(Lcom/google/android/gms/internal/measurement/n;)V

    .line 1395
    .line 1396
    .line 1397
    goto :goto_55b

    .line 1398
    :cond_575
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1399
    .line 1400
    const-string v2, "Argument evaluation failed"

    .line 1401
    .line 1402
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1403
    .line 1404
    .line 1405
    throw v0

    .line 1406
    :cond_57d
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/e;->g()I

    .line 1407
    .line 1408
    .line 1409
    move-result v2

    .line 1410
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/e;->l()Ljava/util/Iterator;

    .line 1411
    .line 1412
    .line 1413
    move-result-object v3

    .line 1414
    :goto_585
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1415
    .line 1416
    .line 1417
    move-result v4

    .line 1418
    if-eqz v4, :cond_5a2

    .line 1419
    .line 1420
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1421
    .line 1422
    .line 1423
    move-result-object v4

    .line 1424
    check-cast v4, Ljava/lang/Integer;

    .line 1425
    .line 1426
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 1427
    .line 1428
    .line 1429
    move-result v5

    .line 1430
    add-int/2addr v5, v2

    .line 1431
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 1432
    .line 1433
    .line 1434
    move-result v4

    .line 1435
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/measurement/e;->e(I)Lcom/google/android/gms/internal/measurement/n;

    .line 1436
    .line 1437
    .line 1438
    move-result-object v4

    .line 1439
    invoke-virtual {v0, v5, v4}, Lcom/google/android/gms/internal/measurement/e;->j(ILcom/google/android/gms/internal/measurement/n;)V

    .line 1440
    .line 1441
    .line 1442
    goto :goto_585

    .line 1443
    :cond_5a2
    invoke-virtual/range {v20 .. v20}, Ljava/util/TreeMap;->clear()V

    .line 1444
    .line 1445
    .line 1446
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/e;->l()Ljava/util/Iterator;

    .line 1447
    .line 1448
    .line 1449
    move-result-object v2

    .line 1450
    :goto_5a9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1451
    .line 1452
    .line 1453
    move-result v3

    .line 1454
    if-eqz v3, :cond_5c5

    .line 1455
    .line 1456
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1457
    .line 1458
    .line 1459
    move-result-object v3

    .line 1460
    check-cast v3, Ljava/lang/Integer;

    .line 1461
    .line 1462
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1463
    .line 1464
    .line 1465
    move-result v4

    .line 1466
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1467
    .line 1468
    .line 1469
    move-result v3

    .line 1470
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/e;->e(I)Lcom/google/android/gms/internal/measurement/n;

    .line 1471
    .line 1472
    .line 1473
    move-result-object v3

    .line 1474
    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/internal/measurement/e;->j(ILcom/google/android/gms/internal/measurement/n;)V

    .line 1475
    .line 1476
    .line 1477
    goto :goto_5a9

    .line 1478
    :cond_5c5
    new-instance v0, Lcom/google/android/gms/internal/measurement/g;

    .line 1479
    .line 1480
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/e;->g()I

    .line 1481
    .line 1482
    .line 1483
    move-result v2

    .line 1484
    int-to-double v2, v2

    .line 1485
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1486
    .line 1487
    .line 1488
    move-result-object v2

    .line 1489
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    .line 1490
    .line 1491
    .line 1492
    return-object v0

    .line 1493
    :pswitch_5d4
    move-object/from16 v3, p2

    .line 1494
    .line 1495
    move-object/from16 v10, p3

    .line 1496
    .line 1497
    move-object/from16 v4, v22

    .line 1498
    .line 1499
    const/4 v2, 0x2

    .line 1500
    invoke-static {v0, v2, v10}, Lcom/google/android/gms/internal/measurement/p4;->q(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1501
    .line 1502
    .line 1503
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1504
    .line 1505
    .line 1506
    move-result v0

    .line 1507
    if-nez v0, :cond_5f3

    .line 1508
    .line 1509
    const/4 v0, 0x0

    .line 1510
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1511
    .line 1512
    .line 1513
    move-result-object v0

    .line 1514
    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 1515
    .line 1516
    iget-object v2, v3, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 1517
    .line 1518
    check-cast v2, Lcom/google/android/gms/internal/measurement/y4;

    .line 1519
    .line 1520
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 1521
    .line 1522
    .line 1523
    move-result-object v17

    .line 1524
    :cond_5f3
    move-object/from16 v0, v17

    .line 1525
    .line 1526
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/e;->g()I

    .line 1527
    .line 1528
    .line 1529
    move-result v2

    .line 1530
    const/4 v5, 0x1

    .line 1531
    sub-int/2addr v2, v5

    .line 1532
    int-to-double v11, v2

    .line 1533
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 1534
    .line 1535
    .line 1536
    move-result v2

    .line 1537
    if-le v2, v5, :cond_63d

    .line 1538
    .line 1539
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1540
    .line 1541
    .line 1542
    move-result-object v2

    .line 1543
    check-cast v2, Lcom/google/android/gms/internal/measurement/n;

    .line 1544
    .line 1545
    iget-object v6, v3, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 1546
    .line 1547
    check-cast v6, Lcom/google/android/gms/internal/measurement/y4;

    .line 1548
    .line 1549
    invoke-virtual {v6, v3, v2}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 1550
    .line 1551
    .line 1552
    move-result-object v2

    .line 1553
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/Double;

    .line 1554
    .line 1555
    .line 1556
    move-result-object v3

    .line 1557
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 1558
    .line 1559
    .line 1560
    move-result-wide v9

    .line 1561
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    .line 1562
    .line 1563
    .line 1564
    move-result v3

    .line 1565
    if-eqz v3, :cond_626

    .line 1566
    .line 1567
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/e;->g()I

    .line 1568
    .line 1569
    .line 1570
    move-result v2

    .line 1571
    sub-int/2addr v2, v5

    .line 1572
    int-to-double v2, v2

    .line 1573
    :goto_624
    move-wide v11, v2

    .line 1574
    goto :goto_633

    .line 1575
    :cond_626
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/Double;

    .line 1576
    .line 1577
    .line 1578
    move-result-object v2

    .line 1579
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 1580
    .line 1581
    .line 1582
    move-result-wide v2

    .line 1583
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/p4;->a(D)D

    .line 1584
    .line 1585
    .line 1586
    move-result-wide v2

    .line 1587
    goto :goto_624

    .line 1588
    :goto_633
    cmpg-double v2, v11, v7

    .line 1589
    .line 1590
    if-gez v2, :cond_63d

    .line 1591
    .line 1592
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/e;->g()I

    .line 1593
    .line 1594
    .line 1595
    move-result v2

    .line 1596
    int-to-double v2, v2

    .line 1597
    add-double/2addr v11, v2

    .line 1598
    :cond_63d
    cmpg-double v2, v11, v7

    .line 1599
    .line 1600
    if-gez v2, :cond_647

    .line 1601
    .line 1602
    new-instance v0, Lcom/google/android/gms/internal/measurement/g;

    .line 1603
    .line 1604
    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    .line 1605
    .line 1606
    .line 1607
    return-object v0

    .line 1608
    :cond_647
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/e;->g()I

    .line 1609
    .line 1610
    .line 1611
    move-result v2

    .line 1612
    int-to-double v2, v2

    .line 1613
    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->min(DD)D

    .line 1614
    .line 1615
    .line 1616
    move-result-wide v2

    .line 1617
    double-to-int v2, v2

    .line 1618
    :goto_651
    if-ltz v2, :cond_671

    .line 1619
    .line 1620
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/e;->k(I)Z

    .line 1621
    .line 1622
    .line 1623
    move-result v3

    .line 1624
    if-eqz v3, :cond_66e

    .line 1625
    .line 1626
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/e;->e(I)Lcom/google/android/gms/internal/measurement/n;

    .line 1627
    .line 1628
    .line 1629
    move-result-object v3

    .line 1630
    invoke-static {v3, v0}, Lcom/google/android/gms/internal/measurement/p4;->l(Lcom/google/android/gms/internal/measurement/n;Lcom/google/android/gms/internal/measurement/n;)Z

    .line 1631
    .line 1632
    .line 1633
    move-result v3

    .line 1634
    if-eqz v3, :cond_66e

    .line 1635
    .line 1636
    new-instance v0, Lcom/google/android/gms/internal/measurement/g;

    .line 1637
    .line 1638
    int-to-double v2, v2

    .line 1639
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1640
    .line 1641
    .line 1642
    move-result-object v2

    .line 1643
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    .line 1644
    .line 1645
    .line 1646
    return-object v0

    .line 1647
    :cond_66e
    add-int/lit8 v2, v2, -0x1

    .line 1648
    .line 1649
    goto :goto_651

    .line 1650
    :cond_671
    new-instance v0, Lcom/google/android/gms/internal/measurement/g;

    .line 1651
    .line 1652
    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    .line 1653
    .line 1654
    .line 1655
    return-object v0

    .line 1656
    :pswitch_677
    move-object/from16 v3, p2

    .line 1657
    .line 1658
    move-object/from16 v2, p3

    .line 1659
    .line 1660
    const/4 v4, 0x1

    .line 1661
    invoke-static {v4, v10, v2}, Lcom/google/android/gms/internal/measurement/p4;->g(ILjava/lang/String;Ljava/util/List;)V

    .line 1662
    .line 1663
    .line 1664
    const/4 v0, 0x0

    .line 1665
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1666
    .line 1667
    .line 1668
    move-result-object v0

    .line 1669
    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 1670
    .line 1671
    iget-object v2, v3, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 1672
    .line 1673
    check-cast v2, Lcom/google/android/gms/internal/measurement/y4;

    .line 1674
    .line 1675
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 1676
    .line 1677
    .line 1678
    move-result-object v0

    .line 1679
    instance-of v2, v0, Lcom/google/android/gms/internal/measurement/o;

    .line 1680
    .line 1681
    if-eqz v2, :cond_6a0

    .line 1682
    .line 1683
    invoke-virtual/range {v20 .. v20}, Ljava/util/TreeMap;->size()I

    .line 1684
    .line 1685
    .line 1686
    move-result v2

    .line 1687
    if-nez v2, :cond_699

    .line 1688
    .line 1689
    :goto_698
    return-object v17

    .line 1690
    :cond_699
    check-cast v0, Lcom/google/android/gms/internal/measurement/o;

    .line 1691
    .line 1692
    const/4 v2, 0x0

    .line 1693
    invoke-static {v1, v3, v0, v2, v2}, Lcom/google/android/gms/internal/measurement/q0;->a(Lcom/google/android/gms/internal/measurement/e;Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/o;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/measurement/e;

    .line 1694
    .line 1695
    .line 1696
    return-object v17

    .line 1697
    :cond_6a0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1698
    .line 1699
    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1700
    .line 1701
    .line 1702
    throw v0

    .line 1703
    :pswitch_6a6
    move-object/from16 v3, p2

    .line 1704
    .line 1705
    move-object/from16 v2, p3

    .line 1706
    .line 1707
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1708
    .line 1709
    .line 1710
    move-result v0

    .line 1711
    if-eqz v0, :cond_6b6

    .line 1712
    .line 1713
    new-instance v0, Lcom/google/android/gms/internal/measurement/e;

    .line 1714
    .line 1715
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/e;-><init>()V

    .line 1716
    .line 1717
    .line 1718
    return-object v0

    .line 1719
    :cond_6b6
    const/4 v0, 0x0

    .line 1720
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1721
    .line 1722
    .line 1723
    move-result-object v4

    .line 1724
    check-cast v4, Lcom/google/android/gms/internal/measurement/n;

    .line 1725
    .line 1726
    iget-object v0, v3, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 1727
    .line 1728
    check-cast v0, Lcom/google/android/gms/internal/measurement/y4;

    .line 1729
    .line 1730
    iget-object v5, v3, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 1731
    .line 1732
    check-cast v5, Lcom/google/android/gms/internal/measurement/y4;

    .line 1733
    .line 1734
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 1735
    .line 1736
    .line 1737
    move-result-object v0

    .line 1738
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/Double;

    .line 1739
    .line 1740
    .line 1741
    move-result-object v0

    .line 1742
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 1743
    .line 1744
    .line 1745
    move-result-wide v6

    .line 1746
    invoke-static {v6, v7}, Lcom/google/android/gms/internal/measurement/p4;->a(D)D

    .line 1747
    .line 1748
    .line 1749
    move-result-wide v6

    .line 1750
    double-to-int v0, v6

    .line 1751
    if-gez v0, :cond_6e4

    .line 1752
    .line 1753
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/e;->g()I

    .line 1754
    .line 1755
    .line 1756
    move-result v4

    .line 1757
    add-int/2addr v4, v0

    .line 1758
    const/4 v0, 0x0

    .line 1759
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    .line 1760
    .line 1761
    .line 1762
    move-result v4

    .line 1763
    move v0, v4

    .line 1764
    goto :goto_6ee

    .line 1765
    :cond_6e4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/e;->g()I

    .line 1766
    .line 1767
    .line 1768
    move-result v4

    .line 1769
    if-le v0, v4, :cond_6ee

    .line 1770
    .line 1771
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/e;->g()I

    .line 1772
    .line 1773
    .line 1774
    move-result v0

    .line 1775
    :cond_6ee
    :goto_6ee
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/e;->g()I

    .line 1776
    .line 1777
    .line 1778
    move-result v4

    .line 1779
    new-instance v6, Lcom/google/android/gms/internal/measurement/e;

    .line 1780
    .line 1781
    invoke-direct {v6}, Lcom/google/android/gms/internal/measurement/e;-><init>()V

    .line 1782
    .line 1783
    .line 1784
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1785
    .line 1786
    .line 1787
    move-result v7

    .line 1788
    const/4 v8, 0x1

    .line 1789
    if-le v7, v8, :cond_7a8

    .line 1790
    .line 1791
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1792
    .line 1793
    .line 1794
    move-result-object v7

    .line 1795
    check-cast v7, Lcom/google/android/gms/internal/measurement/n;

    .line 1796
    .line 1797
    invoke-virtual {v5, v3, v7}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 1798
    .line 1799
    .line 1800
    move-result-object v7

    .line 1801
    invoke-interface {v7}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/Double;

    .line 1802
    .line 1803
    .line 1804
    move-result-object v7

    .line 1805
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    .line 1806
    .line 1807
    .line 1808
    move-result-wide v7

    .line 1809
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/measurement/p4;->a(D)D

    .line 1810
    .line 1811
    .line 1812
    move-result-wide v7

    .line 1813
    double-to-int v7, v7

    .line 1814
    const/4 v8, 0x0

    .line 1815
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    .line 1816
    .line 1817
    .line 1818
    move-result v7

    .line 1819
    if-lez v7, :cond_732

    .line 1820
    .line 1821
    move v8, v0

    .line 1822
    :goto_71d
    add-int v9, v0, v7

    .line 1823
    .line 1824
    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    .line 1825
    .line 1826
    .line 1827
    move-result v9

    .line 1828
    if-ge v8, v9, :cond_732

    .line 1829
    .line 1830
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/e;->e(I)Lcom/google/android/gms/internal/measurement/n;

    .line 1831
    .line 1832
    .line 1833
    move-result-object v9

    .line 1834
    invoke-virtual {v6, v9}, Lcom/google/android/gms/internal/measurement/e;->f(Lcom/google/android/gms/internal/measurement/n;)V

    .line 1835
    .line 1836
    .line 1837
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/e;->i(I)V

    .line 1838
    .line 1839
    .line 1840
    add-int/lit8 v8, v8, 0x1

    .line 1841
    .line 1842
    goto :goto_71d

    .line 1843
    :cond_732
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1844
    .line 1845
    .line 1846
    move-result v4

    .line 1847
    const/4 v7, 0x2

    .line 1848
    if-le v4, v7, :cond_7b8

    .line 1849
    .line 1850
    move v4, v7

    .line 1851
    :goto_73a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1852
    .line 1853
    .line 1854
    move-result v8

    .line 1855
    if-ge v4, v8, :cond_7b8

    .line 1856
    .line 1857
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1858
    .line 1859
    .line 1860
    move-result-object v8

    .line 1861
    check-cast v8, Lcom/google/android/gms/internal/measurement/n;

    .line 1862
    .line 1863
    invoke-virtual {v5, v3, v8}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 1864
    .line 1865
    .line 1866
    move-result-object v8

    .line 1867
    instance-of v9, v8, Lcom/google/android/gms/internal/measurement/h;

    .line 1868
    .line 1869
    if-nez v9, :cond_7a0

    .line 1870
    .line 1871
    add-int v9, v0, v4

    .line 1872
    .line 1873
    sub-int/2addr v9, v7

    .line 1874
    if-ltz v9, :cond_794

    .line 1875
    .line 1876
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/e;->g()I

    .line 1877
    .line 1878
    .line 1879
    move-result v10

    .line 1880
    if-lt v9, v10, :cond_75f

    .line 1881
    .line 1882
    invoke-virtual {v1, v9, v8}, Lcom/google/android/gms/internal/measurement/e;->j(ILcom/google/android/gms/internal/measurement/n;)V

    .line 1883
    .line 1884
    .line 1885
    move-object/from16 v12, v20

    .line 1886
    .line 1887
    goto :goto_78f

    .line 1888
    :cond_75f
    invoke-virtual/range {v20 .. v20}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    .line 1889
    .line 1890
    .line 1891
    move-result-object v10

    .line 1892
    check-cast v10, Ljava/lang/Integer;

    .line 1893
    .line 1894
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 1895
    .line 1896
    .line 1897
    move-result v10

    .line 1898
    :goto_769
    if-lt v10, v9, :cond_78a

    .line 1899
    .line 1900
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1901
    .line 1902
    .line 1903
    move-result-object v11

    .line 1904
    move-object/from16 v12, v20

    .line 1905
    .line 1906
    invoke-virtual {v12, v11}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1907
    .line 1908
    .line 1909
    move-result-object v11

    .line 1910
    check-cast v11, Lcom/google/android/gms/internal/measurement/n;

    .line 1911
    .line 1912
    if-eqz v11, :cond_785

    .line 1913
    .line 1914
    add-int/lit8 v13, v10, 0x1

    .line 1915
    .line 1916
    invoke-virtual {v1, v13, v11}, Lcom/google/android/gms/internal/measurement/e;->j(ILcom/google/android/gms/internal/measurement/n;)V

    .line 1917
    .line 1918
    .line 1919
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1920
    .line 1921
    .line 1922
    move-result-object v11

    .line 1923
    invoke-virtual {v12, v11}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1924
    .line 1925
    .line 1926
    :cond_785
    add-int/lit8 v10, v10, -0x1

    .line 1927
    .line 1928
    move-object/from16 v20, v12

    .line 1929
    .line 1930
    goto :goto_769

    .line 1931
    :cond_78a
    move-object/from16 v12, v20

    .line 1932
    .line 1933
    invoke-virtual {v1, v9, v8}, Lcom/google/android/gms/internal/measurement/e;->j(ILcom/google/android/gms/internal/measurement/n;)V

    .line 1934
    .line 1935
    .line 1936
    :goto_78f
    add-int/lit8 v4, v4, 0x1

    .line 1937
    .line 1938
    move-object/from16 v20, v12

    .line 1939
    .line 1940
    goto :goto_73a

    .line 1941
    :cond_794
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1942
    .line 1943
    const-string v2, "Invalid value index: "

    .line 1944
    .line 1945
    invoke-static {v9, v2}, La1/a;->i(ILjava/lang/String;)Ljava/lang/String;

    .line 1946
    .line 1947
    .line 1948
    move-result-object v2

    .line 1949
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1950
    .line 1951
    .line 1952
    throw v0

    .line 1953
    :cond_7a0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1954
    .line 1955
    const-string v2, "Failed to parse elements to add"

    .line 1956
    .line 1957
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1958
    .line 1959
    .line 1960
    throw v0

    .line 1961
    :cond_7a8
    :goto_7a8
    if-ge v0, v4, :cond_7b8

    .line 1962
    .line 1963
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/e;->e(I)Lcom/google/android/gms/internal/measurement/n;

    .line 1964
    .line 1965
    .line 1966
    move-result-object v2

    .line 1967
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/measurement/e;->f(Lcom/google/android/gms/internal/measurement/n;)V

    .line 1968
    .line 1969
    .line 1970
    const/4 v2, 0x0

    .line 1971
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/measurement/e;->j(ILcom/google/android/gms/internal/measurement/n;)V

    .line 1972
    .line 1973
    .line 1974
    add-int/lit8 v0, v0, 0x1

    .line 1975
    .line 1976
    goto :goto_7a8

    .line 1977
    :cond_7b8
    return-object v6

    .line 1978
    :pswitch_7b9
    move-object/from16 v3, p2

    .line 1979
    .line 1980
    move-object/from16 v2, p3

    .line 1981
    .line 1982
    const/4 v4, 0x1

    .line 1983
    invoke-static {v1, v3, v2, v4}, Lcom/google/android/gms/internal/measurement/q0;->b(Lcom/google/android/gms/internal/measurement/e;Lcom/google/firebase/messaging/y;Ljava/util/ArrayList;Z)Lcom/google/android/gms/internal/measurement/n;

    .line 1984
    .line 1985
    .line 1986
    move-result-object v0

    .line 1987
    return-object v0

    .line 1988
    :pswitch_7c3
    move-object/from16 v3, p2

    .line 1989
    .line 1990
    move-object/from16 v2, p3

    .line 1991
    .line 1992
    move-object/from16 v7, v19

    .line 1993
    .line 1994
    move-object/from16 v12, v20

    .line 1995
    .line 1996
    const/4 v4, 0x1

    .line 1997
    invoke-static {v4, v7, v2}, Lcom/google/android/gms/internal/measurement/p4;->g(ILjava/lang/String;Ljava/util/List;)V

    .line 1998
    .line 1999
    .line 2000
    const/4 v0, 0x0

    .line 2001
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2002
    .line 2003
    .line 2004
    move-result-object v0

    .line 2005
    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 2006
    .line 2007
    iget-object v2, v3, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 2008
    .line 2009
    check-cast v2, Lcom/google/android/gms/internal/measurement/y4;

    .line 2010
    .line 2011
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 2012
    .line 2013
    .line 2014
    move-result-object v0

    .line 2015
    instance-of v2, v0, Lcom/google/android/gms/internal/measurement/o;

    .line 2016
    .line 2017
    if-eqz v2, :cond_81f

    .line 2018
    .line 2019
    invoke-virtual {v12}, Ljava/util/TreeMap;->size()I

    .line 2020
    .line 2021
    .line 2022
    move-result v2

    .line 2023
    if-nez v2, :cond_7ee

    .line 2024
    .line 2025
    new-instance v0, Lcom/google/android/gms/internal/measurement/e;

    .line 2026
    .line 2027
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/e;-><init>()V

    .line 2028
    .line 2029
    .line 2030
    return-object v0

    .line 2031
    :cond_7ee
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/e;->a()Lcom/google/android/gms/internal/measurement/n;

    .line 2032
    .line 2033
    .line 2034
    move-result-object v2

    .line 2035
    check-cast v2, Lcom/google/android/gms/internal/measurement/e;

    .line 2036
    .line 2037
    check-cast v0, Lcom/google/android/gms/internal/measurement/o;

    .line 2038
    .line 2039
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2040
    .line 2041
    const/4 v5, 0x0

    .line 2042
    invoke-static {v1, v3, v0, v5, v4}, Lcom/google/android/gms/internal/measurement/q0;->a(Lcom/google/android/gms/internal/measurement/e;Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/o;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/measurement/e;

    .line 2043
    .line 2044
    .line 2045
    move-result-object v0

    .line 2046
    new-instance v3, Lcom/google/android/gms/internal/measurement/e;

    .line 2047
    .line 2048
    invoke-direct {v3}, Lcom/google/android/gms/internal/measurement/e;-><init>()V

    .line 2049
    .line 2050
    .line 2051
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/e;->l()Ljava/util/Iterator;

    .line 2052
    .line 2053
    .line 2054
    move-result-object v0

    .line 2055
    :goto_806
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 2056
    .line 2057
    .line 2058
    move-result v4

    .line 2059
    if-eqz v4, :cond_81e

    .line 2060
    .line 2061
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2062
    .line 2063
    .line 2064
    move-result-object v4

    .line 2065
    check-cast v4, Ljava/lang/Integer;

    .line 2066
    .line 2067
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 2068
    .line 2069
    .line 2070
    move-result v4

    .line 2071
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/measurement/e;->e(I)Lcom/google/android/gms/internal/measurement/n;

    .line 2072
    .line 2073
    .line 2074
    move-result-object v4

    .line 2075
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/e;->f(Lcom/google/android/gms/internal/measurement/n;)V

    .line 2076
    .line 2077
    .line 2078
    goto :goto_806

    .line 2079
    :cond_81e
    return-object v3

    .line 2080
    :cond_81f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2081
    .line 2082
    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 2083
    .line 2084
    .line 2085
    throw v0

    .line 2086
    :pswitch_825
    move-object/from16 v3, p2

    .line 2087
    .line 2088
    move-object/from16 v2, p3

    .line 2089
    .line 2090
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/e;->a()Lcom/google/android/gms/internal/measurement/n;

    .line 2091
    .line 2092
    .line 2093
    move-result-object v0

    .line 2094
    check-cast v0, Lcom/google/android/gms/internal/measurement/e;

    .line 2095
    .line 2096
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2097
    .line 2098
    .line 2099
    move-result v4

    .line 2100
    if-nez v4, :cond_887

    .line 2101
    .line 2102
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 2103
    .line 2104
    .line 2105
    move-result v4

    .line 2106
    const/4 v8, 0x0

    .line 2107
    :cond_83a
    :goto_83a
    if-ge v8, v4, :cond_887

    .line 2108
    .line 2109
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2110
    .line 2111
    .line 2112
    move-result-object v5

    .line 2113
    add-int/lit8 v8, v8, 0x1

    .line 2114
    .line 2115
    check-cast v5, Lcom/google/android/gms/internal/measurement/n;

    .line 2116
    .line 2117
    iget-object v6, v3, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 2118
    .line 2119
    check-cast v6, Lcom/google/android/gms/internal/measurement/y4;

    .line 2120
    .line 2121
    invoke-virtual {v6, v3, v5}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 2122
    .line 2123
    .line 2124
    move-result-object v5

    .line 2125
    instance-of v6, v5, Lcom/google/android/gms/internal/measurement/h;

    .line 2126
    .line 2127
    if-nez v6, :cond_87f

    .line 2128
    .line 2129
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/e;->g()I

    .line 2130
    .line 2131
    .line 2132
    move-result v6

    .line 2133
    instance-of v7, v5, Lcom/google/android/gms/internal/measurement/e;

    .line 2134
    .line 2135
    if-eqz v7, :cond_87b

    .line 2136
    .line 2137
    check-cast v5, Lcom/google/android/gms/internal/measurement/e;

    .line 2138
    .line 2139
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/e;->l()Ljava/util/Iterator;

    .line 2140
    .line 2141
    .line 2142
    move-result-object v7

    .line 2143
    :goto_85e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 2144
    .line 2145
    .line 2146
    move-result v9

    .line 2147
    if-eqz v9, :cond_83a

    .line 2148
    .line 2149
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2150
    .line 2151
    .line 2152
    move-result-object v9

    .line 2153
    check-cast v9, Ljava/lang/Integer;

    .line 2154
    .line 2155
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 2156
    .line 2157
    .line 2158
    move-result v10

    .line 2159
    add-int/2addr v10, v6

    .line 2160
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 2161
    .line 2162
    .line 2163
    move-result v9

    .line 2164
    invoke-virtual {v5, v9}, Lcom/google/android/gms/internal/measurement/e;->e(I)Lcom/google/android/gms/internal/measurement/n;

    .line 2165
    .line 2166
    .line 2167
    move-result-object v9

    .line 2168
    invoke-virtual {v0, v10, v9}, Lcom/google/android/gms/internal/measurement/e;->j(ILcom/google/android/gms/internal/measurement/n;)V

    .line 2169
    .line 2170
    .line 2171
    goto :goto_85e

    .line 2172
    :cond_87b
    invoke-virtual {v0, v6, v5}, Lcom/google/android/gms/internal/measurement/e;->j(ILcom/google/android/gms/internal/measurement/n;)V

    .line 2173
    .line 2174
    .line 2175
    goto :goto_83a

    .line 2176
    :cond_87f
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2177
    .line 2178
    const-string v2, "Failed evaluation of arguments"

    .line 2179
    .line 2180
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 2181
    .line 2182
    .line 2183
    throw v0

    .line 2184
    :cond_887
    return-object v0

    .line 2185
    :pswitch_888
    move-object/from16 v2, p3

    .line 2186
    .line 2187
    move-object/from16 v8, v18

    .line 2188
    .line 2189
    const/4 v0, 0x0

    .line 2190
    invoke-static {v0, v8, v2}, Lcom/google/android/gms/internal/measurement/p4;->g(ILjava/lang/String;Ljava/util/List;)V

    .line 2191
    .line 2192
    .line 2193
    new-instance v0, Lcom/google/android/gms/internal/measurement/p;

    .line 2194
    .line 2195
    move-object/from16 v2, p1

    .line 2196
    .line 2197
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/e;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 2198
    .line 2199
    .line 2200
    move-result-object v2

    .line 2201
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/p;-><init>(Ljava/lang/String;)V

    .line 2202
    .line 2203
    .line 2204
    return-object v0

    .line 2205
    :sswitch_data_89c
    .sparse-switch
        -0x69e9ad94 -> :sswitch_1d0
        -0x50c088ec -> :sswitch_1bf
        -0x4bf73488 -> :sswitch_1b3
        -0x37b90a9a -> :sswitch_1a1
        -0x3565b984 -> :sswitch_195
        -0x28732996 -> :sswitch_18b
        -0x1bdda92d -> :sswitch_181
        -0x108c6a77 -> :sswitch_175
        0x1a55c -> :sswitch_16a
        0x1b251 -> :sswitch_160
        0x31dd2a -> :sswitch_156
        0x34af1a -> :sswitch_14c
        0x35f4f4 -> :sswitch_141
        0x35f59e -> :sswitch_136
        0x5c6731b -> :sswitch_12b
        0x6856c82 -> :sswitch_120
        0x6873d92 -> :sswitch_115
        0x398d4c56 -> :sswitch_10a
        0x418e52e2 -> :sswitch_ff
        0x73d44649 -> :sswitch_f4
    .end sparse-switch

    .line 2206
    .line 2207
    .line 2208
    .line 2209
    .line 2210
    .line 2211
    .line 2212
    .line 2213
    .line 2214
    .line 2215
    .line 2216
    .line 2217
    .line 2218
    .line 2219
    .line 2220
    .line 2221
    .line 2222
    .line 2223
    .line 2224
    .line 2225
    .line 2226
    .line 2227
    .line 2228
    .line 2229
    .line 2230
    .line 2231
    .line 2232
    .line 2233
    .line 2234
    .line 2235
    .line 2236
    .line 2237
    .line 2238
    .line 2239
    .line 2240
    .line 2241
    .line 2242
    .line 2243
    .line 2244
    .line 2245
    .line 2246
    .line 2247
    .line 2248
    .line 2249
    .line 2250
    .line 2251
    .line 2252
    .line 2253
    .line 2254
    .line 2255
    .line 2256
    .line 2257
    .line 2258
    .line 2259
    .line 2260
    .line 2261
    .line 2262
    .line 2263
    .line 2264
    .line 2265
    .line 2266
    .line 2267
    .line 2268
    .line 2269
    .line 2270
    .line 2271
    .line 2272
    .line 2273
    .line 2274
    .line 2275
    .line 2276
    .line 2277
    .line 2278
    .line 2279
    .line 2280
    .line 2281
    .line 2282
    .line 2283
    .line 2284
    .line 2285
    .line 2286
    .line 2287
    :pswitch_data_8ee
    .packed-switch 0x0
        :pswitch_888
        :pswitch_825
        :pswitch_7c3
        :pswitch_7b9
        :pswitch_6a6
        :pswitch_677
        :pswitch_5d4
        :pswitch_547
        :pswitch_512
        :pswitch_4fa
        :pswitch_4b7
        :pswitch_483
        :pswitch_40b
        :pswitch_3af
        :pswitch_372
        :pswitch_35c
        :pswitch_2d5
        :pswitch_2cb
        :pswitch_296
        :pswitch_1fc
    .end packed-switch
.end method

.method public final e(I)Lcom/google/android/gms/internal/measurement/n;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/e;->g()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ge p1, v0, :cond_1e

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/e;->k(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1b

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/e;->a:Ljava/util/TreeMap;

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lcom/google/android/gms/internal/measurement/n;

    .line 24
    .line 25
    if-eqz p1, :cond_1b

    .line 26
    .line 27
    return-object p1

    .line 28
    :cond_1b
    sget-object p1, Lcom/google/android/gms/internal/measurement/n;->n:Lcom/google/android/gms/internal/measurement/t;

    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_1e
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 32
    .line 33
    const-string v0, "Attempting to get element outside of current array"

    .line 34
    .line 35
    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    if-ne p1, p0, :cond_3

    .line 2
    .line 3
    goto :goto_4d

    .line 4
    :cond_3
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/e;

    .line 5
    .line 6
    if-nez v0, :cond_8

    .line 7
    .line 8
    goto :goto_48

    .line 9
    :cond_8
    check-cast p1, Lcom/google/android/gms/internal/measurement/e;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/e;->g()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/e;->g()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eq v0, v1, :cond_15

    .line 20
    .line 21
    goto :goto_48

    .line 22
    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/e;->a:Ljava/util/TreeMap;

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_24

    .line 29
    .line 30
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/e;->a:Ljava/util/TreeMap;

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    return p1

    .line 37
    :cond_24
    invoke-virtual {v0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Ljava/lang/Integer;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    :goto_2e
    invoke-virtual {v0}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Ljava/lang/Integer;

    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-gt v1, v2, :cond_4d

    .line 58
    .line 59
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/e;->e(I)Lcom/google/android/gms/internal/measurement/n;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/e;->e(I)Lcom/google/android/gms/internal/measurement/n;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-nez v2, :cond_4a

    .line 72
    .line 73
    :goto_48
    const/4 p1, 0x0

    .line 74
    return p1

    .line 75
    :cond_4a
    add-int/lit8 v1, v1, 0x1

    .line 76
    .line 77
    goto :goto_2e

    .line 78
    :cond_4d
    :goto_4d
    const/4 p1, 0x1

    .line 79
    return p1
.end method

.method public final f(Lcom/google/android/gms/internal/measurement/n;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/e;->g()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/e;->j(ILcom/google/android/gms/internal/measurement/n;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final g()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/e;->a:Ljava/util/TreeMap;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_a

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    :cond_a
    invoke-virtual {v0}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Integer;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    return v0
.end method

.method public final h(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 1
    if-nez p1, :cond_4

    .line 2
    .line 3
    const-string p1, ""

    .line 4
    .line 5
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/e;->a:Ljava/util/TreeMap;

    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_39

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    move v2, v1

    .line 20
    :goto_13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/e;->g()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-ge v2, v3, :cond_32

    .line 25
    .line 26
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/measurement/e;->e(I)Lcom/google/android/gms/internal/measurement/n;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    instance-of v4, v3, Lcom/google/android/gms/internal/measurement/t;

    .line 34
    .line 35
    if-nez v4, :cond_2f

    .line 36
    .line 37
    instance-of v4, v3, Lcom/google/android/gms/internal/measurement/l;

    .line 38
    .line 39
    if-nez v4, :cond_2f

    .line 40
    .line 41
    invoke-interface {v3}, Lcom/google/android/gms/internal/measurement/n;->zzf()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    .line 49
    .line 50
    goto :goto_13

    .line 51
    :cond_32
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    invoke-virtual {v0, v1, p1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    :cond_39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    return-object p1
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/e;->a:Ljava/util/TreeMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    return v0
.end method

.method public final i(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/e;->a:Ljava/util/TreeMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-gt p1, v1, :cond_5d

    .line 14
    .line 15
    if-gez p1, :cond_11

    .line 16
    .line 17
    goto :goto_5d

    .line 18
    :cond_11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    if-ne p1, v1, :cond_32

    .line 26
    .line 27
    add-int/lit8 p1, p1, -0x1

    .line 28
    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_5d

    .line 38
    .line 39
    if-ltz p1, :cond_5d

    .line 40
    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    sget-object v1, Lcom/google/android/gms/internal/measurement/n;->n:Lcom/google/android/gms/internal/measurement/t;

    .line 46
    .line 47
    invoke-virtual {v0, p1, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_32
    :goto_32
    add-int/lit8 p1, p1, 0x1

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Ljava/lang/Integer;

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-gt p1, v1, :cond_5d

    .line 64
    .line 65
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Lcom/google/android/gms/internal/measurement/n;

    .line 74
    .line 75
    if-eqz v1, :cond_5c

    .line 76
    .line 77
    add-int/lit8 v2, p1, -0x1

    .line 78
    .line 79
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    :cond_5c
    goto :goto_32

    .line 94
    :cond_5d
    :goto_5d
    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/r;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/measurement/r;-><init>(ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public final j(ILcom/google/android/gms/internal/measurement/n;)V
    .registers 4

    .line 1
    const/16 v0, 0x7ed4

    .line 2
    .line 3
    if-gt p1, v0, :cond_26

    .line 4
    .line 5
    if-ltz p1, :cond_1a

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/e;->a:Ljava/util/TreeMap;

    .line 8
    .line 9
    if-nez p2, :cond_12

    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1a
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    .line 28
    .line 29
    const-string v0, "Out of bounds index: "

    .line 30
    .line 31
    invoke-static {p1, v0}, La1/a;->i(ILjava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p2

    .line 39
    :cond_26
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 40
    .line 41
    const-string p2, "Array too large"

    .line 42
    .line 43
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p1
.end method

.method public final k(I)Z
    .registers 4

    .line 1
    if-ltz p1, :cond_19

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/e;->a:Ljava/util/TreeMap;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-gt p1, v1, :cond_19

    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1

    .line 26
    :cond_19
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 27
    .line 28
    const-string v1, "Out of bounds index: "

    .line 29
    .line 30
    invoke-static {p1, v1}, La1/a;->i(ILjava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v0
.end method

.method public final l()Ljava/util/Iterator;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/e;->a:Ljava/util/TreeMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

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
    return-object v0
.end method

.method public final m()Ljava/util/ArrayList;
    .registers 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/e;->g()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/e;->g()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-ge v1, v2, :cond_1a

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/e;->e(I)Lcom/google/android/gms/internal/measurement/n;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_a

    .line 27
    :cond_1a
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, ","

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/e;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/n;
    .registers 4

    .line 1
    const-string v0, "length"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_17

    .line 8
    .line 9
    new-instance p1, Lcom/google/android/gms/internal/measurement/g;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/e;->g()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    int-to-double v0, v0

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    .line 21
    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_17
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/e;->zzc(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_28

    .line 29
    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/e;->b:Ljava/util/TreeMap;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lcom/google/android/gms/internal/measurement/n;

    .line 37
    .line 38
    if-eqz p1, :cond_28

    .line 39
    .line 40
    return-object p1

    .line 41
    :cond_28
    sget-object p1, Lcom/google/android/gms/internal/measurement/n;->n:Lcom/google/android/gms/internal/measurement/t;

    .line 42
    .line 43
    return-object p1
.end method

.method public final zzc(Ljava/lang/String;)Z
    .registers 3

    .line 1
    const-string v0, "length"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_13

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/e;->b:Ljava/util/TreeMap;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_11

    .line 16
    .line 17
    goto :goto_13

    .line 18
    :cond_11
    const/4 p1, 0x0

    .line 19
    return p1

    .line 20
    :cond_13
    :goto_13
    const/4 p1, 0x1

    .line 21
    return p1
.end method

.method public final zzd()Ljava/lang/Boolean;
    .registers 2

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzf()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, ","

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/e;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final zzh()Ljava/util/Iterator;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/e;->a:Ljava/util/TreeMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

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
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/e;->b:Ljava/util/TreeMap;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Lcom/google/android/gms/internal/measurement/d;

    .line 22
    .line 23
    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/measurement/d;-><init>(Ljava/util/Iterator;Ljava/util/Iterator;)V

    .line 24
    .line 25
    .line 26
    return-object v2
.end method
