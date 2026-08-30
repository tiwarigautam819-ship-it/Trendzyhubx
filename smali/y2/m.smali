###### Class y2.m (y2.m)
.class public final Ly2/m;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ly2/m;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public b:Ljava/util/HashSet;

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Z

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Z

.field public final l:I

.field public final m:Z

.field public final v:Z

.field public final w:Ljava/lang/String;

.field public final x:Ljava/lang/String;

.field public final y:Ljava/lang/String;

.field public final z:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ln4/e;

    .line 2
    .line 3
    const/16 v1, 0x16

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ln4/e;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Ly2/m;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "loginBehavior"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lq2/g;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    if-eqz v0, :cond_18b

    .line 14
    .line 15
    const-string v1, "NATIVE_WITH_FALLBACK"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_18

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_49

    .line 25
    :cond_18
    const-string v1, "NATIVE_ONLY"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_22

    .line 32
    .line 33
    const/4 v0, 0x2

    .line 34
    goto :goto_49

    .line 35
    :cond_22
    const-string v1, "KATANA_ONLY"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_2c

    .line 42
    .line 43
    const/4 v0, 0x3

    .line 44
    goto :goto_49

    .line 45
    :cond_2c
    const-string v1, "WEB_ONLY"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_36

    .line 52
    .line 53
    const/4 v0, 0x4

    .line 54
    goto :goto_49

    .line 55
    :cond_36
    const-string v1, "DIALOG_ONLY"

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_40

    .line 62
    .line 63
    const/4 v0, 0x5

    .line 64
    goto :goto_49

    .line 65
    :cond_40
    const-string v1, "DEVICE_AUTH"

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_17f

    .line 72
    .line 73
    const/4 v0, 0x6

    .line 74
    :goto_49
    iput v0, p0, Ly2/m;->a:I

    .line 75
    .line 76
    new-instance v0, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 82
    .line 83
    .line 84
    new-instance v1, Ljava/util/HashSet;

    .line 85
    .line 86
    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 87
    .line 88
    .line 89
    iput-object v1, p0, Ly2/m;->b:Ljava/util/HashSet;

    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    const/4 v1, 0x1

    .line 96
    if-eqz v0, :cond_9f

    .line 97
    .line 98
    if-eqz v0, :cond_97

    .line 99
    .line 100
    const-string v2, "NONE"

    .line 101
    .line 102
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-eqz v2, :cond_6d

    .line 107
    .line 108
    const/4 v0, 0x1

    .line 109
    goto :goto_a0

    .line 110
    :cond_6d
    const-string v2, "ONLY_ME"

    .line 111
    .line 112
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-eqz v2, :cond_77

    .line 117
    .line 118
    const/4 v0, 0x2

    .line 119
    goto :goto_a0

    .line 120
    :cond_77
    const-string v2, "FRIENDS"

    .line 121
    .line 122
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    if-eqz v2, :cond_81

    .line 127
    .line 128
    const/4 v0, 0x3

    .line 129
    goto :goto_a0

    .line 130
    :cond_81
    const-string v2, "EVERYONE"

    .line 131
    .line 132
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-eqz v2, :cond_8b

    .line 137
    .line 138
    const/4 v0, 0x4

    .line 139
    goto :goto_a0

    .line 140
    :cond_8b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 141
    .line 142
    const-string v1, "No enum constant com.facebook.login.DefaultAudience."

    .line 143
    .line 144
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw p1

    .line 152
    :cond_97
    new-instance p1, Ljava/lang/NullPointerException;

    .line 153
    .line 154
    const-string v0, "Name is null"

    .line 155
    .line 156
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    throw p1

    .line 160
    :cond_9f
    move v0, v1

    .line 161
    :goto_a0
    iput v0, p0, Ly2/m;->c:I

    .line 162
    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    const-string v2, "applicationId"

    .line 168
    .line 169
    invoke-static {v0, v2}, Lq2/g;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    iput-object v0, p0, Ly2/m;->d:Ljava/lang/String;

    .line 173
    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    const-string v2, "authId"

    .line 179
    .line 180
    invoke-static {v0, v2}, Lq2/g;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    iput-object v0, p0, Ly2/m;->e:Ljava/lang/String;

    .line 184
    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    const/4 v2, 0x0

    .line 190
    if-eqz v0, :cond_c1

    .line 191
    .line 192
    move v0, v1

    .line 193
    goto :goto_c2

    .line 194
    :cond_c1
    move v0, v2

    .line 195
    :goto_c2
    iput-boolean v0, p0, Ly2/m;->f:Z

    .line 196
    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    iput-object v0, p0, Ly2/m;->g:Ljava/lang/String;

    .line 202
    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    const-string v3, "authType"

    .line 208
    .line 209
    invoke-static {v0, v3}, Lq2/g;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    iput-object v0, p0, Ly2/m;->h:Ljava/lang/String;

    .line 213
    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    iput-object v0, p0, Ly2/m;->i:Ljava/lang/String;

    .line 219
    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    iput-object v0, p0, Ly2/m;->j:Ljava/lang/String;

    .line 225
    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    if-eqz v0, :cond_e9

    .line 231
    .line 232
    move v0, v1

    .line 233
    goto :goto_ea

    .line 234
    :cond_e9
    move v0, v2

    .line 235
    :goto_ea
    iput-boolean v0, p0, Ly2/m;->k:Z

    .line 236
    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    if-eqz v0, :cond_11c

    .line 242
    .line 243
    if-eqz v0, :cond_114

    .line 244
    .line 245
    const-string v3, "FACEBOOK"

    .line 246
    .line 247
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v3

    .line 251
    if-eqz v3, :cond_fe

    .line 252
    .line 253
    const/4 v0, 0x1

    .line 254
    goto :goto_11d

    .line 255
    :cond_fe
    const-string v3, "INSTAGRAM"

    .line 256
    .line 257
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result v3

    .line 261
    if-eqz v3, :cond_108

    .line 262
    .line 263
    const/4 v0, 0x2

    .line 264
    goto :goto_11d

    .line 265
    :cond_108
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 266
    .line 267
    const-string v1, "No enum constant com.facebook.login.LoginTargetApp."

    .line 268
    .line 269
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    throw p1

    .line 277
    :cond_114
    new-instance p1, Ljava/lang/NullPointerException;

    .line 278
    .line 279
    const-string v0, "Name is null"

    .line 280
    .line 281
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    throw p1

    .line 285
    :cond_11c
    move v0, v1

    .line 286
    :goto_11d
    iput v0, p0, Ly2/m;->l:I

    .line 287
    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 289
    .line 290
    .line 291
    move-result v0

    .line 292
    if-eqz v0, :cond_127

    .line 293
    .line 294
    move v0, v1

    .line 295
    goto :goto_128

    .line 296
    :cond_127
    move v0, v2

    .line 297
    :goto_128
    iput-boolean v0, p0, Ly2/m;->m:Z

    .line 298
    .line 299
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 300
    .line 301
    .line 302
    move-result v0

    .line 303
    if-eqz v0, :cond_131

    .line 304
    .line 305
    goto :goto_132

    .line 306
    :cond_131
    move v1, v2

    .line 307
    :goto_132
    iput-boolean v1, p0, Ly2/m;->v:Z

    .line 308
    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    const-string v1, "nonce"

    .line 314
    .line 315
    invoke-static {v0, v1}, Lq2/g;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    iput-object v0, p0, Ly2/m;->w:Ljava/lang/String;

    .line 319
    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    iput-object v0, p0, Ly2/m;->x:Ljava/lang/String;

    .line 325
    .line 326
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    iput-object v0, p0, Ly2/m;->y:Ljava/lang/String;

    .line 331
    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    if-eqz p1, :cond_17c

    .line 337
    .line 338
    if-eqz p1, :cond_174

    .line 339
    .line 340
    const-string v0, "S256"

    .line 341
    .line 342
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    move-result v0

    .line 346
    if-eqz v0, :cond_15e

    .line 347
    .line 348
    const/4 p1, 0x1

    .line 349
    :goto_15c
    move v2, p1

    .line 350
    goto :goto_17c

    .line 351
    :cond_15e
    const-string v0, "PLAIN"

    .line 352
    .line 353
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    move-result v0

    .line 357
    if-eqz v0, :cond_168

    .line 358
    .line 359
    const/4 p1, 0x2

    .line 360
    goto :goto_15c

    .line 361
    :cond_168
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 362
    .line 363
    const-string v1, "No enum constant com.facebook.login.CodeChallengeMethod."

    .line 364
    .line 365
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object p1

    .line 369
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    throw v0

    .line 373
    :cond_174
    new-instance p1, Ljava/lang/NullPointerException;

    .line 374
    .line 375
    const-string v0, "Name is null"

    .line 376
    .line 377
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    throw p1

    .line 381
    :cond_17c
    :goto_17c
    iput v2, p0, Ly2/m;->z:I

    .line 382
    .line 383
    return-void

    .line 384
    :cond_17f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 385
    .line 386
    const-string v1, "No enum constant com.facebook.login.LoginBehavior."

    .line 387
    .line 388
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    throw p1

    .line 396
    :cond_18b
    new-instance p1, Ljava/lang/NullPointerException;

    .line 397
    .line 398
    const-string v0, "Name is null"

    .line 399
    .line 400
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    throw p1
.end method


