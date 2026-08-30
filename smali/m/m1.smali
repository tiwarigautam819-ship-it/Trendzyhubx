###### Class m.m1 (m.m1)
.class public Lm/m1;
.super Landroid/widget/ListView;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Landroid/graphics/Rect;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Lm/k1;

.field public h:Z

.field public final i:Z

.field public j:Z

.field public k:Lm0/d;

.field public l:Landroidx/fragment/app/p;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const v1, 0x7f04008e

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Landroid/graphics/Rect;

    .line 9
    .line 10
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lm/m1;->a:Landroid/graphics/Rect;

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lm/m1;->b:I

    .line 17
    .line 18
    iput p1, p0, Lm/m1;->c:I

    .line 19
    .line 20
    iput p1, p0, Lm/m1;->d:I

    .line 21
    .line 22
    iput p1, p0, Lm/m1;->e:I

    .line 23
    .line 24
    iput-boolean p2, p0, Lm/m1;->i:Z

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    .line 27
    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final a(II)I
    .registers 14

    .line 1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getListPaddingTop()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getListPaddingBottom()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    if-nez v4, :cond_18

    .line 22
    .line 23
    add-int/2addr v0, v1

    .line 24
    return v0

    .line 25
    :cond_18
    add-int/2addr v0, v1

    .line 26
    const/4 v1, 0x0

    .line 27
    if-lez v2, :cond_1f

    .line 28
    .line 29
    if-eqz v3, :cond_1f

    .line 30
    .line 31
    goto :goto_20

    .line 32
    :cond_1f
    move v2, v1

    .line 33
    :goto_20
    invoke-interface {v4}, Landroid/widget/Adapter;->getCount()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    const/4 v5, 0x0

    .line 38
    move v6, v1

    .line 39
    move v7, v6

    .line 40
    move-object v8, v5

    .line 41
    :goto_28
    if-ge v6, v3, :cond_66

    .line 42
    .line 43
    invoke-interface {v4, v6}, Landroid/widget/Adapter;->getItemViewType(I)I

    .line 44
    .line 45
    .line 46
    move-result v9

    .line 47
    if-eq v9, v7, :cond_32

    .line 48
    .line 49
    move-object v8, v5

    .line 50
    move v7, v9

    .line 51
    :cond_32
    invoke-interface {v4, v6, v8, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    if-nez v9, :cond_43

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    .line 67
    .line 68
    :cond_43
    iget v9, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 69
    .line 70
    if-lez v9, :cond_4e

    .line 71
    .line 72
    const/high16 v10, 0x40000000    # 2.0f

    .line 73
    .line 74
    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 75
    .line 76
    .line 77
    move-result v9

    .line 78
    goto :goto_52

    .line 79
    :cond_4e
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 80
    .line 81
    .line 82
    move-result v9

    .line 83
    :goto_52
    invoke-virtual {v8, p1, v9}, Landroid/view/View;->measure(II)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v8}, Landroid/view/View;->forceLayout()V

    .line 87
    .line 88
    .line 89
    if-lez v6, :cond_5b

    .line 90
    .line 91
    add-int/2addr v0, v2

    .line 92
    :cond_5b
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    .line 93
    .line 94
    .line 95
    move-result v9

    .line 96
    add-int/2addr v0, v9

    .line 97
    if-lt v0, p2, :cond_63

    .line 98
    .line 99
    return p2

    .line 100
    :cond_63
    add-int/lit8 v6, v6, 0x1

    .line 101
    .line 102
    goto :goto_28

    .line 103
    :cond_66
    return v0
.end method

