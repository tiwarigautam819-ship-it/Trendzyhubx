###### Class com.engagelab.privates.common.e0 (com.engagelab.privates.common.e0)
.class public Lcom/engagelab/privates/common/e0;
.super Lcom/engagelab/privates/common/i0;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public j:Landroid/view/View;

.field public k:Lcom/engagelab/privates/inapp/view/RoundedImageView;

.field public l:Lcom/engagelab/privates/inapp/view/RoundedImageView;

.field public m:Landroid/widget/TextView;

.field public n:Landroid/widget/TextView;

.field public o:Landroid/view/View;

.field public p:Landroid/view/View;


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
    .registers 12

    .line 1
    const-string v8, "BaseInAppWrapper"

    .line 2
    .line 3
    const-string v0, "local_small_image"

    .line 4
    .line 5
    const-string v9, "banner 2 bindDataToView throwable="

    .line 6
    .line 7
    :try_start_6
    new-instance v10, Lorg/json/JSONObject;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/engagelab/privates/common/f0;->c:Lcom/engagelab/privates/push/api/InAppMessage;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/engagelab/privates/push/api/InAppMessage;->getContent()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-direct {v10, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v2, Lorg/json/JSONObject;

    .line 19
    .line 20
    iget-object v3, p0, Lcom/engagelab/privates/common/f0;->c:Lcom/engagelab/privates/push/api/InAppMessage;

    .line 21
    .line 22
    invoke-virtual {v3}, Lcom/engagelab/privates/push/api/InAppMessage;->getClick()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v3, "type"

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    const-string v4, "action"

    .line 36
    .line 37
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    iget-object v4, p0, Lcom/engagelab/privates/common/i0;->i:Landroid/view/View;

    .line 42
    .line 43
    new-instance v5, Lcom/engagelab/privates/common/e0$a;

    .line 44
    .line 45
    invoke-direct {v5, p0, v3, v2}, Lcom/engagelab/privates/common/e0$a;-><init>(Lcom/engagelab/privates/common/e0;ILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    .line 50
    .line 51
    iget v2, p0, Lcom/engagelab/privates/common/f0;->g:I

    .line 52
    .line 53
    const/4 v3, 0x0

    .line 54
    const/16 v4, 0x8

    .line 55
    .line 56
    const/16 v5, 0xb

    .line 57
    .line 58
    if-ne v5, v2, :cond_61

    .line 59
    .line 60
    iget-object v0, p0, Lcom/engagelab/privates/common/e0;->p:Landroid/view/View;

    .line 61
    .line 62
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/engagelab/privates/common/e0;->k:Lcom/engagelab/privates/inapp/view/RoundedImageView;

    .line 66
    .line 67
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/engagelab/privates/common/f0;->c:Lcom/engagelab/privates/push/api/InAppMessage;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/engagelab/privates/push/api/InAppMessage;->getLocalImageUrl()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    iget-object v0, p0, Lcom/engagelab/privates/common/e0;->k:Lcom/engagelab/privates/inapp/view/RoundedImageView;

    .line 77
    .line 78
    const/16 v2, 0x2d

    .line 79
    .line 80
    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/engagelab/privates/inapp/view/RoundedImageView;->setRadius(IIII)V

    .line 81
    .line 82
    .line 83
    iget-object v2, p0, Lcom/engagelab/privates/common/e0;->k:Lcom/engagelab/privates/inapp/view/RoundedImageView;

    .line 84
    .line 85
    const/4 v6, -0x1

    .line 86
    const/4 v7, -0x1

    .line 87
    const/4 v4, 0x0

    .line 88
    const/4 v5, -0x1

    .line 89
    move-object v1, p0

    .line 90
    invoke-virtual/range {v1 .. v7}, Lcom/engagelab/privates/common/i0;->a(Landroid/widget/ImageView;Ljava/lang/String;Lorg/json/JSONObject;III)V

    .line 91
    .line 92
    .line 93
    goto/16 :goto_e0

    .line 94
    .line 95
    :catchall_5e
    move-exception v0

    .line 96
    goto/16 :goto_e4

    .line 97
    .line 98
    :cond_61
    iget-object v2, p0, Lcom/engagelab/privates/common/e0;->p:Landroid/view/View;

    .line 99
    .line 100
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 101
    .line 102
    .line 103
    iget-object v2, p0, Lcom/engagelab/privates/common/e0;->k:Lcom/engagelab/privates/inapp/view/RoundedImageView;

    .line 104
    .line 105
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_6b
    .catchall {:try_start_6 .. :try_end_6b} :catchall_5e

    .line 106
    .line 107
    .line 108
    :try_start_6b
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-eqz v2, :cond_b4

    .line 113
    .line 114
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-nez v2, :cond_ae

    .line 123
    .line 124
    iget-object v2, p0, Lcom/engagelab/privates/common/e0;->l:Lcom/engagelab/privates/inapp/view/RoundedImageView;

    .line 125
    .line 126
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    .line 128
    .line 129
    iget-object v2, p0, Lcom/engagelab/privates/common/e0;->l:Lcom/engagelab/privates/inapp/view/RoundedImageView;

    .line 130
    .line 131
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 136
    .line 137
    const/16 v4, 0x2a

    .line 138
    .line 139
    invoke-virtual {p0, v4}, Lcom/engagelab/privates/common/f0;->b(I)I

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 144
    .line 145
    invoke-virtual {p0, v4}, Lcom/engagelab/privates/common/f0;->b(I)I

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 150
    .line 151
    iget-object v4, p0, Lcom/engagelab/privates/common/e0;->l:Lcom/engagelab/privates/inapp/view/RoundedImageView;

    .line 152
    .line 153
    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    .line 155
    .line 156
    iget-object v2, p0, Lcom/engagelab/privates/common/e0;->l:Lcom/engagelab/privates/inapp/view/RoundedImageView;

    .line 157
    .line 158
    invoke-virtual {v2, v3, v3, v3, v3}, Lcom/engagelab/privates/inapp/view/RoundedImageView;->setRadius(IIII)V

    .line 159
    .line 160
    .line 161
    iget-object v2, p0, Lcom/engagelab/privates/common/e0;->l:Lcom/engagelab/privates/inapp/view/RoundedImageView;

    .line 162
    .line 163
    const/4 v6, -0x1

    .line 164
    const/4 v7, -0x1

    .line 165
    const/4 v4, 0x0

    .line 166
    const/4 v5, -0x1

    .line 167
    move-object v1, p0

    .line 168
    move-object v3, v0

    .line 169
    invoke-virtual/range {v1 .. v7}, Lcom/engagelab/privates/common/i0;->a(Landroid/widget/ImageView;Ljava/lang/String;Lorg/json/JSONObject;III)V

    .line 170
    .line 171
    .line 172
    goto :goto_b9

    .line 173
    :catchall_ac
    move-exception v0

    .line 174
    goto :goto_d1

    .line 175
    :cond_ae
    iget-object v0, p0, Lcom/engagelab/privates/common/e0;->l:Lcom/engagelab/privates/inapp/view/RoundedImageView;

    .line 176
    .line 177
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 178
    .line 179
    .line 180
    goto :goto_b9

    .line 181
    :cond_b4
    iget-object v0, p0, Lcom/engagelab/privates/common/e0;->l:Lcom/engagelab/privates/inapp/view/RoundedImageView;

    .line 182
    .line 183
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 184
    .line 185
    .line 186
    :goto_b9
    const-string v0, "title"

    .line 187
    .line 188
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    iget-object v2, p0, Lcom/engagelab/privates/common/e0;->n:Landroid/widget/TextView;

    .line 193
    .line 194
    const/4 v3, -0x1

    .line 195
    invoke-virtual {p0, v2, v0, v3}, Lcom/engagelab/privates/common/i0;->a(Landroid/widget/TextView;Lorg/json/JSONObject;I)V

    .line 196
    .line 197
    .line 198
    const-string v0, "content"

    .line 199
    .line 200
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    iget-object v2, p0, Lcom/engagelab/privates/common/e0;->m:Landroid/widget/TextView;

    .line 205
    .line 206
    invoke-virtual {p0, v2, v0, v3}, Lcom/engagelab/privates/common/i0;->a(Landroid/widget/TextView;Lorg/json/JSONObject;I)V
    :try_end_d0
    .catchall {:try_start_6b .. :try_end_d0} :catchall_ac

    .line 207
    .line 208
    .line 209
    goto :goto_e0

    .line 210
    :goto_d1
    :try_start_d1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-static {v8, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    :goto_e0
    invoke-virtual {p0}, Lcom/engagelab/privates/common/e0;->g()V
    :try_end_e3
    .catchall {:try_start_d1 .. :try_end_e3} :catchall_5e

    .line 226
    .line 227
    .line 228
    goto :goto_f5

    .line 229
    :goto_e4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 230
    .line 231
    const-string v3, "banner 1 bindDataToView throwable="

    .line 232
    .line 233
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    invoke-static {v8, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    :goto_f5
    return-void
.end method

.method public g()V
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/engagelab/privates/common/e0;->o:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 8
    .line 9
    const/16 v1, 0xe

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Lcom/engagelab/privates/common/f0;->b(I)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lcom/engagelab/privates/common/f0;->b(I)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 22
    .line 23
    const/16 v1, 0x78

    .line 24
    .line 25
    invoke-virtual {p0, v1}, Lcom/engagelab/privates/common/f0;->a(I)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 30
    .line 31
    iget v1, p0, Lcom/engagelab/privates/common/f0;->g:I

    .line 32
    .line 33
    const/16 v2, 0x159

    .line 34
    .line 35
    const/16 v3, 0xb

    .line 36
    .line 37
    if-ne v3, v1, :cond_2f

    .line 38
    .line 39
    invoke-virtual {p0, v2}, Lcom/engagelab/privates/common/f0;->b(I)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 44
    .line 45
    goto :goto_6a

    .line 46
    :catchall_2d
    move-exception v0

    .line 47
    goto :goto_73

    .line 48
    :cond_2f
    invoke-virtual {p0}, Lcom/engagelab/privates/common/i0;->m()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_37

    .line 53
    .line 54
    const/16 v2, 0x27f

    .line 55
    .line 56
    :cond_37
    invoke-virtual {p0, v2}, Lcom/engagelab/privates/common/f0;->b(I)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 61
    .line 62
    iget-object v1, p0, Lcom/engagelab/privates/common/e0;->j:Landroid/view/View;

    .line 63
    .line 64
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 69
    .line 70
    const/16 v2, 0x11

    .line 71
    .line 72
    invoke-virtual {p0, v2}, Lcom/engagelab/privates/common/f0;->b(I)I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 77
    .line 78
    const/16 v2, 0x13

    .line 79
    .line 80
    invoke-virtual {p0, v2}, Lcom/engagelab/privates/common/f0;->b(I)I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 85
    .line 86
    const/16 v2, 0xc

    .line 87
    .line 88
    invoke-virtual {p0, v2}, Lcom/engagelab/privates/common/f0;->a(I)I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 93
    .line 94
    const/16 v2, 0xa

    .line 95
    .line 96
    invoke-virtual {p0, v2}, Lcom/engagelab/privates/common/f0;->a(I)I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 101
    .line 102
    iget-object v2, p0, Lcom/engagelab/privates/common/e0;->j:Landroid/view/View;

    .line 103
    .line 104
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    .line 106
    .line 107
    :goto_6a
    iget-object v1, p0, Lcom/engagelab/privates/common/e0;->o:Landroid/view/View;

    .line 108
    .line 109
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    .line 111
    .line 112
    invoke-super {p0}, Lcom/engagelab/privates/common/i0;->g()V
    :try_end_72
    .catchall {:try_start_0 .. :try_end_72} :catchall_2d

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :goto_73
    new-instance v1, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string v2, "refreshParas throwable="

    .line 119
    .line 120
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    const-string v1, "BaseInAppWrapper"

    .line 131
    .line 132
    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
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
    const-string v0, "jpush_banner"

    .line 2
    .line 3
    return-object v0
.end method

.method public l()V
    .registers 2

    .line 1
    const-string v0, "banner_content"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/engagelab/privates/common/i0;->a(Ljava/lang/String;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/engagelab/privates/common/e0;->j:Landroid/view/View;

    .line 8
    .line 9
    const-string v0, "image_only"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/engagelab/privates/common/i0;->a(Ljava/lang/String;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/engagelab/privates/inapp/view/RoundedImageView;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/engagelab/privates/common/e0;->k:Lcom/engagelab/privates/inapp/view/RoundedImageView;

    .line 18
    .line 19
    const-string v0, "text_content"

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/engagelab/privates/common/i0;->a(Ljava/lang/String;)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/widget/TextView;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/engagelab/privates/common/e0;->m:Landroid/widget/TextView;

    .line 28
    .line 29
    const-string v0, "text_title"

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/engagelab/privates/common/i0;->a(Ljava/lang/String;)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/widget/TextView;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/engagelab/privates/common/e0;->n:Landroid/widget/TextView;

    .line 38
    .line 39
    const-string v0, "image_small"

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lcom/engagelab/privates/common/i0;->a(Ljava/lang/String;)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lcom/engagelab/privates/inapp/view/RoundedImageView;

    .line 46
    .line 47
    iput-object v0, p0, Lcom/engagelab/privates/common/e0;->l:Lcom/engagelab/privates/inapp/view/RoundedImageView;

    .line 48
    .line 49
    const-string v0, "banner"

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Lcom/engagelab/privates/common/i0;->a(Ljava/lang/String;)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lcom/engagelab/privates/common/e0;->o:Landroid/view/View;

    .line 56
    .line 57
    const-string v0, "bg_view"

    .line 58
    .line 59
    invoke-virtual {p0, v0}, Lcom/engagelab/privates/common/i0;->a(Ljava/lang/String;)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iput-object v0, p0, Lcom/engagelab/privates/common/e0;->p:Landroid/view/View;

    .line 64
    .line 65
    return-void
.end method

###### Class com.engagelab.privates.common.e0.a (com.engagelab.privates.common.e0$a)
.class public Lcom/engagelab/privates/common/e0$a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/engagelab/privates/common/e0;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/engagelab/privates/common/e0;


# direct methods
.method public constructor <init>(Lcom/engagelab/privates/common/e0;ILjava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/common/e0$a;->c:Lcom/engagelab/privates/common/e0;

    .line 2
    .line 3
    iput p2, p0, Lcom/engagelab/privates/common/e0$a;->a:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/engagelab/privates/common/e0$a;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/engagelab/privates/common/e0$a;->c:Lcom/engagelab/privates/common/e0;

    .line 2
    .line 3
    iget v0, p0, Lcom/engagelab/privates/common/e0$a;->a:I

    .line 4
    .line 5
    iget-object v1, p0, Lcom/engagelab/privates/common/e0$a;->b:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-virtual {p1, v0, v1, v2}, Lcom/engagelab/privates/common/f0;->a(ILjava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