# virtual methods
.method public final a()Z
    .registers 5

    .line 1
    iget-object v0, p0, Ly2/m;->b:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_31

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Ljava/lang/String;

    .line 19
    .line 20
    sget-object v3, Ly2/s;->a:Ljava/util/Set;

    .line 21
    .line 22
    if-eqz v1, :cond_6

    .line 23
    .line 24
    const-string v3, "publish"

    .line 25
    .line 26
    invoke-static {v1, v3, v2}, Lk7/o;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_2f

    .line 31
    .line 32
    const-string v3, "manage"

    .line 33
    .line 34
    invoke-static {v1, v3, v2}, Lk7/o;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-nez v2, :cond_2f

    .line 39
    .line 40
    sget-object v2, Ly2/s;->a:Ljava/util/Set;

    .line 41
    .line 42
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_6

    .line 47
    .line 48
    :cond_2f
    const/4 v0, 0x1

    .line 49
    return v0

    .line 50
    :cond_31
    return v2
.end method

.method public final describeContents()I
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 1
    const-string p2, "dest"

    .line 2
    .line 3
    invoke-static {p2, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Ly2/m;->a:I

    .line 7
    .line 8
    invoke-static {p2}, Lq2/x;->m(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance p2, Ljava/util/ArrayList;

    .line 16
    .line 17
    iget-object v0, p0, Ly2/m;->b:Ljava/util/HashSet;

    .line 18
    .line 19
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 23
    .line 24
    .line 25
    const/4 p2, 0x1

    .line 26
    iget v0, p0, Ly2/m;->c:I

    .line 27
    .line 28
    if-eq v0, p2, :cond_31

    .line 29
    .line 30
    const/4 p2, 0x2

    .line 31
    if-eq v0, p2, :cond_2e

    .line 32
    .line 33
    const/4 p2, 0x3

    .line 34
    if-eq v0, p2, :cond_2b

    .line 35
    .line 36
    const/4 p2, 0x4

    .line 37
    if-ne v0, p2, :cond_29

    .line 38
    .line 39
    const-string p2, "EVERYONE"

    .line 40
    .line 41
    goto :goto_33

    .line 42
    :cond_29
    const/4 p1, 0x0

    .line 43
    throw p1

    .line 44
    :cond_2b
    const-string p2, "FRIENDS"

    .line 45
    .line 46
    goto :goto_33

    .line 47
    :cond_2e
    const-string p2, "ONLY_ME"

    .line 48
    .line 49
    goto :goto_33

    .line 50
    :cond_31
    const-string p2, "NONE"

    .line 51
    .line 52
    :goto_33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object p2, p0, Ly2/m;->d:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object p2, p0, Ly2/m;->e:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-boolean p2, p0, Ly2/m;->f:Z

    .line 66
    .line 67
    int-to-byte p2, p2

    .line 68
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 69
    .line 70
    .line 71
    iget-object p2, p0, Ly2/m;->g:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object p2, p0, Ly2/m;->h:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object p2, p0, Ly2/m;->i:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object p2, p0, Ly2/m;->j:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-boolean p2, p0, Ly2/m;->k:Z

    .line 92
    .line 93
    int-to-byte p2, p2

    .line 94
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 95
    .line 96
    .line 97
    const/4 p2, 0x1

    .line 98
    iget v0, p0, Ly2/m;->l:I

    .line 99
    .line 100
    if-eq v0, p2, :cond_6d

    .line 101
    .line 102
    const/4 p2, 0x2

    .line 103
    if-ne v0, p2, :cond_6b

    .line 104
    .line 105
    const-string p2, "INSTAGRAM"

    .line 106
    .line 107
    goto :goto_6f

    .line 108
    :cond_6b
    const/4 p1, 0x0

    .line 109
    throw p1

    .line 110
    :cond_6d
    const-string p2, "FACEBOOK"

    .line 111
    .line 112
    :goto_6f
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget-boolean p2, p0, Ly2/m;->m:Z

    .line 116
    .line 117
    int-to-byte p2, p2

    .line 118
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 119
    .line 120
    .line 121
    iget-boolean p2, p0, Ly2/m;->v:Z

    .line 122
    .line 123
    int-to-byte p2, p2

    .line 124
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 125
    .line 126
    .line 127
    iget-object p2, p0, Ly2/m;->w:Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    iget-object p2, p0, Ly2/m;->x:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iget-object p2, p0, Ly2/m;->y:Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    iget p2, p0, Ly2/m;->z:I

    .line 143
    .line 144
    if-eqz p2, :cond_96

    .line 145
    .line 146
    invoke-static {p2}, Lq2/x;->l(I)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    goto :goto_97

    .line 151
    :cond_96
    const/4 p2, 0x0

    .line 152
    :goto_97
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    return-void
.end method
