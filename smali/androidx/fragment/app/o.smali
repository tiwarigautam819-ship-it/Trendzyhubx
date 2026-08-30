###### Class androidx.fragment.app.o (androidx.fragment.app.o)
.class public final Landroidx/fragment/app/o;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Landroid/view/ViewGroup;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public d:Z

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .registers 3

    .line 1
    const-string v0, "container"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroidx/fragment/app/o;->a:Landroid/view/ViewGroup;

    .line 10
    .line 11
    new-instance p1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Landroidx/fragment/app/o;->b:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance p1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Landroidx/fragment/app/o;->c:Ljava/util/ArrayList;

    .line 24
    .line 25
    return-void
.end method

.method public static final i(Landroid/view/ViewGroup;Landroidx/fragment/app/y0;)Landroidx/fragment/app/o;
    .registers 4

    .line 1
    const-string v0, "container"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "fragmentManager"

    .line 7
    .line 8
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/fragment/app/y0;->H()Le5/e;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "fragmentManager.specialEffectsControllerFactory"

    .line 16
    .line 17
    invoke-static {v0, p1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    const p1, 0x7f0900c8

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    instance-of v1, v0, Landroidx/fragment/app/o;

    .line 28
    .line 29
    if-eqz v1, :cond_21

    .line 30
    .line 31
    check-cast v0, Landroidx/fragment/app/o;

    .line 32
    .line 33
    return-object v0

    .line 34
    :cond_21
    new-instance v0, Landroidx/fragment/app/o;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Landroidx/fragment/app/o;-><init>(Landroid/view/ViewGroup;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    return-object v0
.end method

.method public static j(Ljava/util/ArrayList;)Z
    .registers 9

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    move v4, v1

    .line 8
    :cond_7
    :goto_7
    move v3, v2

    .line 9
    :goto_8
    if-ge v4, v0, :cond_3d

    .line 10
    .line 11
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    add-int/lit8 v4, v4, 0x1

    .line 16
    .line 17
    check-cast v3, Landroidx/fragment/app/l1;

    .line 18
    .line 19
    iget-object v5, v3, Landroidx/fragment/app/l1;->k:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-nez v5, :cond_3b

    .line 26
    .line 27
    iget-object v3, v3, Landroidx/fragment/app/l1;->k:Ljava/util/ArrayList;

    .line 28
    .line 29
    if-eqz v3, :cond_25

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-eqz v5, :cond_25

    .line 36
    .line 37
    goto :goto_7

    .line 38
    :cond_25
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    move v6, v1

    .line 43
    :cond_2a
    if-ge v6, v5, :cond_7

    .line 44
    .line 45
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    add-int/lit8 v6, v6, 0x1

    .line 50
    .line 51
    check-cast v7, Landroidx/fragment/app/k1;

    .line 52
    .line 53
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    instance-of v7, v7, Landroidx/fragment/app/j;

    .line 57
    .line 58
    if-nez v7, :cond_2a

    .line 59
    .line 60
    :cond_3b
    move v3, v1

    .line 61
    goto :goto_8

    .line 62
    :cond_3d
    if-eqz v3, :cond_60

    .line 63
    .line 64
    new-instance v0, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    move v4, v1

    .line 74
    :goto_49
    if-ge v4, v3, :cond_59

    .line 75
    .line 76
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    add-int/lit8 v4, v4, 0x1

    .line 81
    .line 82
    check-cast v5, Landroidx/fragment/app/l1;

    .line 83
    .line 84
    iget-object v5, v5, Landroidx/fragment/app/l1;->k:Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-static {v0, v5}, Ls6/m;->o(Ljava/util/ArrayList;Ljava/lang/Iterable;)V

    .line 87
    .line 88
    .line 89
    goto :goto_49

    .line 90
    :cond_59
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    if-nez p0, :cond_60

    .line 95
    .line 96
    return v2

    .line 97
    :cond_60
    return v1
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/l1;)V
    .registers 5

    .line 1
    const-string v0, "operation"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p1, Landroidx/fragment/app/l1;->i:Z

    .line 7
    .line 8
    if-eqz v0, :cond_19

    .line 9
    .line 10
    iget v0, p1, Landroidx/fragment/app/l1;->a:I

    .line 11
    .line 12
    iget-object v1, p1, Landroidx/fragment/app/l1;->c:Landroidx/fragment/app/c0;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroidx/fragment/app/c0;->G()Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v2, p0, Landroidx/fragment/app/o;->a:Landroid/view/ViewGroup;

    .line 19
    .line 20
    invoke-static {v0, v1, v2}, Landroidx/fragment/app/m1;->a(ILandroid/view/View;Landroid/view/ViewGroup;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p1, Landroidx/fragment/app/l1;->i:Z

    .line 25
    .line 26
    :cond_19
    return-void
.end method

.method public final b(Ljava/util/ArrayList;Z)V
    .registers 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v5, 0x0

    .line 12
    :cond_b
    :goto_b
    const/4 v6, 0x2

    .line 13
    const/4 v7, 0x0

    .line 14
    const-string v8, "Unknown visibility "

    .line 15
    .line 16
    const/16 v9, 0x8

    .line 17
    .line 18
    const/4 v10, 0x4

    .line 19
    const/4 v11, 0x0

    .line 20
    const-string v12, "operation.fragment.mView"

    .line 21
    .line 22
    if-ge v5, v3, :cond_50

    .line 23
    .line 24
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v13

    .line 28
    add-int/lit8 v5, v5, 0x1

    .line 29
    .line 30
    move-object v14, v13

    .line 31
    check-cast v14, Landroidx/fragment/app/l1;

    .line 32
    .line 33
    iget-object v15, v14, Landroidx/fragment/app/l1;->c:Landroidx/fragment/app/c0;

    .line 34
    .line 35
    iget-object v15, v15, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 36
    .line 37
    invoke-static {v12, v15}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v15}, Landroid/view/View;->getAlpha()F

    .line 41
    .line 42
    .line 43
    move-result v16

    .line 44
    cmpg-float v16, v16, v11

    .line 45
    .line 46
    if-nez v16, :cond_36

    .line 47
    .line 48
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    .line 49
    .line 50
    .line 51
    move-result v16

    .line 52
    if-nez v16, :cond_36

    .line 53
    .line 54
    goto :goto_b

    .line 55
    :cond_36
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    .line 56
    .line 57
    .line 58
    move-result v15

    .line 59
    if-eqz v15, :cond_4b

    .line 60
    .line 61
    if-eq v15, v10, :cond_b

    .line 62
    .line 63
    if-ne v15, v9, :cond_41

    .line 64
    .line 65
    goto :goto_b

    .line 66
    :cond_41
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 67
    .line 68
    invoke-static {v15, v8}, La1/a;->i(ILjava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw v1

    .line 76
    :cond_4b
    iget v14, v14, Landroidx/fragment/app/l1;->a:I

    .line 77
    .line 78
    if-eq v14, v6, :cond_b

    .line 79
    .line 80
    goto :goto_51

    .line 81
    :cond_50
    move-object v13, v7

    .line 82
    :goto_51
    check-cast v13, Landroidx/fragment/app/l1;

    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    :cond_5b
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    if-eqz v5, :cond_98

    .line 97
    .line 98
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    move-object v14, v5

    .line 103
    check-cast v14, Landroidx/fragment/app/l1;

    .line 104
    .line 105
    iget-object v15, v14, Landroidx/fragment/app/l1;->c:Landroidx/fragment/app/c0;

    .line 106
    .line 107
    iget-object v15, v15, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 108
    .line 109
    invoke-static {v12, v15}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v15}, Landroid/view/View;->getAlpha()F

    .line 113
    .line 114
    .line 115
    move-result v16

    .line 116
    cmpg-float v16, v16, v11

    .line 117
    .line 118
    if-nez v16, :cond_7e

    .line 119
    .line 120
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    .line 121
    .line 122
    .line 123
    move-result v16

    .line 124
    if-nez v16, :cond_7e

    .line 125
    .line 126
    goto :goto_93

    .line 127
    :cond_7e
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    .line 128
    .line 129
    .line 130
    move-result v15

    .line 131
    if-eqz v15, :cond_5b

    .line 132
    .line 133
    if-eq v15, v10, :cond_93

    .line 134
    .line 135
    if-ne v15, v9, :cond_89

    .line 136
    .line 137
    goto :goto_93

    .line 138
    :cond_89
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 139
    .line 140
    invoke-static {v15, v8}, La1/a;->i(ILjava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    throw v1

    .line 148
    :cond_93
    :goto_93
    iget v14, v14, Landroidx/fragment/app/l1;->a:I

    .line 149
    .line 150
    if-ne v14, v6, :cond_5b

    .line 151
    .line 152
    move-object v7, v5

    .line 153
    :cond_98
    check-cast v7, Landroidx/fragment/app/l1;

    .line 154
    .line 155
    invoke-static {v6}, Landroidx/fragment/app/y0;->J(I)Z

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    const-string v5, "FragmentManager"

    .line 160
    .line 161
    if-eqz v3, :cond_bb

    .line 162
    .line 163
    new-instance v3, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    const-string v8, "Executing operations from "

    .line 166
    .line 167
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string v8, " to "

    .line 174
    .line 175
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    :cond_bb
    new-instance v3, Ljava/util/ArrayList;

    .line 189
    .line 190
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .line 192
    .line 193
    new-instance v8, Ljava/util/ArrayList;

    .line 194
    .line 195
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .line 197
    .line 198
    invoke-static {v1}, Ls6/g;->s(Ljava/util/List;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v9

    .line 202
    check-cast v9, Landroidx/fragment/app/l1;

    .line 203
    .line 204
    iget-object v9, v9, Landroidx/fragment/app/l1;->c:Landroidx/fragment/app/c0;

    .line 205
    .line 206
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 207
    .line 208
    .line 209
    move-result v10

    .line 210
    const/4 v11, 0x0

    .line 211
    :goto_d2
    if-ge v11, v10, :cond_f3

    .line 212
    .line 213
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v12

    .line 217
    add-int/lit8 v11, v11, 0x1

    .line 218
    .line 219
    check-cast v12, Landroidx/fragment/app/l1;

    .line 220
    .line 221
    iget-object v12, v12, Landroidx/fragment/app/l1;->c:Landroidx/fragment/app/c0;

    .line 222
    .line 223
    iget-object v12, v12, Landroidx/fragment/app/c0;->S:Landroidx/fragment/app/z;

    .line 224
    .line 225
    iget-object v14, v9, Landroidx/fragment/app/c0;->S:Landroidx/fragment/app/z;

    .line 226
    .line 227
    iget v15, v14, Landroidx/fragment/app/z;->b:I

    .line 228
    .line 229
    iput v15, v12, Landroidx/fragment/app/z;->b:I

    .line 230
    .line 231
    iget v15, v14, Landroidx/fragment/app/z;->c:I

    .line 232
    .line 233
    iput v15, v12, Landroidx/fragment/app/z;->c:I

    .line 234
    .line 235
    iget v15, v14, Landroidx/fragment/app/z;->d:I

    .line 236
    .line 237
    iput v15, v12, Landroidx/fragment/app/z;->d:I

    .line 238
    .line 239
    iget v14, v14, Landroidx/fragment/app/z;->e:I

    .line 240
    .line 241
    iput v14, v12, Landroidx/fragment/app/z;->e:I

    .line 242
    .line 243
    goto :goto_d2

    .line 244
    :cond_f3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 245
    .line 246
    .line 247
    move-result v9

    .line 248
    const/4 v10, 0x0

    .line 249
    :goto_f8
    const/4 v11, 0x1

    .line 250
    if-ge v10, v9, :cond_154

    .line 251
    .line 252
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v12

    .line 256
    add-int/lit8 v10, v10, 0x1

    .line 257
    .line 258
    check-cast v12, Landroidx/fragment/app/l1;

    .line 259
    .line 260
    new-instance v14, Landroidx/fragment/app/h;

    .line 261
    .line 262
    invoke-direct {v14, v12, v2}, Landroidx/fragment/app/h;-><init>(Landroidx/fragment/app/l1;Z)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    new-instance v14, Landroidx/fragment/app/n;

    .line 269
    .line 270
    if-eqz v2, :cond_114

    .line 271
    .line 272
    if-ne v12, v13, :cond_112

    .line 273
    .line 274
    goto :goto_116

    .line 275
    :cond_112
    const/4 v11, 0x0

    .line 276
    goto :goto_116

    .line 277
    :cond_114
    if-ne v12, v7, :cond_112

    .line 278
    .line 279
    :goto_116
    iget-object v15, v12, Landroidx/fragment/app/l1;->c:Landroidx/fragment/app/c0;

    .line 280
    .line 281
    invoke-direct {v14, v12}, Landroidx/fragment/app/m;-><init>(Landroidx/fragment/app/l1;)V

    .line 282
    .line 283
    .line 284
    iget v4, v12, Landroidx/fragment/app/l1;->a:I

    .line 285
    .line 286
    if-ne v4, v6, :cond_128

    .line 287
    .line 288
    if-eqz v2, :cond_124

    .line 289
    .line 290
    iget-object v4, v15, Landroidx/fragment/app/c0;->S:Landroidx/fragment/app/z;

    .line 291
    .line 292
    goto :goto_130

    .line 293
    :cond_124
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 294
    .line 295
    .line 296
    goto :goto_130

    .line 297
    :cond_128
    if-eqz v2, :cond_12d

    .line 298
    .line 299
    iget-object v4, v15, Landroidx/fragment/app/c0;->S:Landroidx/fragment/app/z;

    .line 300
    .line 301
    goto :goto_130

    .line 302
    :cond_12d
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 303
    .line 304
    .line 305
    :goto_130
    iget v4, v12, Landroidx/fragment/app/l1;->a:I

    .line 306
    .line 307
    if-ne v4, v6, :cond_13b

    .line 308
    .line 309
    if-eqz v2, :cond_139

    .line 310
    .line 311
    iget-object v4, v15, Landroidx/fragment/app/c0;->S:Landroidx/fragment/app/z;

    .line 312
    .line 313
    goto :goto_13b

    .line 314
    :cond_139
    iget-object v4, v15, Landroidx/fragment/app/c0;->S:Landroidx/fragment/app/z;

    .line 315
    .line 316
    :cond_13b
    :goto_13b
    if-eqz v11, :cond_145

    .line 317
    .line 318
    if-eqz v2, :cond_142

    .line 319
    .line 320
    iget-object v4, v15, Landroidx/fragment/app/c0;->S:Landroidx/fragment/app/z;

    .line 321
    .line 322
    goto :goto_145

    .line 323
    :cond_142
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 324
    .line 325
    .line 326
    :cond_145
    :goto_145
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    new-instance v4, Landroidx/fragment/app/d;

    .line 330
    .line 331
    const/4 v11, 0x0

    .line 332
    invoke-direct {v4, v0, v12, v11}, Landroidx/fragment/app/d;-><init>(Landroidx/fragment/app/o;Landroidx/fragment/app/l1;I)V

    .line 333
    .line 334
    .line 335
    iget-object v11, v12, Landroidx/fragment/app/l1;->d:Ljava/util/ArrayList;

    .line 336
    .line 337
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    goto :goto_f8

    .line 341
    :cond_154
    new-instance v1, Ljava/util/ArrayList;

    .line 342
    .line 343
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 347
    .line 348
    .line 349
    move-result v2

    .line 350
    const/4 v4, 0x0

    .line 351
    :cond_15e
    :goto_15e
    if-ge v4, v2, :cond_173

    .line 352
    .line 353
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v7

    .line 357
    add-int/lit8 v4, v4, 0x1

    .line 358
    .line 359
    move-object v9, v7

    .line 360
    check-cast v9, Landroidx/fragment/app/n;

    .line 361
    .line 362
    invoke-virtual {v9}, Landroidx/fragment/app/m;->c()Z

    .line 363
    .line 364
    .line 365
    move-result v9

    .line 366
    if-nez v9, :cond_15e

    .line 367
    .line 368
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    .line 370
    .line 371
    goto :goto_15e

    .line 372
    :cond_173
    new-instance v2, Ljava/util/ArrayList;

    .line 373
    .line 374
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 378
    .line 379
    .line 380
    move-result v4

    .line 381
    const/4 v7, 0x0

    .line 382
    :goto_17d
    if-ge v7, v4, :cond_18b

    .line 383
    .line 384
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v8

    .line 388
    add-int/lit8 v7, v7, 0x1

    .line 389
    .line 390
    check-cast v8, Landroidx/fragment/app/n;

    .line 391
    .line 392
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 393
    .line 394
    .line 395
    goto :goto_17d

    .line 396
    :cond_18b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 397
    .line 398
    .line 399
    move-result v1

    .line 400
    const/4 v4, 0x0

    .line 401
    :goto_190
    if-ge v4, v1, :cond_19e

    .line 402
    .line 403
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v7

    .line 407
    add-int/lit8 v4, v4, 0x1

    .line 408
    .line 409
    check-cast v7, Landroidx/fragment/app/n;

    .line 410
    .line 411
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 412
    .line 413
    .line 414
    goto :goto_190

    .line 415
    :cond_19e
    new-instance v1, Ljava/util/ArrayList;

    .line 416
    .line 417
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 418
    .line 419
    .line 420
    new-instance v2, Ljava/util/ArrayList;

    .line 421
    .line 422
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 423
    .line 424
    .line 425
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 426
    .line 427
    .line 428
    move-result v4

    .line 429
    const/4 v7, 0x0

    .line 430
    :goto_1ad
    if-ge v7, v4, :cond_1c1

    .line 431
    .line 432
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    move-result-object v8

    .line 436
    add-int/lit8 v7, v7, 0x1

    .line 437
    .line 438
    check-cast v8, Landroidx/fragment/app/h;

    .line 439
    .line 440
    iget-object v8, v8, Landroidx/fragment/app/m;->a:Ljava/lang/Object;

    .line 441
    .line 442
    check-cast v8, Landroidx/fragment/app/l1;

    .line 443
    .line 444
    iget-object v8, v8, Landroidx/fragment/app/l1;->k:Ljava/util/ArrayList;

    .line 445
    .line 446
    invoke-static {v2, v8}, Ls6/m;->o(Ljava/util/ArrayList;Ljava/lang/Iterable;)V

    .line 447
    .line 448
    .line 449
    goto :goto_1ad

    .line 450
    :cond_1c1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 451
    .line 452
    .line 453
    move-result v2

    .line 454
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 455
    .line 456
    .line 457
    move-result v4

    .line 458
    const/4 v7, 0x0

    .line 459
    const/4 v8, 0x0

    .line 460
    :cond_1cb
    :goto_1cb
    if-ge v8, v4, :cond_232

    .line 461
    .line 462
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object v9

    .line 466
    add-int/lit8 v8, v8, 0x1

    .line 467
    .line 468
    check-cast v9, Landroidx/fragment/app/h;

    .line 469
    .line 470
    iget-object v10, v0, Landroidx/fragment/app/o;->a:Landroid/view/ViewGroup;

    .line 471
    .line 472
    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 473
    .line 474
    .line 475
    move-result-object v10

    .line 476
    iget-object v12, v9, Landroidx/fragment/app/m;->a:Ljava/lang/Object;

    .line 477
    .line 478
    check-cast v12, Landroidx/fragment/app/l1;

    .line 479
    .line 480
    const-string v13, "context"

    .line 481
    .line 482
    invoke-static {v13, v10}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v9, v10}, Landroidx/fragment/app/h;->d(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/y4;

    .line 486
    .line 487
    .line 488
    move-result-object v10

    .line 489
    if-nez v10, :cond_1eb

    .line 490
    .line 491
    goto :goto_1cb

    .line 492
    :cond_1eb
    iget-object v10, v10, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 493
    .line 494
    check-cast v10, Landroid/animation/AnimatorSet;

    .line 495
    .line 496
    if-nez v10, :cond_1f5

    .line 497
    .line 498
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    .line 500
    .line 501
    goto :goto_1cb

    .line 502
    :cond_1f5
    iget-object v10, v12, Landroidx/fragment/app/l1;->c:Landroidx/fragment/app/c0;

    .line 503
    .line 504
    iget-object v13, v12, Landroidx/fragment/app/l1;->k:Ljava/util/ArrayList;

    .line 505
    .line 506
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    .line 507
    .line 508
    .line 509
    move-result v13

    .line 510
    if-nez v13, :cond_21c

    .line 511
    .line 512
    invoke-static {v6}, Landroidx/fragment/app/y0;->J(I)Z

    .line 513
    .line 514
    .line 515
    move-result v9

    .line 516
    if-eqz v9, :cond_1cb

    .line 517
    .line 518
    new-instance v9, Ljava/lang/StringBuilder;

    .line 519
    .line 520
    const-string v12, "Ignoring Animator set on "

    .line 521
    .line 522
    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    const-string v10, " as this Fragment was involved in a Transition."

    .line 529
    .line 530
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v9

    .line 537
    invoke-static {v5, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    .line 539
    .line 540
    goto :goto_1cb

    .line 541
    :cond_21c
    iget v7, v12, Landroidx/fragment/app/l1;->a:I

    .line 542
    .line 543
    const/4 v10, 0x3

    .line 544
    if-ne v7, v10, :cond_225

    .line 545
    .line 546
    const/4 v10, 0x0

    .line 547
    iput-boolean v10, v12, Landroidx/fragment/app/l1;->i:Z

    .line 548
    .line 549
    goto :goto_226

    .line 550
    :cond_225
    const/4 v10, 0x0

    .line 551
    :goto_226
    new-instance v7, Landroidx/fragment/app/j;

    .line 552
    .line 553
    invoke-direct {v7, v9}, Landroidx/fragment/app/j;-><init>(Landroidx/fragment/app/h;)V

    .line 554
    .line 555
    .line 556
    iget-object v9, v12, Landroidx/fragment/app/l1;->j:Ljava/util/ArrayList;

    .line 557
    .line 558
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    .line 560
    .line 561
    move v7, v11

    .line 562
    goto :goto_1cb

    .line 563
    :cond_232
    const/4 v10, 0x0

    .line 564
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 565
    .line 566
    .line 567
    move-result v3

    .line 568
    move v4, v10

    .line 569
    :cond_238
    :goto_238
    if-ge v4, v3, :cond_28f

    .line 570
    .line 571
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    move-result-object v8

    .line 575
    add-int/lit8 v4, v4, 0x1

    .line 576
    .line 577
    check-cast v8, Landroidx/fragment/app/h;

    .line 578
    .line 579
    iget-object v9, v8, Landroidx/fragment/app/m;->a:Ljava/lang/Object;

    .line 580
    .line 581
    check-cast v9, Landroidx/fragment/app/l1;

    .line 582
    .line 583
    iget-object v10, v9, Landroidx/fragment/app/l1;->c:Landroidx/fragment/app/c0;

    .line 584
    .line 585
    const-string v11, "Ignoring Animation set on "

    .line 586
    .line 587
    if-nez v2, :cond_267

    .line 588
    .line 589
    invoke-static {v6}, Landroidx/fragment/app/y0;->J(I)Z

    .line 590
    .line 591
    .line 592
    move-result v8

    .line 593
    if-eqz v8, :cond_238

    .line 594
    .line 595
    new-instance v8, Ljava/lang/StringBuilder;

    .line 596
    .line 597
    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 598
    .line 599
    .line 600
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 601
    .line 602
    .line 603
    const-string v9, " as Animations cannot run alongside Transitions."

    .line 604
    .line 605
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    .line 607
    .line 608
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v8

    .line 612
    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    .line 614
    .line 615
    goto :goto_238

    .line 616
    :cond_267
    if-eqz v7, :cond_284

    .line 617
    .line 618
    invoke-static {v6}, Landroidx/fragment/app/y0;->J(I)Z

    .line 619
    .line 620
    .line 621
    move-result v8

    .line 622
    if-eqz v8, :cond_238

    .line 623
    .line 624
    new-instance v8, Ljava/lang/StringBuilder;

    .line 625
    .line 626
    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 627
    .line 628
    .line 629
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 630
    .line 631
    .line 632
    const-string v9, " as Animations cannot run alongside Animators."

    .line 633
    .line 634
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    .line 636
    .line 637
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object v8

    .line 641
    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    .line 643
    .line 644
    goto :goto_238

    .line 645
    :cond_284
    new-instance v10, Landroidx/fragment/app/g;

    .line 646
    .line 647
    invoke-direct {v10, v8}, Landroidx/fragment/app/g;-><init>(Landroidx/fragment/app/h;)V

    .line 648
    .line 649
    .line 650
    iget-object v8, v9, Landroidx/fragment/app/l1;->j:Ljava/util/ArrayList;

    .line 651
    .line 652
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    .line 654
    .line 655
    goto :goto_238

    .line 656
    :cond_28f
    return-void
.end method

.method public final c(Ljava/util/List;)V
    .registers 9

    .line 1
    const-string v0, "operations"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, Ljava/lang/Iterable;

    .line 8
    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_23

    .line 23
    .line 24
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Landroidx/fragment/app/l1;

    .line 29
    .line 30
    iget-object v3, v3, Landroidx/fragment/app/l1;->k:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-static {v1, v3}, Ls6/m;->o(Ljava/util/ArrayList;Ljava/lang/Iterable;)V

    .line 33
    .line 34
    .line 35
    goto :goto_11

    .line 36
    :cond_23
    invoke-static {v1}, Ls6/g;->y(Ljava/util/ArrayList;)Ljava/util/Set;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Ljava/lang/Iterable;

    .line 41
    .line 42
    invoke-static {v1}, Ls6/g;->w(Ljava/lang/Iterable;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    const/4 v3, 0x0

    .line 51
    move v4, v3

    .line 52
    :goto_33
    if-ge v4, v2, :cond_43

    .line 53
    .line 54
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    check-cast v5, Landroidx/fragment/app/k1;

    .line 59
    .line 60
    iget-object v6, p0, Landroidx/fragment/app/o;->a:Landroid/view/ViewGroup;

    .line 61
    .line 62
    invoke-virtual {v5, v6}, Landroidx/fragment/app/k1;->b(Landroid/view/ViewGroup;)V

    .line 63
    .line 64
    .line 65
    add-int/lit8 v4, v4, 0x1

    .line 66
    .line 67
    goto :goto_33

    .line 68
    :cond_43
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    move v2, v3

    .line 73
    :goto_48
    if-ge v2, v1, :cond_56

    .line 74
    .line 75
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    check-cast v4, Landroidx/fragment/app/l1;

    .line 80
    .line 81
    invoke-virtual {p0, v4}, Landroidx/fragment/app/o;->a(Landroidx/fragment/app/l1;)V

    .line 82
    .line 83
    .line 84
    add-int/lit8 v2, v2, 0x1

    .line 85
    .line 86
    goto :goto_48

    .line 87
    :cond_56
    invoke-static {v0}, Ls6/g;->w(Ljava/lang/Iterable;)Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    :goto_5e
    if-ge v3, v0, :cond_74

    .line 96
    .line 97
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    check-cast v1, Landroidx/fragment/app/l1;

    .line 102
    .line 103
    iget-object v2, v1, Landroidx/fragment/app/l1;->k:Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-eqz v2, :cond_71

    .line 110
    .line 111
    invoke-virtual {v1}, Landroidx/fragment/app/l1;->b()V

    .line 112
    .line 113
    .line 114
    :cond_71
    add-int/lit8 v3, v3, 0x1

    .line 115
    .line 116
    goto :goto_5e

    .line 117
    :cond_74
    return-void
.end method

.method public final d(IILandroidx/fragment/app/g1;)V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p3, Landroidx/fragment/app/g1;->c:Landroidx/fragment/app/c0;

    .line 5
    .line 6
    const-string v2, "fragmentStateManager.fragment"

    .line 7
    .line 8
    invoke-static {v2, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroidx/fragment/app/o;->f(Landroidx/fragment/app/c0;)Landroidx/fragment/app/l1;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-nez v1, :cond_1e

    .line 16
    .line 17
    iget-object v1, p3, Landroidx/fragment/app/g1;->c:Landroidx/fragment/app/c0;

    .line 18
    .line 19
    iget-boolean v2, v1, Landroidx/fragment/app/c0;->m:Z

    .line 20
    .line 21
    if-eqz v2, :cond_1d

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Landroidx/fragment/app/o;->g(Landroidx/fragment/app/c0;)Landroidx/fragment/app/l1;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    goto :goto_1e

    .line 28
    :catchall_1b
    move-exception p1

    .line 29
    goto :goto_47

    .line 30
    :cond_1d
    const/4 v1, 0x0

    .line 31
    :cond_1e
    :goto_1e
    if-eqz v1, :cond_25

    .line 32
    .line 33
    invoke-virtual {v1, p1, p2}, Landroidx/fragment/app/l1;->d(II)V
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_1b

    .line 34
    .line 35
    .line 36
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :cond_25
    :try_start_25
    new-instance v1, Landroidx/fragment/app/l1;

    .line 39
    .line 40
    invoke-direct {v1, p1, p2, p3}, Landroidx/fragment/app/l1;-><init>(IILandroidx/fragment/app/g1;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Landroidx/fragment/app/o;->b:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    new-instance p1, Landroidx/fragment/app/d;

    .line 49
    .line 50
    const/4 p2, 0x1

    .line 51
    invoke-direct {p1, p0, v1, p2}, Landroidx/fragment/app/d;-><init>(Landroidx/fragment/app/o;Landroidx/fragment/app/l1;I)V

    .line 52
    .line 53
    .line 54
    iget-object p2, v1, Landroidx/fragment/app/l1;->d:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    new-instance p1, Landroidx/fragment/app/d;

    .line 60
    .line 61
    const/4 p2, 0x2

    .line 62
    invoke-direct {p1, p0, v1, p2}, Landroidx/fragment/app/d;-><init>(Landroidx/fragment/app/o;Landroidx/fragment/app/l1;I)V

    .line 63
    .line 64
    .line 65
    iget-object p2, v1, Landroidx/fragment/app/l1;->d:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_45
    .catchall {:try_start_25 .. :try_end_45} :catchall_1b

    .line 68
    .line 69
    .line 70
    monitor-exit v0

    .line 71
    return-void

    .line 72
    :goto_47
    monitor-exit v0

    .line 73
    throw p1
.end method

.method public final e()V
    .registers 11

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/o;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Landroidx/fragment/app/o;->a:Landroid/view/ViewGroup;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_14

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/o;->h()V

    .line 16
    .line 17
    .line 18
    iput-boolean v1, p0, Landroidx/fragment/app/o;->e:Z

    .line 19
    .line 20
    return-void

    .line 21
    :cond_14
    iget-object v0, p0, Landroidx/fragment/app/o;->b:Ljava/util/ArrayList;

    .line 22
    .line 23
    monitor-enter v0

    .line 24
    :try_start_17
    iget-object v2, p0, Landroidx/fragment/app/o;->c:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-static {v2}, Ls6/g;->x(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    iget-object v3, p0, Landroidx/fragment/app/o;->c:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    move v4, v1

    .line 40
    :goto_27
    const/4 v5, 0x1

    .line 41
    if-ge v4, v3, :cond_48

    .line 42
    .line 43
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    add-int/lit8 v4, v4, 0x1

    .line 48
    .line 49
    check-cast v6, Landroidx/fragment/app/l1;

    .line 50
    .line 51
    iget-object v7, p0, Landroidx/fragment/app/o;->b:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    if-nez v7, :cond_44

    .line 58
    .line 59
    iget-object v7, v6, Landroidx/fragment/app/l1;->c:Landroidx/fragment/app/c0;

    .line 60
    .line 61
    iget-boolean v7, v7, Landroidx/fragment/app/c0;->m:Z

    .line 62
    .line 63
    if-eqz v7, :cond_44

    .line 64
    .line 65
    goto :goto_45

    .line 66
    :catchall_41
    move-exception v1

    .line 67
    goto/16 :goto_158

    .line 68
    .line 69
    :cond_44
    move v5, v1

    .line 70
    :goto_45
    iput-boolean v5, v6, Landroidx/fragment/app/l1;->g:Z

    .line 71
    .line 72
    goto :goto_27

    .line 73
    :cond_48
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    move v4, v1

    .line 78
    :cond_4d
    :goto_4d
    const/4 v6, 0x2

    .line 79
    if-ge v4, v3, :cond_a9

    .line 80
    .line 81
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    add-int/lit8 v4, v4, 0x1

    .line 86
    .line 87
    check-cast v7, Landroidx/fragment/app/l1;

    .line 88
    .line 89
    iget-boolean v8, p0, Landroidx/fragment/app/o;->d:Z

    .line 90
    .line 91
    if-eqz v8, :cond_7c

    .line 92
    .line 93
    invoke-static {v6}, Landroidx/fragment/app/y0;->J(I)Z

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    if-eqz v6, :cond_78

    .line 98
    .line 99
    const-string v6, "FragmentManager"

    .line 100
    .line 101
    new-instance v8, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    const-string v9, "SpecialEffectsController: Completing non-seekable operation "

    .line 107
    .line 108
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v8

    .line 118
    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    :cond_78
    invoke-virtual {v7}, Landroidx/fragment/app/l1;->b()V

    .line 122
    .line 123
    .line 124
    goto :goto_9d

    .line 125
    :cond_7c
    invoke-static {v6}, Landroidx/fragment/app/y0;->J(I)Z

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    if-eqz v6, :cond_98

    .line 130
    .line 131
    const-string v6, "FragmentManager"

    .line 132
    .line 133
    new-instance v8, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string v9, "SpecialEffectsController: Cancelling operation "

    .line 139
    .line 140
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v8

    .line 150
    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    :cond_98
    iget-object v6, p0, Landroidx/fragment/app/o;->a:Landroid/view/ViewGroup;

    .line 154
    .line 155
    invoke-virtual {v7, v6}, Landroidx/fragment/app/l1;->a(Landroid/view/ViewGroup;)V

    .line 156
    .line 157
    .line 158
    :goto_9d
    iput-boolean v1, p0, Landroidx/fragment/app/o;->d:Z

    .line 159
    .line 160
    iget-boolean v6, v7, Landroidx/fragment/app/l1;->f:Z

    .line 161
    .line 162
    if-nez v6, :cond_4d

    .line 163
    .line 164
    iget-object v6, p0, Landroidx/fragment/app/o;->c:Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    goto :goto_4d

    .line 170
    :cond_a9
    iget-object v2, p0, Landroidx/fragment/app/o;->b:Ljava/util/ArrayList;

    .line 171
    .line 172
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    if-nez v2, :cond_156

    .line 177
    .line 178
    invoke-virtual {p0}, Landroidx/fragment/app/o;->l()V

    .line 179
    .line 180
    .line 181
    iget-object v2, p0, Landroidx/fragment/app/o;->b:Ljava/util/ArrayList;

    .line 182
    .line 183
    invoke-static {v2}, Ls6/g;->x(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 188
    .line 189
    .line 190
    move-result v3
    :try_end_be
    .catchall {:try_start_17 .. :try_end_be} :catchall_41

    .line 191
    if-eqz v3, :cond_c2

    .line 192
    .line 193
    monitor-exit v0

    .line 194
    return-void

    .line 195
    :cond_c2
    :try_start_c2
    iget-object v3, p0, Landroidx/fragment/app/o;->b:Ljava/util/ArrayList;

    .line 196
    .line 197
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 198
    .line 199
    .line 200
    iget-object v3, p0, Landroidx/fragment/app/o;->c:Ljava/util/ArrayList;

    .line 201
    .line 202
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 203
    .line 204
    .line 205
    invoke-static {v6}, Landroidx/fragment/app/y0;->J(I)Z

    .line 206
    .line 207
    .line 208
    move-result v3

    .line 209
    if-eqz v3, :cond_d9

    .line 210
    .line 211
    const-string v3, "FragmentManager"

    .line 212
    .line 213
    const-string v4, "SpecialEffectsController: Executing pending operations"

    .line 214
    .line 215
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .line 217
    .line 218
    :cond_d9
    iget-boolean v3, p0, Landroidx/fragment/app/o;->e:Z

    .line 219
    .line 220
    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/o;->b(Ljava/util/ArrayList;Z)V

    .line 221
    .line 222
    .line 223
    invoke-static {v2}, Landroidx/fragment/app/o;->j(Ljava/util/ArrayList;)Z

    .line 224
    .line 225
    .line 226
    move-result v3

    .line 227
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 228
    .line 229
    .line 230
    move-result v4

    .line 231
    move v8, v1

    .line 232
    move v7, v5

    .line 233
    :cond_e8
    :goto_e8
    if-ge v8, v4, :cond_fa

    .line 234
    .line 235
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v9

    .line 239
    add-int/lit8 v8, v8, 0x1

    .line 240
    .line 241
    check-cast v9, Landroidx/fragment/app/l1;

    .line 242
    .line 243
    iget-object v9, v9, Landroidx/fragment/app/l1;->c:Landroidx/fragment/app/c0;

    .line 244
    .line 245
    iget-boolean v9, v9, Landroidx/fragment/app/c0;->m:Z

    .line 246
    .line 247
    if-nez v9, :cond_e8

    .line 248
    .line 249
    move v7, v1

    .line 250
    goto :goto_e8

    .line 251
    :cond_fa
    if-eqz v7, :cond_ff

    .line 252
    .line 253
    if-nez v3, :cond_ff

    .line 254
    .line 255
    goto :goto_100

    .line 256
    :cond_ff
    move v5, v1

    .line 257
    :goto_100
    iput-boolean v5, p0, Landroidx/fragment/app/o;->d:Z

    .line 258
    .line 259
    invoke-static {v6}, Landroidx/fragment/app/y0;->J(I)Z

    .line 260
    .line 261
    .line 262
    move-result v4

    .line 263
    if-eqz v4, :cond_126

    .line 264
    .line 265
    const-string v4, "FragmentManager"

    .line 266
    .line 267
    new-instance v5, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    .line 271
    .line 272
    const-string v8, "SpecialEffectsController: Operation seekable = "

    .line 273
    .line 274
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    const-string v8, " \ntransition = "

    .line 281
    .line 282
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v5

    .line 292
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    .line 294
    .line 295
    :cond_126
    if-nez v7, :cond_12f

    .line 296
    .line 297
    invoke-virtual {p0, v2}, Landroidx/fragment/app/o;->k(Ljava/util/List;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {p0, v2}, Landroidx/fragment/app/o;->c(Ljava/util/List;)V

    .line 301
    .line 302
    .line 303
    goto :goto_147

    .line 304
    :cond_12f
    if-eqz v3, :cond_147

    .line 305
    .line 306
    invoke-virtual {p0, v2}, Landroidx/fragment/app/o;->k(Ljava/util/List;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 310
    .line 311
    .line 312
    move-result v3

    .line 313
    move v4, v1

    .line 314
    :goto_139
    if-ge v4, v3, :cond_147

    .line 315
    .line 316
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v5

    .line 320
    check-cast v5, Landroidx/fragment/app/l1;

    .line 321
    .line 322
    invoke-virtual {p0, v5}, Landroidx/fragment/app/o;->a(Landroidx/fragment/app/l1;)V

    .line 323
    .line 324
    .line 325
    add-int/lit8 v4, v4, 0x1

    .line 326
    .line 327
    goto :goto_139

    .line 328
    :cond_147
    :goto_147
    iput-boolean v1, p0, Landroidx/fragment/app/o;->e:Z

    .line 329
    .line 330
    invoke-static {v6}, Landroidx/fragment/app/y0;->J(I)Z

    .line 331
    .line 332
    .line 333
    move-result v1

    .line 334
    if-eqz v1, :cond_156

    .line 335
    .line 336
    const-string v1, "FragmentManager"

    .line 337
    .line 338
    const-string v2, "SpecialEffectsController: Finished executing pending operations"

    .line 339
    .line 340
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_156
    .catchall {:try_start_c2 .. :try_end_156} :catchall_41

    .line 341
    .line 342
    .line 343
    :cond_156
    monitor-exit v0

    .line 344
    return-void

    .line 345
    :goto_158
    monitor-exit v0

    .line 346
    throw v1
.end method

.method public final f(Landroidx/fragment/app/c0;)Landroidx/fragment/app/l1;
    .registers 8

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :cond_7
    if-ge v2, v1, :cond_1f

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    move-object v4, v3

    .line 17
    check-cast v4, Landroidx/fragment/app/l1;

    .line 18
    .line 19
    iget-object v5, v4, Landroidx/fragment/app/l1;->c:Landroidx/fragment/app/c0;

    .line 20
    .line 21
    invoke-static {v5, p1}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-eqz v5, :cond_7

    .line 26
    .line 27
    iget-boolean v4, v4, Landroidx/fragment/app/l1;->e:Z

    .line 28
    .line 29
    if-nez v4, :cond_7

    .line 30
    .line 31
    goto :goto_20

    .line 32
    :cond_1f
    const/4 v3, 0x0

    .line 33
    :goto_20
    check-cast v3, Landroidx/fragment/app/l1;

    .line 34
    .line 35
    return-object v3
.end method

.method public final g(Landroidx/fragment/app/c0;)Landroidx/fragment/app/l1;
    .registers 8

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :cond_7
    if-ge v2, v1, :cond_1f

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    move-object v4, v3

    .line 17
    check-cast v4, Landroidx/fragment/app/l1;

    .line 18
    .line 19
    iget-object v5, v4, Landroidx/fragment/app/l1;->c:Landroidx/fragment/app/c0;

    .line 20
    .line 21
    invoke-static {v5, p1}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-eqz v5, :cond_7

    .line 26
    .line 27
    iget-boolean v4, v4, Landroidx/fragment/app/l1;->e:Z

    .line 28
    .line 29
    if-nez v4, :cond_7

    .line 30
    .line 31
    goto :goto_20

    .line 32
    :cond_1f
    const/4 v3, 0x0

    .line 33
    :goto_20
    check-cast v3, Landroidx/fragment/app/l1;

    .line 34
    .line 35
    return-object v3
.end method

.method public final h()V
    .registers 13

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/y0;->J(I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_e

    .line 7
    .line 8
    const-string v1, "FragmentManager"

    .line 9
    .line 10
    const-string v2, "SpecialEffectsController: Forcing all operations to complete"

    .line 11
    .line 12
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    :cond_e
    iget-object v1, p0, Landroidx/fragment/app/o;->a:Landroid/view/ViewGroup;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget-object v2, p0, Landroidx/fragment/app/o;->b:Ljava/util/ArrayList;

    .line 22
    .line 23
    monitor-enter v2

    .line 24
    :try_start_17
    invoke-virtual {p0}, Landroidx/fragment/app/o;->l()V

    .line 25
    .line 26
    .line 27
    iget-object v3, p0, Landroidx/fragment/app/o;->b:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {p0, v3}, Landroidx/fragment/app/o;->k(Ljava/util/List;)V

    .line 30
    .line 31
    .line 32
    iget-object v3, p0, Landroidx/fragment/app/o;->c:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-static {v3}, Ls6/g;->x(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    const/4 v5, 0x0

    .line 43
    move v6, v5

    .line 44
    :goto_2b
    if-ge v6, v4, :cond_3b

    .line 45
    .line 46
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    add-int/lit8 v6, v6, 0x1

    .line 51
    .line 52
    check-cast v7, Landroidx/fragment/app/l1;

    .line 53
    .line 54
    iput-boolean v5, v7, Landroidx/fragment/app/l1;->g:Z

    .line 55
    .line 56
    goto :goto_2b

    .line 57
    :catchall_38
    move-exception v0

    .line 58
    goto/16 :goto_100

    .line 59
    .line 60
    :cond_3b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    move v6, v5

    .line 65
    :goto_40
    if-ge v6, v4, :cond_91

    .line 66
    .line 67
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    add-int/lit8 v6, v6, 0x1

    .line 72
    .line 73
    check-cast v7, Landroidx/fragment/app/l1;

    .line 74
    .line 75
    invoke-static {v0}, Landroidx/fragment/app/y0;->J(I)Z

    .line 76
    .line 77
    .line 78
    move-result v8

    .line 79
    if-eqz v8, :cond_8b

    .line 80
    .line 81
    if-eqz v1, :cond_55

    .line 82
    .line 83
    const-string v8, ""

    .line 84
    .line 85
    goto :goto_6d

    .line 86
    :cond_55
    new-instance v8, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v9, "Container "

    .line 92
    .line 93
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget-object v9, p0, Landroidx/fragment/app/o;->a:Landroid/view/ViewGroup;

    .line 97
    .line 98
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v9, " is not attached to window. "

    .line 102
    .line 103
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v8

    .line 110
    :goto_6d
    const-string v9, "FragmentManager"

    .line 111
    .line 112
    new-instance v10, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    const-string v11, "SpecialEffectsController: "

    .line 118
    .line 119
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v8, "Cancelling running operation "

    .line 126
    .line 127
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v8

    .line 137
    invoke-static {v9, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    :cond_8b
    iget-object v8, p0, Landroidx/fragment/app/o;->a:Landroid/view/ViewGroup;

    .line 141
    .line 142
    invoke-virtual {v7, v8}, Landroidx/fragment/app/l1;->a(Landroid/view/ViewGroup;)V

    .line 143
    .line 144
    .line 145
    goto :goto_40

    .line 146
    :cond_91
    iget-object v3, p0, Landroidx/fragment/app/o;->b:Ljava/util/ArrayList;

    .line 147
    .line 148
    invoke-static {v3}, Ls6/g;->x(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    move v6, v5

    .line 157
    :goto_9c
    if-ge v6, v4, :cond_a9

    .line 158
    .line 159
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v7

    .line 163
    add-int/lit8 v6, v6, 0x1

    .line 164
    .line 165
    check-cast v7, Landroidx/fragment/app/l1;

    .line 166
    .line 167
    iput-boolean v5, v7, Landroidx/fragment/app/l1;->g:Z

    .line 168
    .line 169
    goto :goto_9c

    .line 170
    :cond_a9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    :goto_ad
    if-ge v5, v4, :cond_fe

    .line 175
    .line 176
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v6

    .line 180
    add-int/lit8 v5, v5, 0x1

    .line 181
    .line 182
    check-cast v6, Landroidx/fragment/app/l1;

    .line 183
    .line 184
    invoke-static {v0}, Landroidx/fragment/app/y0;->J(I)Z

    .line 185
    .line 186
    .line 187
    move-result v7

    .line 188
    if-eqz v7, :cond_f8

    .line 189
    .line 190
    if-eqz v1, :cond_c2

    .line 191
    .line 192
    const-string v7, ""

    .line 193
    .line 194
    goto :goto_da

    .line 195
    :cond_c2
    new-instance v7, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .line 199
    .line 200
    const-string v8, "Container "

    .line 201
    .line 202
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    iget-object v8, p0, Landroidx/fragment/app/o;->a:Landroid/view/ViewGroup;

    .line 206
    .line 207
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    const-string v8, " is not attached to window. "

    .line 211
    .line 212
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v7

    .line 219
    :goto_da
    const-string v8, "FragmentManager"

    .line 220
    .line 221
    new-instance v9, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .line 225
    .line 226
    const-string v10, "SpecialEffectsController: "

    .line 227
    .line 228
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    const-string v7, "Cancelling pending operation "

    .line 235
    .line 236
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v7

    .line 246
    invoke-static {v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    .line 248
    .line 249
    :cond_f8
    iget-object v7, p0, Landroidx/fragment/app/o;->a:Landroid/view/ViewGroup;

    .line 250
    .line 251
    invoke-virtual {v6, v7}, Landroidx/fragment/app/l1;->a(Landroid/view/ViewGroup;)V
    :try_end_fd
    .catchall {:try_start_17 .. :try_end_fd} :catchall_38

    .line 252
    .line 253
    .line 254
    goto :goto_ad

    .line 255
    :cond_fe
    monitor-exit v2

    .line 256
    return-void

    .line 257
    :goto_100
    monitor-exit v2

    .line 258
    throw v0
.end method

.method public final k(Ljava/util/List;)V
    .registers 13

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_6
    const/4 v3, 0x1

    .line 8
    if-ge v2, v0, :cond_c2

    .line 9
    .line 10
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    check-cast v4, Landroidx/fragment/app/l1;

    .line 15
    .line 16
    iget-object v5, v4, Landroidx/fragment/app/l1;->l:Landroidx/fragment/app/g1;

    .line 17
    .line 18
    iget-boolean v6, v4, Landroidx/fragment/app/l1;->h:Z

    .line 19
    .line 20
    if-eqz v6, :cond_17

    .line 21
    .line 22
    goto/16 :goto_be

    .line 23
    .line 24
    :cond_17
    iput-boolean v3, v4, Landroidx/fragment/app/l1;->h:Z

    .line 25
    .line 26
    iget v3, v4, Landroidx/fragment/app/l1;->b:I

    .line 27
    .line 28
    const/4 v6, 0x2

    .line 29
    const-string v7, " for Fragment "

    .line 30
    .line 31
    const-string v8, "FragmentManager"

    .line 32
    .line 33
    const-string v9, "fragmentStateManager.fragment"

    .line 34
    .line 35
    if-ne v3, v6, :cond_86

    .line 36
    .line 37
    iget-object v3, v5, Landroidx/fragment/app/g1;->c:Landroidx/fragment/app/c0;

    .line 38
    .line 39
    invoke-static {v9, v3}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iget-object v9, v3, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 43
    .line 44
    invoke-virtual {v9}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v9

    .line 48
    if-eqz v9, :cond_54

    .line 49
    .line 50
    invoke-virtual {v3}, Landroidx/fragment/app/c0;->b()Landroidx/fragment/app/z;

    .line 51
    .line 52
    .line 53
    move-result-object v10

    .line 54
    iput-object v9, v10, Landroidx/fragment/app/z;->k:Landroid/view/View;

    .line 55
    .line 56
    invoke-static {v6}, Landroidx/fragment/app/y0;->J(I)Z

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    if-eqz v6, :cond_54

    .line 61
    .line 62
    new-instance v6, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v10, "requestFocus: Saved focused view "

    .line 65
    .line 66
    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-static {v8, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    :cond_54
    iget-object v4, v4, Landroidx/fragment/app/l1;->c:Landroidx/fragment/app/c0;

    .line 86
    .line 87
    invoke-virtual {v4}, Landroidx/fragment/app/c0;->G()Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    const/4 v7, 0x0

    .line 96
    if-nez v6, :cond_67

    .line 97
    .line 98
    invoke-virtual {v5}, Landroidx/fragment/app/g1;->b()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, v7}, Landroid/view/View;->setAlpha(F)V

    .line 102
    .line 103
    .line 104
    :cond_67
    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    cmpg-float v5, v5, v7

    .line 109
    .line 110
    if-nez v5, :cond_79

    .line 111
    .line 112
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    if-nez v5, :cond_79

    .line 117
    .line 118
    const/4 v5, 0x4

    .line 119
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 120
    .line 121
    .line 122
    :cond_79
    iget-object v3, v3, Landroidx/fragment/app/c0;->S:Landroidx/fragment/app/z;

    .line 123
    .line 124
    if-nez v3, :cond_80

    .line 125
    .line 126
    const/high16 v3, 0x3f800000    # 1.0f

    .line 127
    .line 128
    goto :goto_82

    .line 129
    :cond_80
    iget v3, v3, Landroidx/fragment/app/z;->j:F

    .line 130
    .line 131
    :goto_82
    invoke-virtual {v4, v3}, Landroid/view/View;->setAlpha(F)V

    .line 132
    .line 133
    .line 134
    goto :goto_be

    .line 135
    :cond_86
    const/4 v4, 0x3

    .line 136
    if-ne v3, v4, :cond_be

    .line 137
    .line 138
    iget-object v3, v5, Landroidx/fragment/app/g1;->c:Landroidx/fragment/app/c0;

    .line 139
    .line 140
    invoke-static {v9, v3}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v3}, Landroidx/fragment/app/c0;->G()Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    invoke-static {v6}, Landroidx/fragment/app/y0;->J(I)Z

    .line 148
    .line 149
    .line 150
    move-result v5

    .line 151
    if-eqz v5, :cond_bb

    .line 152
    .line 153
    new-instance v5, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    const-string v6, "Clearing focus "

    .line 156
    .line 157
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string v6, " on view "

    .line 168
    .line 169
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    invoke-static {v8, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    :cond_bb
    invoke-virtual {v4}, Landroid/view/View;->clearFocus()V

    .line 189
    .line 190
    .line 191
    :cond_be
    :goto_be
    add-int/lit8 v2, v2, 0x1

    .line 192
    .line 193
    goto/16 :goto_6

    .line 194
    .line 195
    :cond_c2
    check-cast p1, Ljava/lang/Iterable;

    .line 196
    .line 197
    new-instance v0, Ljava/util/ArrayList;

    .line 198
    .line 199
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .line 201
    .line 202
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    :goto_cd
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    if-eqz v2, :cond_df

    .line 211
    .line 212
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    check-cast v2, Landroidx/fragment/app/l1;

    .line 217
    .line 218
    iget-object v2, v2, Landroidx/fragment/app/l1;->k:Ljava/util/ArrayList;

    .line 219
    .line 220
    invoke-static {v0, v2}, Ls6/m;->o(Ljava/util/ArrayList;Ljava/lang/Iterable;)V

    .line 221
    .line 222
    .line 223
    goto :goto_cd

    .line 224
    :cond_df
    invoke-static {v0}, Ls6/g;->y(Ljava/util/ArrayList;)Ljava/util/Set;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    check-cast p1, Ljava/lang/Iterable;

    .line 229
    .line 230
    invoke-static {p1}, Ls6/g;->w(Ljava/lang/Iterable;)Ljava/util/List;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    :goto_ed
    if-ge v1, v0, :cond_10b

    .line 239
    .line 240
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    check-cast v2, Landroidx/fragment/app/k1;

    .line 245
    .line 246
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 247
    .line 248
    .line 249
    const-string v4, "container"

    .line 250
    .line 251
    iget-object v5, p0, Landroidx/fragment/app/o;->a:Landroid/view/ViewGroup;

    .line 252
    .line 253
    invoke-static {v4, v5}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 254
    .line 255
    .line 256
    iget-boolean v4, v2, Landroidx/fragment/app/k1;->a:Z

    .line 257
    .line 258
    if-nez v4, :cond_106

    .line 259
    .line 260
    invoke-virtual {v2, v5}, Landroidx/fragment/app/k1;->d(Landroid/view/ViewGroup;)V

    .line 261
    .line 262
    .line 263
    :cond_106
    iput-boolean v3, v2, Landroidx/fragment/app/k1;->a:Z

    .line 264
    .line 265
    add-int/lit8 v1, v1, 0x1

    .line 266
    .line 267
    goto :goto_ed

    .line 268
    :cond_10b
    return-void
.end method

.method public final l()V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :cond_7
    :goto_7
    if-ge v2, v1, :cond_3c

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    check-cast v3, Landroidx/fragment/app/l1;

    .line 17
    .line 18
    iget v4, v3, Landroidx/fragment/app/l1;->b:I

    .line 19
    .line 20
    const/4 v5, 0x2

    .line 21
    if-ne v4, v5, :cond_7

    .line 22
    .line 23
    iget-object v4, v3, Landroidx/fragment/app/l1;->c:Landroidx/fragment/app/c0;

    .line 24
    .line 25
    invoke-virtual {v4}, Landroidx/fragment/app/c0;->G()Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_37

    .line 34
    .line 35
    const/4 v5, 0x4

    .line 36
    if-eq v4, v5, :cond_37

    .line 37
    .line 38
    const/16 v5, 0x8

    .line 39
    .line 40
    if-ne v4, v5, :cond_2b

    .line 41
    .line 42
    const/4 v5, 0x3

    .line 43
    goto :goto_37

    .line 44
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 45
    .line 46
    const-string v1, "Unknown visibility "

    .line 47
    .line 48
    invoke-static {v4, v1}, La1/a;->i(ILjava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v0

    .line 56
    :cond_37
    :goto_37
    const/4 v4, 0x1

    .line 57
    invoke-virtual {v3, v5, v4}, Landroidx/fragment/app/l1;->d(II)V

    .line 58
    .line 59
    .line 60
    goto :goto_7

    .line 61
    :cond_3c
    return-void
.end method
