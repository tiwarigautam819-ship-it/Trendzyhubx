###### Class androidx.appcompat.widget.i (androidx.appcompat.widget.i)
.class public final Landroidx/appcompat/widget/i;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lm/f1;


# instance fields
.field public final a:Landroidx/appcompat/widget/Toolbar;

.field public b:I

.field public final c:Landroid/view/View;

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:Landroid/graphics/drawable/Drawable;

.field public final f:Landroid/graphics/drawable/Drawable;

.field public final g:Z

.field public h:Ljava/lang/CharSequence;

.field public final i:Ljava/lang/CharSequence;

.field public final j:Ljava/lang/CharSequence;

.field public k:Landroid/view/Window$Callback;

.field public l:Z

.field public m:Landroidx/appcompat/widget/a;

.field public final n:I

.field public final o:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;Z)V
    .registers 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/appcompat/widget/i;->n:I

    .line 6
    .line 7
    iput-object p1, p0, Landroidx/appcompat/widget/i;->a:Landroidx/appcompat/widget/Toolbar;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, p0, Landroidx/appcompat/widget/i;->h:Ljava/lang/CharSequence;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iput-object v1, p0, Landroidx/appcompat/widget/i;->i:Ljava/lang/CharSequence;

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/appcompat/widget/i;->h:Ljava/lang/CharSequence;

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    if-eqz v1, :cond_1b

    .line 25
    .line 26
    move v1, v2

    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    move v1, v0

    .line 29
    :goto_1c
    iput-boolean v1, p0, Landroidx/appcompat/widget/i;->g:Z

    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iput-object v1, p0, Landroidx/appcompat/widget/i;->f:Landroid/graphics/drawable/Drawable;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    sget-object v3, Lf/a;->a:[I

    .line 42
    .line 43
    const v4, 0x7f040005

    .line 44
    .line 45
    .line 46
    const/4 v5, 0x0

    .line 47
    invoke-static {v1, v5, v3, v4}, Lc5/h;->q(Landroid/content/Context;Landroid/util/AttributeSet;[II)Lc5/h;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-object v3, v1, Lc5/h;->c:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v3, Landroid/content/res/TypedArray;

    .line 54
    .line 55
    const/16 v4, 0xf

    .line 56
    .line 57
    invoke-virtual {v1, v4}, Lc5/h;->k(I)Landroid/graphics/drawable/Drawable;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    iput-object v6, p0, Landroidx/appcompat/widget/i;->o:Landroid/graphics/drawable/Drawable;

    .line 62
    .line 63
    if-eqz p2, :cond_150

    .line 64
    .line 65
    const/16 p2, 0x1b

    .line 66
    .line 67
    invoke-virtual {v3, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-nez v4, :cond_64

    .line 76
    .line 77
    iput-boolean v2, p0, Landroidx/appcompat/widget/i;->g:Z

    .line 78
    .line 79
    iput-object p2, p0, Landroidx/appcompat/widget/i;->h:Ljava/lang/CharSequence;

    .line 80
    .line 81
    iget v2, p0, Landroidx/appcompat/widget/i;->b:I

    .line 82
    .line 83
    and-int/lit8 v2, v2, 0x8

    .line 84
    .line 85
    if-eqz v2, :cond_64

    .line 86
    .line 87
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    iget-boolean v2, p0, Landroidx/appcompat/widget/i;->g:Z

    .line 91
    .line 92
    if-eqz v2, :cond_64

    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-static {v2, p2}, Lj0/k0;->i(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 99
    .line 100
    .line 101
    :cond_64
    const/16 p2, 0x19

    .line 102
    .line 103
    invoke-virtual {v3, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-nez v2, :cond_7b

    .line 112
    .line 113
    iput-object p2, p0, Landroidx/appcompat/widget/i;->i:Ljava/lang/CharSequence;

    .line 114
    .line 115
    iget v2, p0, Landroidx/appcompat/widget/i;->b:I

    .line 116
    .line 117
    and-int/lit8 v2, v2, 0x8

    .line 118
    .line 119
    if-eqz v2, :cond_7b

    .line 120
    .line 121
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 122
    .line 123
    .line 124
    :cond_7b
    const/16 p2, 0x14

    .line 125
    .line 126
    invoke-virtual {v1, p2}, Lc5/h;->k(I)Landroid/graphics/drawable/Drawable;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    if-eqz p2, :cond_88

    .line 131
    .line 132
    iput-object p2, p0, Landroidx/appcompat/widget/i;->e:Landroid/graphics/drawable/Drawable;

    .line 133
    .line 134
    invoke-virtual {p0}, Landroidx/appcompat/widget/i;->c()V

    .line 135
    .line 136
    .line 137
    :cond_88
    const/16 p2, 0x11

    .line 138
    .line 139
    invoke-virtual {v1, p2}, Lc5/h;->k(I)Landroid/graphics/drawable/Drawable;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    if-eqz p2, :cond_95

    .line 144
    .line 145
    iput-object p2, p0, Landroidx/appcompat/widget/i;->d:Landroid/graphics/drawable/Drawable;

    .line 146
    .line 147
    invoke-virtual {p0}, Landroidx/appcompat/widget/i;->c()V

    .line 148
    .line 149
    .line 150
    :cond_95
    iget-object p2, p0, Landroidx/appcompat/widget/i;->f:Landroid/graphics/drawable/Drawable;

    .line 151
    .line 152
    if-nez p2, :cond_ac

    .line 153
    .line 154
    iget-object p2, p0, Landroidx/appcompat/widget/i;->o:Landroid/graphics/drawable/Drawable;

    .line 155
    .line 156
    if-eqz p2, :cond_ac

    .line 157
    .line 158
    iput-object p2, p0, Landroidx/appcompat/widget/i;->f:Landroid/graphics/drawable/Drawable;

    .line 159
    .line 160
    iget v2, p0, Landroidx/appcompat/widget/i;->b:I

    .line 161
    .line 162
    and-int/lit8 v2, v2, 0x4

    .line 163
    .line 164
    if-eqz v2, :cond_a9

    .line 165
    .line 166
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 167
    .line 168
    .line 169
    goto :goto_ac

    .line 170
    :cond_a9
    invoke-virtual {p1, v5}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 171
    .line 172
    .line 173
    :cond_ac
    :goto_ac
    const/16 p2, 0xa

    .line 174
    .line 175
    invoke-virtual {v3, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 176
    .line 177
    .line 178
    move-result p2

    .line 179
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/i;->a(I)V

    .line 180
    .line 181
    .line 182
    const/16 p2, 0x9

    .line 183
    .line 184
    invoke-virtual {v3, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 185
    .line 186
    .line 187
    move-result p2

    .line 188
    if-eqz p2, :cond_ea

    .line 189
    .line 190
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-virtual {v2, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 199
    .line 200
    .line 201
    move-result-object p2

    .line 202
    iget-object v2, p0, Landroidx/appcompat/widget/i;->c:Landroid/view/View;

    .line 203
    .line 204
    if-eqz v2, :cond_d6

    .line 205
    .line 206
    iget v4, p0, Landroidx/appcompat/widget/i;->b:I

    .line 207
    .line 208
    and-int/lit8 v4, v4, 0x10

    .line 209
    .line 210
    if-eqz v4, :cond_d6

    .line 211
    .line 212
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 213
    .line 214
    .line 215
    :cond_d6
    iput-object p2, p0, Landroidx/appcompat/widget/i;->c:Landroid/view/View;

    .line 216
    .line 217
    if-eqz p2, :cond_e3

    .line 218
    .line 219
    iget v2, p0, Landroidx/appcompat/widget/i;->b:I

    .line 220
    .line 221
    and-int/lit8 v2, v2, 0x10

    .line 222
    .line 223
    if-eqz v2, :cond_e3

    .line 224
    .line 225
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 226
    .line 227
    .line 228
    :cond_e3
    iget p2, p0, Landroidx/appcompat/widget/i;->b:I

    .line 229
    .line 230
    or-int/lit8 p2, p2, 0x10

    .line 231
    .line 232
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/i;->a(I)V

    .line 233
    .line 234
    .line 235
    :cond_ea
    const/16 p2, 0xd

    .line 236
    .line 237
    invoke-virtual {v3, p2, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 238
    .line 239
    .line 240
    move-result p2

    .line 241
    if-lez p2, :cond_fb

    .line 242
    .line 243
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    iput p2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 248
    .line 249
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    .line 251
    .line 252
    :cond_fb
    const/4 p2, 0x7

    .line 253
    const/4 v2, -0x1

    .line 254
    invoke-virtual {v3, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 255
    .line 256
    .line 257
    move-result p2

    .line 258
    const/4 v4, 0x3

    .line 259
    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 260
    .line 261
    .line 262
    move-result v2

    .line 263
    if-gez p2, :cond_10a

    .line 264
    .line 265
    if-ltz v2, :cond_11a

    .line 266
    .line 267
    :cond_10a
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    .line 268
    .line 269
    .line 270
    move-result p2

    .line 271
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 272
    .line 273
    .line 274
    move-result v2

    .line 275
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->d()V

    .line 276
    .line 277
    .line 278
    iget-object v4, p1, Landroidx/appcompat/widget/Toolbar;->B:Lm/h2;

    .line 279
    .line 280
    invoke-virtual {v4, p2, v2}, Lm/h2;->a(II)V

    .line 281
    .line 282
    .line 283
    :cond_11a
    const/16 p2, 0x1c

    .line 284
    .line 285
    invoke-virtual {v3, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 286
    .line 287
    .line 288
    move-result p2

    .line 289
    if-eqz p2, :cond_12f

    .line 290
    .line 291
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    iput p2, p1, Landroidx/appcompat/widget/Toolbar;->l:I

    .line 296
    .line 297
    iget-object v4, p1, Landroidx/appcompat/widget/Toolbar;->b:Lm/w0;

    .line 298
    .line 299
    if-eqz v4, :cond_12f

    .line 300
    .line 301
    invoke-virtual {v4, v2, p2}, Lm/w0;->setTextAppearance(Landroid/content/Context;I)V

    .line 302
    .line 303
    .line 304
    :cond_12f
    const/16 p2, 0x1a

    .line 305
    .line 306
    invoke-virtual {v3, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 307
    .line 308
    .line 309
    move-result p2

    .line 310
    if-eqz p2, :cond_144

    .line 311
    .line 312
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    iput p2, p1, Landroidx/appcompat/widget/Toolbar;->m:I

    .line 317
    .line 318
    iget-object v4, p1, Landroidx/appcompat/widget/Toolbar;->c:Lm/w0;

    .line 319
    .line 320
    if-eqz v4, :cond_144

    .line 321
    .line 322
    invoke-virtual {v4, v2, p2}, Lm/w0;->setTextAppearance(Landroid/content/Context;I)V

    .line 323
    .line 324
    .line 325
    :cond_144
    const/16 p2, 0x16

    .line 326
    .line 327
    invoke-virtual {v3, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 328
    .line 329
    .line 330
    move-result p2

    .line 331
    if-eqz p2, :cond_161

    .line 332
    .line 333
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/Toolbar;->setPopupTheme(I)V

    .line 334
    .line 335
    .line 336
    goto :goto_161

    .line 337
    :cond_150
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    .line 338
    .line 339
    .line 340
    move-result-object p2

    .line 341
    if-eqz p2, :cond_15d

    .line 342
    .line 343
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    .line 344
    .line 345
    .line 346
    move-result-object p2

    .line 347
    iput-object p2, p0, Landroidx/appcompat/widget/i;->o:Landroid/graphics/drawable/Drawable;

    .line 348
    .line 349
    goto :goto_15f

    .line 350
    :cond_15d
    const/16 v4, 0xb

    .line 351
    .line 352
    :goto_15f
    iput v4, p0, Landroidx/appcompat/widget/i;->b:I

    .line 353
    .line 354
    :cond_161
    :goto_161
    invoke-virtual {v1}, Lc5/h;->s()V

    .line 355
    .line 356
    .line 357
    iget p2, p0, Landroidx/appcompat/widget/i;->n:I

    .line 358
    .line 359
    const v0, 0x7f0f0005

    .line 360
    .line 361
    .line 362
    if-ne v0, p2, :cond_16c

    .line 363
    .line 364
    goto :goto_18a

    .line 365
    :cond_16c
    iput v0, p0, Landroidx/appcompat/widget/i;->n:I

    .line 366
    .line 367
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    .line 368
    .line 369
    .line 370
    move-result-object p2

    .line 371
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 372
    .line 373
    .line 374
    move-result p2

    .line 375
    if-eqz p2, :cond_18a

    .line 376
    .line 377
    iget p2, p0, Landroidx/appcompat/widget/i;->n:I

    .line 378
    .line 379
    if-nez p2, :cond_17d

    .line 380
    .line 381
    goto :goto_185

    .line 382
    :cond_17d
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v5

    .line 390
    :goto_185
    iput-object v5, p0, Landroidx/appcompat/widget/i;->j:Ljava/lang/CharSequence;

    .line 391
    .line 392
    invoke-virtual {p0}, Landroidx/appcompat/widget/i;->b()V

    .line 393
    .line 394
    .line 395
    :cond_18a
    :goto_18a
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    .line 396
    .line 397
    .line 398
    move-result-object p2

    .line 399
    iput-object p2, p0, Landroidx/appcompat/widget/i;->j:Ljava/lang/CharSequence;

    .line 400
    .line 401
    new-instance p2, Lm/d3;

    .line 402
    .line 403
    invoke-direct {p2, p0}, Lm/d3;-><init>(Landroidx/appcompat/widget/i;)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    .line 408
    .line 409
    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 6

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/i;->b:I

    .line 2
    .line 3
    xor-int/2addr v0, p1

    .line 4
    iput p1, p0, Landroidx/appcompat/widget/i;->b:I

    .line 5
    .line 6
    if-eqz v0, :cond_5c

    .line 7
    .line 8
    and-int/lit8 v1, v0, 0x4

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    iget-object v3, p0, Landroidx/appcompat/widget/i;->a:Landroidx/appcompat/widget/Toolbar;

    .line 12
    .line 13
    if-eqz v1, :cond_29

    .line 14
    .line 15
    and-int/lit8 v1, p1, 0x4

    .line 16
    .line 17
    if-eqz v1, :cond_15

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/appcompat/widget/i;->b()V

    .line 20
    .line 21
    .line 22
    :cond_15
    iget v1, p0, Landroidx/appcompat/widget/i;->b:I

    .line 23
    .line 24
    and-int/lit8 v1, v1, 0x4

    .line 25
    .line 26
    if-eqz v1, :cond_26

    .line 27
    .line 28
    iget-object v1, p0, Landroidx/appcompat/widget/i;->f:Landroid/graphics/drawable/Drawable;

    .line 29
    .line 30
    if-eqz v1, :cond_20

    .line 31
    .line 32
    goto :goto_22

    .line 33
    :cond_20
    iget-object v1, p0, Landroidx/appcompat/widget/i;->o:Landroid/graphics/drawable/Drawable;

    .line 34
    .line 35
    :goto_22
    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 36
    .line 37
    .line 38
    goto :goto_29

    .line 39
    :cond_26
    invoke-virtual {v3, v2}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 40
    .line 41
    .line 42
    :cond_29
    :goto_29
    and-int/lit8 v1, v0, 0x3

    .line 43
    .line 44
    if-eqz v1, :cond_30

    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/appcompat/widget/i;->c()V

    .line 47
    .line 48
    .line 49
    :cond_30
    and-int/lit8 v1, v0, 0x8

    .line 50
    .line 51
    if-eqz v1, :cond_49

    .line 52
    .line 53
    and-int/lit8 v1, p1, 0x8

    .line 54
    .line 55
    if-eqz v1, :cond_43

    .line 56
    .line 57
    iget-object v1, p0, Landroidx/appcompat/widget/i;->h:Ljava/lang/CharSequence;

    .line 58
    .line 59
    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Landroidx/appcompat/widget/i;->i:Ljava/lang/CharSequence;

    .line 63
    .line 64
    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    .line 67
    goto :goto_49

    .line 68
    :cond_43
    invoke-virtual {v3, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, v2}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    :cond_49
    :goto_49
    and-int/lit8 v0, v0, 0x10

    .line 75
    .line 76
    if-eqz v0, :cond_5c

    .line 77
    .line 78
    iget-object v0, p0, Landroidx/appcompat/widget/i;->c:Landroid/view/View;

    .line 79
    .line 80
    if-eqz v0, :cond_5c

    .line 81
    .line 82
    and-int/lit8 p1, p1, 0x10

    .line 83
    .line 84
    if-eqz p1, :cond_59

    .line 85
    .line 86
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_59
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 91
    .line 92
    .line 93
    :cond_5c
    return-void
.end method

.method public final b()V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/i;->b:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    if-eqz v0, :cond_1b

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/appcompat/widget/i;->j:Ljava/lang/CharSequence;

    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Landroidx/appcompat/widget/i;->a:Landroidx/appcompat/widget/Toolbar;

    .line 14
    .line 15
    if-eqz v0, :cond_16

    .line 16
    .line 17
    iget v0, p0, Landroidx/appcompat/widget/i;->n:I

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(I)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_16
    iget-object v0, p0, Landroidx/appcompat/widget/i;->j:Ljava/lang/CharSequence;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    :cond_1b
    return-void
.end method

.method public final c()V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/i;->b:I

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x2

    .line 4
    .line 5
    if-eqz v1, :cond_15

    .line 6
    .line 7
    and-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    if-eqz v0, :cond_12

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/appcompat/widget/i;->e:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    if-eqz v0, :cond_f

    .line 14
    .line 15
    goto :goto_16

    .line 16
    :cond_f
    iget-object v0, p0, Landroidx/appcompat/widget/i;->d:Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    goto :goto_16

    .line 19
    :cond_12
    iget-object v0, p0, Landroidx/appcompat/widget/i;->d:Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    goto :goto_16

    .line 22
    :cond_15
    const/4 v0, 0x0

    .line 23
    :goto_16
    iget-object v1, p0, Landroidx/appcompat/widget/i;->a:Landroidx/appcompat/widget/Toolbar;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
