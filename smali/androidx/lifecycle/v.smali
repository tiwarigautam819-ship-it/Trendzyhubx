###### Class androidx.lifecycle.v (androidx.lifecycle.v)
.class public final Landroidx/lifecycle/v;
.super Landroidx/lifecycle/o;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Z

.field public b:Lo/a;

.field public c:Landroidx/lifecycle/n;

.field public final d:Ljava/lang/ref/WeakReference;

.field public e:I

.field public f:Z

.field public g:Z

.field public final h:Ljava/util/ArrayList;

.field public final i:Ln7/b;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/t;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Landroidx/lifecycle/v;->a:Z

    .line 12
    .line 13
    new-instance v0, Lo/a;

    .line 14
    .line 15
    invoke-direct {v0}, Lo/a;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Landroidx/lifecycle/v;->b:Lo/a;

    .line 19
    .line 20
    sget-object v0, Landroidx/lifecycle/n;->b:Landroidx/lifecycle/n;

    .line 21
    .line 22
    iput-object v0, p0, Landroidx/lifecycle/v;->c:Landroidx/lifecycle/n;

    .line 23
    .line 24
    new-instance v1, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Landroidx/lifecycle/v;->h:Ljava/util/ArrayList;

    .line 30
    .line 31
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 32
    .line 33
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Landroidx/lifecycle/v;->d:Ljava/lang/ref/WeakReference;

    .line 37
    .line 38
    new-instance p1, Ln7/b;

    .line 39
    .line 40
    invoke-direct {p1, v0}, Ln7/b;-><init>(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Landroidx/lifecycle/v;->i:Ln7/b;

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/s;)V
    .registers 11

    .line 1
    const-string v0, "addObserver"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/lifecycle/v;->d(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/lifecycle/v;->c:Landroidx/lifecycle/n;

    .line 7
    .line 8
    sget-object v1, Landroidx/lifecycle/n;->a:Landroidx/lifecycle/n;

    .line 9
    .line 10
    if-ne v0, v1, :cond_c

    .line 11
    .line 12
    goto :goto_e

    .line 13
    :cond_c
    sget-object v1, Landroidx/lifecycle/n;->b:Landroidx/lifecycle/n;

    .line 14
    .line 15
    :goto_e
    new-instance v0, Landroidx/lifecycle/u;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    sget-object v2, Landroidx/lifecycle/w;->a:Ljava/util/HashMap;

    .line 21
    .line 22
    instance-of v2, p1, Landroidx/lifecycle/r;

    .line 23
    .line 24
    instance-of v3, p1, Ll6/a;

    .line 25
    .line 26
    const/4 v4, 0x2

    .line 27
    const/4 v5, 0x0

    .line 28
    const/4 v6, 0x0

    .line 29
    const/4 v7, 0x1

    .line 30
    if-eqz v2, :cond_2d

    .line 31
    .line 32
    if-eqz v3, :cond_2d

    .line 33
    .line 34
    new-instance v2, Landroidx/lifecycle/f;

    .line 35
    .line 36
    move-object v3, p1

    .line 37
    check-cast v3, Ll6/a;

    .line 38
    .line 39
    move-object v8, p1

    .line 40
    check-cast v8, Landroidx/lifecycle/r;

    .line 41
    .line 42
    invoke-direct {v2, v3, v6, v8}, Landroidx/lifecycle/f;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_80

    .line 46
    :cond_2d
    if-eqz v3, :cond_38

    .line 47
    .line 48
    new-instance v2, Landroidx/lifecycle/f;

    .line 49
    .line 50
    move-object v3, p1

    .line 51
    check-cast v3, Ll6/a;

    .line 52
    .line 53
    invoke-direct {v2, v3, v6, v5}, Landroidx/lifecycle/f;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    goto :goto_80

    .line 57
    :cond_38
    if-eqz v2, :cond_3e

    .line 58
    .line 59
    move-object v2, p1

    .line 60
    check-cast v2, Landroidx/lifecycle/r;

    .line 61
    .line 62
    goto :goto_80

    .line 63
    :cond_3e
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-static {v2}, Landroidx/lifecycle/w;->b(Ljava/lang/Class;)I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-ne v3, v4, :cond_7b

    .line 72
    .line 73
    sget-object v3, Landroidx/lifecycle/w;->b:Ljava/util/HashMap;

    .line 74
    .line 75
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-static {v2}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    check-cast v2, Ljava/util/List;

    .line 83
    .line 84
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-eq v3, v7, :cond_71

    .line 89
    .line 90
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    new-array v8, v3, [Landroidx/lifecycle/h;

    .line 95
    .line 96
    if-gtz v3, :cond_67

    .line 97
    .line 98
    new-instance v2, Le1/b;

    .line 99
    .line 100
    invoke-direct {v2, v4, v8}, Le1/b;-><init>(ILjava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    goto :goto_80

    .line 104
    :cond_67
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 109
    .line 110
    invoke-static {v0, p1}, Landroidx/lifecycle/w;->a(Ljava/lang/reflect/Constructor;Landroidx/lifecycle/s;)V

    .line 111
    .line 112
    .line 113
    throw v5

    .line 114
    :cond_71
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 119
    .line 120
    invoke-static {v0, p1}, Landroidx/lifecycle/w;->a(Ljava/lang/reflect/Constructor;Landroidx/lifecycle/s;)V

    .line 121
    .line 122
    .line 123
    throw v5

    .line 124
    :cond_7b
    new-instance v2, Landroidx/lifecycle/f;

    .line 125
    .line 126
    invoke-direct {v2, p1}, Landroidx/lifecycle/f;-><init>(Landroidx/lifecycle/s;)V

    .line 127
    .line 128
    .line 129
    :goto_80
    iput-object v2, v0, Landroidx/lifecycle/u;->b:Landroidx/lifecycle/r;

    .line 130
    .line 131
    iput-object v1, v0, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/n;

    .line 132
    .line 133
    iget-object v1, p0, Landroidx/lifecycle/v;->b:Lo/a;

    .line 134
    .line 135
    invoke-virtual {v1, p1}, Lo/a;->a(Ljava/lang/Object;)Lo/c;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    if-eqz v2, :cond_8f

    .line 140
    .line 141
    iget-object v1, v2, Lo/c;->b:Ljava/lang/Object;

    .line 142
    .line 143
    goto :goto_ae

    .line 144
    :cond_8f
    iget-object v2, v1, Lo/a;->e:Ljava/util/HashMap;

    .line 145
    .line 146
    new-instance v3, Lo/c;

    .line 147
    .line 148
    invoke-direct {v3, p1, v0}, Lo/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    iget v8, v1, Lo/f;->d:I

    .line 152
    .line 153
    add-int/2addr v8, v7

    .line 154
    iput v8, v1, Lo/f;->d:I

    .line 155
    .line 156
    iget-object v8, v1, Lo/f;->b:Lo/c;

    .line 157
    .line 158
    if-nez v8, :cond_a4

    .line 159
    .line 160
    iput-object v3, v1, Lo/f;->a:Lo/c;

    .line 161
    .line 162
    iput-object v3, v1, Lo/f;->b:Lo/c;

    .line 163
    .line 164
    goto :goto_aa

    .line 165
    :cond_a4
    iput-object v3, v8, Lo/c;->c:Lo/c;

    .line 166
    .line 167
    iput-object v8, v3, Lo/c;->d:Lo/c;

    .line 168
    .line 169
    iput-object v3, v1, Lo/f;->b:Lo/c;

    .line 170
    .line 171
    :goto_aa
    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-object v1, v5

    .line 175
    :goto_ae
    check-cast v1, Landroidx/lifecycle/u;

    .line 176
    .line 177
    if-eqz v1, :cond_b3

    .line 178
    .line 179
    goto :goto_bd

    .line 180
    :cond_b3
    iget-object v1, p0, Landroidx/lifecycle/v;->d:Ljava/lang/ref/WeakReference;

    .line 181
    .line 182
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    check-cast v1, Landroidx/lifecycle/t;

    .line 187
    .line 188
    if-nez v1, :cond_be

    .line 189
    .line 190
    :goto_bd
    return-void

    .line 191
    :cond_be
    iget v2, p0, Landroidx/lifecycle/v;->e:I

    .line 192
    .line 193
    if-nez v2, :cond_c6

    .line 194
    .line 195
    iget-boolean v2, p0, Landroidx/lifecycle/v;->f:Z

    .line 196
    .line 197
    if-eqz v2, :cond_c7

    .line 198
    .line 199
    :cond_c6
    move v6, v7

    .line 200
    :cond_c7
    invoke-virtual {p0, p1}, Landroidx/lifecycle/v;->c(Landroidx/lifecycle/s;)Landroidx/lifecycle/n;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    iget v3, p0, Landroidx/lifecycle/v;->e:I

    .line 205
    .line 206
    add-int/2addr v3, v7

    .line 207
    iput v3, p0, Landroidx/lifecycle/v;->e:I

    .line 208
    .line 209
    :goto_d0
    iget-object v3, v0, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/n;

    .line 210
    .line 211
    invoke-virtual {v3, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    if-gez v2, :cond_132

    .line 216
    .line 217
    iget-object v2, p0, Landroidx/lifecycle/v;->b:Lo/a;

    .line 218
    .line 219
    iget-object v2, v2, Lo/a;->e:Ljava/util/HashMap;

    .line 220
    .line 221
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    if-eqz v2, :cond_132

    .line 226
    .line 227
    iget-object v2, v0, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/n;

    .line 228
    .line 229
    iget-object v3, p0, Landroidx/lifecycle/v;->h:Ljava/util/ArrayList;

    .line 230
    .line 231
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    sget-object v2, Landroidx/lifecycle/m;->Companion:Landroidx/lifecycle/k;

    .line 235
    .line 236
    iget-object v8, v0, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/n;

    .line 237
    .line 238
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 239
    .line 240
    .line 241
    const-string v2, "state"

    .line 242
    .line 243
    invoke-static {v2, v8}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    if-eq v2, v7, :cond_108

    .line 251
    .line 252
    if-eq v2, v4, :cond_105

    .line 253
    .line 254
    const/4 v8, 0x3

    .line 255
    if-eq v2, v8, :cond_102

    .line 256
    .line 257
    move-object v2, v5

    .line 258
    goto :goto_10a

    .line 259
    :cond_102
    sget-object v2, Landroidx/lifecycle/m;->ON_RESUME:Landroidx/lifecycle/m;

    .line 260
    .line 261
    goto :goto_10a

    .line 262
    :cond_105
    sget-object v2, Landroidx/lifecycle/m;->ON_START:Landroidx/lifecycle/m;

    .line 263
    .line 264
    goto :goto_10a

    .line 265
    :cond_108
    sget-object v2, Landroidx/lifecycle/m;->ON_CREATE:Landroidx/lifecycle/m;

    .line 266
    .line 267
    :goto_10a
    if-eqz v2, :cond_11c

    .line 268
    .line 269
    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/u;->a(Landroidx/lifecycle/t;Landroidx/lifecycle/m;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 273
    .line 274
    .line 275
    move-result v2

    .line 276
    sub-int/2addr v2, v7

    .line 277
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    invoke-virtual {p0, p1}, Landroidx/lifecycle/v;->c(Landroidx/lifecycle/s;)Landroidx/lifecycle/n;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    goto :goto_d0

    .line 285
    :cond_11c
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 286
    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    .line 288
    .line 289
    const-string v2, "no event up from "

    .line 290
    .line 291
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    iget-object v0, v0, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/n;

    .line 295
    .line 296
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    throw p1

    .line 307
    :cond_132
    if-nez v6, :cond_137

    .line 308
    .line 309
    invoke-virtual {p0}, Landroidx/lifecycle/v;->h()V

    .line 310
    .line 311
    .line 312
    :cond_137
    iget p1, p0, Landroidx/lifecycle/v;->e:I

    .line 313
    .line 314
    add-int/lit8 p1, p1, -0x1

    .line 315
    .line 316
    iput p1, p0, Landroidx/lifecycle/v;->e:I

    .line 317
    .line 318
    return-void
.end method

.method public final b(Landroidx/lifecycle/s;)V
    .registers 3

    .line 1
    const-string v0, "observer"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "removeObserver"

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroidx/lifecycle/v;->d(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/lifecycle/v;->b:Lo/a;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lo/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final c(Landroidx/lifecycle/s;)Landroidx/lifecycle/n;
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/v;->b:Lo/a;

    .line 2
    .line 3
    iget-object v0, v0, Lo/a;->e:Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_14

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lo/c;

    .line 17
    .line 18
    iget-object p1, p1, Lo/c;->d:Lo/c;

    .line 19
    .line 20
    goto :goto_15

    .line 21
    :cond_14
    move-object p1, v2

    .line 22
    :goto_15
    if-eqz p1, :cond_20

    .line 23
    .line 24
    iget-object p1, p1, Lo/c;->b:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Landroidx/lifecycle/u;

    .line 27
    .line 28
    if-eqz p1, :cond_20

    .line 29
    .line 30
    iget-object p1, p1, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/n;

    .line 31
    .line 32
    goto :goto_21

    .line 33
    :cond_20
    move-object p1, v2

    .line 34
    :goto_21
    iget-object v0, p0, Landroidx/lifecycle/v;->h:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_36

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    add-int/lit8 v1, v1, -0x1

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    move-object v2, v0

    .line 53
    check-cast v2, Landroidx/lifecycle/n;

    .line 54
    .line 55
    :cond_36
    iget-object v0, p0, Landroidx/lifecycle/v;->c:Landroidx/lifecycle/n;

    .line 56
    .line 57
    const-string v1, "state1"

    .line 58
    .line 59
    invoke-static {v1, v0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    if-eqz p1, :cond_46

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-gez v1, :cond_46

    .line 69
    .line 70
    goto :goto_47

    .line 71
    :cond_46
    move-object p1, v0

    .line 72
    :goto_47
    if-eqz v2, :cond_50

    .line 73
    .line 74
    invoke-virtual {v2, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-gez v0, :cond_50

    .line 79
    .line 80
    return-object v2

    .line 81
    :cond_50
    return-object p1
.end method

.method public final d(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Landroidx/lifecycle/v;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2e

    .line 4
    .line 5
    invoke-static {}, Ln/a;->n()Ln/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v0, v0, Ln/a;->a:Ln/c;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-ne v0, v1, :cond_1c

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1c
    const-string v0, "Method "

    .line 30
    .line 31
    const-string v1, " must be called on the main thread"

    .line 32
    .line 33
    invoke-static {v0, p1, v1}, Lq2/x;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v0

    .line 47
    :cond_2e
    return-void
.end method

.method public final e(Landroidx/lifecycle/m;)V
    .registers 3

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "handleLifecycleEvent"

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroidx/lifecycle/v;->d(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/lifecycle/m;->a()Landroidx/lifecycle/n;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Landroidx/lifecycle/v;->f(Landroidx/lifecycle/n;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final f(Landroidx/lifecycle/n;)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/v;->c:Landroidx/lifecycle/n;

    .line 2
    .line 3
    if-ne v0, p1, :cond_5

    .line 4
    .line 5
    goto :goto_5d

    .line 6
    :cond_5
    sget-object v1, Landroidx/lifecycle/n;->b:Landroidx/lifecycle/n;

    .line 7
    .line 8
    sget-object v2, Landroidx/lifecycle/n;->a:Landroidx/lifecycle/n;

    .line 9
    .line 10
    if-ne v0, v1, :cond_3e

    .line 11
    .line 12
    if-eq p1, v2, :cond_e

    .line 13
    .line 14
    goto :goto_3e

    .line 15
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, "State must be at least CREATED to move to "

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p1, ", but was "

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Landroidx/lifecycle/v;->c:Landroidx/lifecycle/n;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p1, " in component "

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Landroidx/lifecycle/v;->d:Ljava/lang/ref/WeakReference;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw v0

    .line 63
    :cond_3e
    :goto_3e
    iput-object p1, p0, Landroidx/lifecycle/v;->c:Landroidx/lifecycle/n;

    .line 64
    .line 65
    iget-boolean p1, p0, Landroidx/lifecycle/v;->f:Z

    .line 66
    .line 67
    const/4 v0, 0x1

    .line 68
    if-nez p1, :cond_5e

    .line 69
    .line 70
    iget p1, p0, Landroidx/lifecycle/v;->e:I

    .line 71
    .line 72
    if-eqz p1, :cond_4a

    .line 73
    .line 74
    goto :goto_5e

    .line 75
    :cond_4a
    iput-boolean v0, p0, Landroidx/lifecycle/v;->f:Z

    .line 76
    .line 77
    invoke-virtual {p0}, Landroidx/lifecycle/v;->h()V

    .line 78
    .line 79
    .line 80
    const/4 p1, 0x0

    .line 81
    iput-boolean p1, p0, Landroidx/lifecycle/v;->f:Z

    .line 82
    .line 83
    iget-object p1, p0, Landroidx/lifecycle/v;->c:Landroidx/lifecycle/n;

    .line 84
    .line 85
    if-ne p1, v2, :cond_5d

    .line 86
    .line 87
    new-instance p1, Lo/a;

    .line 88
    .line 89
    invoke-direct {p1}, Lo/a;-><init>()V

    .line 90
    .line 91
    .line 92
    iput-object p1, p0, Landroidx/lifecycle/v;->b:Lo/a;

    .line 93
    .line 94
    :cond_5d
    :goto_5d
    return-void

    .line 95
    :cond_5e
    :goto_5e
    iput-boolean v0, p0, Landroidx/lifecycle/v;->g:Z

    .line 96
    .line 97
    return-void
.end method

.method public final g()V
    .registers 2

    .line 1
    const-string v0, "setCurrentState"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/lifecycle/v;->d(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Landroidx/lifecycle/n;->c:Landroidx/lifecycle/n;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroidx/lifecycle/v;->f(Landroidx/lifecycle/n;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final h()V
    .registers 13

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/v;->d:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/t;

    .line 8
    .line 9
    if-eqz v0, :cond_193

    .line 10
    .line 11
    :cond_a
    iget-object v1, p0, Landroidx/lifecycle/v;->b:Lo/a;

    .line 12
    .line 13
    iget v2, v1, Lo/f;->d:I

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-nez v2, :cond_12

    .line 17
    .line 18
    goto :goto_30

    .line 19
    :cond_12
    iget-object v1, v1, Lo/f;->a:Lo/c;

    .line 20
    .line 21
    invoke-static {v1}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, v1, Lo/c;->b:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Landroidx/lifecycle/u;

    .line 27
    .line 28
    iget-object v1, v1, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/n;

    .line 29
    .line 30
    iget-object v2, p0, Landroidx/lifecycle/v;->b:Lo/a;

    .line 31
    .line 32
    iget-object v2, v2, Lo/f;->b:Lo/c;

    .line 33
    .line 34
    invoke-static {v2}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget-object v2, v2, Lo/c;->b:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v2, Landroidx/lifecycle/u;

    .line 40
    .line 41
    iget-object v2, v2, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/n;

    .line 42
    .line 43
    if-ne v1, v2, :cond_3a

    .line 44
    .line 45
    iget-object v1, p0, Landroidx/lifecycle/v;->c:Landroidx/lifecycle/n;

    .line 46
    .line 47
    if-ne v1, v2, :cond_3a

    .line 48
    .line 49
    :goto_30
    iput-boolean v3, p0, Landroidx/lifecycle/v;->g:Z

    .line 50
    .line 51
    iget-object v0, p0, Landroidx/lifecycle/v;->i:Ln7/b;

    .line 52
    .line 53
    iget-object v1, p0, Landroidx/lifecycle/v;->c:Landroidx/lifecycle/n;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ln7/b;->a(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_3a
    iput-boolean v3, p0, Landroidx/lifecycle/v;->g:Z

    .line 60
    .line 61
    iget-object v1, p0, Landroidx/lifecycle/v;->c:Landroidx/lifecycle/n;

    .line 62
    .line 63
    iget-object v2, p0, Landroidx/lifecycle/v;->b:Lo/a;

    .line 64
    .line 65
    iget-object v2, v2, Lo/f;->a:Lo/c;

    .line 66
    .line 67
    invoke-static {v2}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    iget-object v2, v2, Lo/c;->b:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v2, Landroidx/lifecycle/u;

    .line 73
    .line 74
    iget-object v2, v2, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/n;

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    const/4 v2, 0x0

    .line 81
    const/4 v3, 0x3

    .line 82
    const/4 v4, 0x2

    .line 83
    const-string v5, "state"

    .line 84
    .line 85
    const/4 v6, 0x1

    .line 86
    iget-object v7, p0, Landroidx/lifecycle/v;->h:Ljava/util/ArrayList;

    .line 87
    .line 88
    if-gez v1, :cond_ef

    .line 89
    .line 90
    iget-object v1, p0, Landroidx/lifecycle/v;->b:Lo/a;

    .line 91
    .line 92
    new-instance v8, Lo/b;

    .line 93
    .line 94
    iget-object v9, v1, Lo/f;->b:Lo/c;

    .line 95
    .line 96
    iget-object v10, v1, Lo/f;->a:Lo/c;

    .line 97
    .line 98
    const/4 v11, 0x1

    .line 99
    invoke-direct {v8, v9, v10, v11}, Lo/b;-><init>(Lo/c;Lo/c;I)V

    .line 100
    .line 101
    .line 102
    iget-object v1, v1, Lo/f;->c:Ljava/util/WeakHashMap;

    .line 103
    .line 104
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 105
    .line 106
    invoke-virtual {v1, v8, v9}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    :cond_6c
    invoke-virtual {v8}, Lo/b;->hasNext()Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-eqz v1, :cond_ef

    .line 114
    .line 115
    iget-boolean v1, p0, Landroidx/lifecycle/v;->g:Z

    .line 116
    .line 117
    if-nez v1, :cond_ef

    .line 118
    .line 119
    invoke-virtual {v8}, Lo/b;->next()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    check-cast v1, Ljava/util/Map$Entry;

    .line 124
    .line 125
    const-string v9, "next()"

    .line 126
    .line 127
    invoke-static {v9, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v9

    .line 134
    check-cast v9, Landroidx/lifecycle/s;

    .line 135
    .line 136
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    check-cast v1, Landroidx/lifecycle/u;

    .line 141
    .line 142
    :goto_8d
    iget-object v10, v1, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/n;

    .line 143
    .line 144
    iget-object v11, p0, Landroidx/lifecycle/v;->c:Landroidx/lifecycle/n;

    .line 145
    .line 146
    invoke-virtual {v10, v11}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 147
    .line 148
    .line 149
    move-result v10

    .line 150
    if-lez v10, :cond_6c

    .line 151
    .line 152
    iget-boolean v10, p0, Landroidx/lifecycle/v;->g:Z

    .line 153
    .line 154
    if-nez v10, :cond_6c

    .line 155
    .line 156
    iget-object v10, p0, Landroidx/lifecycle/v;->b:Lo/a;

    .line 157
    .line 158
    iget-object v10, v10, Lo/a;->e:Ljava/util/HashMap;

    .line 159
    .line 160
    invoke-virtual {v10, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v10

    .line 164
    if-eqz v10, :cond_6c

    .line 165
    .line 166
    sget-object v10, Landroidx/lifecycle/m;->Companion:Landroidx/lifecycle/k;

    .line 167
    .line 168
    iget-object v11, v1, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/n;

    .line 169
    .line 170
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    invoke-static {v5, v11}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    .line 177
    .line 178
    .line 179
    move-result v10

    .line 180
    if-eq v10, v4, :cond_c2

    .line 181
    .line 182
    if-eq v10, v3, :cond_bf

    .line 183
    .line 184
    const/4 v11, 0x4

    .line 185
    if-eq v10, v11, :cond_bc

    .line 186
    .line 187
    move-object v10, v2

    .line 188
    goto :goto_c4

    .line 189
    :cond_bc
    sget-object v10, Landroidx/lifecycle/m;->ON_PAUSE:Landroidx/lifecycle/m;

    .line 190
    .line 191
    goto :goto_c4

    .line 192
    :cond_bf
    sget-object v10, Landroidx/lifecycle/m;->ON_STOP:Landroidx/lifecycle/m;

    .line 193
    .line 194
    goto :goto_c4

    .line 195
    :cond_c2
    sget-object v10, Landroidx/lifecycle/m;->ON_DESTROY:Landroidx/lifecycle/m;

    .line 196
    .line 197
    :goto_c4
    if-eqz v10, :cond_d9

    .line 198
    .line 199
    invoke-virtual {v10}, Landroidx/lifecycle/m;->a()Landroidx/lifecycle/n;

    .line 200
    .line 201
    .line 202
    move-result-object v11

    .line 203
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1, v0, v10}, Landroidx/lifecycle/u;->a(Landroidx/lifecycle/t;Landroidx/lifecycle/m;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 210
    .line 211
    .line 212
    move-result v10

    .line 213
    sub-int/2addr v10, v6

    .line 214
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    goto :goto_8d

    .line 218
    :cond_d9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 219
    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    const-string v3, "no event down from "

    .line 223
    .line 224
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    iget-object v1, v1, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/n;

    .line 228
    .line 229
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    throw v0

    .line 240
    :cond_ef
    iget-object v1, p0, Landroidx/lifecycle/v;->b:Lo/a;

    .line 241
    .line 242
    iget-object v1, v1, Lo/f;->b:Lo/c;

    .line 243
    .line 244
    iget-boolean v8, p0, Landroidx/lifecycle/v;->g:Z

    .line 245
    .line 246
    if-nez v8, :cond_a

    .line 247
    .line 248
    if-eqz v1, :cond_a

    .line 249
    .line 250
    iget-object v8, p0, Landroidx/lifecycle/v;->c:Landroidx/lifecycle/n;

    .line 251
    .line 252
    iget-object v1, v1, Lo/c;->b:Ljava/lang/Object;

    .line 253
    .line 254
    check-cast v1, Landroidx/lifecycle/u;

    .line 255
    .line 256
    iget-object v1, v1, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/n;

    .line 257
    .line 258
    invoke-virtual {v8, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    if-lez v1, :cond_a

    .line 263
    .line 264
    iget-object v1, p0, Landroidx/lifecycle/v;->b:Lo/a;

    .line 265
    .line 266
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 267
    .line 268
    .line 269
    new-instance v8, Lo/d;

    .line 270
    .line 271
    invoke-direct {v8, v1}, Lo/d;-><init>(Lo/f;)V

    .line 272
    .line 273
    .line 274
    iget-object v1, v1, Lo/f;->c:Ljava/util/WeakHashMap;

    .line 275
    .line 276
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 277
    .line 278
    invoke-virtual {v1, v8, v9}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    :cond_118
    invoke-virtual {v8}, Lo/d;->hasNext()Z

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    if-eqz v1, :cond_a

    .line 286
    .line 287
    iget-boolean v1, p0, Landroidx/lifecycle/v;->g:Z

    .line 288
    .line 289
    if-nez v1, :cond_a

    .line 290
    .line 291
    invoke-virtual {v8}, Lo/d;->next()Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    check-cast v1, Ljava/util/Map$Entry;

    .line 296
    .line 297
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v9

    .line 301
    check-cast v9, Landroidx/lifecycle/s;

    .line 302
    .line 303
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    check-cast v1, Landroidx/lifecycle/u;

    .line 308
    .line 309
    :goto_134
    iget-object v10, v1, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/n;

    .line 310
    .line 311
    iget-object v11, p0, Landroidx/lifecycle/v;->c:Landroidx/lifecycle/n;

    .line 312
    .line 313
    invoke-virtual {v10, v11}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 314
    .line 315
    .line 316
    move-result v10

    .line 317
    if-gez v10, :cond_118

    .line 318
    .line 319
    iget-boolean v10, p0, Landroidx/lifecycle/v;->g:Z

    .line 320
    .line 321
    if-nez v10, :cond_118

    .line 322
    .line 323
    iget-object v10, p0, Landroidx/lifecycle/v;->b:Lo/a;

    .line 324
    .line 325
    iget-object v10, v10, Lo/a;->e:Ljava/util/HashMap;

    .line 326
    .line 327
    invoke-virtual {v10, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    move-result v10

    .line 331
    if-eqz v10, :cond_118

    .line 332
    .line 333
    iget-object v10, v1, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/n;

    .line 334
    .line 335
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    sget-object v10, Landroidx/lifecycle/m;->Companion:Landroidx/lifecycle/k;

    .line 339
    .line 340
    iget-object v11, v1, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/n;

    .line 341
    .line 342
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 343
    .line 344
    .line 345
    invoke-static {v5, v11}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    .line 349
    .line 350
    .line 351
    move-result v10

    .line 352
    if-eq v10, v6, :cond_16d

    .line 353
    .line 354
    if-eq v10, v4, :cond_16a

    .line 355
    .line 356
    if-eq v10, v3, :cond_167

    .line 357
    .line 358
    move-object v10, v2

    .line 359
    goto :goto_16f

    .line 360
    :cond_167
    sget-object v10, Landroidx/lifecycle/m;->ON_RESUME:Landroidx/lifecycle/m;

    .line 361
    .line 362
    goto :goto_16f

    .line 363
    :cond_16a
    sget-object v10, Landroidx/lifecycle/m;->ON_START:Landroidx/lifecycle/m;

    .line 364
    .line 365
    goto :goto_16f

    .line 366
    :cond_16d
    sget-object v10, Landroidx/lifecycle/m;->ON_CREATE:Landroidx/lifecycle/m;

    .line 367
    .line 368
    :goto_16f
    if-eqz v10, :cond_17d

    .line 369
    .line 370
    invoke-virtual {v1, v0, v10}, Landroidx/lifecycle/u;->a(Landroidx/lifecycle/t;Landroidx/lifecycle/m;)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 374
    .line 375
    .line 376
    move-result v10

    .line 377
    sub-int/2addr v10, v6

    .line 378
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    goto :goto_134

    .line 382
    :cond_17d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 383
    .line 384
    new-instance v2, Ljava/lang/StringBuilder;

    .line 385
    .line 386
    const-string v3, "no event up from "

    .line 387
    .line 388
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    iget-object v1, v1, Landroidx/lifecycle/u;->a:Landroidx/lifecycle/n;

    .line 392
    .line 393
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v1

    .line 400
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    throw v0

    .line 404
    :cond_193
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 405
    .line 406
    const-string v1, "LifecycleOwner of this LifecycleRegistry is already garbage collected. It is too late to change lifecycle state."

    .line 407
    .line 408
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    throw v0
.end method
