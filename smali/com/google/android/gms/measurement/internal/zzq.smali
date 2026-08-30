###### Class com.google.android.gms.measurement.internal.zzq (com.google.android.gms.measurement.internal.zzq)
.class public final Lcom/google/android/gms/measurement/internal/zzq;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/gms/measurement/internal/zzo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 54

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-static {v0}, Lj7/g;->u(Landroid/os/Parcel;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    const/4 v6, 0x0

    .line 12
    const-wide/32 v7, -0x80000000

    .line 13
    .line 14
    .line 15
    const-string v9, ""

    .line 16
    .line 17
    const/16 v10, 0x64

    .line 18
    .line 19
    move-object v12, v2

    .line 20
    move-object v13, v12

    .line 21
    move-object v14, v13

    .line 22
    move-object v15, v14

    .line 23
    move-object/from16 v20, v15

    .line 24
    .line 25
    move-object/from16 v25, v20

    .line 26
    .line 27
    move-object/from16 v33, v25

    .line 28
    .line 29
    move-object/from16 v34, v33

    .line 30
    .line 31
    move-object/from16 v37, v34

    .line 32
    .line 33
    move-object/from16 v38, v37

    .line 34
    .line 35
    move-object/from16 v41, v38

    .line 36
    .line 37
    move-object/from16 v50, v41

    .line 38
    .line 39
    move-wide/from16 v16, v3

    .line 40
    .line 41
    move-wide/from16 v18, v16

    .line 42
    .line 43
    move-wide/from16 v26, v18

    .line 44
    .line 45
    move-wide/from16 v28, v26

    .line 46
    .line 47
    move-wide/from16 v35, v28

    .line 48
    .line 49
    move-wide/from16 v43, v35

    .line 50
    .line 51
    move-wide/from16 v48, v43

    .line 52
    .line 53
    move/from16 v21, v5

    .line 54
    .line 55
    move/from16 v31, v21

    .line 56
    .line 57
    move/from16 v22, v6

    .line 58
    .line 59
    move/from16 v30, v22

    .line 60
    .line 61
    move/from16 v32, v30

    .line 62
    .line 63
    move/from16 v42, v32

    .line 64
    .line 65
    move/from16 v47, v42

    .line 66
    .line 67
    move-wide/from16 v23, v7

    .line 68
    .line 69
    move-object/from16 v39, v9

    .line 70
    .line 71
    move-object/from16 v40, v39

    .line 72
    .line 73
    move-object/from16 v46, v40

    .line 74
    .line 75
    move-object/from16 v51, v46

    .line 76
    .line 77
    move/from16 v45, v10

    .line 78
    .line 79
    :goto_4e
    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-ge v3, v1, :cond_13d

    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    int-to-char v4, v3

    .line 90
    packed-switch v4, :pswitch_data_146

    .line 91
    .line 92
    .line 93
    :pswitch_5c
    invoke-static {v3, v0}, Lj7/g;->s(ILandroid/os/Parcel;)V

    .line 94
    .line 95
    .line 96
    goto :goto_4e

    .line 97
    :pswitch_60
    invoke-static {v3, v0}, Lj7/g;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v51

    .line 101
    goto :goto_4e

    .line 102
    :pswitch_65
    invoke-static {v3, v0}, Lj7/g;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v50

    .line 106
    goto :goto_4e

    .line 107
    :pswitch_6a
    invoke-static {v3, v0}, Lj7/g;->q(ILandroid/os/Parcel;)J

    .line 108
    .line 109
    .line 110
    move-result-wide v48

    .line 111
    goto :goto_4e

    .line 112
    :pswitch_6f
    invoke-static {v3, v0}, Lj7/g;->p(ILandroid/os/Parcel;)I

    .line 113
    .line 114
    .line 115
    move-result v47

    .line 116
    goto :goto_4e

    .line 117
    :pswitch_74
    invoke-static {v3, v0}, Lj7/g;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v46

    .line 121
    goto :goto_4e

    .line 122
    :pswitch_79
    invoke-static {v3, v0}, Lj7/g;->p(ILandroid/os/Parcel;)I

    .line 123
    .line 124
    .line 125
    move-result v45

    .line 126
    goto :goto_4e

    .line 127
    :pswitch_7e
    invoke-static {v3, v0}, Lj7/g;->q(ILandroid/os/Parcel;)J

    .line 128
    .line 129
    .line 130
    move-result-wide v43

    .line 131
    goto :goto_4e

    .line 132
    :pswitch_83
    invoke-static {v3, v0}, Lj7/g;->n(ILandroid/os/Parcel;)Z

    .line 133
    .line 134
    .line 135
    move-result v42

    .line 136
    goto :goto_4e

    .line 137
    :pswitch_88
    invoke-static {v3, v0}, Lj7/g;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v41

    .line 141
    goto :goto_4e

    .line 142
    :pswitch_8d
    invoke-static {v3, v0}, Lj7/g;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v40

    .line 146
    goto :goto_4e

    .line 147
    :pswitch_92
    invoke-static {v3, v0}, Lj7/g;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v39

    .line 151
    goto :goto_4e

    .line 152
    :pswitch_97
    invoke-static {v3, v0}, Lj7/g;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v38

    .line 156
    goto :goto_4e

    .line 157
    :pswitch_9c
    invoke-static {v3, v0}, Lj7/g;->r(ILandroid/os/Parcel;)I

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    .line 162
    .line 163
    .line 164
    move-result v4

    .line 165
    if-nez v3, :cond_a9

    .line 166
    .line 167
    move-object/from16 v37, v2

    .line 168
    .line 169
    goto :goto_4e

    .line 170
    :cond_a9
    invoke-virtual {v0}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 171
    .line 172
    .line 173
    move-result-object v7

    .line 174
    add-int/2addr v4, v3

    .line 175
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 176
    .line 177
    .line 178
    move-object/from16 v37, v7

    .line 179
    .line 180
    goto :goto_4e

    .line 181
    :pswitch_b4
    invoke-static {v3, v0}, Lj7/g;->q(ILandroid/os/Parcel;)J

    .line 182
    .line 183
    .line 184
    move-result-wide v35

    .line 185
    goto :goto_4e

    .line 186
    :pswitch_b9
    invoke-static {v3, v0}, Lj7/g;->r(ILandroid/os/Parcel;)I

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    if-nez v3, :cond_c2

    .line 191
    .line 192
    move-object/from16 v34, v2

    .line 193
    .line 194
    goto :goto_4e

    .line 195
    :cond_c2
    const/4 v4, 0x4

    .line 196
    invoke-static {v0, v3, v4}, Lj7/g;->x(Landroid/os/Parcel;II)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    if-eqz v3, :cond_ce

    .line 204
    .line 205
    move v3, v5

    .line 206
    goto :goto_cf

    .line 207
    :cond_ce
    move v3, v6

    .line 208
    :goto_cf
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    move-object/from16 v34, v3

    .line 213
    .line 214
    goto/16 :goto_4e

    .line 215
    .line 216
    :pswitch_d7
    invoke-static {v3, v0}, Lj7/g;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v33

    .line 220
    goto/16 :goto_4e

    .line 221
    .line 222
    :pswitch_dd
    invoke-static {v3, v0}, Lj7/g;->n(ILandroid/os/Parcel;)Z

    .line 223
    .line 224
    .line 225
    move-result v32

    .line 226
    goto/16 :goto_4e

    .line 227
    .line 228
    :pswitch_e3
    invoke-static {v3, v0}, Lj7/g;->n(ILandroid/os/Parcel;)Z

    .line 229
    .line 230
    .line 231
    move-result v31

    .line 232
    goto/16 :goto_4e

    .line 233
    .line 234
    :pswitch_e9
    invoke-static {v3, v0}, Lj7/g;->p(ILandroid/os/Parcel;)I

    .line 235
    .line 236
    .line 237
    move-result v30

    .line 238
    goto/16 :goto_4e

    .line 239
    .line 240
    :pswitch_ef
    invoke-static {v3, v0}, Lj7/g;->q(ILandroid/os/Parcel;)J

    .line 241
    .line 242
    .line 243
    move-result-wide v28

    .line 244
    goto/16 :goto_4e

    .line 245
    .line 246
    :pswitch_f5
    invoke-static {v3, v0}, Lj7/g;->q(ILandroid/os/Parcel;)J

    .line 247
    .line 248
    .line 249
    move-result-wide v26

    .line 250
    goto/16 :goto_4e

    .line 251
    .line 252
    :pswitch_fb
    invoke-static {v3, v0}, Lj7/g;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v25

    .line 256
    goto/16 :goto_4e

    .line 257
    .line 258
    :pswitch_101
    invoke-static {v3, v0}, Lj7/g;->q(ILandroid/os/Parcel;)J

    .line 259
    .line 260
    .line 261
    move-result-wide v23

    .line 262
    goto/16 :goto_4e

    .line 263
    .line 264
    :pswitch_107
    invoke-static {v3, v0}, Lj7/g;->n(ILandroid/os/Parcel;)Z

    .line 265
    .line 266
    .line 267
    move-result v22

    .line 268
    goto/16 :goto_4e

    .line 269
    .line 270
    :pswitch_10d
    invoke-static {v3, v0}, Lj7/g;->n(ILandroid/os/Parcel;)Z

    .line 271
    .line 272
    .line 273
    move-result v21

    .line 274
    goto/16 :goto_4e

    .line 275
    .line 276
    :pswitch_113
    invoke-static {v3, v0}, Lj7/g;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v20

    .line 280
    goto/16 :goto_4e

    .line 281
    .line 282
    :pswitch_119
    invoke-static {v3, v0}, Lj7/g;->q(ILandroid/os/Parcel;)J

    .line 283
    .line 284
    .line 285
    move-result-wide v18

    .line 286
    goto/16 :goto_4e

    .line 287
    .line 288
    :pswitch_11f
    invoke-static {v3, v0}, Lj7/g;->q(ILandroid/os/Parcel;)J

    .line 289
    .line 290
    .line 291
    move-result-wide v16

    .line 292
    goto/16 :goto_4e

    .line 293
    .line 294
    :pswitch_125
    invoke-static {v3, v0}, Lj7/g;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v15

    .line 298
    goto/16 :goto_4e

    .line 299
    .line 300
    :pswitch_12b
    invoke-static {v3, v0}, Lj7/g;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v14

    .line 304
    goto/16 :goto_4e

    .line 305
    .line 306
    :pswitch_131
    invoke-static {v3, v0}, Lj7/g;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v13

    .line 310
    goto/16 :goto_4e

    .line 311
    .line 312
    :pswitch_137
    invoke-static {v3, v0}, Lj7/g;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v12

    .line 316
    goto/16 :goto_4e

    .line 317
    .line 318
    :cond_13d
    invoke-static {v1, v0}, Lj7/g;->i(ILandroid/os/Parcel;)V

    .line 319
    .line 320
    .line 321
    new-instance v11, Lcom/google/android/gms/measurement/internal/zzo;

    .line 322
    .line 323
    invoke-direct/range {v11 .. v51}, Lcom/google/android/gms/measurement/internal/zzo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;ZZJLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJILjava/lang/String;IJLjava/lang/String;Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    return-object v11

    .line 327
    :pswitch_data_146
    .packed-switch 0x2
        :pswitch_137
        :pswitch_131
        :pswitch_12b
        :pswitch_125
        :pswitch_11f
        :pswitch_119
        :pswitch_113
        :pswitch_10d
        :pswitch_107
        :pswitch_101
        :pswitch_fb
        :pswitch_f5
        :pswitch_ef
        :pswitch_e9
        :pswitch_e3
        :pswitch_5c
        :pswitch_dd
        :pswitch_d7
        :pswitch_5c
        :pswitch_b9
        :pswitch_b4
        :pswitch_9c
        :pswitch_97
        :pswitch_92
        :pswitch_8d
        :pswitch_88
        :pswitch_83
        :pswitch_7e
        :pswitch_79
        :pswitch_74
        :pswitch_6f
        :pswitch_5c
        :pswitch_6a
        :pswitch_65
        :pswitch_60
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    new-array p1, p1, [Lcom/google/android/gms/measurement/internal/zzo;

    .line 2
    .line 3
    return-object p1
.end method
