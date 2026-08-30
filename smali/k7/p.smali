###### Class k7.p (k7.p)
.class public final Lk7/p;
.super Ld7/h;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lc7/p;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 1
    iput p1, p0, Lk7/p;->b:I

    .line 2
    .line 3
    iput-object p2, p0, Lk7/p;->c:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1}, Ld7/h;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lk7/p;->b:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_174

    .line 6
    .line 7
    .line 8
    move-object/from16 v4, p1

    .line 9
    .line 10
    check-cast v4, Ljava/lang/CharSequence;

    .line 11
    .line 12
    move-object/from16 v1, p2

    .line 13
    .line 14
    check-cast v1, Ljava/lang/Number;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const-string v2, "$this$$receiver"

    .line 21
    .line 22
    invoke-static {v2, v4}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object v2, v0, Lk7/p;->c:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v2, Ljava/util/List;

    .line 28
    .line 29
    move-object v8, v2

    .line 30
    check-cast v8, Ljava/util/Collection;

    .line 31
    .line 32
    invoke-interface {v8}, Ljava/util/Collection;->size()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const/4 v3, 0x0

    .line 37
    const/4 v5, 0x1

    .line 38
    const/4 v9, 0x0

    .line 39
    if-ne v2, v5, :cond_88

    .line 40
    .line 41
    check-cast v8, Ljava/lang/Iterable;

    .line 42
    .line 43
    instance-of v2, v8, Ljava/util/List;

    .line 44
    .line 45
    if-eqz v2, :cond_4d

    .line 46
    .line 47
    check-cast v8, Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_45

    .line 54
    .line 55
    if-ne v2, v5, :cond_3d

    .line 56
    .line 57
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    goto :goto_62

    .line 62
    :cond_3d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 63
    .line 64
    const-string v2, "List has more than one element."

    .line 65
    .line 66
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw v1

    .line 70
    :cond_45
    new-instance v1, Ljava/util/NoSuchElementException;

    .line 71
    .line 72
    const-string v2, "List is empty."

    .line 73
    .line 74
    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw v1

    .line 78
    :cond_4d
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_80

    .line 87
    .line 88
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-nez v2, :cond_78

    .line 97
    .line 98
    move-object v2, v3

    .line 99
    :goto_62
    check-cast v2, Ljava/lang/String;

    .line 100
    .line 101
    const/4 v3, 0x4

    .line 102
    invoke-static {v4, v2, v1, v3}, Lk7/g;->B(Ljava/lang/CharSequence;Ljava/lang/String;II)I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-gez v1, :cond_6d

    .line 107
    .line 108
    goto/16 :goto_12e

    .line 109
    .line 110
    :cond_6d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    new-instance v3, Lr6/d;

    .line 115
    .line 116
    invoke-direct {v3, v1, v2}, Lr6/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    goto/16 :goto_12f

    .line 120
    .line 121
    :cond_78
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 122
    .line 123
    const-string v2, "Collection has more than one element."

    .line 124
    .line 125
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw v1

    .line 129
    :cond_80
    new-instance v1, Ljava/util/NoSuchElementException;

    .line 130
    .line 131
    const-string v2, "Collection is empty."

    .line 132
    .line 133
    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw v1

    .line 137
    :cond_88
    new-instance v2, Lh7/c;

    .line 138
    .line 139
    if-gez v1, :cond_8d

    .line 140
    .line 141
    move v1, v3

    .line 142
    :cond_8d
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    invoke-direct {v2, v1, v3, v5}, Lh7/a;-><init>(III)V

    .line 147
    .line 148
    .line 149
    instance-of v3, v4, Ljava/lang/String;

    .line 150
    .line 151
    const/4 v15, 0x0

    .line 152
    iget v5, v2, Lh7/a;->c:I

    .line 153
    .line 154
    iget v2, v2, Lh7/a;->b:I

    .line 155
    .line 156
    if-eqz v3, :cond_de

    .line 157
    .line 158
    if-lez v5, :cond_a1

    .line 159
    .line 160
    if-le v1, v2, :cond_a5

    .line 161
    .line 162
    :cond_a1
    if-gez v5, :cond_12e

    .line 163
    .line 164
    if-gt v2, v1, :cond_12e

    .line 165
    .line 166
    :cond_a5
    move v11, v1

    .line 167
    :goto_a6
    move-object v1, v8

    .line 168
    check-cast v1, Ljava/lang/Iterable;

    .line 169
    .line 170
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    :cond_ad
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    if-eqz v3, :cond_c9

    .line 179
    .line 180
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    move-object v13, v3

    .line 185
    check-cast v13, Ljava/lang/String;

    .line 186
    .line 187
    move-object v14, v4

    .line 188
    check-cast v14, Ljava/lang/String;

    .line 189
    .line 190
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 191
    .line 192
    .line 193
    move-result v12

    .line 194
    const/4 v10, 0x0

    .line 195
    invoke-static/range {v10 .. v15}, Lk7/o;->s(IIILjava/lang/String;Ljava/lang/String;Z)Z

    .line 196
    .line 197
    .line 198
    move-result v6

    .line 199
    if-eqz v6, :cond_ad

    .line 200
    .line 201
    goto :goto_ca

    .line 202
    :cond_c9
    move-object v3, v9

    .line 203
    :goto_ca
    check-cast v3, Ljava/lang/String;

    .line 204
    .line 205
    if-eqz v3, :cond_da

    .line 206
    .line 207
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    new-instance v2, Lr6/d;

    .line 212
    .line 213
    invoke-direct {v2, v1, v3}, Lr6/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    move-object v3, v2

    .line 217
    goto/16 :goto_12f

    .line 218
    .line 219
    :cond_da
    if-eq v11, v2, :cond_12e

    .line 220
    .line 221
    add-int/2addr v11, v5

    .line 222
    goto :goto_a6

    .line 223
    :cond_de
    if-lez v5, :cond_e2

    .line 224
    .line 225
    if-le v1, v2, :cond_e6

    .line 226
    .line 227
    :cond_e2
    if-gez v5, :cond_12e

    .line 228
    .line 229
    if-gt v2, v1, :cond_12e

    .line 230
    .line 231
    :cond_e6
    :goto_e6
    move-object v3, v8

    .line 232
    check-cast v3, Ljava/lang/Iterable;

    .line 233
    .line 234
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 235
    .line 236
    .line 237
    move-result-object v10

    .line 238
    :goto_ed
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 239
    .line 240
    .line 241
    move-result v3

    .line 242
    if-eqz v3, :cond_113

    .line 243
    .line 244
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v11

    .line 248
    move v3, v2

    .line 249
    move-object v2, v11

    .line 250
    check-cast v2, Ljava/lang/String;

    .line 251
    .line 252
    move v6, v3

    .line 253
    const/4 v3, 0x0

    .line 254
    move v7, v6

    .line 255
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 256
    .line 257
    .line 258
    move-result v6

    .line 259
    move v12, v5

    .line 260
    move v5, v1

    .line 261
    move v1, v12

    .line 262
    move v12, v7

    .line 263
    move v7, v15

    .line 264
    invoke-static/range {v2 .. v7}, Lk7/g;->F(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    if-eqz v2, :cond_10e

    .line 269
    .line 270
    goto :goto_118

    .line 271
    :cond_10e
    move v2, v5

    .line 272
    move v5, v1

    .line 273
    move v1, v2

    .line 274
    move v2, v12

    .line 275
    goto :goto_ed

    .line 276
    :cond_113
    move v12, v5

    .line 277
    move v5, v1

    .line 278
    move v1, v12

    .line 279
    move v12, v2

    .line 280
    move-object v11, v9

    .line 281
    :goto_118
    check-cast v11, Ljava/lang/String;

    .line 282
    .line 283
    if-eqz v11, :cond_126

    .line 284
    .line 285
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    new-instance v3, Lr6/d;

    .line 290
    .line 291
    invoke-direct {v3, v1, v11}, Lr6/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    goto :goto_12f

    .line 295
    :cond_126
    if-eq v5, v12, :cond_12e

    .line 296
    .line 297
    add-int v2, v5, v1

    .line 298
    .line 299
    move v5, v1

    .line 300
    move v1, v2

    .line 301
    move v2, v12

    .line 302
    goto :goto_e6

    .line 303
    :cond_12e
    :goto_12e
    move-object v3, v9

    .line 304
    :goto_12f
    if-eqz v3, :cond_144

    .line 305
    .line 306
    iget-object v1, v3, Lr6/d;->a:Ljava/lang/Object;

    .line 307
    .line 308
    iget-object v2, v3, Lr6/d;->b:Ljava/lang/Object;

    .line 309
    .line 310
    check-cast v2, Ljava/lang/String;

    .line 311
    .line 312
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 313
    .line 314
    .line 315
    move-result v2

    .line 316
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 317
    .line 318
    .line 319
    move-result-object v2

    .line 320
    new-instance v9, Lr6/d;

    .line 321
    .line 322
    invoke-direct {v9, v1, v2}, Lr6/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 323
    .line 324
    .line 325
    :cond_144
    return-object v9

    .line 326
    :pswitch_145
    move-object/from16 v1, p1

    .line 327
    .line 328
    check-cast v1, Ljava/lang/CharSequence;

    .line 329
    .line 330
    move-object/from16 v2, p2

    .line 331
    .line 332
    check-cast v2, Ljava/lang/Number;

    .line 333
    .line 334
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 335
    .line 336
    .line 337
    move-result v2

    .line 338
    const-string v3, "$this$$receiver"

    .line 339
    .line 340
    invoke-static {v3, v1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 341
    .line 342
    .line 343
    iget-object v3, v0, Lk7/p;->c:Ljava/lang/Object;

    .line 344
    .line 345
    check-cast v3, [C

    .line 346
    .line 347
    const/4 v4, 0x0

    .line 348
    invoke-static {v1, v3, v2, v4}, Lk7/g;->C(Ljava/lang/CharSequence;[CIZ)I

    .line 349
    .line 350
    .line 351
    move-result v1

    .line 352
    if-gez v1, :cond_163

    .line 353
    .line 354
    const/4 v1, 0x0

    .line 355
    goto :goto_172

    .line 356
    :cond_163
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    const/4 v2, 0x1

    .line 361
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 362
    .line 363
    .line 364
    move-result-object v2

    .line 365
    new-instance v3, Lr6/d;

    .line 366
    .line 367
    invoke-direct {v3, v1, v2}, Lr6/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 368
    .line 369
    .line 370
    move-object v1, v3

    .line 371
    :goto_172
    return-object v1

    .line 372
    nop

    .line 373
    :pswitch_data_174
    .packed-switch 0x0
        :pswitch_145
    .end packed-switch
.end method
