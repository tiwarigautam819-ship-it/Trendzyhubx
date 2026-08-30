###### Class com.engagelab.privates.common.h0 (com.engagelab.privates.common.h0)
.class public Lcom/engagelab/privates/common/h0;
.super Lcom/engagelab/privates/common/i0;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public j:Landroid/widget/TextView;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/widget/TextView;

.field public m:Landroid/widget/TextView;

.field public n:Landroid/widget/ImageView;

.field public o:Landroid/widget/ImageView;

.field public p:Landroid/view/View;

.field public q:Landroid/view/View;

.field public r:Landroid/view/View;

.field public s:Landroid/view/View;

.field public t:Landroid/view/View;

.field public u:Landroid/view/View;

.field public v:Landroid/widget/FrameLayout;

.field public w:Lcom/engagelab/privates/inapp/view/RoundedImageView;

.field public x:Lcom/engagelab/privates/inapp/view/RoundedImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/engagelab/privates/common/d0;Lcom/engagelab/privates/push/api/InAppMessage;I)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/engagelab/privates/common/i0;-><init>(Landroid/content/Context;Lcom/engagelab/privates/common/d0;Lcom/engagelab/privates/push/api/InAppMessage;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()V
    .registers 14

    .line 1
    const-string v0, "buttons"

    .line 2
    .line 3
    const-string v1, "close_location"

    .line 4
    .line 5
    const-string v2, "content"

    .line 6
    .line 7
    const-string v3, "title"

    .line 8
    .line 9
    :try_start_8
    new-instance v4, Lorg/json/JSONObject;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/engagelab/privates/common/f0;->c:Lcom/engagelab/privates/push/api/InAppMessage;

    .line 12
    .line 13
    invoke-virtual {v5}, Lcom/engagelab/privates/push/api/InAppMessage;->getContent()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v9, Lorg/json/JSONObject;

    .line 21
    .line 22
    iget-object v5, p0, Lcom/engagelab/privates/common/f0;->c:Lcom/engagelab/privates/push/api/InAppMessage;

    .line 23
    .line 24
    invoke-virtual {v5}, Lcom/engagelab/privates/push/api/InAppMessage;->getClick()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    invoke-direct {v9, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget v5, p0, Lcom/engagelab/privates/common/f0;->g:I

    .line 32
    .line 33
    const/16 v6, 0x15

    .line 34
    .line 35
    if-ne v6, v5, :cond_45

    .line 36
    .line 37
    iget-object v7, p0, Lcom/engagelab/privates/common/h0;->x:Lcom/engagelab/privates/inapp/view/RoundedImageView;

    .line 38
    .line 39
    iget-object v5, p0, Lcom/engagelab/privates/common/f0;->c:Lcom/engagelab/privates/push/api/InAppMessage;

    .line 40
    .line 41
    invoke-virtual {v5}, Lcom/engagelab/privates/push/api/InAppMessage;->getLocalImageUrl()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    const/16 v5, 0x13b

    .line 46
    .line 47
    invoke-virtual {p0, v5}, Lcom/engagelab/privates/common/f0;->b(I)I

    .line 48
    .line 49
    .line 50
    move-result v11

    .line 51
    const/16 v5, 0x124

    .line 52
    .line 53
    invoke-virtual {p0, v5}, Lcom/engagelab/privates/common/f0;->a(I)I

    .line 54
    .line 55
    .line 56
    move-result v12
    :try_end_38
    .catchall {:try_start_8 .. :try_end_38} :catchall_41

    .line 57
    const/4 v10, 0x1

    .line 58
    move-object v6, p0

    .line 59
    :try_start_3a
    invoke-virtual/range {v6 .. v12}, Lcom/engagelab/privates/common/i0;->a(Landroid/widget/ImageView;Ljava/lang/String;Lorg/json/JSONObject;III)V

    .line 60
    .line 61
    .line 62
    goto :goto_62

    .line 63
    :catchall_3e
    move-exception v0

    .line 64
    goto/16 :goto_140

    .line 65
    .line 66
    :catchall_41
    move-exception v0

    .line 67
    move-object v6, p0

    .line 68
    goto/16 :goto_140

    .line 69
    .line 70
    :cond_45
    move-object v6, p0

    .line 71
    iget-object v5, v6, Lcom/engagelab/privates/common/f0;->c:Lcom/engagelab/privates/push/api/InAppMessage;

    .line 72
    .line 73
    invoke-virtual {v5}, Lcom/engagelab/privates/push/api/InAppMessage;->getLocalImageUrl()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-nez v5, :cond_62

    .line 82
    .line 83
    iget-object v7, v6, Lcom/engagelab/privates/common/h0;->w:Lcom/engagelab/privates/inapp/view/RoundedImageView;

    .line 84
    .line 85
    const/16 v5, 0x16

    .line 86
    .line 87
    invoke-virtual {p0, v5}, Lcom/engagelab/privates/common/f0;->b(I)I

    .line 88
    .line 89
    .line 90
    move-result v11

    .line 91
    invoke-virtual {p0, v5}, Lcom/engagelab/privates/common/f0;->b(I)I

    .line 92
    .line 93
    .line 94
    move-result v12

    .line 95
    const/4 v10, 0x1

    .line 96
    invoke-virtual/range {v6 .. v12}, Lcom/engagelab/privates/common/i0;->a(Landroid/widget/ImageView;Ljava/lang/String;Lorg/json/JSONObject;III)V

    .line 97
    .line 98
    .line 99
    :cond_62
    :goto_62
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    const/4 v7, -0x1

    .line 104
    const/4 v8, 0x0

    .line 105
    const/16 v9, 0x8

    .line 106
    .line 107
    if-eqz v5, :cond_83

    .line 108
    .line 109
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    if-nez v3, :cond_78

    .line 114
    .line 115
    iget-object v3, v6, Lcom/engagelab/privates/common/h0;->j:Landroid/widget/TextView;

    .line 116
    .line 117
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 118
    .line 119
    .line 120
    goto :goto_88

    .line 121
    :cond_78
    iget-object v5, v6, Lcom/engagelab/privates/common/h0;->j:Landroid/widget/TextView;

    .line 122
    .line 123
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 124
    .line 125
    .line 126
    iget-object v5, v6, Lcom/engagelab/privates/common/h0;->j:Landroid/widget/TextView;

    .line 127
    .line 128
    invoke-virtual {p0, v5, v3, v7}, Lcom/engagelab/privates/common/i0;->a(Landroid/widget/TextView;Lorg/json/JSONObject;I)V

    .line 129
    .line 130
    .line 131
    goto :goto_88

    .line 132
    :cond_83
    iget-object v3, v6, Lcom/engagelab/privates/common/h0;->j:Landroid/widget/TextView;

    .line 133
    .line 134
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 135
    .line 136
    .line 137
    :goto_88
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    if-eqz v3, :cond_a5

    .line 142
    .line 143
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    if-nez v2, :cond_9a

    .line 148
    .line 149
    iget-object v2, v6, Lcom/engagelab/privates/common/h0;->k:Landroid/widget/TextView;

    .line 150
    .line 151
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 152
    .line 153
    .line 154
    goto :goto_aa

    .line 155
    :cond_9a
    iget-object v3, v6, Lcom/engagelab/privates/common/h0;->k:Landroid/widget/TextView;

    .line 156
    .line 157
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 158
    .line 159
    .line 160
    iget-object v3, v6, Lcom/engagelab/privates/common/h0;->k:Landroid/widget/TextView;

    .line 161
    .line 162
    invoke-virtual {p0, v3, v2, v7}, Lcom/engagelab/privates/common/i0;->a(Landroid/widget/TextView;Lorg/json/JSONObject;I)V

    .line 163
    .line 164
    .line 165
    goto :goto_aa

    .line 166
    :cond_a5
    iget-object v2, v6, Lcom/engagelab/privates/common/h0;->k:Landroid/widget/TextView;

    .line 167
    .line 168
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 169
    .line 170
    .line 171
    :goto_aa
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    const/4 v3, 0x1

    .line 176
    if-eqz v2, :cond_da

    .line 177
    .line 178
    invoke-virtual {v4, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    if-ne v1, v3, :cond_ba

    .line 183
    .line 184
    iget-object v1, v6, Lcom/engagelab/privates/common/h0;->o:Landroid/widget/ImageView;

    .line 185
    .line 186
    goto :goto_c1

    .line 187
    :cond_ba
    const/4 v2, 0x2

    .line 188
    if-ne v1, v2, :cond_c0

    .line 189
    .line 190
    iget-object v1, v6, Lcom/engagelab/privates/common/h0;->n:Landroid/widget/ImageView;

    .line 191
    .line 192
    goto :goto_c1

    .line 193
    :cond_c0
    const/4 v1, 0x0

    .line 194
    :goto_c1
    if-eqz v1, :cond_cf

    .line 195
    .line 196
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 197
    .line 198
    .line 199
    new-instance v2, Lcom/engagelab/privates/common/h0$a;

    .line 200
    .line 201
    invoke-direct {v2, p0}, Lcom/engagelab/privates/common/h0$a;-><init>(Lcom/engagelab/privates/common/h0;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    .line 206
    .line 207
    goto :goto_e4

    .line 208
    :cond_cf
    iget-object v1, v6, Lcom/engagelab/privates/common/h0;->o:Landroid/widget/ImageView;

    .line 209
    .line 210
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 211
    .line 212
    .line 213
    iget-object v1, v6, Lcom/engagelab/privates/common/h0;->n:Landroid/widget/ImageView;

    .line 214
    .line 215
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 216
    .line 217
    .line 218
    goto :goto_e4

    .line 219
    :cond_da
    iget-object v1, v6, Lcom/engagelab/privates/common/h0;->o:Landroid/widget/ImageView;

    .line 220
    .line 221
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 222
    .line 223
    .line 224
    iget-object v1, v6, Lcom/engagelab/privates/common/h0;->n:Landroid/widget/ImageView;

    .line 225
    .line 226
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    .line 228
    .line 229
    :goto_e4
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    if-eqz v1, :cond_137

    .line 234
    .line 235
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    if-eqz v0, :cond_131

    .line 240
    .line 241
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    if-gtz v1, :cond_f7

    .line 246
    .line 247
    goto :goto_131

    .line 248
    :cond_f7
    iget-object v1, v6, Lcom/engagelab/privates/common/h0;->s:Landroid/view/View;

    .line 249
    .line 250
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    const/4 v2, 0x5

    .line 258
    if-le v1, v3, :cond_120

    .line 259
    .line 260
    iget-object v1, v6, Lcom/engagelab/privates/common/h0;->l:Landroid/widget/TextView;

    .line 261
    .line 262
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    check-cast v1, Lorg/json/JSONObject;

    .line 270
    .line 271
    iget-object v4, v6, Lcom/engagelab/privates/common/h0;->l:Landroid/widget/TextView;

    .line 272
    .line 273
    const/4 v5, 0x4

    .line 274
    invoke-virtual {p0, v4, v1, v5}, Lcom/engagelab/privates/common/i0;->a(Landroid/widget/TextView;Lorg/json/JSONObject;I)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    check-cast v0, Lorg/json/JSONObject;

    .line 282
    .line 283
    iget-object v1, v6, Lcom/engagelab/privates/common/h0;->m:Landroid/widget/TextView;

    .line 284
    .line 285
    invoke-virtual {p0, v1, v0, v2}, Lcom/engagelab/privates/common/i0;->a(Landroid/widget/TextView;Lorg/json/JSONObject;I)V

    .line 286
    .line 287
    .line 288
    goto :goto_13c

    .line 289
    :cond_120
    iget-object v1, v6, Lcom/engagelab/privates/common/h0;->l:Landroid/widget/TextView;

    .line 290
    .line 291
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    check-cast v0, Lorg/json/JSONObject;

    .line 299
    .line 300
    iget-object v1, v6, Lcom/engagelab/privates/common/h0;->m:Landroid/widget/TextView;

    .line 301
    .line 302
    invoke-virtual {p0, v1, v0, v2}, Lcom/engagelab/privates/common/i0;->a(Landroid/widget/TextView;Lorg/json/JSONObject;I)V

    .line 303
    .line 304
    .line 305
    goto :goto_13c

    .line 306
    :cond_131
    :goto_131
    iget-object v0, v6, Lcom/engagelab/privates/common/h0;->s:Landroid/view/View;

    .line 307
    .line 308
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 309
    .line 310
    .line 311
    goto :goto_13c

    .line 312
    :cond_137
    iget-object v0, v6, Lcom/engagelab/privates/common/h0;->s:Landroid/view/View;

    .line 313
    .line 314
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 315
    .line 316
    .line 317
    :goto_13c
    invoke-virtual {p0}, Lcom/engagelab/privates/common/h0;->g()V
    :try_end_13f
    .catchall {:try_start_3a .. :try_end_13f} :catchall_3e

    .line 318
    .line 319
    .line 320
    return-void

    .line 321
    :goto_140
    new-instance v1, Ljava/lang/StringBuilder;

    .line 322
    .line 323
    const-string v2, "interstitial bindDataToView throwable="

    .line 324
    .line 325
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    const-string v1, "BaseInAppWrapper"

    .line 336
    .line 337
    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    return-void
.end method

.method public final d(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/graphics/drawable/GradientDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/engagelab/privates/common/f0;->e:Landroid/content/Context;

    .line 11
    .line 12
    const/16 v1, 0xf

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/utils/Utils;->dpToPx(Landroid/content/Context;I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    int-to-float v0, v0

    .line 19
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public g()V
    .registers 14

    .line 1
    invoke-virtual {p0}, Lcom/engagelab/privates/common/i0;->m()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/engagelab/privates/common/h0;->n()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget v2, p0, Lcom/engagelab/privates/common/f0;->g:I

    .line 10
    .line 11
    const/16 v3, 0x14

    .line 12
    .line 13
    const/16 v4, 0xf

    .line 14
    .line 15
    const/16 v5, 0x13b

    .line 16
    .line 17
    const/16 v6, 0x1e

    .line 18
    .line 19
    const/16 v7, 0x50

    .line 20
    .line 21
    const/16 v8, 0x2d

    .line 22
    .line 23
    const/16 v9, 0x8

    .line 24
    .line 25
    const/4 v10, 0x0

    .line 26
    const/16 v11, 0x15

    .line 27
    .line 28
    if-ne v11, v2, :cond_5a

    .line 29
    .line 30
    iget-object v2, p0, Lcom/engagelab/privates/common/h0;->x:Lcom/engagelab/privates/inapp/view/RoundedImageView;

    .line 31
    .line 32
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lcom/engagelab/privates/common/h0;->p:Landroid/view/View;

    .line 36
    .line 37
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    if-eqz v0, :cond_2b

    .line 41
    .line 42
    const/16 v6, 0xaa

    .line 43
    .line 44
    :cond_2b
    invoke-virtual {p0, v6}, Lcom/engagelab/privates/common/f0;->b(I)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    iget-object v6, p0, Lcom/engagelab/privates/common/h0;->x:Lcom/engagelab/privates/inapp/view/RoundedImageView;

    .line 49
    .line 50
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 55
    .line 56
    if-eqz v0, :cond_3b

    .line 57
    .line 58
    const/16 v5, 0x12c

    .line 59
    .line 60
    :cond_3b
    invoke-virtual {p0, v5}, Lcom/engagelab/privates/common/f0;->b(I)I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    iput v5, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 65
    .line 66
    if-eqz v0, :cond_46

    .line 67
    .line 68
    const/16 v5, 0x122

    .line 69
    .line 70
    goto :goto_48

    .line 71
    :cond_46
    const/16 v5, 0x124

    .line 72
    .line 73
    :goto_48
    invoke-virtual {p0, v5}, Lcom/engagelab/privates/common/f0;->a(I)I

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    iput v5, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 78
    .line 79
    iget-object v5, p0, Lcom/engagelab/privates/common/h0;->x:Lcom/engagelab/privates/inapp/view/RoundedImageView;

    .line 80
    .line 81
    invoke-virtual {v5, v8, v8, v8, v8}, Lcom/engagelab/privates/inapp/view/RoundedImageView;->setRadius(IIII)V

    .line 82
    .line 83
    .line 84
    iget-object v5, p0, Lcom/engagelab/privates/common/h0;->x:Lcom/engagelab/privates/inapp/view/RoundedImageView;

    .line 85
    .line 86
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    .line 88
    .line 89
    goto/16 :goto_121

    .line 90
    .line 91
    :cond_5a
    iget-object v2, p0, Lcom/engagelab/privates/common/h0;->x:Lcom/engagelab/privates/inapp/view/RoundedImageView;

    .line 92
    .line 93
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    iget-object v2, p0, Lcom/engagelab/privates/common/h0;->p:Landroid/view/View;

    .line 97
    .line 98
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 99
    .line 100
    .line 101
    if-eqz v0, :cond_67

    .line 102
    .line 103
    move v6, v7

    .line 104
    :cond_67
    invoke-virtual {p0, v6}, Lcom/engagelab/privates/common/f0;->b(I)I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    iget-object v6, p0, Lcom/engagelab/privates/common/h0;->p:Landroid/view/View;

    .line 109
    .line 110
    invoke-virtual {p0, v6}, Lcom/engagelab/privates/common/h0;->d(Landroid/view/View;)V

    .line 111
    .line 112
    .line 113
    if-eqz v0, :cond_7d

    .line 114
    .line 115
    iget-object v6, p0, Lcom/engagelab/privates/common/h0;->u:Landroid/view/View;

    .line 116
    .line 117
    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 118
    .line 119
    .line 120
    iget-object v6, p0, Lcom/engagelab/privates/common/h0;->t:Landroid/view/View;

    .line 121
    .line 122
    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 123
    .line 124
    .line 125
    goto :goto_87

    .line 126
    :cond_7d
    iget-object v6, p0, Lcom/engagelab/privates/common/h0;->u:Landroid/view/View;

    .line 127
    .line 128
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 129
    .line 130
    .line 131
    iget-object v6, p0, Lcom/engagelab/privates/common/h0;->t:Landroid/view/View;

    .line 132
    .line 133
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 134
    .line 135
    .line 136
    :goto_87
    iget-object v6, p0, Lcom/engagelab/privates/common/h0;->q:Landroid/view/View;

    .line 137
    .line 138
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 143
    .line 144
    const/16 v12, 0x16

    .line 145
    .line 146
    invoke-virtual {p0, v12}, Lcom/engagelab/privates/common/f0;->b(I)I

    .line 147
    .line 148
    .line 149
    move-result v12

    .line 150
    iput v12, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 151
    .line 152
    invoke-virtual {p0, v11}, Lcom/engagelab/privates/common/f0;->b(I)I

    .line 153
    .line 154
    .line 155
    move-result v11

    .line 156
    iput v11, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 157
    .line 158
    iget-object v11, p0, Lcom/engagelab/privates/common/h0;->q:Landroid/view/View;

    .line 159
    .line 160
    invoke-virtual {v11, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    .line 162
    .line 163
    iget-object v6, p0, Lcom/engagelab/privates/common/f0;->c:Lcom/engagelab/privates/push/api/InAppMessage;

    .line 164
    .line 165
    invoke-virtual {v6}, Lcom/engagelab/privates/push/api/InAppMessage;->getLocalImageUrl()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 170
    .line 171
    .line 172
    move-result v6

    .line 173
    if-nez v6, :cond_117

    .line 174
    .line 175
    iget-object v6, p0, Lcom/engagelab/privates/common/h0;->w:Lcom/engagelab/privates/inapp/view/RoundedImageView;

    .line 176
    .line 177
    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 178
    .line 179
    .line 180
    iget-object v6, p0, Lcom/engagelab/privates/common/h0;->w:Lcom/engagelab/privates/inapp/view/RoundedImageView;

    .line 181
    .line 182
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 183
    .line 184
    .line 185
    move-result-object v6

    .line 186
    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 187
    .line 188
    if-eqz v0, :cond_bf

    .line 189
    .line 190
    move v9, v7

    .line 191
    goto :goto_c1

    .line 192
    :cond_bf
    const/16 v9, 0x8e

    .line 193
    .line 194
    :goto_c1
    invoke-virtual {p0, v9}, Lcom/engagelab/privates/common/f0;->a(I)I

    .line 195
    .line 196
    .line 197
    move-result v9

    .line 198
    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 199
    .line 200
    if-eqz v0, :cond_cb

    .line 201
    .line 202
    const/16 v5, 0xb1

    .line 203
    .line 204
    :cond_cb
    invoke-virtual {p0, v5}, Lcom/engagelab/privates/common/f0;->b(I)I

    .line 205
    .line 206
    .line 207
    move-result v5

    .line 208
    iput v5, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 209
    .line 210
    if-eqz v0, :cond_e4

    .line 211
    .line 212
    iget-object v5, p0, Lcom/engagelab/privates/common/h0;->r:Landroid/view/View;

    .line 213
    .line 214
    invoke-virtual {p0, v5}, Lcom/engagelab/privates/common/h0;->d(Landroid/view/View;)V

    .line 215
    .line 216
    .line 217
    if-eqz v1, :cond_dc

    .line 218
    .line 219
    move v5, v4

    .line 220
    goto :goto_dd

    .line 221
    :cond_dc
    move v5, v3

    .line 222
    :goto_dd
    invoke-virtual {p0, v5}, Lcom/engagelab/privates/common/f0;->a(I)I

    .line 223
    .line 224
    .line 225
    move-result v5

    .line 226
    iput v5, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 227
    .line 228
    goto :goto_109

    .line 229
    :cond_e4
    iput v10, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 230
    .line 231
    iget-object v5, p0, Lcom/engagelab/privates/common/f0;->e:Landroid/content/Context;

    .line 232
    .line 233
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    iget-object v9, p0, Lcom/engagelab/privates/common/f0;->e:Landroid/content/Context;

    .line 238
    .line 239
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v9

    .line 243
    const-string v11, "jpush_interstitial_bg"

    .line 244
    .line 245
    const-string v12, "drawable"

    .line 246
    .line 247
    invoke-virtual {v5, v11, v12, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .line 249
    .line 250
    move-result v5

    .line 251
    iget-object v9, p0, Lcom/engagelab/privates/common/h0;->r:Landroid/view/View;

    .line 252
    .line 253
    iget-object v11, p0, Lcom/engagelab/privates/common/f0;->e:Landroid/content/Context;

    .line 254
    .line 255
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 256
    .line 257
    .line 258
    move-result-object v11

    .line 259
    invoke-virtual {v11, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 260
    .line 261
    .line 262
    move-result-object v5

    .line 263
    invoke-virtual {v9, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 264
    .line 265
    .line 266
    :goto_109
    iget-object v5, p0, Lcom/engagelab/privates/common/h0;->w:Lcom/engagelab/privates/inapp/view/RoundedImageView;

    .line 267
    .line 268
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    .line 270
    .line 271
    if-eqz v0, :cond_111

    .line 272
    .line 273
    move v8, v10

    .line 274
    :cond_111
    iget-object v5, p0, Lcom/engagelab/privates/common/h0;->w:Lcom/engagelab/privates/inapp/view/RoundedImageView;

    .line 275
    .line 276
    invoke-virtual {v5, v8, v8, v10, v10}, Lcom/engagelab/privates/inapp/view/RoundedImageView;->setRadius(IIII)V

    .line 277
    .line 278
    .line 279
    goto :goto_121

    .line 280
    :cond_117
    iget-object v5, p0, Lcom/engagelab/privates/common/h0;->w:Lcom/engagelab/privates/inapp/view/RoundedImageView;

    .line 281
    .line 282
    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 283
    .line 284
    .line 285
    iget-object v5, p0, Lcom/engagelab/privates/common/h0;->r:Landroid/view/View;

    .line 286
    .line 287
    invoke-virtual {p0, v5}, Lcom/engagelab/privates/common/h0;->d(Landroid/view/View;)V

    .line 288
    .line 289
    .line 290
    :goto_121
    iget-object v5, p0, Lcom/engagelab/privates/common/h0;->j:Landroid/widget/TextView;

    .line 291
    .line 292
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 293
    .line 294
    .line 295
    move-result-object v5

    .line 296
    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 297
    .line 298
    iget-object v6, p0, Lcom/engagelab/privates/common/h0;->k:Landroid/widget/TextView;

    .line 299
    .line 300
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 301
    .line 302
    .line 303
    move-result-object v6

    .line 304
    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 305
    .line 306
    iget-object v8, p0, Lcom/engagelab/privates/common/h0;->s:Landroid/view/View;

    .line 307
    .line 308
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 309
    .line 310
    .line 311
    move-result-object v8

    .line 312
    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 313
    .line 314
    iget-object v9, p0, Lcom/engagelab/privates/common/h0;->q:Landroid/view/View;

    .line 315
    .line 316
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 317
    .line 318
    .line 319
    move-result-object v9

    .line 320
    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 321
    .line 322
    if-eqz v1, :cond_144

    .line 323
    .line 324
    move v3, v4

    .line 325
    :cond_144
    invoke-virtual {p0, v3}, Lcom/engagelab/privates/common/f0;->a(I)I

    .line 326
    .line 327
    .line 328
    move-result v3

    .line 329
    iput v3, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 330
    .line 331
    iput v3, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 332
    .line 333
    iput v3, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 334
    .line 335
    iput v3, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 336
    .line 337
    iget-object v3, p0, Lcom/engagelab/privates/common/h0;->j:Landroid/widget/TextView;

    .line 338
    .line 339
    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 340
    .line 341
    .line 342
    iget-object v3, p0, Lcom/engagelab/privates/common/h0;->k:Landroid/widget/TextView;

    .line 343
    .line 344
    invoke-virtual {v3, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    .line 346
    .line 347
    iget-object v3, p0, Lcom/engagelab/privates/common/h0;->s:Landroid/view/View;

    .line 348
    .line 349
    invoke-virtual {v3, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    .line 351
    .line 352
    iget-object v3, p0, Lcom/engagelab/privates/common/h0;->q:Landroid/view/View;

    .line 353
    .line 354
    invoke-virtual {v3, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 355
    .line 356
    .line 357
    iget-object v3, p0, Lcom/engagelab/privates/common/h0;->v:Landroid/widget/FrameLayout;

    .line 358
    .line 359
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 360
    .line 361
    .line 362
    move-result-object v3

    .line 363
    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 364
    .line 365
    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 366
    .line 367
    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 368
    .line 369
    iget-object v4, p0, Lcom/engagelab/privates/common/h0;->n:Landroid/widget/ImageView;

    .line 370
    .line 371
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 372
    .line 373
    .line 374
    move-result-object v4

    .line 375
    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 376
    .line 377
    iput v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 378
    .line 379
    iget-object v2, p0, Lcom/engagelab/privates/common/h0;->n:Landroid/widget/ImageView;

    .line 380
    .line 381
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    .line 383
    .line 384
    iget-object v2, p0, Lcom/engagelab/privates/common/h0;->v:Landroid/widget/FrameLayout;

    .line 385
    .line 386
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 387
    .line 388
    .line 389
    iget-object v2, p0, Lcom/engagelab/privates/common/h0;->k:Landroid/widget/TextView;

    .line 390
    .line 391
    if-eqz v1, :cond_18b

    .line 392
    .line 393
    const/16 v7, 0x3c

    .line 394
    .line 395
    goto :goto_190

    .line 396
    :cond_18b
    if-eqz v0, :cond_18e

    .line 397
    .line 398
    goto :goto_190

    .line 399
    :cond_18e
    const/16 v7, 0x96

    .line 400
    .line 401
    :goto_190
    invoke-virtual {p0, v7}, Lcom/engagelab/privates/common/f0;->a(I)I

    .line 402
    .line 403
    .line 404
    move-result v0

    .line 405
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setMaxHeight(I)V

    .line 406
    .line 407
    .line 408
    invoke-super {p0}, Lcom/engagelab/privates/common/i0;->g()V

    .line 409
    .line 410
    .line 411
    return-void
.end method

.method public h()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/engagelab/privates/common/i0;->h()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "jpush_interstitial"

    .line 2
    .line 3
    return-object v0
.end method

.method public l()V
    .registers 3

    .line 1
    const-string v0, "image"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/engagelab/privates/common/i0;->a(Ljava/lang/String;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/engagelab/privates/inapp/view/RoundedImageView;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/engagelab/privates/common/h0;->w:Lcom/engagelab/privates/inapp/view/RoundedImageView;

    .line 10
    .line 11
    const-string v0, "img_bottom_close"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/engagelab/privates/common/i0;->a(Ljava/lang/String;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/ImageView;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/engagelab/privates/common/h0;->o:Landroid/widget/ImageView;

    .line 20
    .line 21
    const-string v0, "img_top_close"

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/engagelab/privates/common/i0;->a(Ljava/lang/String;)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/widget/ImageView;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/engagelab/privates/common/h0;->n:Landroid/widget/ImageView;

    .line 30
    .line 31
    const-string v0, "image_only"

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lcom/engagelab/privates/common/i0;->a(Ljava/lang/String;)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/engagelab/privates/inapp/view/RoundedImageView;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/engagelab/privates/common/h0;->x:Lcom/engagelab/privates/inapp/view/RoundedImageView;

    .line 40
    .line 41
    const-string v0, "btn_two"

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lcom/engagelab/privates/common/i0;->a(Ljava/lang/String;)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroid/widget/TextView;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/engagelab/privates/common/h0;->m:Landroid/widget/TextView;

    .line 50
    .line 51
    const-string v0, "btn_one"

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Lcom/engagelab/privates/common/i0;->a(Ljava/lang/String;)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Landroid/widget/TextView;

    .line 58
    .line 59
    iput-object v0, p0, Lcom/engagelab/privates/common/h0;->l:Landroid/widget/TextView;

    .line 60
    .line 61
    const-string v0, "text_content"

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Lcom/engagelab/privates/common/i0;->a(Ljava/lang/String;)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Landroid/widget/TextView;

    .line 68
    .line 69
    iput-object v0, p0, Lcom/engagelab/privates/common/h0;->k:Landroid/widget/TextView;

    .line 70
    .line 71
    const-string v0, "text_title"

    .line 72
    .line 73
    invoke-virtual {p0, v0}, Lcom/engagelab/privates/common/i0;->a(Ljava/lang/String;)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Landroid/widget/TextView;

    .line 78
    .line 79
    iput-object v0, p0, Lcom/engagelab/privates/common/h0;->j:Landroid/widget/TextView;

    .line 80
    .line 81
    const-string v0, "content_view"

    .line 82
    .line 83
    invoke-virtual {p0, v0}, Lcom/engagelab/privates/common/i0;->a(Ljava/lang/String;)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iput-object v0, p0, Lcom/engagelab/privates/common/h0;->p:Landroid/view/View;

    .line 88
    .line 89
    const-string v0, "frame"

    .line 90
    .line 91
    invoke-virtual {p0, v0}, Lcom/engagelab/privates/common/i0;->a(Ljava/lang/String;)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    check-cast v0, Landroid/widget/FrameLayout;

    .line 96
    .line 97
    iput-object v0, p0, Lcom/engagelab/privates/common/h0;->v:Landroid/widget/FrameLayout;

    .line 98
    .line 99
    const-string v0, "margeview"

    .line 100
    .line 101
    invoke-virtual {p0, v0}, Lcom/engagelab/privates/common/i0;->a(Ljava/lang/String;)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    iput-object v0, p0, Lcom/engagelab/privates/common/h0;->q:Landroid/view/View;

    .line 106
    .line 107
    const-string v0, "bg_view"

    .line 108
    .line 109
    invoke-virtual {p0, v0}, Lcom/engagelab/privates/common/i0;->a(Ljava/lang/String;)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    iput-object v0, p0, Lcom/engagelab/privates/common/h0;->r:Landroid/view/View;

    .line 114
    .line 115
    const-string v0, "view2"

    .line 116
    .line 117
    invoke-virtual {p0, v0}, Lcom/engagelab/privates/common/i0;->a(Ljava/lang/String;)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    iput-object v0, p0, Lcom/engagelab/privates/common/h0;->t:Landroid/view/View;

    .line 122
    .line 123
    const-string v0, "view1"

    .line 124
    .line 125
    invoke-virtual {p0, v0}, Lcom/engagelab/privates/common/i0;->a(Ljava/lang/String;)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    iput-object v0, p0, Lcom/engagelab/privates/common/h0;->u:Landroid/view/View;

    .line 130
    .line 131
    const-string v0, "btn_parent_view"

    .line 132
    .line 133
    invoke-virtual {p0, v0}, Lcom/engagelab/privates/common/i0;->a(Ljava/lang/String;)Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    iput-object v0, p0, Lcom/engagelab/privates/common/h0;->s:Landroid/view/View;

    .line 138
    .line 139
    iget-object v0, p0, Lcom/engagelab/privates/common/h0;->k:Landroid/widget/TextView;

    .line 140
    .line 141
    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lcom/engagelab/privates/common/h0;->k:Landroid/widget/TextView;

    .line 149
    .line 150
    invoke-virtual {p0}, Lcom/engagelab/privates/common/h0;->n()Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    if-eqz v1, :cond_9e

    .line 155
    .line 156
    const/16 v1, 0x3c

    .line 157
    .line 158
    goto :goto_a9

    .line 159
    :cond_9e
    invoke-virtual {p0}, Lcom/engagelab/privates/common/i0;->m()Z

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    if-eqz v1, :cond_a7

    .line 164
    .line 165
    const/16 v1, 0x50

    .line 166
    .line 167
    goto :goto_a9

    .line 168
    :cond_a7
    const/16 v1, 0x96

    .line 169
    .line 170
    :goto_a9
    invoke-virtual {p0, v1}, Lcom/engagelab/privates/common/f0;->a(I)I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxHeight(I)V

    .line 175
    .line 176
    .line 177
    return-void
.end method

.method public final n()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/common/h0;->o:Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_13

    .line 8
    .line 9
    iget-object v0, p0, Lcom/engagelab/privates/common/h0;->n:Landroid/widget/ImageView;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_11

    .line 16
    .line 17
    goto :goto_13

    .line 18
    :cond_11
    const/4 v0, 0x0

    .line 19
    return v0

    .line 20
    :cond_13
    :goto_13
    const/4 v0, 0x1

    .line 21
    return v0
.end method

###### Class com.engagelab.privates.common.h0.a (com.engagelab.privates.common.h0$a)
.class public Lcom/engagelab/privates/common/h0$a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/engagelab/privates/common/h0;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/engagelab/privates/common/h0;


# direct methods
.method public constructor <init>(Lcom/engagelab/privates/common/h0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/common/h0$a;->a:Lcom/engagelab/privates/common/h0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/engagelab/privates/common/h0$a;->a:Lcom/engagelab/privates/common/h0;

    .line 2
    .line 3
    const-string v0, ""

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x3

    .line 7
    invoke-virtual {p1, v2, v0, v1}, Lcom/engagelab/privates/common/f0;->a(ILjava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
