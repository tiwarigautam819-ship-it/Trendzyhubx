###### Class androidx.fragment.app.h (androidx.fragment.app.h)
.class public final Landroidx/fragment/app/h;
.super Landroidx/fragment/app/m;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final b:Z

.field public c:Z

.field public d:Lcom/google/android/gms/internal/measurement/y4;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/l1;Z)V
    .registers 4

    .line 1
    const-string v0, "operation"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroidx/fragment/app/m;-><init>(Landroidx/fragment/app/l1;)V

    .line 7
    .line 8
    .line 9
    iput-boolean p2, p0, Landroidx/fragment/app/h;->b:Z

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final d(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/y4;
    .registers 10

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/h;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    iget-object p1, p0, Landroidx/fragment/app/h;->d:Lcom/google/android/gms/internal/measurement/y4;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_7
    iget-object v0, p0, Landroidx/fragment/app/m;->a:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Landroidx/fragment/app/l1;

    .line 11
    .line 12
    iget-object v1, v0, Landroidx/fragment/app/l1;->c:Landroidx/fragment/app/c0;

    .line 13
    .line 14
    iget v0, v0, Landroidx/fragment/app/l1;->a:I

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x1

    .line 19
    if-ne v0, v2, :cond_16

    .line 20
    .line 21
    move v0, v4

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    move v0, v3

    .line 24
    :goto_17
    iget-object v2, v1, Landroidx/fragment/app/c0;->S:Landroidx/fragment/app/z;

    .line 25
    .line 26
    if-nez v2, :cond_1d

    .line 27
    .line 28
    move v5, v3

    .line 29
    goto :goto_1f

    .line 30
    :cond_1d
    iget v5, v2, Landroidx/fragment/app/z;->f:I

    .line 31
    .line 32
    :goto_1f
    iget-boolean v6, p0, Landroidx/fragment/app/h;->b:Z

    .line 33
    .line 34
    if-eqz v6, :cond_32

    .line 35
    .line 36
    if-eqz v0, :cond_2c

    .line 37
    .line 38
    if-nez v2, :cond_29

    .line 39
    .line 40
    :goto_27
    move v2, v3

    .line 41
    goto :goto_3f

    .line 42
    :cond_29
    iget v2, v2, Landroidx/fragment/app/z;->d:I

    .line 43
    .line 44
    goto :goto_3f

    .line 45
    :cond_2c
    if-nez v2, :cond_2f

    .line 46
    .line 47
    goto :goto_27

    .line 48
    :cond_2f
    iget v2, v2, Landroidx/fragment/app/z;->e:I

    .line 49
    .line 50
    goto :goto_3f

    .line 51
    :cond_32
    if-eqz v0, :cond_3a

    .line 52
    .line 53
    if-nez v2, :cond_37

    .line 54
    .line 55
    goto :goto_27

    .line 56
    :cond_37
    iget v2, v2, Landroidx/fragment/app/z;->b:I

    .line 57
    .line 58
    goto :goto_3f

    .line 59
    :cond_3a
    if-nez v2, :cond_3d

    .line 60
    .line 61
    goto :goto_27

    .line 62
    :cond_3d
    iget v2, v2, Landroidx/fragment/app/z;->c:I

    .line 63
    .line 64
    :goto_3f
    invoke-virtual {v1, v3, v3, v3, v3}, Landroidx/fragment/app/c0;->H(IIII)V

    .line 65
    .line 66
    .line 67
    iget-object v3, v1, Landroidx/fragment/app/c0;->O:Landroid/view/ViewGroup;

    .line 68
    .line 69
    const/4 v6, 0x0

    .line 70
    if-eqz v3, :cond_55

    .line 71
    .line 72
    const v7, 0x7f0900fb

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    if-eqz v3, :cond_55

    .line 80
    .line 81
    iget-object v3, v1, Landroidx/fragment/app/c0;->O:Landroid/view/ViewGroup;

    .line 82
    .line 83
    invoke-virtual {v3, v7, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    :cond_55
    iget-object v1, v1, Landroidx/fragment/app/c0;->O:Landroid/view/ViewGroup;

    .line 87
    .line 88
    if-eqz v1, :cond_61

    .line 89
    .line 90
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    if-eqz v1, :cond_61

    .line 95
    .line 96
    goto/16 :goto_fc

    .line 97
    .line 98
    :cond_61
    if-nez v2, :cond_bd

    .line 99
    .line 100
    if-eqz v5, :cond_bd

    .line 101
    .line 102
    const/16 v1, 0x1001

    .line 103
    .line 104
    if-eq v5, v1, :cond_b3

    .line 105
    .line 106
    const/16 v1, 0x2002

    .line 107
    .line 108
    if-eq v5, v1, :cond_aa

    .line 109
    .line 110
    const/16 v1, 0x2005

    .line 111
    .line 112
    if-eq v5, v1, :cond_98

    .line 113
    .line 114
    const/16 v1, 0x1003

    .line 115
    .line 116
    if-eq v5, v1, :cond_8e

    .line 117
    .line 118
    const/16 v1, 0x1004

    .line 119
    .line 120
    if-eq v5, v1, :cond_7c

    .line 121
    .line 122
    const/4 v0, -0x1

    .line 123
    :goto_7a
    move v2, v0

    .line 124
    goto :goto_bd

    .line 125
    :cond_7c
    if-eqz v0, :cond_86

    .line 126
    .line 127
    const v0, 0x10100b8

    .line 128
    .line 129
    .line 130
    invoke-static {p1, v0}, Lf4/f;->g(Landroid/content/Context;I)I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    goto :goto_7a

    .line 135
    :cond_86
    const v0, 0x10100b9

    .line 136
    .line 137
    .line 138
    invoke-static {p1, v0}, Lf4/f;->g(Landroid/content/Context;I)I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    goto :goto_7a

    .line 143
    :cond_8e
    if-eqz v0, :cond_94

    .line 144
    .line 145
    const v0, 0x7f020002

    .line 146
    .line 147
    .line 148
    goto :goto_7a

    .line 149
    :cond_94
    const v0, 0x7f020003

    .line 150
    .line 151
    .line 152
    goto :goto_7a

    .line 153
    :cond_98
    if-eqz v0, :cond_a2

    .line 154
    .line 155
    const v0, 0x10100ba

    .line 156
    .line 157
    .line 158
    invoke-static {p1, v0}, Lf4/f;->g(Landroid/content/Context;I)I

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    goto :goto_7a

    .line 163
    :cond_a2
    const v0, 0x10100bb

    .line 164
    .line 165
    .line 166
    invoke-static {p1, v0}, Lf4/f;->g(Landroid/content/Context;I)I

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    goto :goto_7a

    .line 171
    :cond_aa
    if-eqz v0, :cond_af

    .line 172
    .line 173
    const/high16 v0, 0x7f020000

    .line 174
    .line 175
    goto :goto_7a

    .line 176
    :cond_af
    const v0, 0x7f020001

    .line 177
    .line 178
    .line 179
    goto :goto_7a

    .line 180
    :cond_b3
    if-eqz v0, :cond_b9

    .line 181
    .line 182
    const v0, 0x7f020004

    .line 183
    .line 184
    .line 185
    goto :goto_7a

    .line 186
    :cond_b9
    const v0, 0x7f020005

    .line 187
    .line 188
    .line 189
    goto :goto_7a

    .line 190
    :cond_bd
    :goto_bd
    if-eqz v2, :cond_fc

    .line 191
    .line 192
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    const-string v1, "anim"

    .line 201
    .line 202
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    if-eqz v0, :cond_df

    .line 207
    .line 208
    :try_start_cf
    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    if-eqz v1, :cond_fc

    .line 213
    .line 214
    new-instance v3, Lcom/google/android/gms/internal/measurement/y4;

    .line 215
    .line 216
    const/4 v5, 0x1

    .line 217
    invoke-direct {v3, v5, v1}, Lcom/google/android/gms/internal/measurement/y4;-><init>(ILjava/lang/Object;)V
    :try_end_db
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_cf .. :try_end_db} :catch_dd
    .catch Ljava/lang/RuntimeException; {:try_start_cf .. :try_end_db} :catch_df

    .line 218
    .line 219
    .line 220
    :goto_db
    move-object v6, v3

    .line 221
    goto :goto_fc

    .line 222
    :catch_dd
    move-exception p1

    .line 223
    throw p1

    .line 224
    :catch_df
    :cond_df
    :try_start_df
    invoke-static {p1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    if-eqz v1, :cond_fc

    .line 229
    .line 230
    new-instance v3, Lcom/google/android/gms/internal/measurement/y4;

    .line 231
    .line 232
    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/measurement/y4;-><init>(Landroid/animation/Animator;)V
    :try_end_ea
    .catch Ljava/lang/RuntimeException; {:try_start_df .. :try_end_ea} :catch_eb

    .line 233
    .line 234
    .line 235
    goto :goto_db

    .line 236
    :catch_eb
    move-exception v1

    .line 237
    if-nez v0, :cond_fb

    .line 238
    .line 239
    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    if-eqz p1, :cond_fc

    .line 244
    .line 245
    new-instance v6, Lcom/google/android/gms/internal/measurement/y4;

    .line 246
    .line 247
    const/4 v0, 0x1

    .line 248
    invoke-direct {v6, v0, p1}, Lcom/google/android/gms/internal/measurement/y4;-><init>(ILjava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    goto :goto_fc

    .line 252
    :cond_fb
    throw v1

    .line 253
    :cond_fc
    :goto_fc
    iput-object v6, p0, Landroidx/fragment/app/h;->d:Lcom/google/android/gms/internal/measurement/y4;

    .line 254
    .line 255
    iput-boolean v4, p0, Landroidx/fragment/app/h;->c:Z

    .line 256
    .line 257
    return-object v6
.end method
