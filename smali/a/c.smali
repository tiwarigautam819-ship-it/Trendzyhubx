###### Class a.c (a.c)
.class public final La/c;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, La/c;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static a(Lcom/google/android/gms/common/internal/i;Landroid/os/Parcel;I)V
    .registers 7

    .line 1
    const/16 v0, 0x4f45

    .line 2
    .line 3
    invoke-static {v0, p1}, Lz7/d;->p(ILandroid/os/Parcel;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/google/android/gms/common/internal/i;->a:I

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x4

    .line 11
    invoke-static {p1, v2, v3}, Lz7/d;->r(Landroid/os/Parcel;II)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    .line 16
    .line 17
    iget v1, p0, Lcom/google/android/gms/common/internal/i;->b:I

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    invoke-static {p1, v2, v3}, Lz7/d;->r(Landroid/os/Parcel;II)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    iget v1, p0, Lcom/google/android/gms/common/internal/i;->c:I

    .line 27
    .line 28
    const/4 v2, 0x3

    .line 29
    invoke-static {p1, v2, v3}, Lz7/d;->r(Landroid/os/Parcel;II)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/google/android/gms/common/internal/i;->d:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {p1, v3, v1}, Lz7/d;->m(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/4 v1, 0x5

    .line 41
    iget-object v2, p0, Lcom/google/android/gms/common/internal/i;->e:Landroid/os/IBinder;

    .line 42
    .line 43
    invoke-static {p1, v1, v2}, Lz7/d;->k(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    .line 44
    .line 45
    .line 46
    const/4 v1, 0x6

    .line 47
    iget-object v2, p0, Lcom/google/android/gms/common/internal/i;->f:[Lcom/google/android/gms/common/api/Scope;

    .line 48
    .line 49
    invoke-static {p1, v1, v2, p2}, Lz7/d;->n(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    .line 50
    .line 51
    .line 52
    const/4 v1, 0x7

    .line 53
    iget-object v2, p0, Lcom/google/android/gms/common/internal/i;->g:Landroid/os/Bundle;

    .line 54
    .line 55
    invoke-static {p1, v1, v2}, Lz7/d;->j(Landroid/os/Parcel;ILandroid/os/Bundle;)V

    .line 56
    .line 57
    .line 58
    const/16 v1, 0x8

    .line 59
    .line 60
    iget-object v2, p0, Lcom/google/android/gms/common/internal/i;->h:Landroid/accounts/Account;

    .line 61
    .line 62
    invoke-static {p1, v1, v2, p2}, Lz7/d;->l(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 63
    .line 64
    .line 65
    const/16 v1, 0xa

    .line 66
    .line 67
    iget-object v2, p0, Lcom/google/android/gms/common/internal/i;->i:[Lv3/c;

    .line 68
    .line 69
    invoke-static {p1, v1, v2, p2}, Lz7/d;->n(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    .line 70
    .line 71
    .line 72
    const/16 v1, 0xb

    .line 73
    .line 74
    iget-object v2, p0, Lcom/google/android/gms/common/internal/i;->j:[Lv3/c;

    .line 75
    .line 76
    invoke-static {p1, v1, v2, p2}, Lz7/d;->n(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    .line 77
    .line 78
    .line 79
    iget-boolean p2, p0, Lcom/google/android/gms/common/internal/i;->k:Z

    .line 80
    .line 81
    const/16 v1, 0xc

    .line 82
    .line 83
    invoke-static {p1, v1, v3}, Lz7/d;->r(Landroid/os/Parcel;II)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    .line 88
    .line 89
    iget p2, p0, Lcom/google/android/gms/common/internal/i;->l:I

    .line 90
    .line 91
    const/16 v1, 0xd

    .line 92
    .line 93
    invoke-static {p1, v1, v3}, Lz7/d;->r(Landroid/os/Parcel;II)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    .line 98
    .line 99
    iget-boolean p2, p0, Lcom/google/android/gms/common/internal/i;->m:Z

    .line 100
    .line 101
    const/16 v1, 0xe

    .line 102
    .line 103
    invoke-static {p1, v1, v3}, Lz7/d;->r(Landroid/os/Parcel;II)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    .line 108
    .line 109
    const/16 p2, 0xf

    .line 110
    .line 111
    iget-object p0, p0, Lcom/google/android/gms/common/internal/i;->v:Ljava/lang/String;

    .line 112
    .line 113
    invoke-static {p1, p2, p0}, Lz7/d;->m(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-static {v0, p1}, Lz7/d;->q(ILandroid/os/Parcel;)V

    .line 117
    .line 118
    .line 119
    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, La/c;->a:I

    .line 6
    .line 7
    const/4 v3, 0x5

    .line 8
    const/4 v4, 0x4

    .line 9
    const/4 v5, 0x3

    .line 10
    const/4 v6, 0x1

    .line 11
    const/4 v7, 0x2

    .line 12
    const/4 v8, 0x0

    .line 13
    const/4 v9, 0x0

    .line 14
    packed-switch v2, :pswitch_data_50c

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lj7/g;->u(Landroid/os/Parcel;)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    move v3, v8

    .line 22
    :goto_15
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-ge v4, v2, :cond_3e

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    int-to-char v10, v4

    .line 33
    if-eq v10, v6, :cond_39

    .line 34
    .line 35
    if-eq v10, v7, :cond_34

    .line 36
    .line 37
    if-eq v10, v5, :cond_2a

    .line 38
    .line 39
    invoke-static {v4, v1}, Lj7/g;->s(ILandroid/os/Parcel;)V

    .line 40
    .line 41
    .line 42
    goto :goto_15

    .line 43
    :cond_2a
    sget-object v9, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 44
    .line 45
    invoke-static {v1, v4, v9}, Lj7/g;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    move-object v9, v4

    .line 50
    check-cast v9, Landroid/content/Intent;

    .line 51
    .line 52
    goto :goto_15

    .line 53
    :cond_34
    invoke-static {v4, v1}, Lj7/g;->p(ILandroid/os/Parcel;)I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    goto :goto_15

    .line 58
    :cond_39
    invoke-static {v4, v1}, Lj7/g;->p(ILandroid/os/Parcel;)I

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    goto :goto_15

    .line 63
    :cond_3e
    invoke-static {v2, v1}, Lj7/g;->i(ILandroid/os/Parcel;)V

    .line 64
    .line 65
    .line 66
    new-instance v1, Ln4/b;

    .line 67
    .line 68
    invoke-direct {v1, v8, v3, v9}, Ln4/b;-><init>(IILandroid/content/Intent;)V

    .line 69
    .line 70
    .line 71
    return-object v1

    .line 72
    :pswitch_47
    new-instance v2, Lm0/h;

    .line 73
    .line 74
    invoke-direct {v2, v1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    iput v1, v2, Lm0/h;->a:I

    .line 82
    .line 83
    return-object v2

    .line 84
    :pswitch_53
    new-instance v2, Lm/j0;

    .line 85
    .line 86
    invoke-direct {v2, v1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_5f

    .line 94
    .line 95
    goto :goto_60

    .line 96
    :cond_5f
    move v6, v8

    .line 97
    :goto_60
    iput-boolean v6, v2, Lm/j0;->a:Z

    .line 98
    .line 99
    return-object v2

    .line 100
    :pswitch_63
    new-instance v2, Landroidx/versionedparcelable/ParcelImpl;

    .line 101
    .line 102
    invoke-direct {v2, v1}, Landroidx/versionedparcelable/ParcelImpl;-><init>(Landroid/os/Parcel;)V

    .line 103
    .line 104
    .line 105
    return-object v2

    .line 106
    :pswitch_69
    const-string v2, "inParcel"

    .line 107
    .line 108
    invoke-static {v2, v1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    new-instance v2, Ld/i;

    .line 112
    .line 113
    const-class v3, Landroid/content/IntentSender;

    .line 114
    .line 115
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-static {v3}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    check-cast v3, Landroid/content/IntentSender;

    .line 127
    .line 128
    const-class v4, Landroid/content/Intent;

    .line 129
    .line 130
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    check-cast v4, Landroid/content/Intent;

    .line 139
    .line 140
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 141
    .line 142
    .line 143
    move-result v5

    .line 144
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    invoke-direct {v2, v3, v4, v5, v1}, Ld/i;-><init>(Landroid/content/IntentSender;Landroid/content/Intent;II)V

    .line 149
    .line 150
    .line 151
    return-object v2

    .line 152
    :pswitch_97
    const-string v2, "parcel"

    .line 153
    .line 154
    invoke-static {v2, v1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    new-instance v2, Ld/a;

    .line 158
    .line 159
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    if-nez v4, :cond_a9

    .line 168
    .line 169
    goto :goto_b2

    .line 170
    :cond_a9
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 171
    .line 172
    invoke-interface {v4, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    move-object v9, v1

    .line 177
    check-cast v9, Landroid/content/Intent;

    .line 178
    .line 179
    :goto_b2
    invoke-direct {v2, v9, v3}, Ld/a;-><init>(Landroid/content/Intent;I)V

    .line 180
    .line 181
    .line 182
    return-object v2

    .line 183
    :pswitch_b6
    invoke-static {v1}, Lj7/g;->u(Landroid/os/Parcel;)I

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    :goto_ba
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 188
    .line 189
    .line 190
    move-result v3

    .line 191
    if-ge v3, v2, :cond_d1

    .line 192
    .line 193
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 194
    .line 195
    .line 196
    move-result v3

    .line 197
    int-to-char v4, v3

    .line 198
    if-eq v4, v7, :cond_cb

    .line 199
    .line 200
    invoke-static {v3, v1}, Lj7/g;->s(ILandroid/os/Parcel;)V

    .line 201
    .line 202
    .line 203
    goto :goto_ba

    .line 204
    :cond_cb
    invoke-static {v3, v1}, Lj7/g;->e(ILandroid/os/Parcel;)Landroid/os/Bundle;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    move-object v9, v3

    .line 209
    goto :goto_ba

    .line 210
    :cond_d1
    invoke-static {v2, v1}, Lj7/g;->i(ILandroid/os/Parcel;)V

    .line 211
    .line 212
    .line 213
    new-instance v1, Lcom/google/firebase/messaging/w;

    .line 214
    .line 215
    invoke-direct {v1, v9}, Lcom/google/firebase/messaging/w;-><init>(Landroid/os/Bundle;)V

    .line 216
    .line 217
    .line 218
    return-object v1

    .line 219
    :pswitch_da
    invoke-static {v1}, Lj7/g;->u(Landroid/os/Parcel;)I

    .line 220
    .line 221
    .line 222
    move-result v2

    .line 223
    new-instance v3, Landroid/os/Bundle;

    .line 224
    .line 225
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 226
    .line 227
    .line 228
    sget-object v4, Lcom/google/android/gms/common/internal/i;->w:[Lcom/google/android/gms/common/api/Scope;

    .line 229
    .line 230
    sget-object v5, Lcom/google/android/gms/common/internal/i;->x:[Lv3/c;

    .line 231
    .line 232
    move-object/from16 v17, v3

    .line 233
    .line 234
    move-object/from16 v16, v4

    .line 235
    .line 236
    move-object/from16 v19, v5

    .line 237
    .line 238
    move-object/from16 v20, v19

    .line 239
    .line 240
    move v11, v8

    .line 241
    move v12, v11

    .line 242
    move v13, v12

    .line 243
    move/from16 v21, v13

    .line 244
    .line 245
    move/from16 v22, v21

    .line 246
    .line 247
    move/from16 v23, v22

    .line 248
    .line 249
    move-object v14, v9

    .line 250
    move-object v15, v14

    .line 251
    move-object/from16 v18, v15

    .line 252
    .line 253
    move-object/from16 v24, v18

    .line 254
    .line 255
    :goto_fe
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 256
    .line 257
    .line 258
    move-result v3

    .line 259
    if-ge v3, v2, :cond_16e

    .line 260
    .line 261
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 262
    .line 263
    .line 264
    move-result v3

    .line 265
    int-to-char v4, v3

    .line 266
    packed-switch v4, :pswitch_data_54a

    .line 267
    .line 268
    .line 269
    :pswitch_10c
    invoke-static {v3, v1}, Lj7/g;->s(ILandroid/os/Parcel;)V

    .line 270
    .line 271
    .line 272
    goto :goto_fe

    .line 273
    :pswitch_110
    invoke-static {v3, v1}, Lj7/g;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v24

    .line 277
    goto :goto_fe

    .line 278
    :pswitch_115
    invoke-static {v3, v1}, Lj7/g;->n(ILandroid/os/Parcel;)Z

    .line 279
    .line 280
    .line 281
    move-result v23

    .line 282
    goto :goto_fe

    .line 283
    :pswitch_11a
    invoke-static {v3, v1}, Lj7/g;->p(ILandroid/os/Parcel;)I

    .line 284
    .line 285
    .line 286
    move-result v22

    .line 287
    goto :goto_fe

    .line 288
    :pswitch_11f
    invoke-static {v3, v1}, Lj7/g;->n(ILandroid/os/Parcel;)Z

    .line 289
    .line 290
    .line 291
    move-result v21

    .line 292
    goto :goto_fe

    .line 293
    :pswitch_124
    sget-object v4, Lv3/c;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 294
    .line 295
    invoke-static {v1, v3, v4}, Lj7/g;->h(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v3

    .line 299
    move-object/from16 v20, v3

    .line 300
    .line 301
    check-cast v20, [Lv3/c;

    .line 302
    .line 303
    goto :goto_fe

    .line 304
    :pswitch_12f
    sget-object v4, Lv3/c;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 305
    .line 306
    invoke-static {v1, v3, v4}, Lj7/g;->h(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v3

    .line 310
    move-object/from16 v19, v3

    .line 311
    .line 312
    check-cast v19, [Lv3/c;

    .line 313
    .line 314
    goto :goto_fe

    .line 315
    :pswitch_13a
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 316
    .line 317
    invoke-static {v1, v3, v4}, Lj7/g;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 318
    .line 319
    .line 320
    move-result-object v3

    .line 321
    move-object/from16 v18, v3

    .line 322
    .line 323
    check-cast v18, Landroid/accounts/Account;

    .line 324
    .line 325
    goto :goto_fe

    .line 326
    :pswitch_145
    invoke-static {v3, v1}, Lj7/g;->e(ILandroid/os/Parcel;)Landroid/os/Bundle;

    .line 327
    .line 328
    .line 329
    move-result-object v17

    .line 330
    goto :goto_fe

    .line 331
    :pswitch_14a
    sget-object v4, Lcom/google/android/gms/common/api/Scope;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 332
    .line 333
    invoke-static {v1, v3, v4}, Lj7/g;->h(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v3

    .line 337
    move-object/from16 v16, v3

    .line 338
    .line 339
    check-cast v16, [Lcom/google/android/gms/common/api/Scope;

    .line 340
    .line 341
    goto :goto_fe

    .line 342
    :pswitch_155
    invoke-static {v3, v1}, Lj7/g;->o(ILandroid/os/Parcel;)Landroid/os/IBinder;

    .line 343
    .line 344
    .line 345
    move-result-object v15

    .line 346
    goto :goto_fe

    .line 347
    :pswitch_15a
    invoke-static {v3, v1}, Lj7/g;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v14

    .line 351
    goto :goto_fe

    .line 352
    :pswitch_15f
    invoke-static {v3, v1}, Lj7/g;->p(ILandroid/os/Parcel;)I

    .line 353
    .line 354
    .line 355
    move-result v13

    .line 356
    goto :goto_fe

    .line 357
    :pswitch_164
    invoke-static {v3, v1}, Lj7/g;->p(ILandroid/os/Parcel;)I

    .line 358
    .line 359
    .line 360
    move-result v12

    .line 361
    goto :goto_fe

    .line 362
    :pswitch_169
    invoke-static {v3, v1}, Lj7/g;->p(ILandroid/os/Parcel;)I

    .line 363
    .line 364
    .line 365
    move-result v11

    .line 366
    goto :goto_fe

    .line 367
    :cond_16e
    invoke-static {v2, v1}, Lj7/g;->i(ILandroid/os/Parcel;)V

    .line 368
    .line 369
    .line 370
    new-instance v10, Lcom/google/android/gms/common/internal/i;

    .line 371
    .line 372
    invoke-direct/range {v10 .. v24}, Lcom/google/android/gms/common/internal/i;-><init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[Lv3/c;[Lv3/c;ZIZLjava/lang/String;)V

    .line 373
    .line 374
    .line 375
    return-object v10

    .line 376
    :pswitch_177
    invoke-static {v1}, Lj7/g;->u(Landroid/os/Parcel;)I

    .line 377
    .line 378
    .line 379
    move-result v2

    .line 380
    move v12, v8

    .line 381
    move v13, v12

    .line 382
    move v15, v13

    .line 383
    move-object v11, v9

    .line 384
    move-object v14, v11

    .line 385
    move-object/from16 v16, v14

    .line 386
    .line 387
    :goto_182
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 388
    .line 389
    .line 390
    move-result v3

    .line 391
    if-ge v3, v2, :cond_1db

    .line 392
    .line 393
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 394
    .line 395
    .line 396
    move-result v3

    .line 397
    int-to-char v4, v3

    .line 398
    packed-switch v4, :pswitch_data_56c

    .line 399
    .line 400
    .line 401
    invoke-static {v3, v1}, Lj7/g;->s(ILandroid/os/Parcel;)V

    .line 402
    .line 403
    .line 404
    goto :goto_182

    .line 405
    :pswitch_194
    invoke-static {v3, v1}, Lj7/g;->r(ILandroid/os/Parcel;)I

    .line 406
    .line 407
    .line 408
    move-result v3

    .line 409
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 410
    .line 411
    .line 412
    move-result v4

    .line 413
    if-nez v3, :cond_1a1

    .line 414
    .line 415
    move-object/from16 v16, v9

    .line 416
    .line 417
    goto :goto_182

    .line 418
    :cond_1a1
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    .line 419
    .line 420
    .line 421
    move-result-object v5

    .line 422
    add-int/2addr v4, v3

    .line 423
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 424
    .line 425
    .line 426
    move-object/from16 v16, v5

    .line 427
    .line 428
    goto :goto_182

    .line 429
    :pswitch_1ac
    invoke-static {v3, v1}, Lj7/g;->p(ILandroid/os/Parcel;)I

    .line 430
    .line 431
    .line 432
    move-result v15

    .line 433
    goto :goto_182

    .line 434
    :pswitch_1b1
    invoke-static {v3, v1}, Lj7/g;->r(ILandroid/os/Parcel;)I

    .line 435
    .line 436
    .line 437
    move-result v3

    .line 438
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 439
    .line 440
    .line 441
    move-result v4

    .line 442
    if-nez v3, :cond_1bd

    .line 443
    .line 444
    move-object v14, v9

    .line 445
    goto :goto_182

    .line 446
    :cond_1bd
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    .line 447
    .line 448
    .line 449
    move-result-object v5

    .line 450
    add-int/2addr v4, v3

    .line 451
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 452
    .line 453
    .line 454
    move-object v14, v5

    .line 455
    goto :goto_182

    .line 456
    :pswitch_1c7
    invoke-static {v3, v1}, Lj7/g;->n(ILandroid/os/Parcel;)Z

    .line 457
    .line 458
    .line 459
    move-result v13

    .line 460
    goto :goto_182

    .line 461
    :pswitch_1cc
    invoke-static {v3, v1}, Lj7/g;->n(ILandroid/os/Parcel;)Z

    .line 462
    .line 463
    .line 464
    move-result v12

    .line 465
    goto :goto_182

    .line 466
    :pswitch_1d1
    sget-object v4, Lcom/google/android/gms/common/internal/p;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 467
    .line 468
    invoke-static {v1, v3, v4}, Lj7/g;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 469
    .line 470
    .line 471
    move-result-object v3

    .line 472
    move-object v11, v3

    .line 473
    check-cast v11, Lcom/google/android/gms/common/internal/p;

    .line 474
    .line 475
    goto :goto_182

    .line 476
    :cond_1db
    invoke-static {v2, v1}, Lj7/g;->i(ILandroid/os/Parcel;)V

    .line 477
    .line 478
    .line 479
    new-instance v10, Lcom/google/android/gms/common/internal/h;

    .line 480
    .line 481
    invoke-direct/range {v10 .. v16}, Lcom/google/android/gms/common/internal/h;-><init>(Lcom/google/android/gms/common/internal/p;ZZ[II[I)V

    .line 482
    .line 483
    .line 484
    return-object v10

    .line 485
    :pswitch_1e4
    invoke-static {v1}, Lj7/g;->u(Landroid/os/Parcel;)I

    .line 486
    .line 487
    .line 488
    move-result v2

    .line 489
    move-object v3, v9

    .line 490
    move-object v10, v3

    .line 491
    :goto_1ea
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 492
    .line 493
    .line 494
    move-result v11

    .line 495
    if-ge v11, v2, :cond_21d

    .line 496
    .line 497
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 498
    .line 499
    .line 500
    move-result v11

    .line 501
    int-to-char v12, v11

    .line 502
    if-eq v12, v6, :cond_218

    .line 503
    .line 504
    if-eq v12, v7, :cond_20f

    .line 505
    .line 506
    if-eq v12, v5, :cond_20a

    .line 507
    .line 508
    if-eq v12, v4, :cond_201

    .line 509
    .line 510
    invoke-static {v11, v1}, Lj7/g;->s(ILandroid/os/Parcel;)V

    .line 511
    .line 512
    .line 513
    goto :goto_1ea

    .line 514
    :cond_201
    sget-object v10, Lcom/google/android/gms/common/internal/h;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 515
    .line 516
    invoke-static {v1, v11, v10}, Lj7/g;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 517
    .line 518
    .line 519
    move-result-object v10

    .line 520
    check-cast v10, Lcom/google/android/gms/common/internal/h;

    .line 521
    .line 522
    goto :goto_1ea

    .line 523
    :cond_20a
    invoke-static {v11, v1}, Lj7/g;->p(ILandroid/os/Parcel;)I

    .line 524
    .line 525
    .line 526
    move-result v8

    .line 527
    goto :goto_1ea

    .line 528
    :cond_20f
    sget-object v3, Lv3/c;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 529
    .line 530
    invoke-static {v1, v11, v3}, Lj7/g;->h(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 531
    .line 532
    .line 533
    move-result-object v3

    .line 534
    check-cast v3, [Lv3/c;

    .line 535
    .line 536
    goto :goto_1ea

    .line 537
    :cond_218
    invoke-static {v11, v1}, Lj7/g;->e(ILandroid/os/Parcel;)Landroid/os/Bundle;

    .line 538
    .line 539
    .line 540
    move-result-object v9

    .line 541
    goto :goto_1ea

    .line 542
    :cond_21d
    invoke-static {v2, v1}, Lj7/g;->i(ILandroid/os/Parcel;)V

    .line 543
    .line 544
    .line 545
    new-instance v1, Lcom/google/android/gms/common/internal/j0;

    .line 546
    .line 547
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 548
    .line 549
    .line 550
    iput-object v9, v1, Lcom/google/android/gms/common/internal/j0;->a:Landroid/os/Bundle;

    .line 551
    .line 552
    iput-object v3, v1, Lcom/google/android/gms/common/internal/j0;->b:[Lv3/c;

    .line 553
    .line 554
    iput v8, v1, Lcom/google/android/gms/common/internal/j0;->c:I

    .line 555
    .line 556
    iput-object v10, v1, Lcom/google/android/gms/common/internal/j0;->d:Lcom/google/android/gms/common/internal/h;

    .line 557
    .line 558
    return-object v1

    .line 559
    :pswitch_22e
    invoke-static {v1}, Lj7/g;->u(Landroid/os/Parcel;)I

    .line 560
    .line 561
    .line 562
    move-result v2

    .line 563
    move v10, v8

    .line 564
    move v11, v10

    .line 565
    move v12, v11

    .line 566
    move v13, v12

    .line 567
    move v14, v13

    .line 568
    :goto_237
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 569
    .line 570
    .line 571
    move-result v8

    .line 572
    if-ge v8, v2, :cond_269

    .line 573
    .line 574
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 575
    .line 576
    .line 577
    move-result v8

    .line 578
    int-to-char v9, v8

    .line 579
    if-eq v9, v6, :cond_264

    .line 580
    .line 581
    if-eq v9, v7, :cond_25f

    .line 582
    .line 583
    if-eq v9, v5, :cond_25a

    .line 584
    .line 585
    if-eq v9, v4, :cond_255

    .line 586
    .line 587
    if-eq v9, v3, :cond_250

    .line 588
    .line 589
    invoke-static {v8, v1}, Lj7/g;->s(ILandroid/os/Parcel;)V

    .line 590
    .line 591
    .line 592
    goto :goto_237

    .line 593
    :cond_250
    invoke-static {v8, v1}, Lj7/g;->p(ILandroid/os/Parcel;)I

    .line 594
    .line 595
    .line 596
    move-result v12

    .line 597
    goto :goto_237

    .line 598
    :cond_255
    invoke-static {v8, v1}, Lj7/g;->p(ILandroid/os/Parcel;)I

    .line 599
    .line 600
    .line 601
    move-result v11

    .line 602
    goto :goto_237

    .line 603
    :cond_25a
    invoke-static {v8, v1}, Lj7/g;->n(ILandroid/os/Parcel;)Z

    .line 604
    .line 605
    .line 606
    move-result v14

    .line 607
    goto :goto_237

    .line 608
    :cond_25f
    invoke-static {v8, v1}, Lj7/g;->n(ILandroid/os/Parcel;)Z

    .line 609
    .line 610
    .line 611
    move-result v13

    .line 612
    goto :goto_237

    .line 613
    :cond_264
    invoke-static {v8, v1}, Lj7/g;->p(ILandroid/os/Parcel;)I

    .line 614
    .line 615
    .line 616
    move-result v10

    .line 617
    goto :goto_237

    .line 618
    :cond_269
    invoke-static {v2, v1}, Lj7/g;->i(ILandroid/os/Parcel;)V

    .line 619
    .line 620
    .line 621
    new-instance v9, Lcom/google/android/gms/common/internal/p;

    .line 622
    .line 623
    invoke-direct/range {v9 .. v14}, Lcom/google/android/gms/common/internal/p;-><init>(IIIZZ)V

    .line 624
    .line 625
    .line 626
    return-object v9

    .line 627
    :pswitch_272
    invoke-static {v1}, Lj7/g;->u(Landroid/os/Parcel;)I

    .line 628
    .line 629
    .line 630
    move-result v2

    .line 631
    move v11, v8

    .line 632
    move v14, v11

    .line 633
    move v15, v14

    .line 634
    move-object v12, v9

    .line 635
    move-object v13, v12

    .line 636
    :goto_27b
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 637
    .line 638
    .line 639
    move-result v8

    .line 640
    if-ge v8, v2, :cond_2b2

    .line 641
    .line 642
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 643
    .line 644
    .line 645
    move-result v8

    .line 646
    int-to-char v9, v8

    .line 647
    if-eq v9, v6, :cond_2ad

    .line 648
    .line 649
    if-eq v9, v7, :cond_2a8

    .line 650
    .line 651
    if-eq v9, v5, :cond_29e

    .line 652
    .line 653
    if-eq v9, v4, :cond_299

    .line 654
    .line 655
    if-eq v9, v3, :cond_294

    .line 656
    .line 657
    invoke-static {v8, v1}, Lj7/g;->s(ILandroid/os/Parcel;)V

    .line 658
    .line 659
    .line 660
    goto :goto_27b

    .line 661
    :cond_294
    invoke-static {v8, v1}, Lj7/g;->n(ILandroid/os/Parcel;)Z

    .line 662
    .line 663
    .line 664
    move-result v15

    .line 665
    goto :goto_27b

    .line 666
    :cond_299
    invoke-static {v8, v1}, Lj7/g;->n(ILandroid/os/Parcel;)Z

    .line 667
    .line 668
    .line 669
    move-result v14

    .line 670
    goto :goto_27b

    .line 671
    :cond_29e
    sget-object v9, Lcom/google/android/gms/common/ConnectionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 672
    .line 673
    invoke-static {v1, v8, v9}, Lj7/g;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 674
    .line 675
    .line 676
    move-result-object v8

    .line 677
    move-object v13, v8

    .line 678
    check-cast v13, Lcom/google/android/gms/common/ConnectionResult;

    .line 679
    .line 680
    goto :goto_27b

    .line 681
    :cond_2a8
    invoke-static {v8, v1}, Lj7/g;->o(ILandroid/os/Parcel;)Landroid/os/IBinder;

    .line 682
    .line 683
    .line 684
    move-result-object v12

    .line 685
    goto :goto_27b

    .line 686
    :cond_2ad
    invoke-static {v8, v1}, Lj7/g;->p(ILandroid/os/Parcel;)I

    .line 687
    .line 688
    .line 689
    move-result v11

    .line 690
    goto :goto_27b

    .line 691
    :cond_2b2
    invoke-static {v2, v1}, Lj7/g;->i(ILandroid/os/Parcel;)V

    .line 692
    .line 693
    .line 694
    new-instance v10, Lcom/google/android/gms/common/internal/w;

    .line 695
    .line 696
    invoke-direct/range {v10 .. v15}, Lcom/google/android/gms/common/internal/w;-><init>(ILandroid/os/IBinder;Lcom/google/android/gms/common/ConnectionResult;ZZ)V

    .line 697
    .line 698
    .line 699
    return-object v10

    .line 700
    :pswitch_2bb
    invoke-static {v1}, Lj7/g;->u(Landroid/os/Parcel;)I

    .line 701
    .line 702
    .line 703
    move-result v2

    .line 704
    move v3, v8

    .line 705
    move-object v10, v9

    .line 706
    :goto_2c1
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 707
    .line 708
    .line 709
    move-result v11

    .line 710
    if-ge v11, v2, :cond_2f4

    .line 711
    .line 712
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 713
    .line 714
    .line 715
    move-result v11

    .line 716
    int-to-char v12, v11

    .line 717
    if-eq v12, v6, :cond_2ef

    .line 718
    .line 719
    if-eq v12, v7, :cond_2e6

    .line 720
    .line 721
    if-eq v12, v5, :cond_2e1

    .line 722
    .line 723
    if-eq v12, v4, :cond_2d8

    .line 724
    .line 725
    invoke-static {v11, v1}, Lj7/g;->s(ILandroid/os/Parcel;)V

    .line 726
    .line 727
    .line 728
    goto :goto_2c1

    .line 729
    :cond_2d8
    sget-object v10, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 730
    .line 731
    invoke-static {v1, v11, v10}, Lj7/g;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 732
    .line 733
    .line 734
    move-result-object v10

    .line 735
    check-cast v10, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 736
    .line 737
    goto :goto_2c1

    .line 738
    :cond_2e1
    invoke-static {v11, v1}, Lj7/g;->p(ILandroid/os/Parcel;)I

    .line 739
    .line 740
    .line 741
    move-result v3

    .line 742
    goto :goto_2c1

    .line 743
    :cond_2e6
    sget-object v9, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 744
    .line 745
    invoke-static {v1, v11, v9}, Lj7/g;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 746
    .line 747
    .line 748
    move-result-object v9

    .line 749
    check-cast v9, Landroid/accounts/Account;

    .line 750
    .line 751
    goto :goto_2c1

    .line 752
    :cond_2ef
    invoke-static {v11, v1}, Lj7/g;->p(ILandroid/os/Parcel;)I

    .line 753
    .line 754
    .line 755
    move-result v8

    .line 756
    goto :goto_2c1

    .line 757
    :cond_2f4
    invoke-static {v2, v1}, Lj7/g;->i(ILandroid/os/Parcel;)V

    .line 758
    .line 759
    .line 760
    new-instance v1, Lcom/google/android/gms/common/internal/v;

    .line 761
    .line 762
    invoke-direct {v1, v8, v9, v3, v10}, Lcom/google/android/gms/common/internal/v;-><init>(ILandroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    .line 763
    .line 764
    .line 765
    return-object v1

    .line 766
    :pswitch_2fd
    invoke-static {v1}, Lj7/g;->u(Landroid/os/Parcel;)I

    .line 767
    .line 768
    .line 769
    move-result v2

    .line 770
    const/4 v3, -0x1

    .line 771
    const-wide/16 v4, 0x0

    .line 772
    .line 773
    move/from16 v21, v3

    .line 774
    .line 775
    move-wide v14, v4

    .line 776
    move-wide/from16 v16, v14

    .line 777
    .line 778
    move v11, v8

    .line 779
    move v12, v11

    .line 780
    move v13, v12

    .line 781
    move/from16 v20, v13

    .line 782
    .line 783
    move-object/from16 v18, v9

    .line 784
    .line 785
    move-object/from16 v19, v18

    .line 786
    .line 787
    :goto_312
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 788
    .line 789
    .line 790
    move-result v3

    .line 791
    if-ge v3, v2, :cond_35f

    .line 792
    .line 793
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 794
    .line 795
    .line 796
    move-result v3

    .line 797
    int-to-char v4, v3

    .line 798
    packed-switch v4, :pswitch_data_57c

    .line 799
    .line 800
    .line 801
    invoke-static {v3, v1}, Lj7/g;->s(ILandroid/os/Parcel;)V

    .line 802
    .line 803
    .line 804
    goto :goto_312

    .line 805
    :pswitch_324
    invoke-static {v3, v1}, Lj7/g;->p(ILandroid/os/Parcel;)I

    .line 806
    .line 807
    .line 808
    move-result v3

    .line 809
    move/from16 v21, v3

    .line 810
    .line 811
    goto :goto_312

    .line 812
    :pswitch_32b
    invoke-static {v3, v1}, Lj7/g;->p(ILandroid/os/Parcel;)I

    .line 813
    .line 814
    .line 815
    move-result v3

    .line 816
    move/from16 v20, v3

    .line 817
    .line 818
    goto :goto_312

    .line 819
    :pswitch_332
    invoke-static {v3, v1}, Lj7/g;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 820
    .line 821
    .line 822
    move-result-object v3

    .line 823
    move-object/from16 v19, v3

    .line 824
    .line 825
    goto :goto_312

    .line 826
    :pswitch_339
    invoke-static {v3, v1}, Lj7/g;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 827
    .line 828
    .line 829
    move-result-object v3

    .line 830
    move-object/from16 v18, v3

    .line 831
    .line 832
    goto :goto_312

    .line 833
    :pswitch_340
    invoke-static {v3, v1}, Lj7/g;->q(ILandroid/os/Parcel;)J

    .line 834
    .line 835
    .line 836
    move-result-wide v3

    .line 837
    move-wide/from16 v16, v3

    .line 838
    .line 839
    goto :goto_312

    .line 840
    :pswitch_347
    invoke-static {v3, v1}, Lj7/g;->q(ILandroid/os/Parcel;)J

    .line 841
    .line 842
    .line 843
    move-result-wide v3

    .line 844
    move-wide v14, v3

    .line 845
    goto :goto_312

    .line 846
    :pswitch_34d
    invoke-static {v3, v1}, Lj7/g;->p(ILandroid/os/Parcel;)I

    .line 847
    .line 848
    .line 849
    move-result v3

    .line 850
    move v13, v3

    .line 851
    goto :goto_312

    .line 852
    :pswitch_353
    invoke-static {v3, v1}, Lj7/g;->p(ILandroid/os/Parcel;)I

    .line 853
    .line 854
    .line 855
    move-result v3

    .line 856
    move v12, v3

    .line 857
    goto :goto_312

    .line 858
    :pswitch_359
    invoke-static {v3, v1}, Lj7/g;->p(ILandroid/os/Parcel;)I

    .line 859
    .line 860
    .line 861
    move-result v3

    .line 862
    move v11, v3

    .line 863
    goto :goto_312

    .line 864
    :cond_35f
    invoke-static {v2, v1}, Lj7/g;->i(ILandroid/os/Parcel;)V

    .line 865
    .line 866
    .line 867
    new-instance v10, Lcom/google/android/gms/common/internal/n;

    .line 868
    .line 869
    invoke-direct/range {v10 .. v21}, Lcom/google/android/gms/common/internal/n;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V

    .line 870
    .line 871
    .line 872
    return-object v10

    .line 873
    :pswitch_368
    invoke-static {v1}, Lj7/g;->u(Landroid/os/Parcel;)I

    .line 874
    .line 875
    .line 876
    move-result v2

    .line 877
    :goto_36c
    move-object v3, v9

    .line 878
    :goto_36d
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 879
    .line 880
    .line 881
    move-result v4

    .line 882
    if-ge v4, v2, :cond_39b

    .line 883
    .line 884
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 885
    .line 886
    .line 887
    move-result v4

    .line 888
    int-to-char v5, v4

    .line 889
    if-eq v5, v6, :cond_396

    .line 890
    .line 891
    if-eq v5, v7, :cond_380

    .line 892
    .line 893
    invoke-static {v4, v1}, Lj7/g;->s(ILandroid/os/Parcel;)V

    .line 894
    .line 895
    .line 896
    goto :goto_36d

    .line 897
    :cond_380
    sget-object v3, Lcom/google/android/gms/common/internal/n;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 898
    .line 899
    invoke-static {v4, v1}, Lj7/g;->r(ILandroid/os/Parcel;)I

    .line 900
    .line 901
    .line 902
    move-result v4

    .line 903
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 904
    .line 905
    .line 906
    move-result v5

    .line 907
    if-nez v4, :cond_38d

    .line 908
    .line 909
    goto :goto_36c

    .line 910
    :cond_38d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 911
    .line 912
    .line 913
    move-result-object v3

    .line 914
    add-int/2addr v5, v4

    .line 915
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 916
    .line 917
    .line 918
    goto :goto_36d

    .line 919
    :cond_396
    invoke-static {v4, v1}, Lj7/g;->p(ILandroid/os/Parcel;)I

    .line 920
    .line 921
    .line 922
    move-result v8

    .line 923
    goto :goto_36d

    .line 924
    :cond_39b
    invoke-static {v2, v1}, Lj7/g;->i(ILandroid/os/Parcel;)V

    .line 925
    .line 926
    .line 927
    new-instance v1, Lcom/google/android/gms/common/internal/q;

    .line 928
    .line 929
    invoke-direct {v1, v3, v8}, Lcom/google/android/gms/common/internal/q;-><init>(Ljava/util/List;I)V

    .line 930
    .line 931
    .line 932
    return-object v1

    .line 933
    :pswitch_3a4
    new-instance v2, Landroidx/fragment/app/e1;

    .line 934
    .line 935
    invoke-direct {v2, v1}, Landroidx/fragment/app/e1;-><init>(Landroid/os/Parcel;)V

    .line 936
    .line 937
    .line 938
    return-object v2

    .line 939
    :pswitch_3aa
    new-instance v2, Landroidx/fragment/app/a1;

    .line 940
    .line 941
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 942
    .line 943
    .line 944
    iput-object v9, v2, Landroidx/fragment/app/a1;->e:Ljava/lang/String;

    .line 945
    .line 946
    new-instance v3, Ljava/util/ArrayList;

    .line 947
    .line 948
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 949
    .line 950
    .line 951
    iput-object v3, v2, Landroidx/fragment/app/a1;->f:Ljava/util/ArrayList;

    .line 952
    .line 953
    new-instance v3, Ljava/util/ArrayList;

    .line 954
    .line 955
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 956
    .line 957
    .line 958
    iput-object v3, v2, Landroidx/fragment/app/a1;->g:Ljava/util/ArrayList;

    .line 959
    .line 960
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 961
    .line 962
    .line 963
    move-result-object v3

    .line 964
    iput-object v3, v2, Landroidx/fragment/app/a1;->a:Ljava/util/ArrayList;

    .line 965
    .line 966
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 967
    .line 968
    .line 969
    move-result-object v3

    .line 970
    iput-object v3, v2, Landroidx/fragment/app/a1;->b:Ljava/util/ArrayList;

    .line 971
    .line 972
    sget-object v3, Landroidx/fragment/app/b;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 973
    .line 974
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 975
    .line 976
    .line 977
    move-result-object v3

    .line 978
    check-cast v3, [Landroidx/fragment/app/b;

    .line 979
    .line 980
    iput-object v3, v2, Landroidx/fragment/app/a1;->c:[Landroidx/fragment/app/b;

    .line 981
    .line 982
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 983
    .line 984
    .line 985
    move-result v3

    .line 986
    iput v3, v2, Landroidx/fragment/app/a1;->d:I

    .line 987
    .line 988
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 989
    .line 990
    .line 991
    move-result-object v3

    .line 992
    iput-object v3, v2, Landroidx/fragment/app/a1;->e:Ljava/lang/String;

    .line 993
    .line 994
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 995
    .line 996
    .line 997
    move-result-object v3

    .line 998
    iput-object v3, v2, Landroidx/fragment/app/a1;->f:Ljava/util/ArrayList;

    .line 999
    .line 1000
    sget-object v3, Landroidx/fragment/app/c;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1001
    .line 1002
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v3

    .line 1006
    iput-object v3, v2, Landroidx/fragment/app/a1;->g:Ljava/util/ArrayList;

    .line 1007
    .line 1008
    sget-object v3, Landroidx/fragment/app/u0;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1009
    .line 1010
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v1

    .line 1014
    iput-object v1, v2, Landroidx/fragment/app/a1;->h:Ljava/util/ArrayList;

    .line 1015
    .line 1016
    return-object v2

    .line 1017
    :pswitch_3f8
    new-instance v2, Landroidx/fragment/app/u0;

    .line 1018
    .line 1019
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 1020
    .line 1021
    .line 1022
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v3

    .line 1026
    iput-object v3, v2, Landroidx/fragment/app/u0;->a:Ljava/lang/String;

    .line 1027
    .line 1028
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 1029
    .line 1030
    .line 1031
    move-result v1

    .line 1032
    iput v1, v2, Landroidx/fragment/app/u0;->b:I

    .line 1033
    .line 1034
    return-object v2

    .line 1035
    :pswitch_40a
    new-instance v2, Landroidx/fragment/app/c;

    .line 1036
    .line 1037
    invoke-direct {v2, v1}, Landroidx/fragment/app/c;-><init>(Landroid/os/Parcel;)V

    .line 1038
    .line 1039
    .line 1040
    return-object v2

    .line 1041
    :pswitch_410
    new-instance v2, Landroidx/fragment/app/b;

    .line 1042
    .line 1043
    invoke-direct {v2, v1}, Landroidx/fragment/app/b;-><init>(Landroid/os/Parcel;)V

    .line 1044
    .line 1045
    .line 1046
    return-object v2

    .line 1047
    :pswitch_416
    new-instance v2, Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 1048
    .line 1049
    invoke-direct {v2, v1}, Landroid/support/v4/media/session/PlaybackStateCompat;-><init>(Landroid/os/Parcel;)V

    .line 1050
    .line 1051
    .line 1052
    return-object v2

    .line 1053
    :pswitch_41c
    new-instance v2, Landroid/support/v4/media/session/ParcelableVolumeInfo;

    .line 1054
    .line 1055
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 1056
    .line 1057
    .line 1058
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 1059
    .line 1060
    .line 1061
    move-result v3

    .line 1062
    iput v3, v2, Landroid/support/v4/media/session/ParcelableVolumeInfo;->a:I

    .line 1063
    .line 1064
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 1065
    .line 1066
    .line 1067
    move-result v3

    .line 1068
    iput v3, v2, Landroid/support/v4/media/session/ParcelableVolumeInfo;->c:I

    .line 1069
    .line 1070
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 1071
    .line 1072
    .line 1073
    move-result v3

    .line 1074
    iput v3, v2, Landroid/support/v4/media/session/ParcelableVolumeInfo;->d:I

    .line 1075
    .line 1076
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 1077
    .line 1078
    .line 1079
    move-result v3

    .line 1080
    iput v3, v2, Landroid/support/v4/media/session/ParcelableVolumeInfo;->e:I

    .line 1081
    .line 1082
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 1083
    .line 1084
    .line 1085
    move-result v1

    .line 1086
    iput v1, v2, Landroid/support/v4/media/session/ParcelableVolumeInfo;->b:I

    .line 1087
    .line 1088
    return-object v2

    .line 1089
    :pswitch_440
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 1090
    .line 1091
    .line 1092
    move-result-object v1

    .line 1093
    new-instance v2, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 1094
    .line 1095
    invoke-direct {v2, v1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Landroid/os/Parcelable;)V

    .line 1096
    .line 1097
    .line 1098
    return-object v2

    .line 1099
    :pswitch_44a
    new-instance v2, Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;

    .line 1100
    .line 1101
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 1102
    .line 1103
    .line 1104
    sget-object v3, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1105
    .line 1106
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v1

    .line 1110
    check-cast v1, Landroid/os/ResultReceiver;

    .line 1111
    .line 1112
    iput-object v1, v2, Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;->a:Landroid/os/ResultReceiver;

    .line 1113
    .line 1114
    return-object v2

    .line 1115
    :pswitch_45a
    new-instance v2, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    .line 1116
    .line 1117
    invoke-direct {v2, v1}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;-><init>(Landroid/os/Parcel;)V

    .line 1118
    .line 1119
    .line 1120
    return-object v2

    .line 1121
    :pswitch_460
    new-instance v2, Landroid/support/v4/media/RatingCompat;

    .line 1122
    .line 1123
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 1124
    .line 1125
    .line 1126
    move-result v3

    .line 1127
    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F

    .line 1128
    .line 1129
    .line 1130
    move-result v1

    .line 1131
    invoke-direct {v2, v3, v1}, Landroid/support/v4/media/RatingCompat;-><init>(IF)V

    .line 1132
    .line 1133
    .line 1134
    return-object v2

    .line 1135
    :pswitch_46e
    new-instance v2, Landroid/support/v4/media/MediaMetadataCompat;

    .line 1136
    .line 1137
    invoke-direct {v2, v1}, Landroid/support/v4/media/MediaMetadataCompat;-><init>(Landroid/os/Parcel;)V

    .line 1138
    .line 1139
    .line 1140
    return-object v2

    .line 1141
    :pswitch_474
    sget-object v2, Landroid/media/MediaDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1142
    .line 1143
    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1144
    .line 1145
    .line 1146
    move-result-object v1

    .line 1147
    if-eqz v1, :cond_4dd

    .line 1148
    .line 1149
    move-object v2, v1

    .line 1150
    check-cast v2, Landroid/media/MediaDescription;

    .line 1151
    .line 1152
    invoke-virtual {v2}, Landroid/media/MediaDescription;->getMediaId()Ljava/lang/String;

    .line 1153
    .line 1154
    .line 1155
    move-result-object v11

    .line 1156
    invoke-virtual {v2}, Landroid/media/MediaDescription;->getTitle()Ljava/lang/CharSequence;

    .line 1157
    .line 1158
    .line 1159
    move-result-object v12

    .line 1160
    invoke-virtual {v2}, Landroid/media/MediaDescription;->getSubtitle()Ljava/lang/CharSequence;

    .line 1161
    .line 1162
    .line 1163
    move-result-object v13

    .line 1164
    invoke-virtual {v2}, Landroid/media/MediaDescription;->getDescription()Ljava/lang/CharSequence;

    .line 1165
    .line 1166
    .line 1167
    move-result-object v14

    .line 1168
    invoke-virtual {v2}, Landroid/media/MediaDescription;->getIconBitmap()Landroid/graphics/Bitmap;

    .line 1169
    .line 1170
    .line 1171
    move-result-object v15

    .line 1172
    invoke-virtual {v2}, Landroid/media/MediaDescription;->getIconUri()Landroid/net/Uri;

    .line 1173
    .line 1174
    .line 1175
    move-result-object v16

    .line 1176
    invoke-virtual {v2}, Landroid/media/MediaDescription;->getExtras()Landroid/os/Bundle;

    .line 1177
    .line 1178
    .line 1179
    move-result-object v3

    .line 1180
    const-string v4, "android.support.v4.media.description.MEDIA_URI"

    .line 1181
    .line 1182
    if-eqz v3, :cond_4af

    .line 1183
    .line 1184
    const-class v5, Landroid/support/v4/media/session/a;

    .line 1185
    .line 1186
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 1187
    .line 1188
    .line 1189
    move-result-object v5

    .line 1190
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1191
    .line 1192
    .line 1193
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 1194
    .line 1195
    .line 1196
    move-result-object v5

    .line 1197
    check-cast v5, Landroid/net/Uri;

    .line 1198
    .line 1199
    goto :goto_4b0

    .line 1200
    :cond_4af
    move-object v5, v9

    .line 1201
    :goto_4b0
    if-eqz v5, :cond_4c9

    .line 1202
    .line 1203
    const-string v6, "android.support.v4.media.description.NULL_BUNDLE_FLAG"

    .line 1204
    .line 1205
    invoke-virtual {v3, v6}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 1206
    .line 1207
    .line 1208
    move-result v8

    .line 1209
    if-eqz v8, :cond_4c3

    .line 1210
    .line 1211
    invoke-virtual {v3}, Landroid/os/BaseBundle;->size()I

    .line 1212
    .line 1213
    .line 1214
    move-result v8

    .line 1215
    if-ne v8, v7, :cond_4c3

    .line 1216
    .line 1217
    move-object/from16 v17, v9

    .line 1218
    .line 1219
    goto :goto_4cb

    .line 1220
    :cond_4c3
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1221
    .line 1222
    .line 1223
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1224
    .line 1225
    .line 1226
    :cond_4c9
    move-object/from16 v17, v3

    .line 1227
    .line 1228
    :goto_4cb
    if-eqz v5, :cond_4d0

    .line 1229
    .line 1230
    :goto_4cd
    move-object/from16 v18, v5

    .line 1231
    .line 1232
    goto :goto_4d5

    .line 1233
    :cond_4d0
    invoke-virtual {v2}, Landroid/media/MediaDescription;->getMediaUri()Landroid/net/Uri;

    .line 1234
    .line 1235
    .line 1236
    move-result-object v5

    .line 1237
    goto :goto_4cd

    .line 1238
    :goto_4d5
    new-instance v10, Landroid/support/v4/media/MediaDescriptionCompat;

    .line 1239
    .line 1240
    invoke-direct/range {v10 .. v18}, Landroid/support/v4/media/MediaDescriptionCompat;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/os/Bundle;Landroid/net/Uri;)V

    .line 1241
    .line 1242
    .line 1243
    iput-object v1, v10, Landroid/support/v4/media/MediaDescriptionCompat;->i:Ljava/lang/Object;

    .line 1244
    .line 1245
    move-object v9, v10

    .line 1246
    :cond_4dd
    return-object v9

    .line 1247
    :pswitch_4de
    new-instance v2, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 1248
    .line 1249
    invoke-direct {v2, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/os/Parcel;)V

    .line 1250
    .line 1251
    .line 1252
    return-object v2

    .line 1253
    :pswitch_4e4
    new-instance v2, La/e;

    .line 1254
    .line 1255
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 1256
    .line 1257
    .line 1258
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1259
    .line 1260
    .line 1261
    move-result-object v1

    .line 1262
    sget v3, La/d;->c:I

    .line 1263
    .line 1264
    if-nez v1, :cond_4f2

    .line 1265
    .line 1266
    goto :goto_509

    .line 1267
    :cond_4f2
    sget-object v3, La/b;->a:Ljava/lang/String;

    .line 1268
    .line 1269
    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 1270
    .line 1271
    .line 1272
    move-result-object v3

    .line 1273
    if-eqz v3, :cond_502

    .line 1274
    .line 1275
    instance-of v4, v3, La/b;

    .line 1276
    .line 1277
    if-eqz v4, :cond_502

    .line 1278
    .line 1279
    move-object v9, v3

    .line 1280
    check-cast v9, La/b;

    .line 1281
    .line 1282
    goto :goto_509

    .line 1283
    :cond_502
    new-instance v9, La/a;

    .line 1284
    .line 1285
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 1286
    .line 1287
    .line 1288
    iput-object v1, v9, La/a;->b:Landroid/os/IBinder;

    .line 1289
    .line 1290
    :goto_509
    iput-object v9, v2, La/e;->a:La/b;

    .line 1291
    .line 1292
    return-object v2

    .line 1293
    :pswitch_data_50c
    .packed-switch 0x0
        :pswitch_4e4
        :pswitch_4de
        :pswitch_474
        :pswitch_46e
        :pswitch_460
        :pswitch_45a
        :pswitch_44a
        :pswitch_440
        :pswitch_41c
        :pswitch_416
        :pswitch_410
        :pswitch_40a
        :pswitch_3f8
        :pswitch_3aa
        :pswitch_3a4
        :pswitch_368
        :pswitch_2fd
        :pswitch_2bb
        :pswitch_272
        :pswitch_22e
        :pswitch_1e4
        :pswitch_177
        :pswitch_da
        :pswitch_b6
        :pswitch_97
        :pswitch_69
        :pswitch_63
        :pswitch_53
        :pswitch_47
    .end packed-switch

    .line 1294
    .line 1295
    .line 1296
    .line 1297
    .line 1298
    .line 1299
    .line 1300
    .line 1301
    .line 1302
    .line 1303
    .line 1304
    .line 1305
    .line 1306
    .line 1307
    .line 1308
    .line 1309
    .line 1310
    .line 1311
    .line 1312
    .line 1313
    .line 1314
    .line 1315
    .line 1316
    .line 1317
    .line 1318
    .line 1319
    .line 1320
    .line 1321
    .line 1322
    .line 1323
    .line 1324
    .line 1325
    .line 1326
    .line 1327
    .line 1328
    .line 1329
    .line 1330
    .line 1331
    .line 1332
    .line 1333
    .line 1334
    .line 1335
    .line 1336
    .line 1337
    .line 1338
    .line 1339
    .line 1340
    .line 1341
    .line 1342
    .line 1343
    .line 1344
    .line 1345
    .line 1346
    .line 1347
    .line 1348
    .line 1349
    .line 1350
    .line 1351
    .line 1352
    .line 1353
    .line 1354
    .line 1355
    :pswitch_data_54a
    .packed-switch 0x1
        :pswitch_169
        :pswitch_164
        :pswitch_15f
        :pswitch_15a
        :pswitch_155
        :pswitch_14a
        :pswitch_145
        :pswitch_13a
        :pswitch_10c
        :pswitch_12f
        :pswitch_124
        :pswitch_11f
        :pswitch_11a
        :pswitch_115
        :pswitch_110
    .end packed-switch

    .line 1356
    .line 1357
    .line 1358
    .line 1359
    .line 1360
    .line 1361
    .line 1362
    .line 1363
    .line 1364
    .line 1365
    .line 1366
    .line 1367
    .line 1368
    .line 1369
    .line 1370
    .line 1371
    .line 1372
    .line 1373
    .line 1374
    .line 1375
    .line 1376
    .line 1377
    .line 1378
    .line 1379
    .line 1380
    .line 1381
    .line 1382
    .line 1383
    .line 1384
    .line 1385
    .line 1386
    .line 1387
    .line 1388
    .line 1389
    :pswitch_data_56c
    .packed-switch 0x1
        :pswitch_1d1
        :pswitch_1cc
        :pswitch_1c7
        :pswitch_1b1
        :pswitch_1ac
        :pswitch_194
    .end packed-switch

    .line 1390
    .line 1391
    .line 1392
    .line 1393
    .line 1394
    .line 1395
    .line 1396
    .line 1397
    .line 1398
    .line 1399
    .line 1400
    .line 1401
    .line 1402
    .line 1403
    .line 1404
    .line 1405
    :pswitch_data_57c
    .packed-switch 0x1
        :pswitch_359
        :pswitch_353
        :pswitch_34d
        :pswitch_347
        :pswitch_340
        :pswitch_339
        :pswitch_332
        :pswitch_32b
        :pswitch_324
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .registers 3

    .line 1
    iget v0, p0, La/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_60

    .line 4
    .line 5
    .line 6
    new-array p1, p1, [Ln4/b;

    .line 7
    .line 8
    return-object p1

    .line 9
    :pswitch_8
    new-array p1, p1, [Lm0/h;

    .line 10
    .line 11
    return-object p1

    .line 12
    :pswitch_b
    new-array p1, p1, [Lm/j0;

    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_e
    new-array p1, p1, [Landroidx/versionedparcelable/ParcelImpl;

    .line 16
    .line 17
    return-object p1

    .line 18
    :pswitch_11
    new-array p1, p1, [Ld/i;

    .line 19
    .line 20
    return-object p1

    .line 21
    :pswitch_14
    new-array p1, p1, [Ld/a;

    .line 22
    .line 23
    return-object p1

    .line 24
    :pswitch_17
    new-array p1, p1, [Lcom/google/firebase/messaging/w;

    .line 25
    .line 26
    return-object p1

    .line 27
    :pswitch_1a
    new-array p1, p1, [Lcom/google/android/gms/common/internal/i;

    .line 28
    .line 29
    return-object p1

    .line 30
    :pswitch_1d
    new-array p1, p1, [Lcom/google/android/gms/common/internal/h;

    .line 31
    .line 32
    return-object p1

    .line 33
    :pswitch_20
    new-array p1, p1, [Lcom/google/android/gms/common/internal/j0;

    .line 34
    .line 35
    return-object p1

    .line 36
    :pswitch_23
    new-array p1, p1, [Lcom/google/android/gms/common/internal/p;

    .line 37
    .line 38
    return-object p1

    .line 39
    :pswitch_26
    new-array p1, p1, [Lcom/google/android/gms/common/internal/w;

    .line 40
    .line 41
    return-object p1

    .line 42
    :pswitch_29
    new-array p1, p1, [Lcom/google/android/gms/common/internal/v;

    .line 43
    .line 44
    return-object p1

    .line 45
    :pswitch_2c
    new-array p1, p1, [Lcom/google/android/gms/common/internal/n;

    .line 46
    .line 47
    return-object p1

    .line 48
    :pswitch_2f
    new-array p1, p1, [Lcom/google/android/gms/common/internal/q;

    .line 49
    .line 50
    return-object p1

    .line 51
    :pswitch_32
    new-array p1, p1, [Landroidx/fragment/app/e1;

    .line 52
    .line 53
    return-object p1

    .line 54
    :pswitch_35
    new-array p1, p1, [Landroidx/fragment/app/a1;

    .line 55
    .line 56
    return-object p1

    .line 57
    :pswitch_38
    new-array p1, p1, [Landroidx/fragment/app/u0;

    .line 58
    .line 59
    return-object p1

    .line 60
    :pswitch_3b
    new-array p1, p1, [Landroidx/fragment/app/c;

    .line 61
    .line 62
    return-object p1

    .line 63
    :pswitch_3e
    new-array p1, p1, [Landroidx/fragment/app/b;

    .line 64
    .line 65
    return-object p1

    .line 66
    :pswitch_41
    new-array p1, p1, [Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 67
    .line 68
    return-object p1

    .line 69
    :pswitch_44
    new-array p1, p1, [Landroid/support/v4/media/session/ParcelableVolumeInfo;

    .line 70
    .line 71
    return-object p1

    .line 72
    :pswitch_47
    new-array p1, p1, [Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 73
    .line 74
    return-object p1

    .line 75
    :pswitch_4a
    new-array p1, p1, [Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;

    .line 76
    .line 77
    return-object p1

    .line 78
    :pswitch_4d
    new-array p1, p1, [Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    .line 79
    .line 80
    return-object p1

    .line 81
    :pswitch_50
    new-array p1, p1, [Landroid/support/v4/media/RatingCompat;

    .line 82
    .line 83
    return-object p1

    .line 84
    :pswitch_53
    new-array p1, p1, [Landroid/support/v4/media/MediaMetadataCompat;

    .line 85
    .line 86
    return-object p1

    .line 87
    :pswitch_56
    new-array p1, p1, [Landroid/support/v4/media/MediaDescriptionCompat;

    .line 88
    .line 89
    return-object p1

    .line 90
    :pswitch_59
    new-array p1, p1, [Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 91
    .line 92
    return-object p1

    .line 93
    :pswitch_5c
    new-array p1, p1, [La/e;

    .line 94
    .line 95
    return-object p1

    .line 96
    nop

    .line 97
    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

###### Class android.support.v4.media.MediaBrowserCompat$MediaItem (android.support.v4.media.MediaBrowserCompat$MediaItem)
.class public Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:Landroid/support/v4/media/MediaDescriptionCompat;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, La/c;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, La/c;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->a:I

    .line 9
    .line 10
    sget-object v0, Landroid/support/v4/media/MediaDescriptionCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 11
    .line 12
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Landroid/support/v4/media/MediaDescriptionCompat;

    .line 17
    .line 18
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->b:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "MediaItem{mFlags="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->a:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", mDescription="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->b:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const/16 v1, 0x7d

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 1
    iget v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->a:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->b:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/MediaDescriptionCompat;->writeToParcel(Landroid/os/Parcel;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

###### Class android.support.v4.media.session.MediaSessionCompat$QueueItem (android.support.v4.media.session.MediaSessionCompat$QueueItem)
.class public final Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Landroid/support/v4/media/MediaDescriptionCompat;

.field public final b:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, La/c;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, v1}, La/c;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroid/support/v4/media/MediaDescriptionCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/support/v4/media/MediaDescriptionCompat;

    .line 11
    .line 12
    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->a:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    iput-wide v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->b:J

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "MediaSession.QueueItem {Description="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->a:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", Id="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-wide v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->b:J

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " }"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->a:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/MediaDescriptionCompat;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->b:J

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

###### Class android.support.v4.media.session.MediaSessionCompat$Token (android.support.v4.media.session.MediaSessionCompat$Token)
.class public final Landroid/support/v4/media/session/MediaSessionCompat$Token;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/support/v4/media/session/MediaSessionCompat$Token;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, La/c;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    invoke-direct {v0, v1}, La/c;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->a:Ljava/lang/Object;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_4

    .line 3
    .line 4
    return v0

    .line 5
    :cond_4
    instance-of v1, p1, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_a

    .line 9
    .line 10
    return v2

    .line 11
    :cond_a
    check-cast p1, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 12
    .line 13
    iget-object p1, p1, Landroid/support/v4/media/session/MediaSessionCompat$Token;->a:Ljava/lang/Object;

    .line 14
    .line 15
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->a:Ljava/lang/Object;

    .line 16
    .line 17
    if-nez v1, :cond_16

    .line 18
    .line 19
    if-nez p1, :cond_15

    .line 20
    .line 21
    return v0

    .line 22
    :cond_15
    return v2

    .line 23
    :cond_16
    if-nez p1, :cond_19

    .line 24
    .line 25
    return v2

    .line 26
    :cond_19
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->a:Ljava/lang/Object;

    .line 2
    .line 3
    if-nez v0, :cond_6

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/os/Parcelable;

    .line 4
    .line 5
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
