###### Class t5.h (t5.h)
.class public final Lt5/h;
.super Lq5/x;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final b:Lt5/g;


# instance fields
.field public final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lt5/h;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lt5/h;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lt5/g;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, v0, v2}, Lt5/g;-><init>(Lq5/x;I)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lt5/h;->b:Lt5/g;

    .line 14
    .line 15
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, Lt5/h;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static b(Lx5/a;Lq5/o;)V
    .registers 4

    .line 1
    if-eqz p1, :cond_82

    .line 2
    .line 3
    instance-of v0, p1, Lq5/p;

    .line 4
    .line 5
    if-eqz v0, :cond_8

    .line 6
    .line 7
    goto/16 :goto_82

    .line 8
    .line 9
    :cond_8
    instance-of v0, p1, Lq5/r;

    .line 10
    .line 11
    if-eqz v0, :cond_2c

    .line 12
    .line 13
    if-eqz v0, :cond_18

    .line 14
    .line 15
    check-cast p1, Lq5/r;

    .line 16
    .line 17
    invoke-virtual {p1}, Lq5/r;->b()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p0, p1}, Lx5/a;->C(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_18
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v1, "Not a JSON Primitive: "

    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p0

    .line 45
    :cond_2c
    instance-of v0, p1, Lq5/n;

    .line 46
    .line 47
    if-eqz v0, :cond_4b

    .line 48
    .line 49
    invoke-virtual {p0}, Lx5/a;->c()V

    .line 50
    .line 51
    .line 52
    if-eqz v0, :cond_37

    .line 53
    .line 54
    const/4 p0, 0x0

    .line 55
    throw p0

    .line 56
    :cond_37
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v1, "Not a JSON Array: "

    .line 61
    .line 62
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p0

    .line 76
    :cond_4b
    instance-of v0, p1, Lq5/q;

    .line 77
    .line 78
    if-eqz v0, :cond_6a

    .line 79
    .line 80
    invoke-virtual {p0}, Lx5/a;->g()V

    .line 81
    .line 82
    .line 83
    if-eqz v0, :cond_56

    .line 84
    .line 85
    const/4 p0, 0x0

    .line 86
    throw p0

    .line 87
    :cond_56
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 88
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v1, "Not a JSON Object: "

    .line 92
    .line 93
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p0

    .line 107
    :cond_6a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 108
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string v1, "Couldn\'t write "

    .line 112
    .line 113
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw p0

    .line 131
    :cond_82
    :goto_82
    invoke-virtual {p0}, Lx5/a;->w()Lx5/a;

    .line 132
    .line 133
    .line 134
    return-void
.end method


# virtual methods
.method public final a(Lx5/a;Ljava/lang/Object;)V
    .registers 7

    .line 1
    iget v0, p0, Lt5/h;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_20e

    .line 4
    .line 5
    .line 6
    check-cast p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    invoke-virtual {p1, p2}, Lx5/a;->D(Z)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_f
    check-cast p2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    int-to-long v0, p2

    .line 23
    invoke-virtual {p1, v0, v1}, Lx5/a;->A(J)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_1a
    check-cast p2, Ljava/lang/Number;

    .line 28
    .line 29
    if-nez p2, :cond_22

    .line 30
    .line 31
    invoke-virtual {p1}, Lx5/a;->w()Lx5/a;

    .line 32
    .line 33
    .line 34
    goto :goto_2a

    .line 35
    :cond_22
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    int-to-long v0, p2

    .line 40
    invoke-virtual {p1, v0, v1}, Lx5/a;->A(J)V

    .line 41
    .line 42
    .line 43
    :goto_2a
    return-void

    .line 44
    :pswitch_2b
    check-cast p2, Ljava/lang/Number;

    .line 45
    .line 46
    if-nez p2, :cond_33

    .line 47
    .line 48
    invoke-virtual {p1}, Lx5/a;->w()Lx5/a;

    .line 49
    .line 50
    .line 51
    goto :goto_3b

    .line 52
    :cond_33
    invoke-virtual {p2}, Ljava/lang/Number;->shortValue()S

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    int-to-long v0, p2

    .line 57
    invoke-virtual {p1, v0, v1}, Lx5/a;->A(J)V

    .line 58
    .line 59
    .line 60
    :goto_3b
    return-void

    .line 61
    :pswitch_3c
    check-cast p2, Ljava/lang/Number;

    .line 62
    .line 63
    if-nez p2, :cond_44

    .line 64
    .line 65
    invoke-virtual {p1}, Lx5/a;->w()Lx5/a;

    .line 66
    .line 67
    .line 68
    goto :goto_4c

    .line 69
    :cond_44
    invoke-virtual {p2}, Ljava/lang/Number;->byteValue()B

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    int-to-long v0, p2

    .line 74
    invoke-virtual {p1, v0, v1}, Lx5/a;->A(J)V

    .line 75
    .line 76
    .line 77
    :goto_4c
    return-void

    .line 78
    :pswitch_4d
    check-cast p2, Ljava/lang/Boolean;

    .line 79
    .line 80
    if-nez p2, :cond_54

    .line 81
    .line 82
    const-string p2, "null"

    .line 83
    .line 84
    goto :goto_58

    .line 85
    :cond_54
    invoke-virtual {p2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    :goto_58
    invoke-virtual {p1, p2}, Lx5/a;->C(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :pswitch_5c
    check-cast p2, Ljava/lang/Boolean;

    .line 94
    .line 95
    if-nez p2, :cond_64

    .line 96
    .line 97
    invoke-virtual {p1}, Lx5/a;->w()Lx5/a;

    .line 98
    .line 99
    .line 100
    goto :goto_7a

    .line 101
    :cond_64
    invoke-virtual {p1}, Lx5/a;->E()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Lx5/a;->a()V

    .line 105
    .line 106
    .line 107
    iget-object p1, p1, Lx5/a;->a:Ljava/io/Writer;

    .line 108
    .line 109
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    if-eqz p2, :cond_75

    .line 114
    .line 115
    const-string p2, "true"

    .line 116
    .line 117
    goto :goto_77

    .line 118
    :cond_75
    const-string p2, "false"

    .line 119
    .line 120
    :goto_77
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :goto_7a
    return-void

    .line 124
    :pswitch_7b
    check-cast p2, Ljava/util/BitSet;

    .line 125
    .line 126
    invoke-virtual {p1}, Lx5/a;->c()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2}, Ljava/util/BitSet;->length()I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    const/4 v1, 0x0

    .line 134
    :goto_85
    if-ge v1, v0, :cond_92

    .line 135
    .line 136
    invoke-virtual {p2, v1}, Ljava/util/BitSet;->get(I)Z

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    int-to-long v2, v2

    .line 141
    invoke-virtual {p1, v2, v3}, Lx5/a;->A(J)V

    .line 142
    .line 143
    .line 144
    add-int/lit8 v1, v1, 0x1

    .line 145
    .line 146
    goto :goto_85

    .line 147
    :cond_92
    invoke-virtual {p1}, Lx5/a;->s()V

    .line 148
    .line 149
    .line 150
    return-void

    .line 151
    :pswitch_96
    check-cast p2, Lq5/o;

    .line 152
    .line 153
    invoke-static {p1, p2}, Lt5/h;->b(Lx5/a;Lq5/o;)V

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :pswitch_9c
    check-cast p2, Ljava/util/Locale;

    .line 158
    .line 159
    if-nez p2, :cond_a2

    .line 160
    .line 161
    const/4 p2, 0x0

    .line 162
    goto :goto_a6

    .line 163
    :cond_a2
    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    :goto_a6
    invoke-virtual {p1, p2}, Lx5/a;->C(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    return-void

    .line 171
    :pswitch_aa
    check-cast p2, Ljava/util/Calendar;

    .line 172
    .line 173
    if-nez p2, :cond_b2

    .line 174
    .line 175
    invoke-virtual {p1}, Lx5/a;->w()Lx5/a;

    .line 176
    .line 177
    .line 178
    goto :goto_10f

    .line 179
    :cond_b2
    invoke-virtual {p1}, Lx5/a;->g()V

    .line 180
    .line 181
    .line 182
    const-string v0, "year"

    .line 183
    .line 184
    invoke-virtual {p1, v0}, Lx5/a;->u(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    const/4 v0, 0x1

    .line 188
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    int-to-long v0, v0

    .line 193
    invoke-virtual {p1, v0, v1}, Lx5/a;->A(J)V

    .line 194
    .line 195
    .line 196
    const-string v0, "month"

    .line 197
    .line 198
    invoke-virtual {p1, v0}, Lx5/a;->u(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    const/4 v0, 0x2

    .line 202
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    int-to-long v0, v0

    .line 207
    invoke-virtual {p1, v0, v1}, Lx5/a;->A(J)V

    .line 208
    .line 209
    .line 210
    const-string v0, "dayOfMonth"

    .line 211
    .line 212
    invoke-virtual {p1, v0}, Lx5/a;->u(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    const/4 v0, 0x5

    .line 216
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    int-to-long v0, v0

    .line 221
    invoke-virtual {p1, v0, v1}, Lx5/a;->A(J)V

    .line 222
    .line 223
    .line 224
    const-string v0, "hourOfDay"

    .line 225
    .line 226
    invoke-virtual {p1, v0}, Lx5/a;->u(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    const/16 v0, 0xb

    .line 230
    .line 231
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    int-to-long v0, v0

    .line 236
    invoke-virtual {p1, v0, v1}, Lx5/a;->A(J)V

    .line 237
    .line 238
    .line 239
    const-string v0, "minute"

    .line 240
    .line 241
    invoke-virtual {p1, v0}, Lx5/a;->u(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    const/16 v0, 0xc

    .line 245
    .line 246
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    int-to-long v0, v0

    .line 251
    invoke-virtual {p1, v0, v1}, Lx5/a;->A(J)V

    .line 252
    .line 253
    .line 254
    const-string v0, "second"

    .line 255
    .line 256
    invoke-virtual {p1, v0}, Lx5/a;->u(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    const/16 v0, 0xd

    .line 260
    .line 261
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    .line 262
    .line 263
    .line 264
    move-result p2

    .line 265
    int-to-long v0, p2

    .line 266
    invoke-virtual {p1, v0, v1}, Lx5/a;->A(J)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {p1}, Lx5/a;->t()V

    .line 270
    .line 271
    .line 272
    :goto_10f
    return-void

    .line 273
    :pswitch_110
    check-cast p2, Ljava/util/Currency;

    .line 274
    .line 275
    invoke-virtual {p2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object p2

    .line 279
    invoke-virtual {p1, p2}, Lx5/a;->C(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    return-void

    .line 283
    :pswitch_11a
    check-cast p2, Ljava/util/UUID;

    .line 284
    .line 285
    if-nez p2, :cond_120

    .line 286
    .line 287
    const/4 p2, 0x0

    .line 288
    goto :goto_124

    .line 289
    :cond_120
    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object p2

    .line 293
    :goto_124
    invoke-virtual {p1, p2}, Lx5/a;->C(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    return-void

    .line 297
    :pswitch_128
    check-cast p2, Ljava/net/InetAddress;

    .line 298
    .line 299
    if-nez p2, :cond_12e

    .line 300
    .line 301
    const/4 p2, 0x0

    .line 302
    goto :goto_132

    .line 303
    :cond_12e
    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object p2

    .line 307
    :goto_132
    invoke-virtual {p1, p2}, Lx5/a;->C(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    return-void

    .line 311
    :pswitch_136
    check-cast p2, Ljava/net/URI;

    .line 312
    .line 313
    if-nez p2, :cond_13c

    .line 314
    .line 315
    const/4 p2, 0x0

    .line 316
    goto :goto_140

    .line 317
    :cond_13c
    invoke-virtual {p2}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object p2

    .line 321
    :goto_140
    invoke-virtual {p1, p2}, Lx5/a;->C(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    return-void

    .line 325
    :pswitch_144
    check-cast p2, Ljava/net/URL;

    .line 326
    .line 327
    if-nez p2, :cond_14a

    .line 328
    .line 329
    const/4 p2, 0x0

    .line 330
    goto :goto_14e

    .line 331
    :cond_14a
    invoke-virtual {p2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object p2

    .line 335
    :goto_14e
    invoke-virtual {p1, p2}, Lx5/a;->C(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    return-void

    .line 339
    :pswitch_152
    check-cast p2, Ljava/lang/StringBuffer;

    .line 340
    .line 341
    if-nez p2, :cond_158

    .line 342
    .line 343
    const/4 p2, 0x0

    .line 344
    goto :goto_15c

    .line 345
    :cond_158
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object p2

    .line 349
    :goto_15c
    invoke-virtual {p1, p2}, Lx5/a;->C(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    return-void

    .line 353
    :pswitch_160
    check-cast p2, Ljava/lang/Class;

    .line 354
    .line 355
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 356
    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    .line 358
    .line 359
    const-string v1, "Attempted to serialize java.lang.Class: "

    .line 360
    .line 361
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object p2

    .line 368
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    const-string p2, ". Forgot to register a type adapter?"

    .line 372
    .line 373
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object p2

    .line 380
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    throw p1

    .line 384
    :pswitch_17f
    check-cast p2, Ljava/lang/StringBuilder;

    .line 385
    .line 386
    if-nez p2, :cond_185

    .line 387
    .line 388
    const/4 p2, 0x0

    .line 389
    goto :goto_189

    .line 390
    :cond_185
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object p2

    .line 394
    :goto_189
    invoke-virtual {p1, p2}, Lx5/a;->C(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    return-void

    .line 398
    :pswitch_18d
    check-cast p2, Ls5/i;

    .line 399
    .line 400
    invoke-virtual {p1, p2}, Lx5/a;->B(Ljava/lang/Number;)V

    .line 401
    .line 402
    .line 403
    return-void

    .line 404
    :pswitch_193
    check-cast p2, Ljava/math/BigInteger;

    .line 405
    .line 406
    invoke-virtual {p1, p2}, Lx5/a;->B(Ljava/lang/Number;)V

    .line 407
    .line 408
    .line 409
    return-void

    .line 410
    :pswitch_199
    check-cast p2, Ljava/math/BigDecimal;

    .line 411
    .line 412
    invoke-virtual {p1, p2}, Lx5/a;->B(Ljava/lang/Number;)V

    .line 413
    .line 414
    .line 415
    return-void

    .line 416
    :pswitch_19f
    check-cast p2, Ljava/lang/String;

    .line 417
    .line 418
    invoke-virtual {p1, p2}, Lx5/a;->C(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    return-void

    .line 422
    :pswitch_1a5
    check-cast p2, Ljava/lang/Character;

    .line 423
    .line 424
    if-nez p2, :cond_1ab

    .line 425
    .line 426
    const/4 p2, 0x0

    .line 427
    goto :goto_1af

    .line 428
    :cond_1ab
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object p2

    .line 432
    :goto_1af
    invoke-virtual {p1, p2}, Lx5/a;->C(Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    return-void

    .line 436
    :pswitch_1b3
    check-cast p2, Ljava/lang/Number;

    .line 437
    .line 438
    if-nez p2, :cond_1bb

    .line 439
    .line 440
    invoke-virtual {p1}, Lx5/a;->w()Lx5/a;

    .line 441
    .line 442
    .line 443
    goto :goto_1c2

    .line 444
    :cond_1bb
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    .line 445
    .line 446
    .line 447
    move-result-wide v0

    .line 448
    invoke-virtual {p1, v0, v1}, Lx5/a;->z(D)V

    .line 449
    .line 450
    .line 451
    :goto_1c2
    return-void

    .line 452
    :pswitch_1c3
    check-cast p2, Ljava/lang/Number;

    .line 453
    .line 454
    if-nez p2, :cond_1cb

    .line 455
    .line 456
    invoke-virtual {p1}, Lx5/a;->w()Lx5/a;

    .line 457
    .line 458
    .line 459
    goto :goto_1db

    .line 460
    :cond_1cb
    instance-of v0, p2, Ljava/lang/Float;

    .line 461
    .line 462
    if-eqz v0, :cond_1d0

    .line 463
    .line 464
    goto :goto_1d8

    .line 465
    :cond_1d0
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    .line 466
    .line 467
    .line 468
    move-result p2

    .line 469
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 470
    .line 471
    .line 472
    move-result-object p2

    .line 473
    :goto_1d8
    invoke-virtual {p1, p2}, Lx5/a;->B(Ljava/lang/Number;)V

    .line 474
    .line 475
    .line 476
    :goto_1db
    return-void

    .line 477
    :pswitch_1dc
    check-cast p2, Ljava/lang/Number;

    .line 478
    .line 479
    if-nez p2, :cond_1e4

    .line 480
    .line 481
    invoke-virtual {p1}, Lx5/a;->w()Lx5/a;

    .line 482
    .line 483
    .line 484
    goto :goto_1eb

    .line 485
    :cond_1e4
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    .line 486
    .line 487
    .line 488
    move-result-wide v0

    .line 489
    invoke-virtual {p1, v0, v1}, Lx5/a;->A(J)V

    .line 490
    .line 491
    .line 492
    :goto_1eb
    return-void

    .line 493
    :pswitch_1ec
    check-cast p2, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    .line 494
    .line 495
    invoke-virtual {p1}, Lx5/a;->c()V

    .line 496
    .line 497
    .line 498
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->length()I

    .line 499
    .line 500
    .line 501
    move-result v0

    .line 502
    const/4 v1, 0x0

    .line 503
    :goto_1f6
    if-ge v1, v0, :cond_203

    .line 504
    .line 505
    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    .line 506
    .line 507
    .line 508
    move-result v2

    .line 509
    int-to-long v2, v2

    .line 510
    invoke-virtual {p1, v2, v3}, Lx5/a;->A(J)V

    .line 511
    .line 512
    .line 513
    add-int/lit8 v1, v1, 0x1

    .line 514
    .line 515
    goto :goto_1f6

    .line 516
    :cond_203
    invoke-virtual {p1}, Lx5/a;->s()V

    .line 517
    .line 518
    .line 519
    return-void

    .line 520
    :pswitch_207
    check-cast p2, Ljava/lang/Number;

    .line 521
    .line 522
    invoke-virtual {p1, p2}, Lx5/a;->B(Ljava/lang/Number;)V

    .line 523
    .line 524
    .line 525
    return-void

    .line 526
    nop

    .line 527
    :pswitch_data_20e
    .packed-switch 0x0
        :pswitch_207
        :pswitch_1ec
        :pswitch_1dc
        :pswitch_1c3
        :pswitch_1b3
        :pswitch_1a5
        :pswitch_19f
        :pswitch_199
        :pswitch_193
        :pswitch_18d
        :pswitch_17f
        :pswitch_160
        :pswitch_152
        :pswitch_144
        :pswitch_136
        :pswitch_128
        :pswitch_11a
        :pswitch_110
        :pswitch_aa
        :pswitch_9c
        :pswitch_96
        :pswitch_7b
        :pswitch_5c
        :pswitch_4d
        :pswitch_3c
        :pswitch_2b
        :pswitch_1a
        :pswitch_f
    .end packed-switch
.end method
