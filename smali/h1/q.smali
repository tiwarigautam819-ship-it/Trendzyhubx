###### Class h1.q (h1.q)
.class public final Lh1/q;
.super Lh1/h;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final j:Landroid/graphics/PorterDuff$Mode;


# instance fields
.field public b:Lh1/o;

.field public c:Landroid/graphics/PorterDuffColorFilter;

.field public d:Landroid/graphics/ColorFilter;

.field public e:Z

.field public f:Z

.field public final g:[F

.field public final h:Landroid/graphics/Matrix;

.field public final i:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 2
    .line 3
    sput-object v0, Lh1/q;->j:Landroid/graphics/PorterDuff$Mode;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lh1/q;->f:Z

    const/16 v0, 0x9

    .line 3
    new-array v0, v0, [F

    iput-object v0, p0, Lh1/q;->g:[F

    .line 4
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lh1/q;->h:Landroid/graphics/Matrix;

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lh1/q;->i:Landroid/graphics/Rect;

    .line 6
    new-instance v0, Lh1/o;

    .line 7
    invoke-direct {v0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v1, 0x0

    .line 8
    iput-object v1, v0, Lh1/o;->c:Landroid/content/res/ColorStateList;

    .line 9
    sget-object v1, Lh1/q;->j:Landroid/graphics/PorterDuff$Mode;

    iput-object v1, v0, Lh1/o;->d:Landroid/graphics/PorterDuff$Mode;

    .line 10
    new-instance v1, Lh1/n;

    invoke-direct {v1}, Lh1/n;-><init>()V

    iput-object v1, v0, Lh1/o;->b:Lh1/n;

    .line 11
    iput-object v0, p0, Lh1/q;->b:Lh1/o;

    return-void
.end method

.method public constructor <init>(Lh1/o;)V
    .registers 3

    .line 12
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lh1/q;->f:Z

    const/16 v0, 0x9

    .line 14
    new-array v0, v0, [F

    iput-object v0, p0, Lh1/q;->g:[F

    .line 15
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lh1/q;->h:Landroid/graphics/Matrix;

    .line 16
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lh1/q;->i:Landroid/graphics/Rect;

    .line 17
    iput-object p1, p0, Lh1/q;->b:Lh1/o;

    .line 18
    iget-object v0, p1, Lh1/o;->c:Landroid/content/res/ColorStateList;

    iget-object p1, p1, Lh1/o;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, p1}, Lh1/q;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lh1/q;->c:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .registers 5

    .line 1
    if-eqz p1, :cond_14

    .line 2
    .line 3
    if-nez p2, :cond_5

    .line 4
    .line 5
    goto :goto_14

    .line 6
    :cond_5
    invoke-virtual {p0}, Lh1/h;->getState()[I

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 16
    .line 17
    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 18
    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_14
    :goto_14
    const/4 p1, 0x0

    .line 22
    return-object p1
.end method

.method public final canApplyTheme()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lh1/h;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    .line 6
    .line 7
    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .registers 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lh1/h;->a:Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    if-eqz v2, :cond_c

    .line 8
    .line 9
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_c
    iget-object v2, v0, Lh1/q;->i:Landroid/graphics/Rect;

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-lez v3, :cond_16e

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-gtz v3, :cond_1f

    .line 29
    .line 30
    goto/16 :goto_16e

    .line 31
    .line 32
    :cond_1f
    iget-object v3, v0, Lh1/q;->d:Landroid/graphics/ColorFilter;

    .line 33
    .line 34
    if-nez v3, :cond_25

    .line 35
    .line 36
    iget-object v3, v0, Lh1/q;->c:Landroid/graphics/PorterDuffColorFilter;

    .line 37
    .line 38
    :cond_25
    iget-object v4, v0, Lh1/q;->h:Landroid/graphics/Matrix;

    .line 39
    .line 40
    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 41
    .line 42
    .line 43
    iget-object v5, v0, Lh1/q;->g:[F

    .line 44
    .line 45
    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->getValues([F)V

    .line 46
    .line 47
    .line 48
    const/4 v4, 0x0

    .line 49
    aget v6, v5, v4

    .line 50
    .line 51
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    const/4 v7, 0x4

    .line 56
    aget v7, v5, v7

    .line 57
    .line 58
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    const/4 v8, 0x1

    .line 63
    aget v9, v5, v8

    .line 64
    .line 65
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 66
    .line 67
    .line 68
    move-result v9

    .line 69
    const/4 v10, 0x3

    .line 70
    aget v5, v5, v10

    .line 71
    .line 72
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    const/4 v10, 0x0

    .line 77
    cmpl-float v9, v9, v10

    .line 78
    .line 79
    const/high16 v11, 0x3f800000    # 1.0f

    .line 80
    .line 81
    if-nez v9, :cond_56

    .line 82
    .line 83
    cmpl-float v5, v5, v10

    .line 84
    .line 85
    if-eqz v5, :cond_58

    .line 86
    .line 87
    :cond_56
    move v6, v11

    .line 88
    move v7, v6

    .line 89
    :cond_58
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    int-to-float v5, v5

    .line 94
    mul-float/2addr v5, v6

    .line 95
    float-to-int v5, v5

    .line 96
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 97
    .line 98
    .line 99
    move-result v6

    .line 100
    int-to-float v6, v6

    .line 101
    mul-float/2addr v6, v7

    .line 102
    float-to-int v6, v6

    .line 103
    const/16 v7, 0x800

    .line 104
    .line 105
    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    if-lez v5, :cond_16e

    .line 114
    .line 115
    if-gtz v6, :cond_76

    .line 116
    .line 117
    goto/16 :goto_16e

    .line 118
    .line 119
    :cond_76
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 120
    .line 121
    .line 122
    move-result v7

    .line 123
    iget v9, v2, Landroid/graphics/Rect;->left:I

    .line 124
    .line 125
    int-to-float v9, v9

    .line 126
    iget v12, v2, Landroid/graphics/Rect;->top:I

    .line 127
    .line 128
    int-to-float v12, v12

    .line 129
    invoke-virtual {v1, v9, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Lh1/q;->isAutoMirrored()Z

    .line 133
    .line 134
    .line 135
    move-result v9

    .line 136
    if-eqz v9, :cond_9c

    .line 137
    .line 138
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    .line 139
    .line 140
    .line 141
    move-result v9

    .line 142
    if-ne v9, v8, :cond_9c

    .line 143
    .line 144
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 145
    .line 146
    .line 147
    move-result v9

    .line 148
    int-to-float v9, v9

    .line 149
    invoke-virtual {v1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 150
    .line 151
    .line 152
    const/high16 v9, -0x40800000    # -1.0f

    .line 153
    .line 154
    invoke-virtual {v1, v9, v11}, Landroid/graphics/Canvas;->scale(FF)V

    .line 155
    .line 156
    .line 157
    :cond_9c
    invoke-virtual {v2, v4, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 158
    .line 159
    .line 160
    iget-object v9, v0, Lh1/q;->b:Lh1/o;

    .line 161
    .line 162
    iget-object v10, v9, Lh1/o;->f:Landroid/graphics/Bitmap;

    .line 163
    .line 164
    if-eqz v10, :cond_b4

    .line 165
    .line 166
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    .line 167
    .line 168
    .line 169
    move-result v10

    .line 170
    if-ne v5, v10, :cond_b4

    .line 171
    .line 172
    iget-object v10, v9, Lh1/o;->f:Landroid/graphics/Bitmap;

    .line 173
    .line 174
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    .line 175
    .line 176
    .line 177
    move-result v10

    .line 178
    if-ne v6, v10, :cond_b4

    .line 179
    .line 180
    goto :goto_be

    .line 181
    :cond_b4
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 182
    .line 183
    invoke-static {v5, v6, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 184
    .line 185
    .line 186
    move-result-object v10

    .line 187
    iput-object v10, v9, Lh1/o;->f:Landroid/graphics/Bitmap;

    .line 188
    .line 189
    iput-boolean v8, v9, Lh1/o;->k:Z

    .line 190
    .line 191
    :goto_be
    iget-boolean v9, v0, Lh1/q;->f:Z

    .line 192
    .line 193
    if-nez v9, :cond_de

    .line 194
    .line 195
    iget-object v9, v0, Lh1/q;->b:Lh1/o;

    .line 196
    .line 197
    iget-object v10, v9, Lh1/o;->f:Landroid/graphics/Bitmap;

    .line 198
    .line 199
    invoke-virtual {v10, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 200
    .line 201
    .line 202
    new-instance v15, Landroid/graphics/Canvas;

    .line 203
    .line 204
    iget-object v4, v9, Lh1/o;->f:Landroid/graphics/Bitmap;

    .line 205
    .line 206
    invoke-direct {v15, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 207
    .line 208
    .line 209
    iget-object v12, v9, Lh1/o;->b:Lh1/n;

    .line 210
    .line 211
    iget-object v13, v12, Lh1/n;->g:Lh1/k;

    .line 212
    .line 213
    sget-object v14, Lh1/n;->p:Landroid/graphics/Matrix;

    .line 214
    .line 215
    move/from16 v16, v5

    .line 216
    .line 217
    move/from16 v17, v6

    .line 218
    .line 219
    invoke-virtual/range {v12 .. v17}, Lh1/n;->a(Lh1/k;Landroid/graphics/Matrix;Landroid/graphics/Canvas;II)V

    .line 220
    .line 221
    .line 222
    goto :goto_134

    .line 223
    :cond_de
    move/from16 v16, v5

    .line 224
    .line 225
    move/from16 v17, v6

    .line 226
    .line 227
    iget-object v5, v0, Lh1/q;->b:Lh1/o;

    .line 228
    .line 229
    iget-boolean v6, v5, Lh1/o;->k:Z

    .line 230
    .line 231
    if-nez v6, :cond_105

    .line 232
    .line 233
    iget-object v6, v5, Lh1/o;->g:Landroid/content/res/ColorStateList;

    .line 234
    .line 235
    iget-object v9, v5, Lh1/o;->c:Landroid/content/res/ColorStateList;

    .line 236
    .line 237
    if-ne v6, v9, :cond_105

    .line 238
    .line 239
    iget-object v6, v5, Lh1/o;->h:Landroid/graphics/PorterDuff$Mode;

    .line 240
    .line 241
    iget-object v9, v5, Lh1/o;->d:Landroid/graphics/PorterDuff$Mode;

    .line 242
    .line 243
    if-ne v6, v9, :cond_105

    .line 244
    .line 245
    iget-boolean v6, v5, Lh1/o;->j:Z

    .line 246
    .line 247
    iget-boolean v9, v5, Lh1/o;->e:Z

    .line 248
    .line 249
    if-ne v6, v9, :cond_105

    .line 250
    .line 251
    iget v6, v5, Lh1/o;->i:I

    .line 252
    .line 253
    iget-object v5, v5, Lh1/o;->b:Lh1/n;

    .line 254
    .line 255
    invoke-virtual {v5}, Lh1/n;->getRootAlpha()I

    .line 256
    .line 257
    .line 258
    move-result v5

    .line 259
    if-ne v6, v5, :cond_105

    .line 260
    .line 261
    goto :goto_134

    .line 262
    :cond_105
    iget-object v5, v0, Lh1/q;->b:Lh1/o;

    .line 263
    .line 264
    iget-object v6, v5, Lh1/o;->f:Landroid/graphics/Bitmap;

    .line 265
    .line 266
    invoke-virtual {v6, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 267
    .line 268
    .line 269
    new-instance v15, Landroid/graphics/Canvas;

    .line 270
    .line 271
    iget-object v6, v5, Lh1/o;->f:Landroid/graphics/Bitmap;

    .line 272
    .line 273
    invoke-direct {v15, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 274
    .line 275
    .line 276
    iget-object v12, v5, Lh1/o;->b:Lh1/n;

    .line 277
    .line 278
    iget-object v13, v12, Lh1/n;->g:Lh1/k;

    .line 279
    .line 280
    sget-object v14, Lh1/n;->p:Landroid/graphics/Matrix;

    .line 281
    .line 282
    invoke-virtual/range {v12 .. v17}, Lh1/n;->a(Lh1/k;Landroid/graphics/Matrix;Landroid/graphics/Canvas;II)V

    .line 283
    .line 284
    .line 285
    iget-object v5, v0, Lh1/q;->b:Lh1/o;

    .line 286
    .line 287
    iget-object v6, v5, Lh1/o;->c:Landroid/content/res/ColorStateList;

    .line 288
    .line 289
    iput-object v6, v5, Lh1/o;->g:Landroid/content/res/ColorStateList;

    .line 290
    .line 291
    iget-object v6, v5, Lh1/o;->d:Landroid/graphics/PorterDuff$Mode;

    .line 292
    .line 293
    iput-object v6, v5, Lh1/o;->h:Landroid/graphics/PorterDuff$Mode;

    .line 294
    .line 295
    iget-object v6, v5, Lh1/o;->b:Lh1/n;

    .line 296
    .line 297
    invoke-virtual {v6}, Lh1/n;->getRootAlpha()I

    .line 298
    .line 299
    .line 300
    move-result v6

    .line 301
    iput v6, v5, Lh1/o;->i:I

    .line 302
    .line 303
    iget-boolean v6, v5, Lh1/o;->e:Z

    .line 304
    .line 305
    iput-boolean v6, v5, Lh1/o;->j:Z

    .line 306
    .line 307
    iput-boolean v4, v5, Lh1/o;->k:Z

    .line 308
    .line 309
    :goto_134
    iget-object v4, v0, Lh1/q;->b:Lh1/o;

    .line 310
    .line 311
    iget-object v5, v4, Lh1/o;->b:Lh1/n;

    .line 312
    .line 313
    invoke-virtual {v5}, Lh1/n;->getRootAlpha()I

    .line 314
    .line 315
    .line 316
    move-result v5

    .line 317
    const/16 v6, 0xff

    .line 318
    .line 319
    const/4 v9, 0x0

    .line 320
    if-ge v5, v6, :cond_142

    .line 321
    .line 322
    goto :goto_146

    .line 323
    :cond_142
    if-nez v3, :cond_146

    .line 324
    .line 325
    move-object v3, v9

    .line 326
    goto :goto_166

    .line 327
    :cond_146
    :goto_146
    iget-object v5, v4, Lh1/o;->l:Landroid/graphics/Paint;

    .line 328
    .line 329
    if-nez v5, :cond_154

    .line 330
    .line 331
    new-instance v5, Landroid/graphics/Paint;

    .line 332
    .line 333
    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 334
    .line 335
    .line 336
    iput-object v5, v4, Lh1/o;->l:Landroid/graphics/Paint;

    .line 337
    .line 338
    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 339
    .line 340
    .line 341
    :cond_154
    iget-object v5, v4, Lh1/o;->l:Landroid/graphics/Paint;

    .line 342
    .line 343
    iget-object v6, v4, Lh1/o;->b:Lh1/n;

    .line 344
    .line 345
    invoke-virtual {v6}, Lh1/n;->getRootAlpha()I

    .line 346
    .line 347
    .line 348
    move-result v6

    .line 349
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 350
    .line 351
    .line 352
    iget-object v5, v4, Lh1/o;->l:Landroid/graphics/Paint;

    .line 353
    .line 354
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 355
    .line 356
    .line 357
    iget-object v3, v4, Lh1/o;->l:Landroid/graphics/Paint;

    .line 358
    .line 359
    :goto_166
    iget-object v4, v4, Lh1/o;->f:Landroid/graphics/Bitmap;

    .line 360
    .line 361
    invoke-virtual {v1, v4, v9, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 365
    .line 366
    .line 367
    :cond_16e
    :goto_16e
    return-void
.end method

.method public final getAlpha()I
    .registers 2

    .line 1
    iget-object v0, p0, Lh1/h;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    iget-object v0, p0, Lh1/q;->b:Lh1/o;

    .line 11
    .line 12
    iget-object v0, v0, Lh1/o;->b:Lh1/n;

    .line 13
    .line 14
    invoke-virtual {v0}, Lh1/n;->getRootAlpha()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public final getChangingConfigurations()I
    .registers 3

    .line 1
    iget-object v0, p0, Lh1/h;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Lh1/q;->b:Lh1/o;

    .line 15
    .line 16
    invoke-virtual {v1}, Lh1/o;->getChangingConfigurations()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    or-int/2addr v0, v1

    .line 21
    return v0
.end method

.method public final getColorFilter()Landroid/graphics/ColorFilter;
    .registers 2

    .line 1
    iget-object v0, p0, Lh1/h;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_9
    iget-object v0, p0, Lh1/q;->d:Landroid/graphics/ColorFilter;

    .line 11
    .line 12
    return-object v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 3

    .line 1
    iget-object v0, p0, Lh1/h;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_16

    .line 4
    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v1, 0x18

    .line 8
    .line 9
    if-lt v0, v1, :cond_16

    .line 10
    .line 11
    new-instance v0, Lh1/p;

    .line 12
    .line 13
    iget-object v1, p0, Lh1/h;->a:Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, v1}, Lh1/p;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    .line 20
    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_16
    iget-object v0, p0, Lh1/q;->b:Lh1/o;

    .line 24
    .line 25
    invoke-virtual {p0}, Lh1/q;->getChangingConfigurations()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    iput v1, v0, Lh1/o;->a:I

    .line 30
    .line 31
    iget-object v0, p0, Lh1/q;->b:Lh1/o;

    .line 32
    .line 33
    return-object v0
.end method

.method public final getIntrinsicHeight()I
    .registers 2

    .line 1
    iget-object v0, p0, Lh1/h;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    iget-object v0, p0, Lh1/q;->b:Lh1/o;

    .line 11
    .line 12
    iget-object v0, v0, Lh1/o;->b:Lh1/n;

    .line 13
    .line 14
    iget v0, v0, Lh1/n;->i:F

    .line 15
    .line 16
    float-to-int v0, v0

    .line 17
    return v0
.end method

.method public final getIntrinsicWidth()I
    .registers 2

    .line 1
    iget-object v0, p0, Lh1/h;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    iget-object v0, p0, Lh1/q;->b:Lh1/o;

    .line 11
    .line 12
    iget-object v0, v0, Lh1/o;->b:Lh1/n;

    .line 13
    .line 14
    iget v0, v0, Lh1/n;->h:F

    .line 15
    .line 16
    float-to-int v0, v0

    .line 17
    return v0
.end method

.method public final getOpacity()I
    .registers 2

    .line 1
    iget-object v0, p0, Lh1/h;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    const/4 v0, -0x3

    .line 11
    return v0
.end method

.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lh1/h;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    return-void

    :cond_8
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Lh1/q;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 33

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    .line 4
    iget-object v0, v1, Lh1/h;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_12

    .line 5
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void

    .line 6
    :cond_12
    iget-object v6, v1, Lh1/q;->b:Lh1/o;

    .line 7
    new-instance v0, Lh1/n;

    invoke-direct {v0}, Lh1/n;-><init>()V

    .line 8
    iput-object v0, v6, Lh1/o;->b:Lh1/n;

    .line 9
    sget-object v0, Lh1/a;->a:[I

    invoke-static {v2, v5, v4, v0}, Lb0/b;->f(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 10
    iget-object v8, v1, Lh1/q;->b:Lh1/o;

    .line 11
    iget-object v9, v8, Lh1/o;->b:Lh1/n;

    .line 12
    const-string v0, "tintMode"

    .line 13
    invoke-static {v3, v0}, Lb0/b;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    const/4 v10, -0x1

    const/4 v11, 0x6

    if-nez v0, :cond_31

    move v0, v10

    goto :goto_35

    .line 14
    :cond_31
    invoke-virtual {v7, v11, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 15
    :goto_35
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/16 v13, 0x9

    const/4 v14, 0x3

    const/4 v15, 0x5

    if-eq v0, v14, :cond_51

    if-eq v0, v15, :cond_53

    if-eq v0, v13, :cond_4e

    packed-switch v0, :pswitch_data_4a2

    goto :goto_53

    .line 16
    :pswitch_45
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    goto :goto_53

    .line 17
    :pswitch_48
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_53

    .line 18
    :pswitch_4b
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_53

    .line 19
    :cond_4e
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    goto :goto_53

    .line 20
    :cond_51
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 21
    :cond_53
    :goto_53
    iput-object v12, v8, Lh1/o;->d:Landroid/graphics/PorterDuff$Mode;

    .line 22
    const-string v0, "tint"

    .line 23
    const-string v12, "http://schemas.android.com/apk/res/android"

    invoke-interface {v3, v12, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v16, 0x0

    const/4 v11, 0x2

    const/4 v13, 0x0

    const/4 v10, 0x1

    if-eqz v0, :cond_7e

    .line 24
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 25
    invoke-virtual {v7, v10, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 26
    iget v14, v0, Landroid/util/TypedValue;->type:I

    if-eq v14, v11, :cond_9d

    const/16 v11, 0x1c

    if-lt v14, v11, :cond_81

    const/16 v11, 0x1f

    if-gt v14, v11, :cond_81

    .line 27
    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v16

    :cond_7e
    :goto_7e
    move-object/from16 v0, v16

    goto :goto_b1

    .line 28
    :cond_81
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 29
    invoke-virtual {v7, v10, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 30
    sget-object v14, Lb0/c;->a:Ljava/lang/ThreadLocal;

    .line 31
    :try_start_8b
    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v11

    .line 32
    invoke-static {v0, v11, v5}, Lb0/c;->a(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v16
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_93} :catch_94

    goto :goto_7e

    :catch_94
    move-exception v0

    .line 33
    const-string v11, "CSLCompat"

    const-string v14, "Failed to inflate ColorStateList."

    invoke-static {v11, v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7e

    .line 34
    :cond_9d
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to resolve attribute at index 1: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :goto_b1
    if-eqz v0, :cond_b5

    .line 35
    iput-object v0, v8, Lh1/o;->c:Landroid/content/res/ColorStateList;

    .line 36
    :cond_b5
    iget-boolean v0, v8, Lh1/o;->e:Z

    .line 37
    const-string v11, "autoMirrored"

    invoke-interface {v3, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_c3

    .line 38
    invoke-virtual {v7, v15, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 39
    :cond_c3
    iput-boolean v0, v8, Lh1/o;->e:Z

    .line 40
    iget v0, v9, Lh1/n;->j:F

    .line 41
    const-string v8, "viewportWidth"

    invoke-interface {v3, v12, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x7

    if-eqz v8, :cond_d4

    .line 42
    invoke-virtual {v7, v11, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 43
    :cond_d4
    iput v0, v9, Lh1/n;->j:F

    .line 44
    iget v0, v9, Lh1/n;->k:F

    .line 45
    const-string v8, "viewportHeight"

    invoke-interface {v3, v12, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v14, 0x8

    if-eqz v8, :cond_e6

    .line 46
    invoke-virtual {v7, v14, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 47
    :cond_e6
    iput v0, v9, Lh1/n;->k:F

    .line 48
    iget v8, v9, Lh1/n;->j:F

    const/4 v15, 0x0

    cmpg-float v8, v8, v15

    if-lez v8, :cond_486

    cmpg-float v0, v0, v15

    if-lez v0, :cond_46b

    .line 49
    iget v0, v9, Lh1/n;->h:F

    const/4 v8, 0x3

    invoke-virtual {v7, v8, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v9, Lh1/n;->h:F

    .line 50
    iget v0, v9, Lh1/n;->i:F

    const/4 v8, 0x2

    invoke-virtual {v7, v8, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v9, Lh1/n;->i:F

    .line 51
    iget v8, v9, Lh1/n;->h:F

    cmpg-float v8, v8, v15

    if-lez v8, :cond_450

    cmpg-float v0, v0, v15

    if-lez v0, :cond_435

    .line 52
    invoke-virtual {v9}, Lh1/n;->getAlpha()F

    move-result v0

    .line 53
    const-string v8, "alpha"

    invoke-interface {v3, v12, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x4

    if-eqz v8, :cond_120

    .line 54
    invoke-virtual {v7, v11, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 55
    :cond_120
    invoke-virtual {v9, v0}, Lh1/n;->setAlpha(F)V

    .line 56
    invoke-virtual {v7, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_130

    .line 57
    iput-object v0, v9, Lh1/n;->m:Ljava/lang/String;

    .line 58
    iget-object v8, v9, Lh1/n;->o:Ls/e;

    invoke-virtual {v8, v0, v9}, Ls/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_130
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    invoke-virtual {v1}, Lh1/q;->getChangingConfigurations()I

    move-result v0

    iput v0, v6, Lh1/o;->a:I

    .line 61
    iput-boolean v10, v6, Lh1/o;->k:Z

    .line 62
    iget-object v0, v1, Lh1/q;->b:Lh1/o;

    .line 63
    iget-object v7, v0, Lh1/o;->b:Lh1/n;

    .line 64
    new-instance v8, Ljava/util/ArrayDeque;

    invoke-direct {v8}, Ljava/util/ArrayDeque;-><init>()V

    .line 65
    iget-object v9, v7, Lh1/n;->g:Lh1/k;

    iget-object v7, v7, Lh1/n;->o:Ls/e;

    invoke-virtual {v8, v9}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 66
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    .line 67
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v21

    add-int/lit8 v11, v21, 0x1

    move/from16 v21, v10

    :goto_157
    if-eq v9, v10, :cond_420

    .line 68
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    if-ge v14, v11, :cond_162

    const/4 v14, 0x3

    if-eq v9, v14, :cond_420

    .line 69
    :cond_162
    const-string v14, "group"

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3f2

    .line 70
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 71
    invoke-virtual {v8}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lh1/k;

    .line 72
    const-string v13, "path"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const-string v15, "fillType"

    move/from16 v25, v11

    const-string v11, "pathData"

    if-eqz v13, :cond_2de

    .line 73
    new-instance v9, Lh1/j;

    .line 74
    invoke-direct {v9}, Lh1/m;-><init>()V

    const/4 v13, 0x0

    .line 75
    iput v13, v9, Lh1/j;->e:F

    const/high16 v14, 0x3f800000    # 1.0f

    .line 76
    iput v14, v9, Lh1/j;->g:F

    .line 77
    iput v14, v9, Lh1/j;->h:F

    .line 78
    iput v13, v9, Lh1/j;->i:F

    .line 79
    iput v14, v9, Lh1/j;->j:F

    .line 80
    iput v13, v9, Lh1/j;->k:F

    .line 81
    sget-object v14, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v14, v9, Lh1/j;->l:Landroid/graphics/Paint$Cap;

    .line 82
    sget-object v13, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v13, v9, Lh1/j;->m:Landroid/graphics/Paint$Join;

    move-object/from16 v21, v13

    const/high16 v13, 0x40800000    # 4.0f

    .line 83
    iput v13, v9, Lh1/j;->n:F

    .line 84
    sget-object v13, Lh1/a;->c:[I

    invoke-static {v2, v5, v4, v13}, Lb0/b;->f(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 85
    invoke-interface {v3, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2b9

    move-object/from16 v26, v14

    const/4 v11, 0x0

    .line 86
    invoke-virtual {v13, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_1b8

    .line 87
    iput-object v14, v9, Lh1/m;->b:Ljava/lang/String;

    :cond_1b8
    const/4 v11, 0x2

    .line 88
    invoke-virtual {v13, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_1c5

    .line 89
    invoke-static {v14}, Lt4/b;->d(Ljava/lang/String;)[Lc0/e;

    move-result-object v11

    iput-object v11, v9, Lh1/m;->a:[Lc0/e;

    .line 90
    :cond_1c5
    const-string v11, "fillColor"

    const/4 v14, 0x1

    invoke-static {v13, v3, v5, v11, v14}, Lb0/b;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)Lb0/d;

    move-result-object v11

    iput-object v11, v9, Lh1/j;->f:Lb0/d;

    .line 91
    iget v11, v9, Lh1/j;->h:F

    .line 92
    const-string v14, "fillAlpha"

    invoke-interface {v3, v12, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_1de

    const/16 v14, 0xc

    .line 93
    invoke-virtual {v13, v14, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    .line 94
    :cond_1de
    iput v11, v9, Lh1/j;->h:F

    .line 95
    const-string v11, "strokeLineCap"

    .line 96
    invoke-interface {v3, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1f2

    const/16 v11, 0x8

    const/4 v14, -0x1

    .line 97
    invoke-virtual {v13, v11, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v23

    move/from16 v14, v23

    goto :goto_1f3

    :cond_1f2
    const/4 v14, -0x1

    .line 98
    :goto_1f3
    iget-object v11, v9, Lh1/j;->l:Landroid/graphics/Paint$Cap;

    if-eqz v14, :cond_208

    move-object/from16 v27, v11

    const/4 v11, 0x1

    if-eq v14, v11, :cond_205

    const/4 v11, 0x2

    if-eq v14, v11, :cond_202

    move-object/from16 v14, v27

    goto :goto_20a

    .line 99
    :cond_202
    sget-object v14, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    goto :goto_20a

    .line 100
    :cond_205
    sget-object v14, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_20a

    :cond_208
    move-object/from16 v14, v26

    .line 101
    :goto_20a
    iput-object v14, v9, Lh1/j;->l:Landroid/graphics/Paint$Cap;

    .line 102
    const-string v11, "strokeLineJoin"

    .line 103
    invoke-interface {v3, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_21e

    const/4 v11, -0x1

    const/16 v14, 0x9

    .line 104
    invoke-virtual {v13, v14, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    move/from16 v11, v18

    goto :goto_21f

    :cond_21e
    const/4 v11, -0x1

    .line 105
    :goto_21f
    iget-object v14, v9, Lh1/j;->m:Landroid/graphics/Paint$Join;

    if-eqz v11, :cond_234

    move-object/from16 v26, v14

    const/4 v14, 0x1

    if-eq v11, v14, :cond_231

    const/4 v14, 0x2

    if-eq v11, v14, :cond_22e

    move-object/from16 v11, v26

    goto :goto_236

    .line 106
    :cond_22e
    sget-object v11, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    goto :goto_236

    .line 107
    :cond_231
    sget-object v11, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    goto :goto_236

    :cond_234
    move-object/from16 v11, v21

    .line 108
    :goto_236
    iput-object v11, v9, Lh1/j;->m:Landroid/graphics/Paint$Join;

    .line 109
    iget v11, v9, Lh1/j;->n:F

    .line 110
    const-string v14, "strokeMiterLimit"

    invoke-interface {v3, v12, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_248

    const/16 v14, 0xa

    .line 111
    invoke-virtual {v13, v14, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    .line 112
    :cond_248
    iput v11, v9, Lh1/j;->n:F

    .line 113
    const-string v11, "strokeColor"

    const/4 v14, 0x3

    invoke-static {v13, v3, v5, v11, v14}, Lb0/b;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)Lb0/d;

    move-result-object v11

    iput-object v11, v9, Lh1/j;->d:Lb0/d;

    .line 114
    iget v11, v9, Lh1/j;->g:F

    .line 115
    const-string v14, "strokeAlpha"

    invoke-interface {v3, v12, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_263

    const/16 v14, 0xb

    .line 116
    invoke-virtual {v13, v14, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    .line 117
    :cond_263
    iput v11, v9, Lh1/j;->g:F

    .line 118
    iget v11, v9, Lh1/j;->e:F

    .line 119
    const-string v14, "strokeWidth"

    invoke-interface {v3, v12, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_274

    const/4 v14, 0x4

    .line 120
    invoke-virtual {v13, v14, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    .line 121
    :cond_274
    iput v11, v9, Lh1/j;->e:F

    .line 122
    iget v11, v9, Lh1/j;->j:F

    .line 123
    const-string v14, "trimPathEnd"

    invoke-interface {v3, v12, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_285

    const/4 v14, 0x6

    .line 124
    invoke-virtual {v13, v14, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    .line 125
    :cond_285
    iput v11, v9, Lh1/j;->j:F

    .line 126
    iget v11, v9, Lh1/j;->k:F

    .line 127
    const-string v14, "trimPathOffset"

    invoke-interface {v3, v12, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_296

    const/4 v14, 0x7

    .line 128
    invoke-virtual {v13, v14, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    .line 129
    :cond_296
    iput v11, v9, Lh1/j;->k:F

    .line 130
    iget v11, v9, Lh1/j;->i:F

    .line 131
    const-string v14, "trimPathStart"

    invoke-interface {v3, v12, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_2a7

    const/4 v14, 0x5

    .line 132
    invoke-virtual {v13, v14, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    .line 133
    :cond_2a7
    iput v11, v9, Lh1/j;->i:F

    .line 134
    iget v11, v9, Lh1/m;->c:I

    .line 135
    invoke-interface {v3, v12, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_2b7

    const/16 v14, 0xd

    .line 136
    invoke-virtual {v13, v14, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    .line 137
    :cond_2b7
    iput v11, v9, Lh1/m;->c:I

    .line 138
    :cond_2b9
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 139
    iget-object v10, v10, Lh1/k;->b:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-virtual {v9}, Lh1/m;->getPathName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2ce

    .line 141
    invoke-virtual {v9}, Lh1/m;->getPathName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10, v9}, Ls/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :cond_2ce
    iget v9, v0, Lh1/o;->a:I

    iput v9, v0, Lh1/o;->a:I

    const/4 v13, 0x0

    const/4 v15, 0x2

    const/16 v18, 0x9

    const/16 v19, -0x1

    const/16 v21, 0x0

    const/16 v23, 0x8

    goto/16 :goto_3e8

    :cond_2de
    const/16 v18, 0x9

    const/16 v19, -0x1

    const/16 v23, 0x8

    .line 143
    const-string v13, "clip-path"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_340

    .line 144
    new-instance v9, Lh1/i;

    .line 145
    invoke-direct {v9}, Lh1/m;-><init>()V

    .line 146
    invoke-interface {v3, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_326

    .line 147
    sget-object v11, Lh1/a;->d:[I

    invoke-static {v2, v5, v4, v11}, Lb0/b;->f(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    const/4 v13, 0x0

    .line 148
    invoke-virtual {v11, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_306

    .line 149
    iput-object v14, v9, Lh1/m;->b:Ljava/lang/String;

    :cond_306
    const/4 v14, 0x1

    .line 150
    invoke-virtual {v11, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_313

    .line 151
    invoke-static {v13}, Lt4/b;->d(Ljava/lang/String;)[Lc0/e;

    move-result-object v13

    iput-object v13, v9, Lh1/m;->a:[Lc0/e;

    .line 152
    :cond_313
    invoke-static {v3, v15}, Lb0/b;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_31b

    const/4 v15, 0x0

    goto :goto_321

    :cond_31b
    const/4 v13, 0x0

    const/4 v14, 0x2

    .line 153
    invoke-virtual {v11, v14, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    .line 154
    :goto_321
    iput v15, v9, Lh1/m;->c:I

    .line 155
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 156
    :cond_326
    iget-object v10, v10, Lh1/k;->b:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-virtual {v9}, Lh1/m;->getPathName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_338

    .line 158
    invoke-virtual {v9}, Lh1/m;->getPathName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10, v9}, Ls/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_338
    iget v9, v0, Lh1/o;->a:I

    iput v9, v0, Lh1/o;->a:I

    :cond_33c
    const/4 v13, 0x0

    const/4 v15, 0x2

    goto/16 :goto_3e8

    .line 160
    :cond_340
    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_33c

    .line 161
    new-instance v9, Lh1/k;

    invoke-direct {v9}, Lh1/k;-><init>()V

    .line 162
    sget-object v11, Lh1/a;->b:[I

    invoke-static {v2, v5, v4, v11}, Lb0/b;->f(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 163
    iget v13, v9, Lh1/k;->c:F

    .line 164
    const-string v14, "rotation"

    invoke-static {v3, v14}, Lb0/b;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_35d

    const/4 v15, 0x5

    goto :goto_362

    :cond_35d
    const/4 v15, 0x5

    .line 165
    invoke-virtual {v11, v15, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v13

    .line 166
    :goto_362
    iput v13, v9, Lh1/k;->c:F

    .line 167
    iget v13, v9, Lh1/k;->d:F

    const/4 v14, 0x1

    invoke-virtual {v11, v14, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v13

    iput v13, v9, Lh1/k;->d:F

    .line 168
    iget v13, v9, Lh1/k;->e:F

    const/4 v15, 0x2

    invoke-virtual {v11, v15, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v13

    iput v13, v9, Lh1/k;->e:F

    .line 169
    iget v13, v9, Lh1/k;->f:F

    .line 170
    const-string v14, "scaleX"

    invoke-interface {v3, v12, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_385

    const/4 v14, 0x3

    .line 171
    invoke-virtual {v11, v14, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v13

    .line 172
    :cond_385
    iput v13, v9, Lh1/k;->f:F

    .line 173
    iget v13, v9, Lh1/k;->g:F

    .line 174
    const-string v14, "scaleY"

    invoke-interface {v3, v12, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_397

    const/4 v14, 0x4

    .line 175
    invoke-virtual {v11, v14, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v13

    goto :goto_398

    :cond_397
    const/4 v14, 0x4

    .line 176
    :goto_398
    iput v13, v9, Lh1/k;->g:F

    .line 177
    iget v13, v9, Lh1/k;->h:F

    .line 178
    const-string v14, "translateX"

    invoke-interface {v3, v12, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_3aa

    const/4 v14, 0x6

    .line 179
    invoke-virtual {v11, v14, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v13

    goto :goto_3ab

    :cond_3aa
    const/4 v14, 0x6

    .line 180
    :goto_3ab
    iput v13, v9, Lh1/k;->h:F

    .line 181
    iget v13, v9, Lh1/k;->i:F

    .line 182
    const-string v14, "translateY"

    invoke-interface {v3, v12, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_3bd

    const/4 v14, 0x7

    .line 183
    invoke-virtual {v11, v14, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v13

    goto :goto_3be

    :cond_3bd
    const/4 v14, 0x7

    .line 184
    :goto_3be
    iput v13, v9, Lh1/k;->i:F

    const/4 v13, 0x0

    .line 185
    invoke-virtual {v11, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_3c9

    .line 186
    iput-object v14, v9, Lh1/k;->k:Ljava/lang/String;

    .line 187
    :cond_3c9
    invoke-virtual {v9}, Lh1/k;->c()V

    .line 188
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 189
    iget-object v10, v10, Lh1/k;->b:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    invoke-virtual {v8, v9}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 191
    invoke-virtual {v9}, Lh1/k;->getGroupName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3e4

    .line 192
    invoke-virtual {v9}, Lh1/k;->getGroupName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10, v9}, Ls/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    :cond_3e4
    iget v9, v0, Lh1/o;->a:I

    iput v9, v0, Lh1/o;->a:I

    :goto_3e8
    const/4 v10, 0x3

    const/16 v17, 0x6

    const/16 v20, 0x7

    const/16 v22, 0x4

    const/16 v24, 0x1

    goto :goto_413

    :cond_3f2
    move v15, v10

    move/from16 v25, v11

    const/4 v10, 0x3

    const/16 v17, 0x6

    const/16 v18, 0x9

    const/16 v19, -0x1

    const/16 v20, 0x7

    const/16 v22, 0x4

    const/16 v23, 0x8

    const/16 v24, 0x1

    if-ne v9, v10, :cond_413

    .line 194
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 195
    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_413

    .line 196
    invoke-virtual {v8}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 197
    :cond_413
    :goto_413
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    move/from16 v14, v23

    move/from16 v10, v24

    move/from16 v11, v25

    const/4 v15, 0x0

    goto/16 :goto_157

    :cond_420
    if-nez v21, :cond_42d

    .line 198
    iget-object v0, v6, Lh1/o;->c:Landroid/content/res/ColorStateList;

    iget-object v2, v6, Lh1/o;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Lh1/q;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, v1, Lh1/q;->c:Landroid/graphics/PorterDuffColorFilter;

    return-void

    .line 199
    :cond_42d
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "no path defined"

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_435
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<vector> tag requires height > 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_450
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<vector> tag requires width > 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_46b
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<vector> tag requires viewportHeight > 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_486
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<vector> tag requires viewportWidth > 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_4a2
    .packed-switch 0xe
        :pswitch_4b
        :pswitch_48
        :pswitch_45
    .end packed-switch
.end method

.method public final invalidateSelf()V
    .registers 2

    .line 1
    iget-object v0, p0, Lh1/h;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_8
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final isAutoMirrored()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lh1/h;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    iget-object v0, p0, Lh1/q;->b:Lh1/o;

    .line 11
    .line 12
    iget-boolean v0, v0, Lh1/o;->e:Z

    .line 13
    .line 14
    return v0
.end method

.method public final isStateful()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lh1/h;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_3c

    .line 15
    .line 16
    iget-object v0, p0, Lh1/q;->b:Lh1/o;

    .line 17
    .line 18
    if-eqz v0, :cond_3a

    .line 19
    .line 20
    iget-object v0, v0, Lh1/o;->b:Lh1/n;

    .line 21
    .line 22
    iget-object v1, v0, Lh1/n;->n:Ljava/lang/Boolean;

    .line 23
    .line 24
    if-nez v1, :cond_25

    .line 25
    .line 26
    iget-object v1, v0, Lh1/n;->g:Lh1/k;

    .line 27
    .line 28
    invoke-virtual {v1}, Lh1/k;->a()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iput-object v1, v0, Lh1/n;->n:Ljava/lang/Boolean;

    .line 37
    .line 38
    :cond_25
    iget-object v0, v0, Lh1/n;->n:Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_3c

    .line 45
    .line 46
    iget-object v0, p0, Lh1/q;->b:Lh1/o;

    .line 47
    .line 48
    iget-object v0, v0, Lh1/o;->c:Landroid/content/res/ColorStateList;

    .line 49
    .line 50
    if-eqz v0, :cond_3a

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_3a

    .line 57
    .line 58
    goto :goto_3c

    .line 59
    :cond_3a
    const/4 v0, 0x0

    .line 60
    return v0

    .line 61
    :cond_3c
    :goto_3c
    const/4 v0, 0x1

    .line 62
    return v0
.end method

.method public final mutate()Landroid/graphics/drawable/Drawable;
    .registers 6

    .line 1
    iget-object v0, p0, Lh1/h;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_8
    iget-boolean v0, p0, Lh1/q;->e:Z

    .line 10
    .line 11
    if-nez v0, :cond_64

    .line 12
    .line 13
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-ne v0, p0, :cond_64

    .line 18
    .line 19
    new-instance v0, Lh1/o;

    .line 20
    .line 21
    iget-object v1, p0, Lh1/q;->b:Lh1/o;

    .line 22
    .line 23
    invoke-direct {v0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 24
    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    iput-object v2, v0, Lh1/o;->c:Landroid/content/res/ColorStateList;

    .line 28
    .line 29
    sget-object v2, Lh1/q;->j:Landroid/graphics/PorterDuff$Mode;

    .line 30
    .line 31
    iput-object v2, v0, Lh1/o;->d:Landroid/graphics/PorterDuff$Mode;

    .line 32
    .line 33
    if-eqz v1, :cond_5f

    .line 34
    .line 35
    iget v2, v1, Lh1/o;->a:I

    .line 36
    .line 37
    iput v2, v0, Lh1/o;->a:I

    .line 38
    .line 39
    new-instance v2, Lh1/n;

    .line 40
    .line 41
    iget-object v3, v1, Lh1/o;->b:Lh1/n;

    .line 42
    .line 43
    invoke-direct {v2, v3}, Lh1/n;-><init>(Lh1/n;)V

    .line 44
    .line 45
    .line 46
    iput-object v2, v0, Lh1/o;->b:Lh1/n;

    .line 47
    .line 48
    iget-object v3, v1, Lh1/o;->b:Lh1/n;

    .line 49
    .line 50
    iget-object v3, v3, Lh1/n;->e:Landroid/graphics/Paint;

    .line 51
    .line 52
    if-eqz v3, :cond_40

    .line 53
    .line 54
    new-instance v3, Landroid/graphics/Paint;

    .line 55
    .line 56
    iget-object v4, v1, Lh1/o;->b:Lh1/n;

    .line 57
    .line 58
    iget-object v4, v4, Lh1/n;->e:Landroid/graphics/Paint;

    .line 59
    .line 60
    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 61
    .line 62
    .line 63
    iput-object v3, v2, Lh1/n;->e:Landroid/graphics/Paint;

    .line 64
    .line 65
    :cond_40
    iget-object v2, v1, Lh1/o;->b:Lh1/n;

    .line 66
    .line 67
    iget-object v2, v2, Lh1/n;->d:Landroid/graphics/Paint;

    .line 68
    .line 69
    if-eqz v2, :cond_53

    .line 70
    .line 71
    iget-object v2, v0, Lh1/o;->b:Lh1/n;

    .line 72
    .line 73
    new-instance v3, Landroid/graphics/Paint;

    .line 74
    .line 75
    iget-object v4, v1, Lh1/o;->b:Lh1/n;

    .line 76
    .line 77
    iget-object v4, v4, Lh1/n;->d:Landroid/graphics/Paint;

    .line 78
    .line 79
    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 80
    .line 81
    .line 82
    iput-object v3, v2, Lh1/n;->d:Landroid/graphics/Paint;

    .line 83
    .line 84
    :cond_53
    iget-object v2, v1, Lh1/o;->c:Landroid/content/res/ColorStateList;

    .line 85
    .line 86
    iput-object v2, v0, Lh1/o;->c:Landroid/content/res/ColorStateList;

    .line 87
    .line 88
    iget-object v2, v1, Lh1/o;->d:Landroid/graphics/PorterDuff$Mode;

    .line 89
    .line 90
    iput-object v2, v0, Lh1/o;->d:Landroid/graphics/PorterDuff$Mode;

    .line 91
    .line 92
    iget-boolean v1, v1, Lh1/o;->e:Z

    .line 93
    .line 94
    iput-boolean v1, v0, Lh1/o;->e:Z

    .line 95
    .line 96
    :cond_5f
    iput-object v0, p0, Lh1/q;->b:Lh1/o;

    .line 97
    .line 98
    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lh1/q;->e:Z

    .line 100
    .line 101
    :cond_64
    return-object p0
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lh1/h;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 6
    .line 7
    .line 8
    :cond_7
    return-void
.end method

.method public final onStateChange([I)Z
    .registers 7

    .line 1
    iget-object v0, p0, Lh1/h;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_9
    iget-object v0, p0, Lh1/q;->b:Lh1/o;

    .line 11
    .line 12
    iget-object v1, v0, Lh1/o;->c:Landroid/content/res/ColorStateList;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    if-eqz v1, :cond_1f

    .line 16
    .line 17
    iget-object v3, v0, Lh1/o;->d:Landroid/graphics/PorterDuff$Mode;

    .line 18
    .line 19
    if-eqz v3, :cond_1f

    .line 20
    .line 21
    invoke-virtual {p0, v1, v3}, Lh1/q;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iput-object v1, p0, Lh1/q;->c:Landroid/graphics/PorterDuffColorFilter;

    .line 26
    .line 27
    invoke-virtual {p0}, Lh1/q;->invalidateSelf()V

    .line 28
    .line 29
    .line 30
    move v1, v2

    .line 31
    goto :goto_20

    .line 32
    :cond_1f
    const/4 v1, 0x0

    .line 33
    :goto_20
    iget-object v3, v0, Lh1/o;->b:Lh1/n;

    .line 34
    .line 35
    iget-object v4, v3, Lh1/n;->n:Ljava/lang/Boolean;

    .line 36
    .line 37
    if-nez v4, :cond_32

    .line 38
    .line 39
    iget-object v4, v3, Lh1/n;->g:Lh1/k;

    .line 40
    .line 41
    invoke-virtual {v4}, Lh1/k;->a()Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    iput-object v4, v3, Lh1/n;->n:Ljava/lang/Boolean;

    .line 50
    .line 51
    :cond_32
    iget-object v3, v3, Lh1/n;->n:Ljava/lang/Boolean;

    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_4d

    .line 58
    .line 59
    iget-object v3, v0, Lh1/o;->b:Lh1/n;

    .line 60
    .line 61
    iget-object v3, v3, Lh1/n;->g:Lh1/k;

    .line 62
    .line 63
    invoke-virtual {v3, p1}, Lh1/k;->b([I)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    iget-boolean v3, v0, Lh1/o;->k:Z

    .line 68
    .line 69
    or-int/2addr v3, p1

    .line 70
    iput-boolean v3, v0, Lh1/o;->k:Z

    .line 71
    .line 72
    if-eqz p1, :cond_4d

    .line 73
    .line 74
    invoke-virtual {p0}, Lh1/q;->invalidateSelf()V

    .line 75
    .line 76
    .line 77
    return v2

    .line 78
    :cond_4d
    return v1
.end method

.method public final scheduleSelf(Ljava/lang/Runnable;J)V
    .registers 5

    .line 1
    iget-object v0, p0, Lh1/h;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_8
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final setAlpha(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lh1/h;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_8
    iget-object v0, p0, Lh1/q;->b:Lh1/o;

    .line 10
    .line 11
    iget-object v0, v0, Lh1/o;->b:Lh1/n;

    .line 12
    .line 13
    invoke-virtual {v0}, Lh1/n;->getRootAlpha()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eq v0, p1, :cond_1c

    .line 18
    .line 19
    iget-object v0, p0, Lh1/q;->b:Lh1/o;

    .line 20
    .line 21
    iget-object v0, v0, Lh1/o;->b:Lh1/n;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lh1/n;->setRootAlpha(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lh1/q;->invalidateSelf()V

    .line 27
    .line 28
    .line 29
    :cond_1c
    return-void
.end method

.method public final setAutoMirrored(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lh1/h;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_8
    iget-object v0, p0, Lh1/q;->b:Lh1/o;

    .line 10
    .line 11
    iput-boolean p1, v0, Lh1/o;->e:Z

    .line 12
    .line 13
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lh1/h;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_8
    iput-object p1, p0, Lh1/q;->d:Landroid/graphics/ColorFilter;

    .line 10
    .line 11
    invoke-virtual {p0}, Lh1/q;->invalidateSelf()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final setTint(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lh1/h;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    invoke-static {v0, p1}, Landroid/support/v4/media/session/a;->k(Landroid/graphics/drawable/Drawable;I)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_8
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lh1/q;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lh1/h;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_8
    iget-object v0, p0, Lh1/q;->b:Lh1/o;

    .line 10
    .line 11
    iget-object v1, v0, Lh1/o;->c:Landroid/content/res/ColorStateList;

    .line 12
    .line 13
    if-eq v1, p1, :cond_1b

    .line 14
    .line 15
    iput-object p1, v0, Lh1/o;->c:Landroid/content/res/ColorStateList;

    .line 16
    .line 17
    iget-object v0, v0, Lh1/o;->d:Landroid/graphics/PorterDuff$Mode;

    .line 18
    .line 19
    invoke-virtual {p0, p1, v0}, Lh1/q;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lh1/q;->c:Landroid/graphics/PorterDuffColorFilter;

    .line 24
    .line 25
    invoke-virtual {p0}, Lh1/q;->invalidateSelf()V

    .line 26
    .line 27
    .line 28
    :cond_1b
    return-void
.end method

.method public final setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lh1/h;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_8
    iget-object v0, p0, Lh1/q;->b:Lh1/o;

    .line 10
    .line 11
    iget-object v1, v0, Lh1/o;->d:Landroid/graphics/PorterDuff$Mode;

    .line 12
    .line 13
    if-eq v1, p1, :cond_1b

    .line 14
    .line 15
    iput-object p1, v0, Lh1/o;->d:Landroid/graphics/PorterDuff$Mode;

    .line 16
    .line 17
    iget-object v0, v0, Lh1/o;->c:Landroid/content/res/ColorStateList;

    .line 18
    .line 19
    invoke-virtual {p0, v0, p1}, Lh1/q;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lh1/q;->c:Landroid/graphics/PorterDuffColorFilter;

    .line 24
    .line 25
    invoke-virtual {p0}, Lh1/q;->invalidateSelf()V

    .line 26
    .line 27
    .line 28
    :cond_1b
    return-void
.end method

.method public final setVisible(ZZ)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lh1/h;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public final unscheduleSelf(Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lh1/h;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_8
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