.method public final b(Landroid/view/MotionEvent;I)Z
    .registers 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    const/4 v4, 0x1

    .line 10
    const/4 v5, 0x0

    .line 11
    if-eq v3, v4, :cond_1a

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    if-eq v3, v0, :cond_18

    .line 15
    .line 16
    const/4 v0, 0x3

    .line 17
    if-eq v3, v0, :cond_15

    .line 18
    .line 19
    move v0, v4

    .line 20
    goto/16 :goto_148

    .line 21
    .line 22
    :cond_15
    :goto_15
    move v0, v5

    .line 23
    goto/16 :goto_148

    .line 24
    .line 25
    :cond_18
    move v0, v4

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    move v0, v5

    .line 28
    :goto_1b
    invoke-virtual/range {p1 .. p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    if-gez v6, :cond_22

    .line 33
    .line 34
    goto :goto_15

    .line 35
    :cond_22
    invoke-virtual {v2, v6}, Landroid/view/MotionEvent;->getX(I)F

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    float-to-int v7, v7

    .line 40
    invoke-virtual {v2, v6}, Landroid/view/MotionEvent;->getY(I)F

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    float-to-int v6, v6

    .line 45
    invoke-virtual {v1, v7, v6}, Landroid/widget/AbsListView;->pointToPosition(II)I

    .line 46
    .line 47
    .line 48
    move-result v8

    .line 49
    const/4 v9, -0x1

    .line 50
    if-ne v8, v9, :cond_36

    .line 51
    .line 52
    move v5, v4

    .line 53
    goto/16 :goto_148

    .line 54
    .line 55
    :cond_36
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    sub-int v0, v8, v0

    .line 60
    .line 61
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v10

    .line 65
    int-to-float v7, v7

    .line 66
    int-to-float v6, v6

    .line 67
    iput-boolean v4, v1, Lm/m1;->j:Z

    .line 68
    .line 69
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 70
    .line 71
    invoke-static {v1, v7, v6}, Lm/h1;->a(Landroid/view/View;FF)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Landroid/view/View;->isPressed()Z

    .line 75
    .line 76
    .line 77
    move-result v11

    .line 78
    if-nez v11, :cond_52

    .line 79
    .line 80
    invoke-virtual {v1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 81
    .line 82
    .line 83
    :cond_52
    invoke-virtual {v1}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 84
    .line 85
    .line 86
    iget v11, v1, Lm/m1;->f:I

    .line 87
    .line 88
    if-eq v11, v9, :cond_6f

    .line 89
    .line 90
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 91
    .line 92
    .line 93
    move-result v12

    .line 94
    sub-int/2addr v11, v12

    .line 95
    invoke-virtual {v1, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v11

    .line 99
    if-eqz v11, :cond_6f

    .line 100
    .line 101
    if-eq v11, v10, :cond_6f

    .line 102
    .line 103
    invoke-virtual {v11}, Landroid/view/View;->isPressed()Z

    .line 104
    .line 105
    .line 106
    move-result v12

    .line 107
    if-eqz v12, :cond_6f

    .line 108
    .line 109
    invoke-virtual {v11, v5}, Landroid/view/View;->setPressed(Z)V

    .line 110
    .line 111
    .line 112
    :cond_6f
    iput v8, v1, Lm/m1;->f:I

    .line 113
    .line 114
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    .line 115
    .line 116
    .line 117
    move-result v11

    .line 118
    int-to-float v11, v11

    .line 119
    sub-float v11, v7, v11

    .line 120
    .line 121
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    .line 122
    .line 123
    .line 124
    move-result v12

    .line 125
    int-to-float v12, v12

    .line 126
    sub-float v12, v6, v12

    .line 127
    .line 128
    invoke-static {v10, v11, v12}, Lm/h1;->a(Landroid/view/View;FF)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v10}, Landroid/view/View;->isPressed()Z

    .line 132
    .line 133
    .line 134
    move-result v11

    .line 135
    if-nez v11, :cond_8b

    .line 136
    .line 137
    invoke-virtual {v10, v4}, Landroid/view/View;->setPressed(Z)V

    .line 138
    .line 139
    .line 140
    :cond_8b
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getSelector()Landroid/graphics/drawable/Drawable;

    .line 141
    .line 142
    .line 143
    move-result-object v11

    .line 144
    if-eqz v11, :cond_95

    .line 145
    .line 146
    if-eq v8, v9, :cond_95

    .line 147
    .line 148
    move v12, v4

    .line 149
    goto :goto_96

    .line 150
    :cond_95
    move v12, v5

    .line 151
    :goto_96
    if-eqz v12, :cond_9b

    .line 152
    .line 153
    invoke-virtual {v11, v5, v5}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 154
    .line 155
    .line 156
    :cond_9b
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    .line 157
    .line 158
    .line 159
    move-result v13

    .line 160
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    .line 161
    .line 162
    .line 163
    move-result v14

    .line 164
    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    .line 165
    .line 166
    .line 167
    move-result v15

    .line 168
    move/from16 v16, v4

    .line 169
    .line 170
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    iget-object v5, v1, Lm/m1;->a:Landroid/graphics/Rect;

    .line 175
    .line 176
    invoke-virtual {v5, v13, v14, v15, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 177
    .line 178
    .line 179
    iget v4, v5, Landroid/graphics/Rect;->left:I

    .line 180
    .line 181
    iget v13, v1, Lm/m1;->b:I

    .line 182
    .line 183
    sub-int/2addr v4, v13

    .line 184
    iput v4, v5, Landroid/graphics/Rect;->left:I

    .line 185
    .line 186
    iget v4, v5, Landroid/graphics/Rect;->top:I

    .line 187
    .line 188
    iget v13, v1, Lm/m1;->c:I

    .line 189
    .line 190
    sub-int/2addr v4, v13

    .line 191
    iput v4, v5, Landroid/graphics/Rect;->top:I

    .line 192
    .line 193
    iget v4, v5, Landroid/graphics/Rect;->right:I

    .line 194
    .line 195
    iget v13, v1, Lm/m1;->d:I

    .line 196
    .line 197
    add-int/2addr v4, v13

    .line 198
    iput v4, v5, Landroid/graphics/Rect;->right:I

    .line 199
    .line 200
    iget v4, v5, Landroid/graphics/Rect;->bottom:I

    .line 201
    .line 202
    iget v13, v1, Lm/m1;->e:I

    .line 203
    .line 204
    add-int/2addr v4, v13

    .line 205
    iput v4, v5, Landroid/graphics/Rect;->bottom:I

    .line 206
    .line 207
    const/16 v4, 0x21

    .line 208
    .line 209
    if-lt v0, v4, :cond_d7

    .line 210
    .line 211
    invoke-static {v1}, Lm/j1;->a(Landroid/widget/AbsListView;)Z

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    goto :goto_e5

    .line 216
    :cond_d7
    sget-object v0, Lm/l1;->a:Ljava/lang/reflect/Field;

    .line 217
    .line 218
    if-eqz v0, :cond_e4

    .line 219
    .line 220
    :try_start_db
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v0
    :try_end_df
    .catch Ljava/lang/IllegalAccessException; {:try_start_db .. :try_end_df} :catch_e0

    .line 224
    goto :goto_e5

    .line 225
    :catch_e0
    move-exception v0

    .line 226
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 227
    .line 228
    .line 229
    :cond_e4
    const/4 v0, 0x0

    .line 230
    :goto_e5
    invoke-virtual {v10}, Landroid/view/View;->isEnabled()Z

    .line 231
    .line 232
    .line 233
    move-result v13

    .line 234
    if-eq v13, v0, :cond_10a

    .line 235
    .line 236
    xor-int/lit8 v0, v0, 0x1

    .line 237
    .line 238
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 239
    .line 240
    if-lt v13, v4, :cond_f5

    .line 241
    .line 242
    invoke-static {v1, v0}, Lm/j1;->b(Landroid/widget/AbsListView;Z)V

    .line 243
    .line 244
    .line 245
    goto :goto_105

    .line 246
    :cond_f5
    sget-object v4, Lm/l1;->a:Ljava/lang/reflect/Field;

    .line 247
    .line 248
    if-eqz v4, :cond_105

    .line 249
    .line 250
    :try_start_f9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    invoke-virtual {v4, v1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_100
    .catch Ljava/lang/IllegalAccessException; {:try_start_f9 .. :try_end_100} :catch_101

    .line 255
    .line 256
    .line 257
    goto :goto_105

    .line 258
    :catch_101
    move-exception v0

    .line 259
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 260
    .line 261
    .line 262
    :cond_105
    :goto_105
    if-eq v8, v9, :cond_10a

    .line 263
    .line 264
    invoke-virtual {v1}, Landroid/view/View;->refreshDrawableState()V

    .line 265
    .line 266
    .line 267
    :cond_10a
    if-eqz v12, :cond_126

    .line 268
    .line 269
    invoke-virtual {v5}, Landroid/graphics/Rect;->exactCenterX()F

    .line 270
    .line 271
    .line 272
    move-result v0

    .line 273
    invoke-virtual {v5}, Landroid/graphics/Rect;->exactCenterY()F

    .line 274
    .line 275
    .line 276
    move-result v4

    .line 277
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 278
    .line 279
    .line 280
    move-result v5

    .line 281
    if-nez v5, :cond_11e

    .line 282
    .line 283
    move/from16 v5, v16

    .line 284
    .line 285
    :goto_11c
    const/4 v12, 0x0

    .line 286
    goto :goto_120

    .line 287
    :cond_11e
    const/4 v5, 0x0

    .line 288
    goto :goto_11c

    .line 289
    :goto_120
    invoke-virtual {v11, v5, v12}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 290
    .line 291
    .line 292
    invoke-virtual {v11, v0, v4}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 293
    .line 294
    .line 295
    :cond_126
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getSelector()Landroid/graphics/drawable/Drawable;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    if-eqz v0, :cond_131

    .line 300
    .line 301
    if-eq v8, v9, :cond_131

    .line 302
    .line 303
    invoke-virtual {v0, v7, v6}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 304
    .line 305
    .line 306
    :cond_131
    iget-object v0, v1, Lm/m1;->g:Lm/k1;

    .line 307
    .line 308
    if-eqz v0, :cond_138

    .line 309
    .line 310
    const/4 v12, 0x0

    .line 311
    iput-boolean v12, v0, Lm/k1;->b:Z

    .line 312
    .line 313
    :cond_138
    invoke-virtual {v1}, Landroid/view/View;->refreshDrawableState()V

    .line 314
    .line 315
    .line 316
    move/from16 v4, v16

    .line 317
    .line 318
    if-ne v3, v4, :cond_146

    .line 319
    .line 320
    invoke-virtual {v1, v8}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    .line 321
    .line 322
    .line 323
    move-result-wide v3

    .line 324
    invoke-virtual {v1, v10, v8, v3, v4}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    .line 325
    .line 326
    .line 327
    :cond_146
    const/4 v0, 0x1

    .line 328
    const/4 v5, 0x0

    .line 329
    :goto_148
    if-eqz v0, :cond_14c

    .line 330
    .line 331
    if-eqz v5, :cond_165

    .line 332
    .line 333
    :cond_14c
    const/4 v12, 0x0

    .line 334
    iput-boolean v12, v1, Lm/m1;->j:Z

    .line 335
    .line 336
    invoke-virtual {v1, v12}, Landroid/view/View;->setPressed(Z)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v1}, Lm/m1;->drawableStateChanged()V

    .line 340
    .line 341
    .line 342
    iget v3, v1, Lm/m1;->f:I

    .line 343
    .line 344
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 345
    .line 346
    .line 347
    move-result v4

    .line 348
    sub-int/2addr v3, v4

    .line 349
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 350
    .line 351
    .line 352
    move-result-object v3

    .line 353
    if-eqz v3, :cond_165

    .line 354
    .line 355
    invoke-virtual {v3, v12}, Landroid/view/View;->setPressed(Z)V

    .line 356
    .line 357
    .line 358
    :cond_165
    if-eqz v0, :cond_17d

    .line 359
    .line 360
    iget-object v3, v1, Lm/m1;->k:Lm0/d;

    .line 361
    .line 362
    if-nez v3, :cond_172

    .line 363
    .line 364
    new-instance v3, Lm0/d;

    .line 365
    .line 366
    invoke-direct {v3, v1}, Lm0/d;-><init>(Lm/m1;)V

    .line 367
    .line 368
    .line 369
    iput-object v3, v1, Lm/m1;->k:Lm0/d;

    .line 370
    .line 371
    :cond_172
    iget-object v3, v1, Lm/m1;->k:Lm0/d;

    .line 372
    .line 373
    iget-boolean v4, v3, Lm0/d;->x:Z

    .line 374
    .line 375
    const/4 v4, 0x1

    .line 376
    iput-boolean v4, v3, Lm0/d;->x:Z

    .line 377
    .line 378
    invoke-virtual {v3, v1, v2}, Lm0/d;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 379
    .line 380
    .line 381
    goto :goto_18b

    .line 382
    :cond_17d
    iget-object v2, v1, Lm/m1;->k:Lm0/d;

    .line 383
    .line 384
    if-eqz v2, :cond_18b

    .line 385
    .line 386
    iget-boolean v3, v2, Lm0/d;->x:Z

    .line 387
    .line 388
    if-eqz v3, :cond_188

    .line 389
    .line 390
    invoke-virtual {v2}, Lm0/d;->d()V

    .line 391
    .line 392
    .line 393
    :cond_188
    const/4 v12, 0x0

    .line 394
    iput-boolean v12, v2, Lm0/d;->x:Z

    .line 395
    .line 396
    :cond_18b
    :goto_18b
    return v0
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lm/m1;->a:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_14

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelector()Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_14

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 19
    .line 20
    .line 21
    :cond_14
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final drawableStateChanged()V
    .registers 3

    .line 1
    iget-object v0, p0, Lm/m1;->l:Landroidx/fragment/app/p;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    goto :goto_26

    .line 6
    :cond_5
    invoke-super {p0}, Landroid/widget/ListView;->drawableStateChanged()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lm/m1;->g:Lm/k1;

    .line 10
    .line 11
    if-eqz v0, :cond_f

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    iput-boolean v1, v0, Lm/k1;->b:Z

    .line 15
    .line 16
    :cond_f
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelector()Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_26

    .line 21
    .line 22
    iget-boolean v1, p0, Lm/m1;->j:Z

    .line 23
    .line 24
    if-eqz v1, :cond_26

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_26

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 37
    .line 38
    .line 39
    :cond_26
    :goto_26
    return-void
.end method

.method public final hasFocus()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lm/m1;->i:Z

    .line 2
    .line 3
    if-nez v0, :cond_d

    .line 4
    .line 5
    invoke-super {p0}, Landroid/widget/ListView;->hasFocus()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_b

    .line 10
    .line 11
    goto :goto_d

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    return v0

    .line 14
    :cond_d
    :goto_d
    const/4 v0, 0x1

    .line 15
    return v0
.end method

.method public final hasWindowFocus()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lm/m1;->i:Z

    .line 2
    .line 3
    if-nez v0, :cond_d

    .line 4
    .line 5
    invoke-super {p0}, Landroid/widget/ListView;->hasWindowFocus()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_b

    .line 10
    .line 11
    goto :goto_d

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    return v0

    .line 14
    :cond_d
    :goto_d
    const/4 v0, 0x1

    .line 15
    return v0
.end method

.method public final isFocused()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lm/m1;->i:Z

    .line 2
    .line 3
    if-nez v0, :cond_d

    .line 4
    .line 5
    invoke-super {p0}, Landroid/widget/ListView;->isFocused()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_b

    .line 10
    .line 11
    goto :goto_d

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    return v0

    .line 14
    :cond_d
    :goto_d
    const/4 v0, 0x1

    .line 15
    return v0
.end method

.method public final isInTouchMode()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lm/m1;->i:Z

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    iget-boolean v0, p0, Lm/m1;->h:Z

    .line 6
    .line 7
    if-nez v0, :cond_e

    .line 8
    .line 9
    :cond_8
    invoke-super {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_10

    .line 14
    .line 15
    :cond_e
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    :cond_10
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method public final onDetachedFromWindow()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lm/m1;->l:Landroidx/fragment/app/p;

    .line 3
    .line 4
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-ge v0, v1, :cond_b

    .line 6
    .line 7
    invoke-super {p0, p1}, Landroid/widget/ListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/16 v2, 0xa

    .line 17
    .line 18
    if-ne v1, v2, :cond_22

    .line 19
    .line 20
    iget-object v2, p0, Lm/m1;->l:Landroidx/fragment/app/p;

    .line 21
    .line 22
    if-nez v2, :cond_22

    .line 23
    .line 24
    new-instance v2, Landroidx/fragment/app/p;

    .line 25
    .line 26
    const/4 v3, 0x6

    .line 27
    invoke-direct {v2, v3, p0}, Landroidx/fragment/app/p;-><init>(ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iput-object v2, p0, Lm/m1;->l:Landroidx/fragment/app/p;

    .line 31
    .line 32
    invoke-virtual {p0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    .line 35
    :cond_22
    invoke-super {p0, p1}, Landroid/widget/ListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const/16 v3, 0x9

    .line 40
    .line 41
    const/4 v4, -0x1

    .line 42
    if-eq v1, v3, :cond_33

    .line 43
    .line 44
    const/4 v3, 0x7

    .line 45
    if-ne v1, v3, :cond_2f

    .line 46
    .line 47
    goto :goto_33

    .line 48
    :cond_2f
    invoke-virtual {p0, v4}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 49
    .line 50
    .line 51
    return v2

    .line 52
    :cond_33
    :goto_33
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    float-to-int v1, v1

    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    float-to-int p1, p1

    .line 62
    invoke-virtual {p0, v1, p1}, Landroid/widget/AbsListView;->pointToPosition(II)I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eq p1, v4, :cond_cf

    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eq p1, v1, :cond_cf

    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    sub-int v1, p1, v1

    .line 79
    .line 80
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-eqz v3, :cond_b8

    .line 89
    .line 90
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 91
    .line 92
    .line 93
    const/16 v3, 0x1e

    .line 94
    .line 95
    if-lt v0, v3, :cond_ac

    .line 96
    .line 97
    sget-boolean v0, Lm/i1;->d:Z

    .line 98
    .line 99
    if-eqz v0, :cond_ac

    .line 100
    .line 101
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    :try_start_68
    sget-object v3, Lm/i1;->a:Ljava/lang/reflect/Method;

    .line 106
    .line 107
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    const/4 v5, 0x5

    .line 112
    new-array v5, v5, [Ljava/lang/Object;

    .line 113
    .line 114
    const/4 v6, 0x0

    .line 115
    aput-object v4, v5, v6

    .line 116
    .line 117
    const/4 v4, 0x1

    .line 118
    aput-object v1, v5, v4

    .line 119
    .line 120
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 121
    .line 122
    const/4 v7, 0x2

    .line 123
    aput-object v1, v5, v7

    .line 124
    .line 125
    const/4 v1, 0x3

    .line 126
    aput-object v0, v5, v1

    .line 127
    .line 128
    const/4 v1, 0x4

    .line 129
    aput-object v0, v5, v1

    .line 130
    .line 131
    invoke-virtual {v3, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    sget-object v0, Lm/i1;->b:Ljava/lang/reflect/Method;

    .line 135
    .line 136
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    new-array v3, v4, [Ljava/lang/Object;

    .line 141
    .line 142
    aput-object v1, v3, v6

    .line 143
    .line 144
    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    sget-object v0, Lm/i1;->c:Ljava/lang/reflect/Method;

    .line 148
    .line 149
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    new-array v1, v4, [Ljava/lang/Object;

    .line 154
    .line 155
    aput-object p1, v1, v6

    .line 156
    .line 157
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9f
    .catch Ljava/lang/IllegalAccessException; {:try_start_68 .. :try_end_9f} :catch_a2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_68 .. :try_end_9f} :catch_a0

    .line 158
    .line 159
    .line 160
    goto :goto_b8

    .line 161
    :catch_a0
    move-exception p1

    .line 162
    goto :goto_a4

    .line 163
    :catch_a2
    move-exception p1

    .line 164
    goto :goto_a8

    .line 165
    :goto_a4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 166
    .line 167
    .line 168
    goto :goto_b8

    .line 169
    :goto_a8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 170
    .line 171
    .line 172
    goto :goto_b8

    .line 173
    :cond_ac
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    sub-int/2addr v0, v1

    .line 182
    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    .line 183
    .line 184
    .line 185
    :cond_b8
    :goto_b8
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelector()Landroid/graphics/drawable/Drawable;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    if-eqz p1, :cond_cf

    .line 190
    .line 191
    iget-boolean v0, p0, Lm/m1;->j:Z

    .line 192
    .line 193
    if-eqz v0, :cond_cf

    .line 194
    .line 195
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    if-eqz v0, :cond_cf

    .line 200
    .line 201
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 206
    .line 207
    .line 208
    :cond_cf
    return v2
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    goto :goto_17

    .line 8
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    float-to-int v0, v0

    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    float-to-int v1, v1

    .line 18
    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsListView;->pointToPosition(II)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput v0, p0, Lm/m1;->f:I

    .line 23
    .line 24
    :goto_17
    iget-object v0, p0, Lm/m1;->l:Landroidx/fragment/app/p;

    .line 25
    .line 26
    if-eqz v0, :cond_25

    .line 27
    .line 28
    iget-object v1, v0, Landroidx/fragment/app/p;->b:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v1, Lm/m1;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    iput-object v2, v1, Lm/m1;->l:Landroidx/fragment/app/p;

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    :cond_25
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    return p1
.end method

.method public setListSelectionHidden(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lm/m1;->h:Z

    .line 2
    .line 3
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_18

    .line 3
    .line 4
    new-instance v1, Lm/k1;

    .line 5
    .line 6
    invoke-direct {v1}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v2, v1, Lm/k1;->a:Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    if-eqz v2, :cond_f

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 14
    .line 15
    .line 16
    :cond_f
    iput-object p1, v1, Lm/k1;->a:Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, v1, Lm/k1;->b:Z

    .line 23
    .line 24
    move-object v0, v1

    .line 25
    :cond_18
    iput-object v0, p0, Lm/m1;->g:Lm/k1;

    .line 26
    .line 27
    invoke-super {p0, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Landroid/graphics/Rect;

    .line 31
    .line 32
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 33
    .line 34
    .line 35
    if-eqz p1, :cond_27

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 38
    .line 39
    .line 40
    :cond_27
    iget p1, v0, Landroid/graphics/Rect;->left:I

    .line 41
    .line 42
    iput p1, p0, Lm/m1;->b:I

    .line 43
    .line 44
    iget p1, v0, Landroid/graphics/Rect;->top:I

    .line 45
    .line 46
    iput p1, p0, Lm/m1;->c:I

    .line 47
    .line 48
    iget p1, v0, Landroid/graphics/Rect;->right:I

    .line 49
    .line 50
    iput p1, p0, Lm/m1;->d:I

    .line 51
    .line 52
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 53
    .line 54
    iput p1, p0, Lm/m1;->e:I

    .line 55
    .line 56
    return-void
.end method
