###### Class w6.e (w6.e)
.class public abstract Lw6/e;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ld7/e;
.implements Lu6/f;
.implements Lw6/b;
.implements Ljava/io/Serializable;


# instance fields
.field public final a:Lu6/f;

.field public final b:Lu6/k;

.field public transient c:Lu6/f;

.field public final d:I


# direct methods
.method public constructor <init>(Lu6/f;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_7

    .line 2
    .line 3
    invoke-interface {p1}, Lu6/f;->getContext()Lu6/k;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    :goto_8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lw6/e;->a:Lu6/f;

    .line 13
    .line 14
    iput-object v0, p0, Lw6/e;->b:Lu6/k;

    .line 15
    .line 16
    const/4 p1, 0x2

    .line 17
    iput p1, p0, Lw6/e;->d:I

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final a()Lw6/b;
    .registers 3

    .line 1
    iget-object v0, p0, Lw6/e;->a:Lu6/f;

    .line 2
    .line 3
    instance-of v1, v0, Lw6/b;

    .line 4
    .line 5
    if-eqz v1, :cond_9

    .line 6
    .line 7
    check-cast v0, Lw6/b;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public abstract c(Lu6/f;)Lu6/f;
.end method

.method public final d()I
    .registers 2

    .line 1
    iget v0, p0, Lw6/e;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public final e(Ljava/lang/Object;)V
    .registers 8

    .line 1
    move-object v0, p0

    .line 2
    :goto_1
    check-cast v0, Lw6/e;

    .line 3
    .line 4
    iget-object v1, v0, Lw6/e;->a:Lu6/f;

    .line 5
    .line 6
    invoke-static {v1}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    :try_start_8
    invoke-virtual {v0, p1}, Lw6/e;->h(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget-object v2, Lv6/a;->a:Lv6/a;
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_11

    .line 14
    .line 15
    if-ne p1, v2, :cond_16

    .line 16
    .line 17
    return-void

    .line 18
    :catchall_11
    move-exception p1

    .line 19
    invoke-static {p1}, Lk2/e;->c(Ljava/lang/Throwable;)Lr6/e;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :cond_16
    iget-object v2, v0, Lw6/e;->c:Lu6/f;

    .line 24
    .line 25
    if-eqz v2, :cond_59

    .line 26
    .line 27
    if-eq v2, v0, :cond_59

    .line 28
    .line 29
    iget-object v3, v0, Lw6/e;->b:Lu6/k;

    .line 30
    .line 31
    invoke-static {v3}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    sget-object v4, Lu6/g;->a:Lu6/g;

    .line 35
    .line 36
    invoke-interface {v3, v4}, Lu6/k;->g(Lu6/j;)Lu6/i;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-static {v3}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    check-cast v3, Lu6/h;

    .line 44
    .line 45
    check-cast v2, Lp7/g;

    .line 46
    .line 47
    sget-object v3, Lp7/g;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 48
    .line 49
    :cond_30
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    sget-object v5, Lp7/a;->c:Ln6/d;

    .line 54
    .line 55
    if-eq v4, v5, :cond_30

    .line 56
    .line 57
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    instance-of v3, v2, Ll7/c;

    .line 62
    .line 63
    if-eqz v3, :cond_43

    .line 64
    .line 65
    check-cast v2, Ll7/c;

    .line 66
    .line 67
    goto :goto_44

    .line 68
    :cond_43
    const/4 v2, 0x0

    .line 69
    :goto_44
    if-eqz v2, :cond_59

    .line 70
    .line 71
    sget-object v3, Ll7/c;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 72
    .line 73
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    check-cast v4, Ll7/y;

    .line 78
    .line 79
    if-nez v4, :cond_51

    .line 80
    .line 81
    goto :goto_59

    .line 82
    :cond_51
    invoke-interface {v4}, Ll7/y;->c()V

    .line 83
    .line 84
    .line 85
    sget-object v4, Ll7/u0;->a:Ll7/u0;

    .line 86
    .line 87
    invoke-virtual {v3, v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    :cond_59
    :goto_59
    sget-object v2, Lw6/a;->a:Lw6/a;

    .line 91
    .line 92
    iput-object v2, v0, Lw6/e;->c:Lu6/f;

    .line 93
    .line 94
    instance-of v0, v1, Lw6/e;

    .line 95
    .line 96
    if-eqz v0, :cond_63

    .line 97
    .line 98
    move-object v0, v1

    .line 99
    goto :goto_1

    .line 100
    :cond_63
    invoke-interface {v1, p1}, Lu6/f;->e(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public final getContext()Lu6/k;
    .registers 2

    .line 1
    iget-object v0, p0, Lw6/e;->b:Lu6/k;

    .line 2
    .line 3
    invoke-static {v0}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public abstract h(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final i()Ljava/lang/String;
    .registers 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Continuation at "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-class v2, Lw6/c;

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lw6/c;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    if-nez v1, :cond_18

    .line 22
    .line 23
    goto/16 :goto_ee

    .line 24
    .line 25
    :cond_18
    invoke-interface {v1}, Lw6/c;->v()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const/4 v4, 0x1

    .line 30
    if-gt v3, v4, :cond_101

    .line 31
    .line 32
    const/4 v3, -0x1

    .line 33
    :try_start_20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    const-string v6, "label"

    .line 38
    .line 39
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {v5, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    instance-of v6, v5, Ljava/lang/Integer;

    .line 51
    .line 52
    if-eqz v6, :cond_38

    .line 53
    .line 54
    check-cast v5, Ljava/lang/Integer;

    .line 55
    .line 56
    goto :goto_39

    .line 57
    :cond_38
    move-object v5, v2

    .line 58
    :goto_39
    if-eqz v5, :cond_40

    .line 59
    .line 60
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 61
    .line 62
    .line 63
    move-result v5
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_3f} :catch_43

    .line 64
    goto :goto_41

    .line 65
    :cond_40
    const/4 v5, 0x0

    .line 66
    :goto_41
    sub-int/2addr v5, v4

    .line 67
    goto :goto_44

    .line 68
    :catch_43
    move v5, v3

    .line 69
    :goto_44
    if-gez v5, :cond_47

    .line 70
    .line 71
    goto :goto_4d

    .line 72
    :cond_47
    invoke-interface {v1}, Lw6/c;->l()[I

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    aget v3, v3, v5

    .line 77
    .line 78
    :goto_4d
    sget-object v4, Lw6/d;->b:La8/i;

    .line 79
    .line 80
    sget-object v5, Lw6/d;->a:La8/i;

    .line 81
    .line 82
    if-nez v4, :cond_8f

    .line 83
    .line 84
    :try_start_53
    const-class v4, Ljava/lang/Class;

    .line 85
    .line 86
    const-string v6, "getModule"

    .line 87
    .line 88
    invoke-virtual {v4, v6, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    const-string v7, "java.lang.Module"

    .line 101
    .line 102
    invoke-virtual {v6, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    const-string v7, "getDescriptor"

    .line 107
    .line 108
    invoke-virtual {v6, v7, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    const-string v8, "java.lang.module.ModuleDescriptor"

    .line 121
    .line 122
    invoke-virtual {v7, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    move-result-object v7

    .line 126
    const-string v8, "name"

    .line 127
    .line 128
    invoke-virtual {v7, v8, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    new-instance v8, La8/i;

    .line 133
    .line 134
    invoke-direct {v8, v4, v6, v7}, La8/i;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 135
    .line 136
    .line 137
    sput-object v8, Lw6/d;->b:La8/i;
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_8a} :catch_8c

    .line 138
    .line 139
    move-object v4, v8

    .line 140
    goto :goto_8f

    .line 141
    :catch_8c
    sput-object v5, Lw6/d;->b:La8/i;

    .line 142
    .line 143
    move-object v4, v5

    .line 144
    :cond_8f
    :goto_8f
    if-ne v4, v5, :cond_92

    .line 145
    .line 146
    goto :goto_c1

    .line 147
    :cond_92
    iget-object v5, v4, La8/i;->a:Ljava/lang/reflect/Method;

    .line 148
    .line 149
    if-eqz v5, :cond_9f

    .line 150
    .line 151
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    invoke-virtual {v5, v6, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    goto :goto_a0

    .line 160
    :cond_9f
    move-object v5, v2

    .line 161
    :goto_a0
    if-nez v5, :cond_a3

    .line 162
    .line 163
    goto :goto_c1

    .line 164
    :cond_a3
    iget-object v6, v4, La8/i;->b:Ljava/lang/reflect/Method;

    .line 165
    .line 166
    if-eqz v6, :cond_ac

    .line 167
    .line 168
    invoke-virtual {v6, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    goto :goto_ad

    .line 173
    :cond_ac
    move-object v5, v2

    .line 174
    :goto_ad
    if-nez v5, :cond_b0

    .line 175
    .line 176
    goto :goto_c1

    .line 177
    :cond_b0
    iget-object v4, v4, La8/i;->c:Ljava/lang/reflect/Method;

    .line 178
    .line 179
    if-eqz v4, :cond_b9

    .line 180
    .line 181
    invoke-virtual {v4, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    goto :goto_ba

    .line 186
    :cond_b9
    move-object v4, v2

    .line 187
    :goto_ba
    instance-of v5, v4, Ljava/lang/String;

    .line 188
    .line 189
    if-eqz v5, :cond_c1

    .line 190
    .line 191
    move-object v2, v4

    .line 192
    check-cast v2, Ljava/lang/String;

    .line 193
    .line 194
    :cond_c1
    :goto_c1
    if-nez v2, :cond_c8

    .line 195
    .line 196
    invoke-interface {v1}, Lw6/c;->c()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    goto :goto_e0

    .line 201
    :cond_c8
    new-instance v4, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    const/16 v2, 0x2f

    .line 210
    .line 211
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-interface {v1}, Lw6/c;->c()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    :goto_e0
    new-instance v4, Ljava/lang/StackTraceElement;

    .line 226
    .line 227
    invoke-interface {v1}, Lw6/c;->m()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    invoke-interface {v1}, Lw6/c;->f()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    invoke-direct {v4, v2, v5, v1, v3}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 236
    .line 237
    .line 238
    move-object v2, v4

    .line 239
    :goto_ee
    if-eqz v2, :cond_f1

    .line 240
    .line 241
    goto :goto_f9

    .line 242
    :cond_f1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    :goto_f9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    return-object v0

    .line 258
    :cond_101
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 259
    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    .line 261
    .line 262
    const-string v2, "Debug metadata version mismatch. Expected: 1, got "

    .line 263
    .line 264
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    const-string v2, ". Please update the Kotlin standard library."

    .line 271
    .line 272
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lw6/e;->a:Lu6/f;

    .line 2
    .line 3
    if-nez v0, :cond_2c

    .line 4
    .line 5
    sget-object v0, Ld7/l;->a:Ld7/m;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    aget-object v0, v0, v1

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "kotlin.jvm.functions."

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_26

    .line 32
    .line 33
    const/16 v1, 0x15

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :cond_26
    const-string v1, "renderLambdaToString(...)"

    .line 40
    .line 41
    invoke-static {v1, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    return-object v0

    .line 45
    :cond_2c
    invoke-virtual {p0}, Lw6/e;->i()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    return-object v0
.end method
