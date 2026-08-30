###### Class com.google.android.gms.internal.measurement.f7 (com.google.android.gms.internal.measurement.f7)
.class public abstract Lcom/google/android/gms/internal/measurement/f7;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Lsun/misc/Unsafe;

.field public static final b:Ljava/lang/Class;

.field public static final c:Lcom/google/android/gms/internal/measurement/e7;

.field public static final d:Z

.field public static final e:Z

.field public static final f:J

.field public static final g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/f7;->e()Lsun/misc/Unsafe;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/google/android/gms/internal/measurement/f7;->a:Lsun/misc/Unsafe;

    .line 6
    .line 7
    sget-object v1, Lcom/google/android/gms/internal/measurement/k5;->a:Ljava/lang/Class;

    .line 8
    .line 9
    sput-object v1, Lcom/google/android/gms/internal/measurement/f7;->b:Ljava/lang/Class;

    .line 10
    .line 11
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/f7;->i(Ljava/lang/Class;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 18
    .line 19
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/f7;->i(Ljava/lang/Class;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    const/4 v5, 0x1

    .line 24
    const/4 v6, 0x0

    .line 25
    if-eqz v0, :cond_2a

    .line 26
    .line 27
    if-eqz v2, :cond_22

    .line 28
    .line 29
    new-instance v2, Lcom/google/android/gms/internal/measurement/d7;

    .line 30
    .line 31
    invoke-direct {v2, v0, v5}, Lcom/google/android/gms/internal/measurement/d7;-><init>(Lsun/misc/Unsafe;I)V

    .line 32
    .line 33
    .line 34
    goto :goto_2b

    .line 35
    :cond_22
    if-eqz v4, :cond_2a

    .line 36
    .line 37
    new-instance v2, Lcom/google/android/gms/internal/measurement/d7;

    .line 38
    .line 39
    invoke-direct {v2, v0, v6}, Lcom/google/android/gms/internal/measurement/d7;-><init>(Lsun/misc/Unsafe;I)V

    .line 40
    .line 41
    .line 42
    goto :goto_2b

    .line 43
    :cond_2a
    const/4 v2, 0x0

    .line 44
    :goto_2b
    sput-object v2, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 45
    .line 46
    const/4 v0, 0x2

    .line 47
    const-string v4, "platform method missing - proto runtime falling back to safer methods: "

    .line 48
    .line 49
    const-string v7, "logMissingMethod"

    .line 50
    .line 51
    const-string v8, "com.google.protobuf.UnsafeUtil"

    .line 52
    .line 53
    const-class v9, Lcom/google/android/gms/internal/measurement/f7;

    .line 54
    .line 55
    const-class v10, Ljava/lang/Object;

    .line 56
    .line 57
    const-string v11, "getLong"

    .line 58
    .line 59
    const-class v12, Ljava/lang/reflect/Field;

    .line 60
    .line 61
    const-string v13, "objectFieldOffset"

    .line 62
    .line 63
    if-nez v2, :cond_42

    .line 64
    .line 65
    :goto_40
    move v2, v6

    .line 66
    goto :goto_7b

    .line 67
    :cond_42
    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/e7;->a:Lsun/misc/Unsafe;

    .line 68
    .line 69
    if-nez v2, :cond_47

    .line 70
    .line 71
    goto :goto_40

    .line 72
    :cond_47
    :try_start_47
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    new-array v14, v5, [Ljava/lang/Class;

    .line 77
    .line 78
    aput-object v12, v14, v6

    .line 79
    .line 80
    invoke-virtual {v2, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 81
    .line 82
    .line 83
    new-array v14, v0, [Ljava/lang/Class;

    .line 84
    .line 85
    aput-object v10, v14, v6

    .line 86
    .line 87
    aput-object v1, v14, v5

    .line 88
    .line 89
    invoke-virtual {v2, v11, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 90
    .line 91
    .line 92
    invoke-static {}, Lcom/google/android/gms/internal/measurement/f7;->k()Ljava/lang/reflect/Field;

    .line 93
    .line 94
    .line 95
    move-result-object v2
    :try_end_5f
    .catchall {:try_start_47 .. :try_end_5f} :catchall_64

    .line 96
    if-nez v2, :cond_62

    .line 97
    .line 98
    goto :goto_40

    .line 99
    :cond_62
    move v2, v5

    .line 100
    goto :goto_7b

    .line 101
    :catchall_64
    move-exception v2

    .line 102
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v14

    .line 106
    invoke-static {v14}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 107
    .line 108
    .line 109
    move-result-object v14

    .line 110
    sget-object v15, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 111
    .line 112
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v14, v15, v8, v7, v2}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    goto :goto_40

    .line 124
    :goto_7b
    sput-boolean v2, Lcom/google/android/gms/internal/measurement/f7;->d:Z

    .line 125
    .line 126
    sget-object v2, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 127
    .line 128
    if-nez v2, :cond_84

    .line 129
    .line 130
    :goto_81
    move v0, v6

    .line 131
    goto/16 :goto_109

    .line 132
    .line 133
    :cond_84
    const-class v14, Ljava/lang/Class;

    .line 134
    .line 135
    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/e7;->a:Lsun/misc/Unsafe;

    .line 136
    .line 137
    if-nez v2, :cond_8b

    .line 138
    .line 139
    goto :goto_81

    .line 140
    :cond_8b
    :try_start_8b
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    new-array v15, v5, [Ljava/lang/Class;

    .line 145
    .line 146
    aput-object v12, v15, v6

    .line 147
    .line 148
    invoke-virtual {v2, v13, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 149
    .line 150
    .line 151
    const-string v12, "arrayBaseOffset"

    .line 152
    .line 153
    new-array v13, v5, [Ljava/lang/Class;

    .line 154
    .line 155
    aput-object v14, v13, v6

    .line 156
    .line 157
    invoke-virtual {v2, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 158
    .line 159
    .line 160
    const-string v12, "arrayIndexScale"

    .line 161
    .line 162
    new-array v13, v5, [Ljava/lang/Class;

    .line 163
    .line 164
    aput-object v14, v13, v6

    .line 165
    .line 166
    invoke-virtual {v2, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 167
    .line 168
    .line 169
    const-string v12, "getInt"

    .line 170
    .line 171
    new-array v13, v0, [Ljava/lang/Class;

    .line 172
    .line 173
    aput-object v10, v13, v6

    .line 174
    .line 175
    aput-object v1, v13, v5

    .line 176
    .line 177
    invoke-virtual {v2, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 178
    .line 179
    .line 180
    const-string v12, "putInt"

    .line 181
    .line 182
    const/4 v13, 0x3

    .line 183
    new-array v14, v13, [Ljava/lang/Class;

    .line 184
    .line 185
    aput-object v10, v14, v6

    .line 186
    .line 187
    aput-object v1, v14, v5

    .line 188
    .line 189
    aput-object v3, v14, v0

    .line 190
    .line 191
    invoke-virtual {v2, v12, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 192
    .line 193
    .line 194
    new-array v3, v0, [Ljava/lang/Class;

    .line 195
    .line 196
    aput-object v10, v3, v6

    .line 197
    .line 198
    aput-object v1, v3, v5

    .line 199
    .line 200
    invoke-virtual {v2, v11, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 201
    .line 202
    .line 203
    const-string v3, "putLong"

    .line 204
    .line 205
    new-array v11, v13, [Ljava/lang/Class;

    .line 206
    .line 207
    aput-object v10, v11, v6

    .line 208
    .line 209
    aput-object v1, v11, v5

    .line 210
    .line 211
    aput-object v1, v11, v0

    .line 212
    .line 213
    invoke-virtual {v2, v3, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 214
    .line 215
    .line 216
    const-string v3, "getObject"

    .line 217
    .line 218
    new-array v11, v0, [Ljava/lang/Class;

    .line 219
    .line 220
    aput-object v10, v11, v6

    .line 221
    .line 222
    aput-object v1, v11, v5

    .line 223
    .line 224
    invoke-virtual {v2, v3, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 225
    .line 226
    .line 227
    const-string v3, "putObject"

    .line 228
    .line 229
    new-array v11, v13, [Ljava/lang/Class;

    .line 230
    .line 231
    aput-object v10, v11, v6

    .line 232
    .line 233
    aput-object v1, v11, v5

    .line 234
    .line 235
    aput-object v10, v11, v0

    .line 236
    .line 237
    invoke-virtual {v2, v3, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_ef
    .catchall {:try_start_8b .. :try_end_ef} :catchall_f1

    .line 238
    .line 239
    .line 240
    move v0, v5

    .line 241
    goto :goto_109

    .line 242
    :catchall_f1
    move-exception v0

    .line 243
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 252
    .line 253
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    invoke-virtual {v1, v2, v8, v7, v0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    goto/16 :goto_81

    .line 265
    .line 266
    :goto_109
    sput-boolean v0, Lcom/google/android/gms/internal/measurement/f7;->e:Z

    .line 267
    .line 268
    const-class v0, [B

    .line 269
    .line 270
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/f7;->d(Ljava/lang/Class;)I

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    int-to-long v0, v0

    .line 275
    sput-wide v0, Lcom/google/android/gms/internal/measurement/f7;->f:J

    .line 276
    .line 277
    const-class v0, [Z

    .line 278
    .line 279
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/f7;->d(Ljava/lang/Class;)I

    .line 280
    .line 281
    .line 282
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/f7;->f(Ljava/lang/Class;)V

    .line 283
    .line 284
    .line 285
    const-class v0, [I

    .line 286
    .line 287
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/f7;->d(Ljava/lang/Class;)I

    .line 288
    .line 289
    .line 290
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/f7;->f(Ljava/lang/Class;)V

    .line 291
    .line 292
    .line 293
    const-class v0, [J

    .line 294
    .line 295
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/f7;->d(Ljava/lang/Class;)I

    .line 296
    .line 297
    .line 298
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/f7;->f(Ljava/lang/Class;)V

    .line 299
    .line 300
    .line 301
    const-class v0, [F

    .line 302
    .line 303
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/f7;->d(Ljava/lang/Class;)I

    .line 304
    .line 305
    .line 306
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/f7;->f(Ljava/lang/Class;)V

    .line 307
    .line 308
    .line 309
    const-class v0, [D

    .line 310
    .line 311
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/f7;->d(Ljava/lang/Class;)I

    .line 312
    .line 313
    .line 314
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/f7;->f(Ljava/lang/Class;)V

    .line 315
    .line 316
    .line 317
    const-class v0, [Ljava/lang/Object;

    .line 318
    .line 319
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/f7;->d(Ljava/lang/Class;)I

    .line 320
    .line 321
    .line 322
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/f7;->f(Ljava/lang/Class;)V

    .line 323
    .line 324
    .line 325
    invoke-static {}, Lcom/google/android/gms/internal/measurement/f7;->k()Ljava/lang/reflect/Field;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    if-eqz v0, :cond_154

    .line 330
    .line 331
    sget-object v1, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 332
    .line 333
    if-nez v1, :cond_14f

    .line 334
    .line 335
    goto :goto_154

    .line 336
    :cond_14f
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/e7;->a:Lsun/misc/Unsafe;

    .line 337
    .line 338
    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 339
    .line 340
    .line 341
    :cond_154
    :goto_154
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 346
    .line 347
    if-ne v0, v1, :cond_15d

    .line 348
    .line 349
    goto :goto_15e

    .line 350
    :cond_15d
    move v5, v6

    .line 351
    :goto_15e
    sput-boolean v5, Lcom/google/android/gms/internal/measurement/f7;->g:Z

    .line 352
    .line 353
    return-void
.end method

.method public static a(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/f7;->a:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0
    :try_end_6
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_6} :catch_7

    .line 7
    return-object p0

    .line 8
    :catch_7
    move-exception p0

    .line 9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    throw v0
.end method

.method public static b(JLjava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/e7;->a:Lsun/misc/Unsafe;

    .line 4
    .line 5
    invoke-virtual {v0, p2, p0, p1, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static c(Ljava/lang/Object;JI)V
    .registers 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/e7;->e(Ljava/lang/Object;JI)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static d(Ljava/lang/Class;)I
    .registers 2

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/measurement/f7;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_d

    .line 4
    .line 5
    sget-object v0, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/e7;->a:Lsun/misc/Unsafe;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_d
    const/4 p0, -0x1

    .line 15
    return p0
.end method

.method public static e()Lsun/misc/Unsafe;
    .registers 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/g7;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lsun/misc/Unsafe;
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_c

    .line 11
    .line 12
    return-object v0

    .line 13
    :catchall_c
    const/4 v0, 0x0

    .line 14
    return-object v0
.end method

.method public static f(Ljava/lang/Class;)V
    .registers 2

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/measurement/f7;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_b

    .line 4
    .line 5
    sget-object v0, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/e7;->a:Lsun/misc/Unsafe;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    .line 10
    .line 11
    .line 12
    :cond_b
    return-void
.end method

.method public static g(Ljava/lang/Object;JB)V
    .registers 8

    .line 1
    const-wide/16 v0, -0x4

    .line 2
    .line 3
    and-long/2addr v0, p1

    .line 4
    sget-object v2, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 5
    .line 6
    invoke-virtual {v2, v0, v1, p0}, Lcom/google/android/gms/internal/measurement/e7;->j(JLjava/lang/Object;)I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    long-to-int p1, p1

    .line 11
    not-int p1, p1

    .line 12
    and-int/lit8 p1, p1, 0x3

    .line 13
    .line 14
    shl-int/lit8 p1, p1, 0x3

    .line 15
    .line 16
    const/16 p2, 0xff

    .line 17
    .line 18
    shl-int v3, p2, p1

    .line 19
    .line 20
    not-int v3, v3

    .line 21
    and-int/2addr v2, v3

    .line 22
    and-int/2addr p2, p3

    .line 23
    shl-int p1, p2, p1

    .line 24
    .line 25
    or-int/2addr p1, v2

    .line 26
    invoke-static {p0, v0, v1, p1}, Lcom/google/android/gms/internal/measurement/f7;->c(Ljava/lang/Object;JI)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public static h(Ljava/lang/Object;JB)V
    .registers 8

    .line 1
    const-wide/16 v0, -0x4

    .line 2
    .line 3
    and-long/2addr v0, p1

    .line 4
    sget-object v2, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 5
    .line 6
    invoke-virtual {v2, v0, v1, p0}, Lcom/google/android/gms/internal/measurement/e7;->j(JLjava/lang/Object;)I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    long-to-int p1, p1

    .line 11
    and-int/lit8 p1, p1, 0x3

    .line 12
    .line 13
    shl-int/lit8 p1, p1, 0x3

    .line 14
    .line 15
    const/16 p2, 0xff

    .line 16
    .line 17
    shl-int v3, p2, p1

    .line 18
    .line 19
    not-int v3, v3

    .line 20
    and-int/2addr v2, v3

    .line 21
    and-int/2addr p2, p3

    .line 22
    shl-int p1, p2, p1

    .line 23
    .line 24
    or-int/2addr p1, v2

    .line 25
    invoke-static {p0, v0, v1, p1}, Lcom/google/android/gms/internal/measurement/f7;->c(Ljava/lang/Object;JI)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public static i(Ljava/lang/Class;)Z
    .registers 11

    .line 1
    const-class v0, [B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_3
    sget-object v2, Lcom/google/android/gms/internal/measurement/f7;->b:Ljava/lang/Class;

    .line 5
    .line 6
    const-string v3, "peekLong"

    .line 7
    .line 8
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 9
    .line 10
    const/4 v5, 0x2

    .line 11
    new-array v6, v5, [Ljava/lang/Class;

    .line 12
    .line 13
    aput-object p0, v6, v1

    .line 14
    .line 15
    const/4 v7, 0x1

    .line 16
    aput-object v4, v6, v7

    .line 17
    .line 18
    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 19
    .line 20
    .line 21
    const-string v3, "pokeLong"

    .line 22
    .line 23
    const/4 v6, 0x3

    .line 24
    new-array v8, v6, [Ljava/lang/Class;

    .line 25
    .line 26
    aput-object p0, v8, v1

    .line 27
    .line 28
    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 29
    .line 30
    aput-object v9, v8, v7

    .line 31
    .line 32
    aput-object v4, v8, v5

    .line 33
    .line 34
    invoke-virtual {v2, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 35
    .line 36
    .line 37
    const-string v3, "pokeInt"

    .line 38
    .line 39
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 40
    .line 41
    new-array v9, v6, [Ljava/lang/Class;

    .line 42
    .line 43
    aput-object p0, v9, v1

    .line 44
    .line 45
    aput-object v8, v9, v7

    .line 46
    .line 47
    aput-object v4, v9, v5

    .line 48
    .line 49
    invoke-virtual {v2, v3, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 50
    .line 51
    .line 52
    const-string v3, "peekInt"

    .line 53
    .line 54
    new-array v9, v5, [Ljava/lang/Class;

    .line 55
    .line 56
    aput-object p0, v9, v1

    .line 57
    .line 58
    aput-object v4, v9, v7

    .line 59
    .line 60
    invoke-virtual {v2, v3, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 61
    .line 62
    .line 63
    const-string v3, "pokeByte"

    .line 64
    .line 65
    new-array v4, v5, [Ljava/lang/Class;

    .line 66
    .line 67
    aput-object p0, v4, v1

    .line 68
    .line 69
    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 70
    .line 71
    aput-object v9, v4, v7

    .line 72
    .line 73
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 74
    .line 75
    .line 76
    const-string v3, "peekByte"

    .line 77
    .line 78
    new-array v4, v7, [Ljava/lang/Class;

    .line 79
    .line 80
    aput-object p0, v4, v1

    .line 81
    .line 82
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 83
    .line 84
    .line 85
    const-string v3, "pokeByteArray"

    .line 86
    .line 87
    const/4 v4, 0x4

    .line 88
    new-array v9, v4, [Ljava/lang/Class;

    .line 89
    .line 90
    aput-object p0, v9, v1

    .line 91
    .line 92
    aput-object v0, v9, v7

    .line 93
    .line 94
    aput-object v8, v9, v5

    .line 95
    .line 96
    aput-object v8, v9, v6

    .line 97
    .line 98
    invoke-virtual {v2, v3, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 99
    .line 100
    .line 101
    const-string v3, "peekByteArray"

    .line 102
    .line 103
    new-array v4, v4, [Ljava/lang/Class;

    .line 104
    .line 105
    aput-object p0, v4, v1

    .line 106
    .line 107
    aput-object v0, v4, v7

    .line 108
    .line 109
    aput-object v8, v4, v5

    .line 110
    .line 111
    aput-object v8, v4, v6

    .line 112
    .line 113
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_73
    .catchall {:try_start_3 .. :try_end_73} :catchall_74

    .line 114
    .line 115
    .line 116
    return v7

    .line 117
    :catchall_74
    return v1
.end method

.method public static j(JLjava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/e7;->a:Lsun/misc/Unsafe;

    .line 4
    .line 5
    invoke-virtual {v0, p2, p0, p1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static k()Ljava/lang/reflect/Field;
    .registers 4

    .line 1
    const-class v0, Ljava/nio/Buffer;

    .line 2
    .line 3
    const-string v1, "effectiveDirectAddress"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_5
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 7
    .line 8
    .line 9
    move-result-object v1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_a

    .line 10
    goto :goto_b

    .line 11
    :catchall_a
    move-object v1, v2

    .line 12
    :goto_b
    if-eqz v1, :cond_e

    .line 13
    .line 14
    return-object v1

    .line 15
    :cond_e
    const-string v1, "address"

    .line 16
    .line 17
    :try_start_10
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 18
    .line 19
    .line 20
    move-result-object v0
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_15

    .line 21
    goto :goto_16

    .line 22
    :catchall_15
    move-object v0, v2

    .line 23
    :goto_16
    if-eqz v0, :cond_21

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 30
    .line 31
    if-ne v1, v3, :cond_21

    .line 32
    .line 33
    return-object v0

    .line 34
    :cond_21
    return-object v2
.end method
