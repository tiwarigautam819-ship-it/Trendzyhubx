###### Class androidx.lifecycle.w (androidx.lifecycle.w)
.class public abstract Landroidx/lifecycle/w;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Ljava/util/HashMap;

.field public static final b:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/lifecycle/w;->a:Ljava/util/HashMap;

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroidx/lifecycle/w;->b:Ljava/util/HashMap;

    .line 14
    .line 15
    return-void
.end method

.method public static a(Ljava/lang/reflect/Constructor;Landroidx/lifecycle/s;)V
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string p1, "{\n            constructo\u2026tance(`object`)\n        }"

    .line 12
    .line 13
    invoke-static {p1, p0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    new-instance p0, Ljava/lang/ClassCastException;

    .line 17
    .line 18
    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    .line 19
    .line 20
    .line 21
    throw p0
    :try_end_15
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_15} :catch_19
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_15} :catch_17
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_15} :catch_15

    .line 22
    :catch_15
    move-exception p0

    .line 23
    goto :goto_1b

    .line 24
    :catch_17
    move-exception p0

    .line 25
    goto :goto_21

    .line 26
    :catch_19
    move-exception p0

    .line 27
    goto :goto_27

    .line 28
    :goto_1b
    new-instance p1, Ljava/lang/RuntimeException;

    .line 29
    .line 30
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :goto_21
    new-instance p1, Ljava/lang/RuntimeException;

    .line 35
    .line 36
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :goto_27
    new-instance p1, Ljava/lang/RuntimeException;

    .line 41
    .line 42
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    throw p1
.end method

