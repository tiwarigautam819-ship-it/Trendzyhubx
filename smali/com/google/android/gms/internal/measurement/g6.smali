###### Class com.google.android.gms.internal.measurement.g6 (com.google.android.gms.internal.measurement.g6)
.class public final Lcom/google/android/gms/internal/measurement/g6;
.super Lcom/google/android/gms/internal/measurement/j;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final synthetic c:I

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lc5/h;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/g6;->c:I

    .line 16
    const-string v0, "internal.eventLogger"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/j;-><init>(Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/g6;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/measurement/j8;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/g6;->c:I

    .line 15
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/g6;->d:Ljava/lang/Object;

    const-string p1, "getValue"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/j;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/measurement/ta;)V
    .registers 8

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/g6;->c:I

    .line 2
    const-string v0, "internal.logger"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/j;-><init>(Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/g6;->d:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/j;->b:Ljava/util/HashMap;

    new-instance v0, Lcom/google/android/gms/internal/measurement/sa;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/internal/measurement/sa;-><init>(Lcom/google/android/gms/internal/measurement/g6;ZZ)V

    const-string v3, "log"

    invoke-virtual {p1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/j;->b:Ljava/util/HashMap;

    new-instance v0, Lcom/google/android/gms/internal/measurement/b;

    const/4 v4, 0x2

    .line 6
    const-string v5, "silent"

    invoke-direct {v0, v5, v4}, Lcom/google/android/gms/internal/measurement/b;-><init>(Ljava/lang/String;I)V

    .line 7
    invoke-virtual {p1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/j;->b:Ljava/util/HashMap;

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/j;

    new-instance v0, Lcom/google/android/gms/internal/measurement/sa;

    invoke-direct {v0, p0, v2, v2}, Lcom/google/android/gms/internal/measurement/sa;-><init>(Lcom/google/android/gms/internal/measurement/g6;ZZ)V

    invoke-virtual {p1, v3, v0}, Lcom/google/android/gms/internal/measurement/j;->b(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n;)V

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/j;->b:Ljava/util/HashMap;

    new-instance v0, Lcom/google/android/gms/internal/measurement/b;

    const/4 v2, 0x3

    .line 10
    const-string v4, "unmonitored"

    invoke-direct {v0, v4, v2}, Lcom/google/android/gms/internal/measurement/b;-><init>(Ljava/lang/String;I)V

    .line 11
    invoke-virtual {p1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/j;->b:Ljava/util/HashMap;

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/j;

    new-instance v0, Lcom/google/android/gms/internal/measurement/sa;

    invoke-direct {v0, p0, v1, v1}, Lcom/google/android/gms/internal/measurement/sa;-><init>(Lcom/google/android/gms/internal/measurement/g6;ZZ)V

    invoke-virtual {p1, v3, v0}, Lcom/google/android/gms/internal/measurement/j;->b(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzhk;)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/measurement/g6;->c:I

    const-string v0, "internal.appMetadata"

    .line 13
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/j;-><init>(Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/g6;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 1
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/measurement/g6;->c:I

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/j;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final e(Lcom/google/firebase/messaging/y;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/n;
    .registers 11

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/g6;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_1b4

    .line 4
    .line 5
    .line 6
    :try_start_5
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/g6;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Lcom/google/android/gms/measurement/internal/zzhk;

    .line 9
    .line 10
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/a5;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/n;

    .line 15
    .line 16
    .line 17
    move-result-object p1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_11} :catch_12

    .line 18
    goto :goto_14

    .line 19
    :catch_12
    sget-object p1, Lcom/google/android/gms/internal/measurement/n;->n:Lcom/google/android/gms/internal/measurement/t;

    .line 20
    .line 21
    :goto_14
    return-object p1

    .line 22
    :pswitch_15
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/j;->a:Ljava/lang/String;

    .line 23
    .line 24
    const/4 v1, 0x3

    .line 25
    invoke-static {v1, v0, p2}, Lcom/google/android/gms/internal/measurement/p4;->g(ILjava/lang/String;Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 34
    .line 35
    iget-object v1, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v1, Lcom/google/android/gms/internal/measurement/y4;

    .line 38
    .line 39
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/n;->zzf()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Lcom/google/android/gms/internal/measurement/n;

    .line 52
    .line 53
    iget-object v2, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v2, Lcom/google/android/gms/internal/measurement/y4;

    .line 56
    .line 57
    invoke-virtual {v2, p1, v1}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    instance-of v3, v1, Lcom/google/android/gms/internal/measurement/o;

    .line 62
    .line 63
    if-eqz v3, :cond_db

    .line 64
    .line 65
    const/4 v3, 0x2

    .line 66
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    .line 71
    .line 72
    invoke-virtual {v2, p1, p2}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    instance-of p2, p1, Lcom/google/android/gms/internal/measurement/m;

    .line 77
    .line 78
    if-eqz p2, :cond_d3

    .line 79
    .line 80
    check-cast p1, Lcom/google/android/gms/internal/measurement/m;

    .line 81
    .line 82
    iget-object p2, p1, Lcom/google/android/gms/internal/measurement/m;->a:Ljava/util/HashMap;

    .line 83
    .line 84
    const-string v2, "type"

    .line 85
    .line 86
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_cb

    .line 91
    .line 92
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/m;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/n;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/n;->zzf()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    const-string v3, "priority"

    .line 101
    .line 102
    invoke-virtual {p2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result p2

    .line 106
    if-eqz p2, :cond_7c

    .line 107
    .line 108
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/measurement/m;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/n;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/Double;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 117
    .line 118
    .line 119
    move-result-wide p1

    .line 120
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/p4;->m(D)I

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    goto :goto_7e

    .line 125
    :cond_7c
    const/16 p1, 0x3e8

    .line 126
    .line 127
    :goto_7e
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/g6;->d:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast p2, Lcom/google/android/gms/internal/measurement/y4;

    .line 130
    .line 131
    check-cast v1, Lcom/google/android/gms/internal/measurement/o;

    .line 132
    .line 133
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    const-string v3, "create"

    .line 137
    .line 138
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    if-eqz v3, :cond_94

    .line 143
    .line 144
    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast p2, Ljava/util/TreeMap;

    .line 147
    .line 148
    goto :goto_a0

    .line 149
    :cond_94
    const-string v3, "edit"

    .line 150
    .line 151
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    if-eqz v3, :cond_bf

    .line 156
    .line 157
    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast p2, Ljava/util/TreeMap;

    .line 160
    .line 161
    :goto_a0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    invoke-virtual {p2, v2}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    if-eqz v2, :cond_b5

    .line 170
    .line 171
    invoke-virtual {p2}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    check-cast p1, Ljava/lang/Integer;

    .line 176
    .line 177
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    add-int/2addr p1, v0

    .line 182
    :cond_b5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-virtual {p2, p1, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    sget-object p1, Lcom/google/android/gms/internal/measurement/n;->n:Lcom/google/android/gms/internal/measurement/t;

    .line 190
    .line 191
    return-object p1

    .line 192
    :cond_bf
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 193
    .line 194
    const-string p2, "Unknown callback type: "

    .line 195
    .line 196
    invoke-static {p2, v2}, Lq2/x;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p2

    .line 200
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    throw p1

    .line 204
    :cond_cb
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 205
    .line 206
    const-string p2, "Undefined rule type"

    .line 207
    .line 208
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    throw p1

    .line 212
    :cond_d3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 213
    .line 214
    const-string p2, "Invalid callback params"

    .line 215
    .line 216
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    throw p1

    .line 220
    :cond_db
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 221
    .line 222
    const-string p2, "Invalid callback type"

    .line 223
    .line 224
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    throw p1

    .line 228
    :pswitch_e3
    sget-object p1, Lcom/google/android/gms/internal/measurement/n;->n:Lcom/google/android/gms/internal/measurement/t;

    .line 229
    .line 230
    return-object p1

    .line 231
    :pswitch_e6
    const-string v0, "getValue"

    .line 232
    .line 233
    const/4 v1, 0x2

    .line 234
    invoke-static {v1, v0, p2}, Lcom/google/android/gms/internal/measurement/p4;->g(ILjava/lang/String;Ljava/util/List;)V

    .line 235
    .line 236
    .line 237
    const/4 v0, 0x0

    .line 238
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 243
    .line 244
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/y;->G(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    const/4 v1, 0x1

    .line 249
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object p2

    .line 253
    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    .line 254
    .line 255
    invoke-virtual {p1, p2}, Lcom/google/firebase/messaging/y;->G(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/n;->zzf()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object p2

    .line 263
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/g6;->d:Ljava/lang/Object;

    .line 264
    .line 265
    check-cast v0, Lcom/google/android/gms/internal/measurement/j8;

    .line 266
    .line 267
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/measurement/j8;->zza(Ljava/lang/String;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object p2

    .line 271
    if-eqz p2, :cond_115

    .line 272
    .line 273
    new-instance p1, Lcom/google/android/gms/internal/measurement/p;

    .line 274
    .line 275
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/p;-><init>(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    :cond_115
    return-object p1

    .line 279
    :pswitch_116
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/j;->a:Ljava/lang/String;

    .line 280
    .line 281
    const/4 v1, 0x3

    .line 282
    invoke-static {v1, v0, p2}, Lcom/google/android/gms/internal/measurement/p4;->g(ILjava/lang/String;Ljava/util/List;)V

    .line 283
    .line 284
    .line 285
    const/4 v0, 0x0

    .line 286
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 291
    .line 292
    iget-object v1, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 293
    .line 294
    check-cast v1, Lcom/google/android/gms/internal/measurement/y4;

    .line 295
    .line 296
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/n;->zzf()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    const/4 v1, 0x1

    .line 305
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    check-cast v1, Lcom/google/android/gms/internal/measurement/n;

    .line 310
    .line 311
    iget-object v2, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 312
    .line 313
    check-cast v2, Lcom/google/android/gms/internal/measurement/y4;

    .line 314
    .line 315
    invoke-virtual {v2, p1, v1}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/Double;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 324
    .line 325
    .line 326
    move-result-wide v3

    .line 327
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/p4;->a(D)D

    .line 328
    .line 329
    .line 330
    move-result-wide v3

    .line 331
    double-to-long v3, v3

    .line 332
    const/4 v1, 0x2

    .line 333
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object p2

    .line 337
    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    .line 338
    .line 339
    invoke-virtual {v2, p1, p2}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    instance-of p2, p1, Lcom/google/android/gms/internal/measurement/m;

    .line 344
    .line 345
    if-eqz p2, :cond_161

    .line 346
    .line 347
    check-cast p1, Lcom/google/android/gms/internal/measurement/m;

    .line 348
    .line 349
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/p4;->f(Lcom/google/android/gms/internal/measurement/m;)Ljava/util/HashMap;

    .line 350
    .line 351
    .line 352
    move-result-object p1

    .line 353
    goto :goto_166

    .line 354
    :cond_161
    new-instance p1, Ljava/util/HashMap;

    .line 355
    .line 356
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 357
    .line 358
    .line 359
    :goto_166
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/g6;->d:Ljava/lang/Object;

    .line 360
    .line 361
    check-cast p2, Lc5/h;

    .line 362
    .line 363
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 364
    .line 365
    .line 366
    new-instance v1, Ljava/util/HashMap;

    .line 367
    .line 368
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 369
    .line 370
    .line 371
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 372
    .line 373
    .line 374
    move-result-object v2

    .line 375
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 376
    .line 377
    .line 378
    move-result-object v2

    .line 379
    :goto_17a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 380
    .line 381
    .line 382
    move-result v5

    .line 383
    if-eqz v5, :cond_1a4

    .line 384
    .line 385
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v5

    .line 389
    check-cast v5, Ljava/lang/String;

    .line 390
    .line 391
    iget-object v6, p2, Lc5/h;->b:Ljava/lang/Object;

    .line 392
    .line 393
    check-cast v6, Lcom/google/android/gms/internal/measurement/c;

    .line 394
    .line 395
    iget-object v6, v6, Lcom/google/android/gms/internal/measurement/c;->c:Ljava/util/HashMap;

    .line 396
    .line 397
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    move-result v7

    .line 401
    if-eqz v7, :cond_197

    .line 402
    .line 403
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v6

    .line 407
    goto :goto_198

    .line 408
    :cond_197
    const/4 v6, 0x0

    .line 409
    :goto_198
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v7

    .line 413
    invoke-static {v5, v6, v7}, Lcom/google/android/gms/internal/measurement/c;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    move-result-object v6

    .line 417
    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    goto :goto_17a

    .line 421
    :cond_1a4
    iget-object p1, p2, Lc5/h;->d:Ljava/lang/Object;

    .line 422
    .line 423
    check-cast p1, Ljava/util/ArrayList;

    .line 424
    .line 425
    new-instance p2, Lcom/google/android/gms/internal/measurement/c;

    .line 426
    .line 427
    invoke-direct {p2, v0, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/c;-><init>(Ljava/lang/String;JLjava/util/Map;)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    .line 432
    .line 433
    sget-object p1, Lcom/google/android/gms/internal/measurement/n;->n:Lcom/google/android/gms/internal/measurement/t;

    .line 434
    .line 435
    return-object p1

    .line 436
    nop

    .line 437
    :pswitch_data_1b4
    .packed-switch 0x0
        :pswitch_116
        :pswitch_e6
        :pswitch_e3
        :pswitch_15
    .end packed-switch
.end method
