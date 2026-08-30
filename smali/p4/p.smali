###### Class p4.p (p4.p)
.class public final Lp4/p;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final synthetic a:I

.field public b:Z

.field public final c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lp4/p;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lp4/p;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;ZLjava/util/List;)V
    .registers 5

    const/4 v0, 0x1

    iput v0, p0, Lp4/p;->a:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lp4/p;->c:Ljava/lang/Object;

    .line 7
    iput-boolean p2, p0, Lp4/p;->b:Z

    .line 8
    iput-object p3, p0, Lp4/p;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lo5/c;[Lv3/c;Z)V
    .registers 5

    const/4 v0, 0x2

    iput v0, p0, Lp4/p;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lp4/p;->d:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lp4/p;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    if-eqz p2, :cond_10

    if-eqz p3, :cond_10

    const/4 p1, 0x1

    :cond_10
    iput-boolean p1, p0, Lp4/p;->b:Z

    return-void
.end method

.method public static a(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_15

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string v0, "Interfaces can\'t be instantiated! Register an InstanceCreator or a TypeAdapter for this type. Interface name: "

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_15
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_26

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const-string v0, "Abstract classes can\'t be instantiated! Register an InstanceCreator or a TypeAdapter for this type. Class name: "

    .line 33
    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :cond_26
    const/4 p0, 0x0

    .line 40
    return-object p0
.end method


# virtual methods
.method public b(Lw3/a;Lp4/j;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lp4/p;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lo5/c;

    .line 4
    .line 5
    iget-object v0, v0, Lo5/c;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Ly1/n;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    check-cast p1, Lz3/c;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/f;->getService()Landroid/os/IInterface;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lz3/a;

    .line 19
    .line 20
    iget-object v0, v0, Ly1/n;->a:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Lcom/google/android/gms/common/internal/q;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget-object v2, p1, Lh4/a;->d:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sget v2, Lh4/b;->a:I

    .line 37
    .line 38
    const/4 v2, 0x1

    .line 39
    const/4 v3, 0x0

    .line 40
    if-nez v0, :cond_2d

    .line 41
    .line 42
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    .line 44
    .line 45
    goto :goto_33

    .line 46
    :cond_2d
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/common/internal/q;->writeToParcel(Landroid/os/Parcel;I)V

    .line 50
    .line 51
    .line 52
    :goto_33
    :try_start_33
    iget-object p1, p1, Lh4/a;->c:Landroid/os/IBinder;

    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    invoke-interface {p1, v2, v1, v0, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_40

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, v0}, Lp4/j;->a(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :catchall_40
    move-exception p1

    .line 66
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 67
    .line 68
    .line 69
    throw p1
.end method

.method public c(Lw5/a;)Ls5/n;
    .registers 9

    .line 1
    iget-object v0, p1, Lw5/a;->b:Ljava/lang/reflect/Type;

    .line 2
    .line 3
    iget-object p1, p1, Lw5/a;->a:Ljava/lang/Class;

    .line 4
    .line 5
    iget-object v1, p0, Lp4/p;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/util/Map;

    .line 8
    .line 9
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-nez v2, :cond_16c

    .line 14
    .line 15
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-nez v1, :cond_166

    .line 20
    .line 21
    const-class v1, Ljava/util/EnumSet;

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/16 v2, 0x19

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    if-eqz v1, :cond_25

    .line 31
    .line 32
    new-instance v1, Lo5/c;

    .line 33
    .line 34
    invoke-direct {v1, v2, v0}, Lo5/c;-><init>(ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    goto :goto_30

    .line 38
    :cond_25
    const-class v1, Ljava/util/EnumMap;

    .line 39
    .line 40
    if-ne p1, v1, :cond_2f

    .line 41
    .line 42
    new-instance v1, Lk1/h;

    .line 43
    .line 44
    invoke-direct {v1, v2, v0}, Lk1/h;-><init>(ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto :goto_30

    .line 48
    :cond_2f
    move-object v1, v3

    .line 49
    :goto_30
    if-eqz v1, :cond_33

    .line 50
    .line 51
    return-object v1

    .line 52
    :cond_33
    iget-object v1, p0, Lp4/p;->d:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v1, Ljava/util/List;

    .line 55
    .line 56
    invoke-static {v1}, Ls5/d;->e(Ljava/util/List;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_46

    .line 68
    .line 69
    :catch_44
    move-object v1, v3

    .line 70
    goto :goto_81

    .line 71
    :cond_46
    :try_start_46
    invoke-virtual {p1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 72
    .line 73
    .line 74
    move-result-object v1
    :try_end_4a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_46 .. :try_end_4a} :catch_44

    .line 75
    sget-object v2, Lu5/c;->a:Lm1/j;

    .line 76
    .line 77
    const/4 v2, 0x1

    .line 78
    :try_start_4d
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_50} :catch_52

    .line 79
    .line 80
    .line 81
    move-object v4, v3

    .line 82
    goto :goto_71

    .line 83
    :catch_52
    move-exception v4

    .line 84
    new-instance v5, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v6, "Failed making constructor \'"

    .line 87
    .line 88
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-static {v1}, Lu5/c;->b(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v6, "\' accessible; either increase its visibility or write a custom InstanceCreator or TypeAdapter for its declaring type: "

    .line 99
    .line 100
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    :goto_71
    if-eqz v4, :cond_79

    .line 115
    .line 116
    new-instance v1, Ls5/e;

    .line 117
    .line 118
    invoke-direct {v1, v4, v2}, Ls5/e;-><init>(Ljava/lang/String;I)V

    .line 119
    .line 120
    .line 121
    goto :goto_81

    .line 122
    :cond_79
    new-instance v2, Lk1/h;

    .line 123
    .line 124
    const/16 v4, 0x1a

    .line 125
    .line 126
    invoke-direct {v2, v4, v1}, Lk1/h;-><init>(ILjava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    move-object v1, v2

    .line 130
    :goto_81
    if-eqz v1, :cond_84

    .line 131
    .line 132
    return-object v1

    .line 133
    :cond_84
    const-class v1, Ljava/util/Collection;

    .line 134
    .line 135
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    const/4 v2, 0x0

    .line 140
    if-eqz v1, :cond_c8

    .line 141
    .line 142
    const-class v0, Ljava/util/SortedSet;

    .line 143
    .line 144
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-eqz v0, :cond_9e

    .line 149
    .line 150
    new-instance v3, Lo3/a;

    .line 151
    .line 152
    const/16 v0, 0xd

    .line 153
    .line 154
    invoke-direct {v3, v0}, Lo3/a;-><init>(I)V

    .line 155
    .line 156
    .line 157
    goto/16 :goto_131

    .line 158
    .line 159
    :cond_9e
    const-class v0, Ljava/util/Set;

    .line 160
    .line 161
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-eqz v0, :cond_af

    .line 166
    .line 167
    new-instance v3, Lo3/a;

    .line 168
    .line 169
    const/16 v0, 0xe

    .line 170
    .line 171
    invoke-direct {v3, v0}, Lo3/a;-><init>(I)V

    .line 172
    .line 173
    .line 174
    goto/16 :goto_131

    .line 175
    .line 176
    :cond_af
    const-class v0, Ljava/util/Queue;

    .line 177
    .line 178
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    if-eqz v0, :cond_c0

    .line 183
    .line 184
    new-instance v3, Lo3/a;

    .line 185
    .line 186
    const/16 v0, 0xf

    .line 187
    .line 188
    invoke-direct {v3, v0}, Lo3/a;-><init>(I)V

    .line 189
    .line 190
    .line 191
    goto/16 :goto_131

    .line 192
    .line 193
    :cond_c0
    new-instance v3, Lo3/a;

    .line 194
    .line 195
    const/16 v0, 0x10

    .line 196
    .line 197
    invoke-direct {v3, v0}, Lo3/a;-><init>(I)V

    .line 198
    .line 199
    .line 200
    goto :goto_131

    .line 201
    :cond_c8
    const-class v1, Ljava/util/Map;

    .line 202
    .line 203
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    if-eqz v1, :cond_131

    .line 208
    .line 209
    const-class v1, Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 210
    .line 211
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    if-eqz v1, :cond_e0

    .line 216
    .line 217
    new-instance v3, Lo3/a;

    .line 218
    .line 219
    const/16 v0, 0x11

    .line 220
    .line 221
    invoke-direct {v3, v0}, Lo3/a;-><init>(I)V

    .line 222
    .line 223
    .line 224
    goto :goto_131

    .line 225
    :cond_e0
    const-class v1, Ljava/util/concurrent/ConcurrentMap;

    .line 226
    .line 227
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 228
    .line 229
    .line 230
    move-result v1

    .line 231
    if-eqz v1, :cond_f0

    .line 232
    .line 233
    new-instance v3, Lo3/a;

    .line 234
    .line 235
    const/16 v0, 0x12

    .line 236
    .line 237
    invoke-direct {v3, v0}, Lo3/a;-><init>(I)V

    .line 238
    .line 239
    .line 240
    goto :goto_131

    .line 241
    :cond_f0
    const-class v1, Ljava/util/SortedMap;

    .line 242
    .line 243
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    if-eqz v1, :cond_100

    .line 248
    .line 249
    new-instance v3, Lo3/a;

    .line 250
    .line 251
    const/16 v0, 0x13

    .line 252
    .line 253
    invoke-direct {v3, v0}, Lo3/a;-><init>(I)V

    .line 254
    .line 255
    .line 256
    goto :goto_131

    .line 257
    :cond_100
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    .line 258
    .line 259
    if-eqz v1, :cond_12a

    .line 260
    .line 261
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 262
    .line 263
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    aget-object v0, v0, v2

    .line 268
    .line 269
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    invoke-static {v0}, Ls5/d;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    invoke-static {v0}, Ls5/d;->g(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 281
    .line 282
    .line 283
    const-class v0, Ljava/lang/String;

    .line 284
    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    if-nez v0, :cond_12a

    .line 290
    .line 291
    new-instance v3, Lo3/a;

    .line 292
    .line 293
    const/16 v0, 0x14

    .line 294
    .line 295
    invoke-direct {v3, v0}, Lo3/a;-><init>(I)V

    .line 296
    .line 297
    .line 298
    goto :goto_131

    .line 299
    :cond_12a
    new-instance v3, Lo3/a;

    .line 300
    .line 301
    const/16 v0, 0x15

    .line 302
    .line 303
    invoke-direct {v3, v0}, Lo3/a;-><init>(I)V

    .line 304
    .line 305
    .line 306
    :cond_131
    :goto_131
    if-eqz v3, :cond_134

    .line 307
    .line 308
    return-object v3

    .line 309
    :cond_134
    invoke-static {p1}, Lp4/p;->a(Ljava/lang/Class;)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    if-eqz v0, :cond_141

    .line 314
    .line 315
    new-instance p1, Ln6/d;

    .line 316
    .line 317
    const/4 v1, 0x3

    .line 318
    invoke-direct {p1, v0, v1}, Ln6/d;-><init>(Ljava/lang/String;I)V

    .line 319
    .line 320
    .line 321
    return-object p1

    .line 322
    :cond_141
    iget-boolean v0, p0, Lp4/p;->b:Z

    .line 323
    .line 324
    if-eqz v0, :cond_14d

    .line 325
    .line 326
    new-instance v0, Lk1/h;

    .line 327
    .line 328
    const/16 v1, 0x18

    .line 329
    .line 330
    invoke-direct {v0, v1, p1}, Lk1/h;-><init>(ILjava/lang/Object;)V

    .line 331
    .line 332
    .line 333
    goto :goto_165

    .line 334
    :cond_14d
    new-instance v0, Ljava/lang/StringBuilder;

    .line 335
    .line 336
    const-string v1, "Unable to create instance of "

    .line 337
    .line 338
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    const-string p1, "; usage of JDK Unsafe is disabled. Registering an InstanceCreator or a TypeAdapter for this type, adding a no-args constructor, or enabling usage of JDK Unsafe may fix this problem."

    .line 345
    .line 346
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object p1

    .line 353
    new-instance v0, Ls5/e;

    .line 354
    .line 355
    invoke-direct {v0, p1, v2}, Ls5/e;-><init>(Ljava/lang/String;I)V

    .line 356
    .line 357
    .line 358
    :goto_165
    return-object v0

    .line 359
    :cond_166
    new-instance p1, Ljava/lang/ClassCastException;

    .line 360
    .line 361
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 362
    .line 363
    .line 364
    throw p1

    .line 365
    :cond_16c
    new-instance p1, Ljava/lang/ClassCastException;

    .line 366
    .line 367
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 368
    .line 369
    .line 370
    throw p1
.end method

.method public d(Lp4/o;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lp4/p;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lp4/p;->d:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v1, Ljava/util/ArrayDeque;

    .line 7
    .line 8
    if-nez v1, :cond_13

    .line 9
    .line 10
    new-instance v1, Ljava/util/ArrayDeque;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lp4/p;->d:Ljava/lang/Object;

    .line 16
    .line 17
    goto :goto_13

    .line 18
    :catchall_11
    move-exception p1

    .line 19
    goto :goto_1c

    .line 20
    :cond_13
    :goto_13
    iget-object v1, p0, Lp4/p;->d:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Ljava/util/ArrayDeque;

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_11

    .line 30
    throw p1
.end method

.method public e(Lp4/i;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lp4/p;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lp4/p;->d:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v1, Ljava/util/ArrayDeque;

    .line 7
    .line 8
    if-eqz v1, :cond_31

    .line 9
    .line 10
    iget-boolean v1, p0, Lp4/p;->b:Z

    .line 11
    .line 12
    if-eqz v1, :cond_e

    .line 13
    .line 14
    goto :goto_31

    .line 15
    :cond_e
    const/4 v1, 0x1

    .line 16
    iput-boolean v1, p0, Lp4/p;->b:Z

    .line 17
    .line 18
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_2f

    .line 19
    :goto_12
    iget-object v1, p0, Lp4/p;->c:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v1

    .line 22
    :try_start_15
    iget-object v0, p0, Lp4/p;->d:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Ljava/util/ArrayDeque;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lp4/o;

    .line 31
    .line 32
    if-nez v0, :cond_28

    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lp4/p;->b:Z

    .line 36
    .line 37
    monitor-exit v1

    .line 38
    return-void

    .line 39
    :catchall_26
    move-exception p1

    .line 40
    goto :goto_2d

    .line 41
    :cond_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_15 .. :try_end_29} :catchall_26

    .line 42
    invoke-interface {v0, p1}, Lp4/o;->b(Lp4/i;)V

    .line 43
    .line 44
    .line 45
    goto :goto_12

    .line 46
    :goto_2d
    :try_start_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_26

    .line 47
    throw p1

    .line 48
    :catchall_2f
    move-exception p1

    .line 49
    goto :goto_33

    .line 50
    :cond_31
    :goto_31
    :try_start_31
    monitor-exit v0

    .line 51
    return-void

    .line 52
    :goto_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_2f

    .line 53
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget v0, p0, Lp4/p;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_14

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_a
    iget-object v0, p0, Lp4/p;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Ljava/util/Map;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    nop

    .line 21
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_a
    .end packed-switch
.end method
