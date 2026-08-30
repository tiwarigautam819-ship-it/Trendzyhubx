###### Class y.p (y.p)
.class public final Ly/p;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/ArrayList;

.field public e:Ljava/lang/CharSequence;

.field public f:Ljava/lang/CharSequence;

.field public g:Landroid/app/PendingIntent;

.field public h:Landroidx/core/graphics/drawable/IconCompat;

.field public i:I

.field public j:I

.field public k:Z

.field public l:Landroidx/fragment/app/m;

.field public m:Z

.field public n:Landroid/os/Bundle;

.field public o:I

.field public p:I

.field public q:Ljava/lang/String;

.field public final r:Z

.field public final s:Landroid/app/Notification;

.field public final t:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ly/p;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Ly/p;->c:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Ly/p;->d:Ljava/util/ArrayList;

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Ly/p;->k:Z

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    iput-boolean v1, p0, Ly/p;->m:Z

    .line 30
    .line 31
    iput v1, p0, Ly/p;->o:I

    .line 32
    .line 33
    iput v1, p0, Ly/p;->p:I

    .line 34
    .line 35
    new-instance v2, Landroid/app/Notification;

    .line 36
    .line 37
    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v2, p0, Ly/p;->s:Landroid/app/Notification;

    .line 41
    .line 42
    iput-object p1, p0, Ly/p;->a:Landroid/content/Context;

    .line 43
    .line 44
    iput-object p2, p0, Ly/p;->q:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 47
    .line 48
    .line 49
    move-result-wide p1

    .line 50
    iput-wide p1, v2, Landroid/app/Notification;->when:J

    .line 51
    .line 52
    const/4 p1, -0x1

    .line 53
    iput p1, v2, Landroid/app/Notification;->audioStreamType:I

    .line 54
    .line 55
    iput v1, p0, Ly/p;->j:I

    .line 56
    .line 57
    new-instance p1, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, Ly/p;->t:Ljava/util/ArrayList;

    .line 63
    .line 64
    iput-boolean v0, p0, Ly/p;->r:Z

    .line 65
    .line 66
    return-void
.end method

.method public static b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3

    .line 1
    if-nez p0, :cond_3

    .line 2
    .line 3
    return-object p0

    .line 4
    :cond_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/16 v1, 0x1400

    .line 9
    .line 10
    if-le v0, v1, :cond_10

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :cond_10
    return-object p0
.end method