.method public static b(Ljava/lang/Class;)I
    .registers 14

    .line 1
    sget-object v0, Landroidx/lifecycle/w;->a:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/Integer;

    .line 8
    .line 9
    if-eqz v1, :cond_f

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_f
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x1

    .line 21
    if-nez v1, :cond_18

    .line 22
    .line 23
    goto/16 :goto_14f

    .line 24
    .line 25
    :cond_18
    const/4 v1, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    :try_start_1a
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    if-eqz v4, :cond_29

    .line 36
    .line 37
    invoke-virtual {v4}, Ljava/lang/Package;->getName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    goto :goto_2b

    .line 42
    :cond_29
    const-string v4, ""

    .line 43
    .line 44
    :goto_2b
    const-string v6, "fullPackage"

    .line 45
    .line 46
    invoke-static {v6, v4}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    if-nez v6, :cond_37

    .line 54
    .line 55
    goto :goto_4a

    .line 56
    :cond_37
    const-string v6, "name"

    .line 57
    .line 58
    invoke-static {v6, v5}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    add-int/2addr v6, v2

    .line 66
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    const-string v6, "this as java.lang.String).substring(startIndex)"

    .line 71
    .line 72
    invoke-static {v6, v5}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    :goto_4a
    const-string v6, "if (fullPackage.isEmpty(\u2026g(fullPackage.length + 1)"

    .line 76
    .line 77
    invoke-static {v6, v5}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    const-string v6, "."

    .line 81
    .line 82
    const-string v7, "_"

    .line 83
    .line 84
    invoke-static {v5, v6, v7}, Lk7/o;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    const-string v6, "_LifecycleAdapter"

    .line 89
    .line 90
    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    if-nez v6, :cond_64

    .line 99
    .line 100
    goto :goto_78

    .line 101
    :cond_64
    new-instance v6, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const/16 v4, 0x2e

    .line 110
    .line 111
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    :goto_78
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    new-array v5, v2, [Ljava/lang/Class;

    .line 126
    .line 127
    aput-object p0, v5, v1

    .line 128
    .line 129
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    invoke-virtual {v4}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    if-nez v5, :cond_96

    .line 138
    .line 139
    invoke-virtual {v4, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_8d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1a .. :try_end_8d} :catch_95
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1a .. :try_end_8d} :catch_8e

    .line 140
    .line 141
    .line 142
    goto :goto_96

    .line 143
    :catch_8e
    move-exception p0

    .line 144
    new-instance v0, Ljava/lang/RuntimeException;

    .line 145
    .line 146
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 147
    .line 148
    .line 149
    throw v0

    .line 150
    :catch_95
    move-object v4, v3

    .line 151
    :cond_96
    :goto_96
    const/4 v5, 0x2

    .line 152
    sget-object v6, Landroidx/lifecycle/w;->b:Ljava/util/HashMap;

    .line 153
    .line 154
    if-eqz v4, :cond_a5

    .line 155
    .line 156
    invoke-static {v4}, Lf4/f;->b(Ljava/lang/Object;)Ljava/util/List;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v6, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    :goto_a2
    move v2, v5

    .line 164
    goto/16 :goto_14f

    .line 165
    .line 166
    :cond_a5
    sget-object v4, Landroidx/lifecycle/d;->c:Landroidx/lifecycle/d;

    .line 167
    .line 168
    iget-object v7, v4, Landroidx/lifecycle/d;->b:Ljava/util/HashMap;

    .line 169
    .line 170
    invoke-virtual {v7, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v8

    .line 174
    check-cast v8, Ljava/lang/Boolean;

    .line 175
    .line 176
    if-eqz v8, :cond_b6

    .line 177
    .line 178
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 179
    .line 180
    .line 181
    move-result v4

    .line 182
    goto :goto_d8

    .line 183
    :cond_b6
    :try_start_b6
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 184
    .line 185
    .line 186
    move-result-object v8
    :try_end_ba
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_b6 .. :try_end_ba} :catch_157

    .line 187
    array-length v9, v8

    .line 188
    move v10, v1

    .line 189
    :goto_bc
    if-ge v10, v9, :cond_d2

    .line 190
    .line 191
    aget-object v11, v8, v10

    .line 192
    .line 193
    const-class v12, Landroidx/lifecycle/z;

    .line 194
    .line 195
    invoke-virtual {v11, v12}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 196
    .line 197
    .line 198
    move-result-object v11

    .line 199
    check-cast v11, Landroidx/lifecycle/z;

    .line 200
    .line 201
    if-eqz v11, :cond_cf

    .line 202
    .line 203
    invoke-virtual {v4, p0, v8}, Landroidx/lifecycle/d;->a(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Landroidx/lifecycle/b;

    .line 204
    .line 205
    .line 206
    move v4, v2

    .line 207
    goto :goto_d8

    .line 208
    :cond_cf
    add-int/lit8 v10, v10, 0x1

    .line 209
    .line 210
    goto :goto_bc

    .line 211
    :cond_d2
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 212
    .line 213
    invoke-virtual {v7, p0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move v4, v1

    .line 217
    :goto_d8
    if-eqz v4, :cond_dc

    .line 218
    .line 219
    goto/16 :goto_14f

    .line 220
    .line 221
    :cond_dc
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 222
    .line 223
    .line 224
    move-result-object v4

    .line 225
    const-class v7, Landroidx/lifecycle/s;

    .line 226
    .line 227
    if-eqz v4, :cond_ec

    .line 228
    .line 229
    invoke-virtual {v7, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 230
    .line 231
    .line 232
    move-result v8

    .line 233
    if-eqz v8, :cond_ec

    .line 234
    .line 235
    move v8, v2

    .line 236
    goto :goto_ed

    .line 237
    :cond_ec
    move v8, v1

    .line 238
    :goto_ed
    if-eqz v8, :cond_109

    .line 239
    .line 240
    const-string v3, "superclass"

    .line 241
    .line 242
    invoke-static {v3, v4}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    invoke-static {v4}, Landroidx/lifecycle/w;->b(Ljava/lang/Class;)I

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    if-ne v3, v2, :cond_fb

    .line 250
    .line 251
    goto :goto_14f

    .line 252
    :cond_fb
    new-instance v3, Ljava/util/ArrayList;

    .line 253
    .line 254
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v4

    .line 258
    invoke-static {v4}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 259
    .line 260
    .line 261
    check-cast v4, Ljava/util/Collection;

    .line 262
    .line 263
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 264
    .line 265
    .line 266
    :cond_109
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    .line 267
    .line 268
    .line 269
    move-result-object v4

    .line 270
    const-string v8, "klass.interfaces"

    .line 271
    .line 272
    invoke-static {v8, v4}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 273
    .line 274
    .line 275
    array-length v8, v4

    .line 276
    move v9, v1

    .line 277
    :goto_114
    if-ge v9, v8, :cond_148

    .line 278
    .line 279
    aget-object v10, v4, v9

    .line 280
    .line 281
    if-eqz v10, :cond_122

    .line 282
    .line 283
    invoke-virtual {v7, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 284
    .line 285
    .line 286
    move-result v11

    .line 287
    if-eqz v11, :cond_122

    .line 288
    .line 289
    move v11, v2

    .line 290
    goto :goto_123

    .line 291
    :cond_122
    move v11, v1

    .line 292
    :goto_123
    if-nez v11, :cond_126

    .line 293
    .line 294
    goto :goto_145

    .line 295
    :cond_126
    const-string v11, "intrface"

    .line 296
    .line 297
    invoke-static {v11, v10}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 298
    .line 299
    .line 300
    invoke-static {v10}, Landroidx/lifecycle/w;->b(Ljava/lang/Class;)I

    .line 301
    .line 302
    .line 303
    move-result v11

    .line 304
    if-ne v11, v2, :cond_132

    .line 305
    .line 306
    goto :goto_14f

    .line 307
    :cond_132
    if-nez v3, :cond_139

    .line 308
    .line 309
    new-instance v3, Ljava/util/ArrayList;

    .line 310
    .line 311
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 312
    .line 313
    .line 314
    :cond_139
    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v10

    .line 318
    invoke-static {v10}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 319
    .line 320
    .line 321
    check-cast v10, Ljava/util/Collection;

    .line 322
    .line 323
    invoke-interface {v3, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 324
    .line 325
    .line 326
    :goto_145
    add-int/lit8 v9, v9, 0x1

    .line 327
    .line 328
    goto :goto_114

    .line 329
    :cond_148
    if-eqz v3, :cond_14f

    .line 330
    .line 331
    invoke-virtual {v6, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    goto/16 :goto_a2

    .line 335
    .line 336
    :cond_14f
    :goto_14f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    return v2

    .line 344
    :catch_157
    move-exception p0

    .line 345
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 346
    .line 347
    const-string v1, "The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor."

    .line 348
    .line 349
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 350
    .line 351
    .line 352
    throw v0
.end method