# virtual methods
.method public final a()Landroid/app/Notification;
    .registers 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lcom/google/firebase/messaging/y;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v2, Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v2, v1, Lcom/google/firebase/messaging/y;->d:Ljava/lang/Object;

    .line 19
    .line 20
    iput-object v0, v1, Lcom/google/firebase/messaging/y;->c:Ljava/lang/Object;

    .line 21
    .line 22
    iget-object v2, v0, Ly/p;->a:Landroid/content/Context;

    .line 23
    .line 24
    iput-object v2, v1, Lcom/google/firebase/messaging/y;->a:Ljava/lang/Object;

    .line 25
    .line 26
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 27
    .line 28
    const/16 v4, 0x1a

    .line 29
    .line 30
    if-lt v3, v4, :cond_28

    .line 31
    .line 32
    iget-object v3, v0, Ly/p;->q:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v2, v3}, Ly/r;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    iput-object v3, v1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 39
    .line 40
    goto :goto_2f

    .line 41
    :cond_28
    new-instance v3, Landroid/app/Notification$Builder;

    .line 42
    .line 43
    invoke-direct {v3, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    iput-object v3, v1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 47
    .line 48
    :goto_2f
    iget-object v3, v1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v3, Landroid/app/Notification$Builder;

    .line 51
    .line 52
    iget-object v5, v0, Ly/p;->s:Landroid/app/Notification;

    .line 53
    .line 54
    iget-wide v6, v5, Landroid/app/Notification;->when:J

    .line 55
    .line 56
    invoke-virtual {v3, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    iget v6, v5, Landroid/app/Notification;->icon:I

    .line 61
    .line 62
    iget v7, v5, Landroid/app/Notification;->iconLevel:I

    .line 63
    .line 64
    invoke-virtual {v3, v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    iget-object v6, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 69
    .line 70
    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    iget-object v6, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 75
    .line 76
    const/4 v7, 0x0

    .line 77
    invoke-virtual {v3, v6, v7}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    iget-object v6, v5, Landroid/app/Notification;->vibrate:[J

    .line 82
    .line 83
    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    iget v6, v5, Landroid/app/Notification;->ledARGB:I

    .line 88
    .line 89
    iget v8, v5, Landroid/app/Notification;->ledOnMS:I

    .line 90
    .line 91
    iget v9, v5, Landroid/app/Notification;->ledOffMS:I

    .line 92
    .line 93
    invoke-virtual {v3, v6, v8, v9}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    iget v6, v5, Landroid/app/Notification;->flags:I

    .line 98
    .line 99
    and-int/lit8 v6, v6, 0x2

    .line 100
    .line 101
    const/4 v8, 0x1

    .line 102
    const/4 v9, 0x0

    .line 103
    if-eqz v6, :cond_6a

    .line 104
    .line 105
    move v6, v8

    .line 106
    goto :goto_6b

    .line 107
    :cond_6a
    move v6, v9

    .line 108
    :goto_6b
    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    iget v6, v5, Landroid/app/Notification;->flags:I

    .line 113
    .line 114
    and-int/lit8 v6, v6, 0x8

    .line 115
    .line 116
    if-eqz v6, :cond_77

    .line 117
    .line 118
    move v6, v8

    .line 119
    goto :goto_78

    .line 120
    :cond_77
    move v6, v9

    .line 121
    :goto_78
    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    iget v6, v5, Landroid/app/Notification;->flags:I

    .line 126
    .line 127
    and-int/lit8 v6, v6, 0x10

    .line 128
    .line 129
    if-eqz v6, :cond_84

    .line 130
    .line 131
    move v6, v8

    .line 132
    goto :goto_85

    .line 133
    :cond_84
    move v6, v9

    .line 134
    :goto_85
    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    iget v6, v5, Landroid/app/Notification;->defaults:I

    .line 139
    .line 140
    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    iget-object v6, v0, Ly/p;->e:Ljava/lang/CharSequence;

    .line 145
    .line 146
    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    iget-object v6, v0, Ly/p;->f:Ljava/lang/CharSequence;

    .line 151
    .line 152
    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    iget-object v6, v0, Ly/p;->g:Landroid/app/PendingIntent;

    .line 161
    .line 162
    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    iget-object v6, v5, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 167
    .line 168
    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    iget v6, v5, Landroid/app/Notification;->flags:I

    .line 173
    .line 174
    and-int/lit16 v6, v6, 0x80

    .line 175
    .line 176
    if-eqz v6, :cond_b2

    .line 177
    .line 178
    goto :goto_b3

    .line 179
    :cond_b2
    move v8, v9

    .line 180
    :goto_b3
    invoke-virtual {v3, v7, v8}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    iget v6, v0, Ly/p;->i:I

    .line 185
    .line 186
    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    invoke-virtual {v3, v9, v9, v9}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 191
    .line 192
    .line 193
    iget-object v3, v1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 194
    .line 195
    check-cast v3, Landroid/app/Notification$Builder;

    .line 196
    .line 197
    iget-object v6, v0, Ly/p;->h:Landroidx/core/graphics/drawable/IconCompat;

    .line 198
    .line 199
    if-nez v6, :cond_ca

    .line 200
    .line 201
    move-object v2, v7

    .line 202
    goto :goto_ce

    .line 203
    :cond_ca
    invoke-virtual {v6, v2}, Landroidx/core/graphics/drawable/IconCompat;->f(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    :goto_ce
    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    .line 208
    .line 209
    .line 210
    iget-object v2, v1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 211
    .line 212
    check-cast v2, Landroid/app/Notification$Builder;

    .line 213
    .line 214
    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    invoke-virtual {v2, v9}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    iget v3, v0, Ly/p;->j:I

    .line 223
    .line 224
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 225
    .line 226
    .line 227
    iget-object v2, v0, Ly/p;->b:Ljava/util/ArrayList;

    .line 228
    .line 229
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    move v6, v9

    .line 234
    :goto_e9
    const/16 v10, 0x18

    .line 235
    .line 236
    const-string v11, "android.support.allowGeneratedReplies"

    .line 237
    .line 238
    if-ge v6, v3, :cond_168

    .line 239
    .line 240
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v13

    .line 244
    add-int/lit8 v6, v6, 0x1

    .line 245
    .line 246
    check-cast v13, Ly/j;

    .line 247
    .line 248
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 249
    .line 250
    iget-object v15, v13, Ly/j;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 251
    .line 252
    if-nez v15, :cond_107

    .line 253
    .line 254
    iget v15, v13, Ly/j;->e:I

    .line 255
    .line 256
    if-eqz v15, :cond_107

    .line 257
    .line 258
    invoke-static {v15}, Landroidx/core/graphics/drawable/IconCompat;->b(I)Landroidx/core/graphics/drawable/IconCompat;

    .line 259
    .line 260
    .line 261
    move-result-object v15

    .line 262
    iput-object v15, v13, Ly/j;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 263
    .line 264
    :cond_107
    iget-object v15, v13, Ly/j;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 265
    .line 266
    iget-boolean v4, v13, Ly/j;->c:Z

    .line 267
    .line 268
    iget-object v8, v13, Ly/j;->a:Landroid/os/Bundle;

    .line 269
    .line 270
    if-eqz v15, :cond_114

    .line 271
    .line 272
    invoke-virtual {v15, v7}, Landroidx/core/graphics/drawable/IconCompat;->f(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    .line 273
    .line 274
    .line 275
    move-result-object v15

    .line 276
    goto :goto_115

    .line 277
    :cond_114
    move-object v15, v7

    .line 278
    :goto_115
    iget-object v7, v13, Ly/j;->f:Ljava/lang/CharSequence;

    .line 279
    .line 280
    iget-object v12, v13, Ly/j;->g:Landroid/app/PendingIntent;

    .line 281
    .line 282
    new-instance v9, Landroid/app/Notification$Action$Builder;

    .line 283
    .line 284
    invoke-direct {v9, v15, v7, v12}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 285
    .line 286
    .line 287
    if-eqz v8, :cond_126

    .line 288
    .line 289
    new-instance v7, Landroid/os/Bundle;

    .line 290
    .line 291
    invoke-direct {v7, v8}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 292
    .line 293
    .line 294
    goto :goto_12b

    .line 295
    :cond_126
    new-instance v7, Landroid/os/Bundle;

    .line 296
    .line 297
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 298
    .line 299
    .line 300
    :goto_12b
    invoke-virtual {v7, v11, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 301
    .line 302
    .line 303
    if-lt v14, v10, :cond_133

    .line 304
    .line 305
    invoke-static {v9, v4}, Ly/q;->b(Landroid/app/Notification$Action$Builder;Z)V

    .line 306
    .line 307
    .line 308
    :cond_133
    const-string v4, "android.support.action.semanticAction"

    .line 309
    .line 310
    const/4 v8, 0x0

    .line 311
    invoke-virtual {v7, v4, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 312
    .line 313
    .line 314
    const/16 v4, 0x1c

    .line 315
    .line 316
    if-lt v14, v4, :cond_140

    .line 317
    .line 318
    invoke-static {v9}, Ly/s;->a(Landroid/app/Notification$Action$Builder;)V

    .line 319
    .line 320
    .line 321
    :cond_140
    const/16 v4, 0x1d

    .line 322
    .line 323
    if-lt v14, v4, :cond_147

    .line 324
    .line 325
    invoke-static {v9}, Ly/f;->d(Landroid/app/Notification$Action$Builder;)V

    .line 326
    .line 327
    .line 328
    :cond_147
    const/16 v4, 0x1f

    .line 329
    .line 330
    if-lt v14, v4, :cond_14e

    .line 331
    .line 332
    invoke-static {v9}, Ly/t;->a(Landroid/app/Notification$Action$Builder;)V

    .line 333
    .line 334
    .line 335
    :cond_14e
    const-string v4, "android.support.action.showsUserInterface"

    .line 336
    .line 337
    iget-boolean v8, v13, Ly/j;->d:Z

    .line 338
    .line 339
    invoke-virtual {v7, v4, v8}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v9, v7}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 343
    .line 344
    .line 345
    iget-object v4, v1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 346
    .line 347
    check-cast v4, Landroid/app/Notification$Builder;

    .line 348
    .line 349
    invoke-virtual {v9}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    .line 350
    .line 351
    .line 352
    move-result-object v7

    .line 353
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 354
    .line 355
    .line 356
    const/16 v4, 0x1a

    .line 357
    .line 358
    const/4 v7, 0x0

    .line 359
    const/4 v9, 0x0

    .line 360
    goto :goto_e9

    .line 361
    :cond_168
    iget-object v2, v0, Ly/p;->n:Landroid/os/Bundle;

    .line 362
    .line 363
    if-eqz v2, :cond_173

    .line 364
    .line 365
    iget-object v3, v1, Lcom/google/firebase/messaging/y;->d:Ljava/lang/Object;

    .line 366
    .line 367
    check-cast v3, Landroid/os/Bundle;

    .line 368
    .line 369
    invoke-virtual {v3, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 370
    .line 371
    .line 372
    :cond_173
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 373
    .line 374
    iget-object v3, v1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 375
    .line 376
    check-cast v3, Landroid/app/Notification$Builder;

    .line 377
    .line 378
    iget-boolean v4, v0, Ly/p;->k:Z

    .line 379
    .line 380
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 381
    .line 382
    .line 383
    iget-object v3, v1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 384
    .line 385
    check-cast v3, Landroid/app/Notification$Builder;

    .line 386
    .line 387
    iget-boolean v4, v0, Ly/p;->m:Z

    .line 388
    .line 389
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    .line 390
    .line 391
    .line 392
    iget-object v3, v1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 393
    .line 394
    check-cast v3, Landroid/app/Notification$Builder;

    .line 395
    .line 396
    const/4 v4, 0x0

    .line 397
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 398
    .line 399
    .line 400
    iget-object v3, v1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 401
    .line 402
    check-cast v3, Landroid/app/Notification$Builder;

    .line 403
    .line 404
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 405
    .line 406
    .line 407
    iget-object v3, v1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 408
    .line 409
    check-cast v3, Landroid/app/Notification$Builder;

    .line 410
    .line 411
    const/4 v8, 0x0

    .line 412
    invoke-virtual {v3, v8}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    .line 413
    .line 414
    .line 415
    iget-object v3, v1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 416
    .line 417
    check-cast v3, Landroid/app/Notification$Builder;

    .line 418
    .line 419
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 420
    .line 421
    .line 422
    iget-object v3, v1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 423
    .line 424
    check-cast v3, Landroid/app/Notification$Builder;

    .line 425
    .line 426
    iget v6, v0, Ly/p;->o:I

    .line 427
    .line 428
    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 429
    .line 430
    .line 431
    iget-object v3, v1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 432
    .line 433
    check-cast v3, Landroid/app/Notification$Builder;

    .line 434
    .line 435
    iget v6, v0, Ly/p;->p:I

    .line 436
    .line 437
    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 438
    .line 439
    .line 440
    iget-object v3, v1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 441
    .line 442
    check-cast v3, Landroid/app/Notification$Builder;

    .line 443
    .line 444
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    .line 445
    .line 446
    .line 447
    iget-object v3, v1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 448
    .line 449
    check-cast v3, Landroid/app/Notification$Builder;

    .line 450
    .line 451
    iget-object v4, v5, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 452
    .line 453
    iget-object v5, v5, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 454
    .line 455
    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    .line 456
    .line 457
    .line 458
    iget-object v3, v0, Ly/p;->t:Ljava/util/ArrayList;

    .line 459
    .line 460
    iget-object v4, v0, Ly/p;->c:Ljava/util/ArrayList;

    .line 461
    .line 462
    const/16 v5, 0x1c

    .line 463
    .line 464
    if-ge v2, v5, :cond_216

    .line 465
    .line 466
    if-nez v4, :cond_1d5

    .line 467
    .line 468
    const/4 v2, 0x0

    .line 469
    goto :goto_1e8

    .line 470
    :cond_1d5
    new-instance v2, Ljava/util/ArrayList;

    .line 471
    .line 472
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 473
    .line 474
    .line 475
    move-result v5

    .line 476
    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 477
    .line 478
    .line 479
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 480
    .line 481
    .line 482
    move-result-object v5

    .line 483
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 484
    .line 485
    .line 486
    move-result v6

    .line 487
    if-nez v6, :cond_209

    .line 488
    .line 489
    :goto_1e8
    if-nez v2, :cond_1eb

    .line 490
    .line 491
    goto :goto_216

    .line 492
    :cond_1eb
    if-nez v3, :cond_1ef

    .line 493
    .line 494
    move-object v3, v2

    .line 495
    goto :goto_216

    .line 496
    :cond_1ef
    new-instance v5, Ls/f;

    .line 497
    .line 498
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 499
    .line 500
    .line 501
    move-result v6

    .line 502
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 503
    .line 504
    .line 505
    move-result v7

    .line 506
    add-int/2addr v7, v6

    .line 507
    invoke-direct {v5, v7}, Ls/f;-><init>(I)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v5, v2}, Ls/f;->addAll(Ljava/util/Collection;)Z

    .line 511
    .line 512
    .line 513
    invoke-virtual {v5, v3}, Ls/f;->addAll(Ljava/util/Collection;)Z

    .line 514
    .line 515
    .line 516
    new-instance v3, Ljava/util/ArrayList;

    .line 517
    .line 518
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 519
    .line 520
    .line 521
    goto :goto_216

    .line 522
    :cond_209
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 523
    .line 524
    .line 525
    move-result-object v1

    .line 526
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 527
    .line 528
    .line 529
    new-instance v1, Ljava/lang/ClassCastException;

    .line 530
    .line 531
    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    .line 532
    .line 533
    .line 534
    throw v1

    .line 535
    :cond_216
    :goto_216
    if-eqz v3, :cond_235

    .line 536
    .line 537
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 538
    .line 539
    .line 540
    move-result v2

    .line 541
    if-nez v2, :cond_235

    .line 542
    .line 543
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 544
    .line 545
    .line 546
    move-result v2

    .line 547
    const/4 v5, 0x0

    .line 548
    :goto_223
    if-ge v5, v2, :cond_235

    .line 549
    .line 550
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 551
    .line 552
    .line 553
    move-result-object v6

    .line 554
    add-int/lit8 v5, v5, 0x1

    .line 555
    .line 556
    check-cast v6, Ljava/lang/String;

    .line 557
    .line 558
    iget-object v7, v1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 559
    .line 560
    check-cast v7, Landroid/app/Notification$Builder;

    .line 561
    .line 562
    invoke-virtual {v7, v6}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 563
    .line 564
    .line 565
    goto :goto_223

    .line 566
    :cond_235
    iget-object v2, v0, Ly/p;->d:Ljava/util/ArrayList;

    .line 567
    .line 568
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 569
    .line 570
    .line 571
    move-result v3

    .line 572
    if-lez v3, :cond_2f5

    .line 573
    .line 574
    iget-object v3, v0, Ly/p;->n:Landroid/os/Bundle;

    .line 575
    .line 576
    if-nez v3, :cond_248

    .line 577
    .line 578
    new-instance v3, Landroid/os/Bundle;

    .line 579
    .line 580
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 581
    .line 582
    .line 583
    iput-object v3, v0, Ly/p;->n:Landroid/os/Bundle;

    .line 584
    .line 585
    :cond_248
    iget-object v3, v0, Ly/p;->n:Landroid/os/Bundle;

    .line 586
    .line 587
    const-string v5, "android.car.EXTENSIONS"

    .line 588
    .line 589
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 590
    .line 591
    .line 592
    move-result-object v3

    .line 593
    if-nez v3, :cond_257

    .line 594
    .line 595
    new-instance v3, Landroid/os/Bundle;

    .line 596
    .line 597
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 598
    .line 599
    .line 600
    :cond_257
    new-instance v6, Landroid/os/Bundle;

    .line 601
    .line 602
    invoke-direct {v6, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 603
    .line 604
    .line 605
    new-instance v7, Landroid/os/Bundle;

    .line 606
    .line 607
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 608
    .line 609
    .line 610
    const/4 v8, 0x0

    .line 611
    :goto_262
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 612
    .line 613
    .line 614
    move-result v9

    .line 615
    if-ge v8, v9, :cond_2d6

    .line 616
    .line 617
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object v9

    .line 621
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 622
    .line 623
    .line 624
    move-result-object v12

    .line 625
    check-cast v12, Ly/j;

    .line 626
    .line 627
    new-instance v13, Landroid/os/Bundle;

    .line 628
    .line 629
    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 630
    .line 631
    .line 632
    iget-object v14, v12, Ly/j;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 633
    .line 634
    if-nez v14, :cond_285

    .line 635
    .line 636
    iget v14, v12, Ly/j;->e:I

    .line 637
    .line 638
    if-eqz v14, :cond_285

    .line 639
    .line 640
    invoke-static {v14}, Landroidx/core/graphics/drawable/IconCompat;->b(I)Landroidx/core/graphics/drawable/IconCompat;

    .line 641
    .line 642
    .line 643
    move-result-object v14

    .line 644
    iput-object v14, v12, Ly/j;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 645
    .line 646
    :cond_285
    iget-object v14, v12, Ly/j;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 647
    .line 648
    iget-object v15, v12, Ly/j;->a:Landroid/os/Bundle;

    .line 649
    .line 650
    if-eqz v14, :cond_290

    .line 651
    .line 652
    invoke-virtual {v14}, Landroidx/core/graphics/drawable/IconCompat;->c()I

    .line 653
    .line 654
    .line 655
    move-result v14

    .line 656
    goto :goto_291

    .line 657
    :cond_290
    const/4 v14, 0x0

    .line 658
    :goto_291
    const-string v10, "icon"

    .line 659
    .line 660
    invoke-virtual {v13, v10, v14}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 661
    .line 662
    .line 663
    const-string v10, "title"

    .line 664
    .line 665
    iget-object v14, v12, Ly/j;->f:Ljava/lang/CharSequence;

    .line 666
    .line 667
    invoke-virtual {v13, v10, v14}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 668
    .line 669
    .line 670
    const-string v10, "actionIntent"

    .line 671
    .line 672
    iget-object v14, v12, Ly/j;->g:Landroid/app/PendingIntent;

    .line 673
    .line 674
    invoke-virtual {v13, v10, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 675
    .line 676
    .line 677
    if-eqz v15, :cond_2ac

    .line 678
    .line 679
    new-instance v10, Landroid/os/Bundle;

    .line 680
    .line 681
    invoke-direct {v10, v15}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 682
    .line 683
    .line 684
    goto :goto_2b1

    .line 685
    :cond_2ac
    new-instance v10, Landroid/os/Bundle;

    .line 686
    .line 687
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 688
    .line 689
    .line 690
    :goto_2b1
    iget-boolean v14, v12, Ly/j;->c:Z

    .line 691
    .line 692
    invoke-virtual {v10, v11, v14}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 693
    .line 694
    .line 695
    const-string v14, "extras"

    .line 696
    .line 697
    invoke-virtual {v13, v14, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 698
    .line 699
    .line 700
    const-string v10, "remoteInputs"

    .line 701
    .line 702
    const/4 v14, 0x0

    .line 703
    invoke-virtual {v13, v10, v14}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 704
    .line 705
    .line 706
    const-string v10, "showsUserInterface"

    .line 707
    .line 708
    iget-boolean v12, v12, Ly/j;->d:Z

    .line 709
    .line 710
    invoke-virtual {v13, v10, v12}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 711
    .line 712
    .line 713
    const-string v10, "semanticAction"

    .line 714
    .line 715
    const/4 v12, 0x0

    .line 716
    invoke-virtual {v13, v10, v12}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 717
    .line 718
    .line 719
    invoke-virtual {v7, v9, v13}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 720
    .line 721
    .line 722
    add-int/lit8 v8, v8, 0x1

    .line 723
    .line 724
    const/16 v10, 0x18

    .line 725
    .line 726
    goto :goto_262

    .line 727
    :cond_2d6
    const-string v2, "invisible_actions"

    .line 728
    .line 729
    invoke-virtual {v3, v2, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 730
    .line 731
    .line 732
    invoke-virtual {v6, v2, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 733
    .line 734
    .line 735
    iget-object v2, v0, Ly/p;->n:Landroid/os/Bundle;

    .line 736
    .line 737
    if-nez v2, :cond_2e9

    .line 738
    .line 739
    new-instance v2, Landroid/os/Bundle;

    .line 740
    .line 741
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 742
    .line 743
    .line 744
    iput-object v2, v0, Ly/p;->n:Landroid/os/Bundle;

    .line 745
    .line 746
    :cond_2e9
    iget-object v2, v0, Ly/p;->n:Landroid/os/Bundle;

    .line 747
    .line 748
    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 749
    .line 750
    .line 751
    iget-object v2, v1, Lcom/google/firebase/messaging/y;->d:Ljava/lang/Object;

    .line 752
    .line 753
    check-cast v2, Landroid/os/Bundle;

    .line 754
    .line 755
    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 756
    .line 757
    .line 758
    :cond_2f5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 759
    .line 760
    const/16 v3, 0x18

    .line 761
    .line 762
    if-lt v2, v3, :cond_30b

    .line 763
    .line 764
    iget-object v3, v1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 765
    .line 766
    check-cast v3, Landroid/app/Notification$Builder;

    .line 767
    .line 768
    iget-object v5, v0, Ly/p;->n:Landroid/os/Bundle;

    .line 769
    .line 770
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 771
    .line 772
    .line 773
    iget-object v3, v1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 774
    .line 775
    check-cast v3, Landroid/app/Notification$Builder;

    .line 776
    .line 777
    invoke-static {v3}, Ly/q;->c(Landroid/app/Notification$Builder;)V

    .line 778
    .line 779
    .line 780
    :cond_30b
    const/16 v3, 0x1a

    .line 781
    .line 782
    if-lt v2, v3, :cond_34f

    .line 783
    .line 784
    iget-object v3, v1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 785
    .line 786
    check-cast v3, Landroid/app/Notification$Builder;

    .line 787
    .line 788
    invoke-static {v3}, Ly/r;->b(Landroid/app/Notification$Builder;)V

    .line 789
    .line 790
    .line 791
    iget-object v3, v1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 792
    .line 793
    check-cast v3, Landroid/app/Notification$Builder;

    .line 794
    .line 795
    invoke-static {v3}, Ly/r;->d(Landroid/app/Notification$Builder;)V

    .line 796
    .line 797
    .line 798
    iget-object v3, v1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 799
    .line 800
    check-cast v3, Landroid/app/Notification$Builder;

    .line 801
    .line 802
    invoke-static {v3}, Ly/r;->e(Landroid/app/Notification$Builder;)V

    .line 803
    .line 804
    .line 805
    iget-object v3, v1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 806
    .line 807
    check-cast v3, Landroid/app/Notification$Builder;

    .line 808
    .line 809
    invoke-static {v3}, Ly/r;->f(Landroid/app/Notification$Builder;)V

    .line 810
    .line 811
    .line 812
    iget-object v3, v1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 813
    .line 814
    check-cast v3, Landroid/app/Notification$Builder;

    .line 815
    .line 816
    invoke-static {v3}, Ly/r;->c(Landroid/app/Notification$Builder;)V

    .line 817
    .line 818
    .line 819
    iget-object v3, v0, Ly/p;->q:Ljava/lang/String;

    .line 820
    .line 821
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 822
    .line 823
    .line 824
    move-result v3

    .line 825
    if-nez v3, :cond_34f

    .line 826
    .line 827
    iget-object v3, v1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 828
    .line 829
    check-cast v3, Landroid/app/Notification$Builder;

    .line 830
    .line 831
    const/4 v14, 0x0

    .line 832
    invoke-virtual {v3, v14}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 833
    .line 834
    .line 835
    move-result-object v3

    .line 836
    const/4 v8, 0x0

    .line 837
    invoke-virtual {v3, v8}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 838
    .line 839
    .line 840
    move-result-object v3

    .line 841
    invoke-virtual {v3, v8, v8, v8}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    .line 842
    .line 843
    .line 844
    move-result-object v3

    .line 845
    invoke-virtual {v3, v14}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 846
    .line 847
    .line 848
    :cond_34f
    const/16 v5, 0x1c

    .line 849
    .line 850
    if-lt v2, v5, :cond_35d

    .line 851
    .line 852
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 853
    .line 854
    .line 855
    move-result-object v3

    .line 856
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 857
    .line 858
    .line 859
    move-result v4

    .line 860
    if-nez v4, :cond_360

    .line 861
    .line 862
    :cond_35d
    const/16 v4, 0x1d

    .line 863
    .line 864
    goto :goto_36d

    .line 865
    :cond_360
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 866
    .line 867
    .line 868
    move-result-object v1

    .line 869
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 870
    .line 871
    .line 872
    new-instance v1, Ljava/lang/ClassCastException;

    .line 873
    .line 874
    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    .line 875
    .line 876
    .line 877
    throw v1

    .line 878
    :goto_36d
    if-lt v2, v4, :cond_37f

    .line 879
    .line 880
    iget-object v2, v1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 881
    .line 882
    check-cast v2, Landroid/app/Notification$Builder;

    .line 883
    .line 884
    iget-boolean v3, v0, Ly/p;->r:Z

    .line 885
    .line 886
    invoke-static {v2, v3}, Ly/f;->b(Landroid/app/Notification$Builder;Z)V

    .line 887
    .line 888
    .line 889
    iget-object v2, v1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 890
    .line 891
    check-cast v2, Landroid/app/Notification$Builder;

    .line 892
    .line 893
    invoke-static {v2}, Ly/f;->c(Landroid/app/Notification$Builder;)V

    .line 894
    .line 895
    .line 896
    :cond_37f
    iget-object v2, v1, Lcom/google/firebase/messaging/y;->c:Ljava/lang/Object;

    .line 897
    .line 898
    check-cast v2, Ly/p;

    .line 899
    .line 900
    iget-object v3, v2, Ly/p;->l:Landroidx/fragment/app/m;

    .line 901
    .line 902
    if-eqz v3, :cond_38a

    .line 903
    .line 904
    invoke-virtual {v3, v1}, Landroidx/fragment/app/m;->a(Lcom/google/firebase/messaging/y;)V

    .line 905
    .line 906
    .line 907
    :cond_38a
    iget-object v4, v1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 908
    .line 909
    check-cast v4, Landroid/app/Notification$Builder;

    .line 910
    .line 911
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 912
    .line 913
    const/16 v6, 0x1a

    .line 914
    .line 915
    if-lt v5, v6, :cond_399

    .line 916
    .line 917
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 918
    .line 919
    .line 920
    move-result-object v1

    .line 921
    goto :goto_3ad

    .line 922
    :cond_399
    const/16 v6, 0x18

    .line 923
    .line 924
    if-lt v5, v6, :cond_3a2

    .line 925
    .line 926
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 927
    .line 928
    .line 929
    move-result-object v1

    .line 930
    goto :goto_3ad

    .line 931
    :cond_3a2
    iget-object v1, v1, Lcom/google/firebase/messaging/y;->d:Ljava/lang/Object;

    .line 932
    .line 933
    check-cast v1, Landroid/os/Bundle;

    .line 934
    .line 935
    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 936
    .line 937
    .line 938
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 939
    .line 940
    .line 941
    move-result-object v1

    .line 942
    :goto_3ad
    if-eqz v3, :cond_3b4

    .line 943
    .line 944
    iget-object v2, v2, Ly/p;->l:Landroidx/fragment/app/m;

    .line 945
    .line 946
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 947
    .line 948
    .line 949
    :cond_3b4
    if-eqz v3, :cond_3c3

    .line 950
    .line 951
    iget-object v2, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 952
    .line 953
    if-eqz v2, :cond_3c3

    .line 954
    .line 955
    invoke-virtual {v3}, Landroidx/fragment/app/m;->b()Ljava/lang/String;

    .line 956
    .line 957
    .line 958
    move-result-object v3

    .line 959
    const-string v4, "androidx.core.app.extra.COMPAT_TEMPLATE"

    .line 960
    .line 961
    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    .line 963
    .line 964
    :cond_3c3
    return-object v1
.end method

.method public final c(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Ly/p;->s:Landroid/app/Notification;

    .line 2
    .line 3
    if-eqz p1, :cond_b

    .line 4
    .line 5
    iget p1, v0, Landroid/app/Notification;->flags:I

    .line 6
    .line 7
    or-int/lit8 p1, p1, 0x10

    .line 8
    .line 9
    iput p1, v0, Landroid/app/Notification;->flags:I

    .line 10
    .line 11
    return-void

    .line 12
    :cond_b
    iget p1, v0, Landroid/app/Notification;->flags:I

    .line 13
    .line 14
    and-int/lit8 p1, p1, -0x11

    .line 15
    .line 16
    iput p1, v0, Landroid/app/Notification;->flags:I

    .line 17
    .line 18
    return-void
.end method

.method public final d(Landroid/graphics/Bitmap;)V
    .registers 9

    .line 1
    if-nez p1, :cond_4

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_6e

    .line 5
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v1, 0x1b

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-lt v0, v1, :cond_c

    .line 11
    .line 12
    goto :goto_61

    .line 13
    :cond_c
    iget-object v0, p0, Ly/p;->a:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const v1, 0x7f070068

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const v3, 0x7f070067

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-gt v3, v1, :cond_2d

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-gt v3, v0, :cond_2d

    .line 44
    .line 45
    goto :goto_61

    .line 46
    :cond_2d
    int-to-double v3, v1

    .line 47
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    int-to-double v5, v1

    .line 56
    div-double/2addr v3, v5

    .line 57
    int-to-double v0, v0

    .line 58
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    int-to-double v5, v5

    .line 67
    div-double/2addr v0, v5

    .line 68
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(DD)D

    .line 69
    .line 70
    .line 71
    move-result-wide v0

    .line 72
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    int-to-double v3, v3

    .line 77
    mul-double/2addr v3, v0

    .line 78
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    .line 79
    .line 80
    .line 81
    move-result-wide v3

    .line 82
    double-to-int v3, v3

    .line 83
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    int-to-double v4, v4

    .line 88
    mul-double/2addr v4, v0

    .line 89
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    .line 90
    .line 91
    .line 92
    move-result-wide v0

    .line 93
    double-to-int v0, v0

    .line 94
    invoke-static {p1, v3, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    :goto_61
    sget-object v0, Landroidx/core/graphics/drawable/IconCompat;->k:Landroid/graphics/PorterDuff$Mode;

    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    new-instance v0, Landroidx/core/graphics/drawable/IconCompat;

    .line 104
    .line 105
    invoke-direct {v0, v2}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    .line 106
    .line 107
    .line 108
    iput-object p1, v0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 109
    .line 110
    move-object p1, v0

    .line 111
    :goto_6e
    iput-object p1, p0, Ly/p;->h:Landroidx/core/graphics/drawable/IconCompat;

    .line 112
    .line 113
    return-void
.end method

.method public final e(Landroidx/fragment/app/m;)V
    .registers 3

    .line 1
    iget-object v0, p0, Ly/p;->l:Landroidx/fragment/app/m;

    .line 2
    .line 3
    if-eq v0, p1, :cond_11

    .line 4
    .line 5
    iput-object p1, p0, Ly/p;->l:Landroidx/fragment/app/m;

    .line 6
    .line 7
    iget-object v0, p1, Landroidx/fragment/app/m;->a:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Ly/p;

    .line 10
    .line 11
    if-eq v0, p0, :cond_11

    .line 12
    .line 13
    iput-object p0, p1, Landroidx/fragment/app/m;->a:Ljava/lang/Object;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Ly/p;->e(Landroidx/fragment/app/m;)V

    .line 16
    .line 17
    .line 18
    :cond_11
    return-void
.end method
