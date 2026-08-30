###### Class y2.u (y2.u)
.class public abstract Ly2/u;
.super Ly2/t;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final synthetic c:I

.field public d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Ly2/u;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILandroid/os/Parcel;)V
    .registers 3

    iput p1, p0, Ly2/u;->c:I

    packed-switch p1, :pswitch_data_12

    .line 2
    invoke-direct {p0, p2}, Ly2/t;-><init>(Landroid/os/Parcel;)V

    .line 3
    sget-object p1, Lx1/f;->b:Lx1/f;

    iput-object p1, p0, Ly2/u;->d:Ljava/lang/Object;

    return-void

    .line 4
    :pswitch_d
    invoke-direct {p0, p2}, Ly2/t;-><init>(Landroid/os/Parcel;)V

    return-void

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_d
    .end packed-switch
.end method

.method public constructor <init>(Ly2/o;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Ly2/u;->c:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Ly2/t;->b:Ly2/o;

    .line 7
    sget-object p1, Lx1/f;->b:Lx1/f;

    iput-object p1, p0, Ly2/u;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public h(IILandroid/content/Intent;)Z
    .registers 13

    .line 1
    iget v0, p0, Ly2/u;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_138

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Ly2/t;->h(IILandroid/content/Intent;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1

    .line 11
    :pswitch_a
    invoke-virtual {p0}, Ly2/t;->d()Ly2/o;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v1, p1, Ly2/o;->g:Ly2/m;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    if-nez p3, :cond_21

    .line 19
    .line 20
    new-instance v0, Ly2/n;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v5, 0x0

    .line 24
    const-string v4, "Operation canceled"

    .line 25
    .line 26
    invoke-direct/range {v0 .. v5}, Ly2/n;-><init>(Ly2/m;ILx1/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Ly2/u;->l(Ly2/n;)V

    .line 30
    .line 31
    .line 32
    goto/16 :goto_135

    .line 33
    .line 34
    :cond_21
    const-string p1, "error_description"

    .line 35
    .line 36
    const-string v0, "error_message"

    .line 37
    .line 38
    const-string v3, "error_type"

    .line 39
    .line 40
    const-string v4, "error"

    .line 41
    .line 42
    const-string v5, "error_code"

    .line 43
    .line 44
    move v6, v2

    .line 45
    const/4 v2, 0x3

    .line 46
    const-string v7, ": "

    .line 47
    .line 48
    const/4 v8, 0x0

    .line 49
    if-nez p2, :cond_9c

    .line 50
    .line 51
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    if-eqz p2, :cond_41

    .line 56
    .line 57
    invoke-virtual {p2, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p3

    .line 61
    if-nez p3, :cond_3f

    .line 62
    .line 63
    goto :goto_41

    .line 64
    :cond_3f
    :goto_3f
    move-object v4, p3

    .line 65
    goto :goto_49

    .line 66
    :cond_41
    :goto_41
    if-eqz p2, :cond_48

    .line 67
    .line 68
    invoke-virtual {p2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    goto :goto_3f

    .line 73
    :cond_48
    move-object v4, v8

    .line 74
    :goto_49
    if-eqz p2, :cond_57

    .line 75
    .line 76
    invoke-virtual {p2, v5}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p3

    .line 80
    if-eqz p3, :cond_57

    .line 81
    .line 82
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p3

    .line 86
    move-object v5, p3

    .line 87
    goto :goto_58

    .line 88
    :cond_57
    move-object v5, v8

    .line 89
    :goto_58
    const-string p3, "CONNECTION_FAILURE"

    .line 90
    .line 91
    invoke-virtual {p3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result p3

    .line 95
    if-eqz p3, :cond_8f

    .line 96
    .line 97
    if-eqz p2, :cond_6b

    .line 98
    .line 99
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p3

    .line 103
    if-nez p3, :cond_69

    .line 104
    .line 105
    goto :goto_6b

    .line 106
    :cond_69
    move-object v8, p3

    .line 107
    goto :goto_71

    .line 108
    :cond_6b
    :goto_6b
    if-eqz p2, :cond_71

    .line 109
    .line 110
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    :cond_71
    :goto_71
    new-instance p1, Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .line 118
    .line 119
    if-eqz v4, :cond_7b

    .line 120
    .line 121
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    :cond_7b
    if-eqz v8, :cond_80

    .line 125
    .line 126
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    :cond_80
    invoke-static {v7, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    new-instance v0, Ly2/n;

    .line 134
    .line 135
    const/4 v3, 0x0

    .line 136
    invoke-direct/range {v0 .. v5}, Ly2/n;-><init>(Ly2/m;ILx1/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, v0}, Ly2/u;->l(Ly2/n;)V

    .line 140
    .line 141
    .line 142
    goto/16 :goto_135

    .line 143
    .line 144
    :cond_8f
    new-instance v0, Ly2/n;

    .line 145
    .line 146
    const/4 v3, 0x0

    .line 147
    const/4 v5, 0x0

    .line 148
    move v2, v6

    .line 149
    invoke-direct/range {v0 .. v5}, Ly2/n;-><init>(Ly2/m;ILx1/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0, v0}, Ly2/u;->l(Ly2/n;)V

    .line 153
    .line 154
    .line 155
    goto/16 :goto_135

    .line 156
    .line 157
    :cond_9c
    const/4 v6, -0x1

    .line 158
    if-eq p2, v6, :cond_b9

    .line 159
    .line 160
    new-instance p1, Ljava/util/ArrayList;

    .line 161
    .line 162
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .line 164
    .line 165
    const-string p2, "Unexpected resultCode from authorization."

    .line 166
    .line 167
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    invoke-static {v7, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    new-instance v0, Ly2/n;

    .line 175
    .line 176
    const/4 v3, 0x0

    .line 177
    const/4 v5, 0x0

    .line 178
    invoke-direct/range {v0 .. v5}, Ly2/n;-><init>(Ly2/m;ILx1/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0, v0}, Ly2/u;->l(Ly2/n;)V

    .line 182
    .line 183
    .line 184
    goto/16 :goto_135

    .line 185
    .line 186
    :cond_b9
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    if-nez p2, :cond_d8

    .line 191
    .line 192
    new-instance p1, Ljava/util/ArrayList;

    .line 193
    .line 194
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .line 196
    .line 197
    const-string p2, "Unexpected null from returned authorization data."

    .line 198
    .line 199
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    invoke-static {v7, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    new-instance v0, Ly2/n;

    .line 207
    .line 208
    const/4 v3, 0x0

    .line 209
    const/4 v5, 0x0

    .line 210
    invoke-direct/range {v0 .. v5}, Ly2/n;-><init>(Ly2/m;ILx1/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0, v0}, Ly2/u;->l(Ly2/n;)V

    .line 214
    .line 215
    .line 216
    goto :goto_135

    .line 217
    :cond_d8
    invoke-virtual {p2, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p3

    .line 221
    if-nez p3, :cond_e2

    .line 222
    .line 223
    invoke-virtual {p2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p3

    .line 227
    :cond_e2
    invoke-virtual {p2, v5}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    if-eqz v2, :cond_ec

    .line 232
    .line 233
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v8

    .line 237
    :cond_ec
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    if-nez v0, :cond_f6

    .line 242
    .line 243
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    :cond_f6
    const-string p1, "e2e"

    .line 248
    .line 249
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    invoke-static {p1}, Lq2/g0;->B(Ljava/lang/String;)Z

    .line 254
    .line 255
    .line 256
    move-result v2

    .line 257
    if-nez v2, :cond_105

    .line 258
    .line 259
    invoke-virtual {p0, p1}, Ly2/t;->g(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    :cond_105
    if-nez p3, :cond_132

    .line 263
    .line 264
    if-nez v8, :cond_132

    .line 265
    .line 266
    if-nez v0, :cond_132

    .line 267
    .line 268
    if-eqz v1, :cond_132

    .line 269
    .line 270
    const-string p1, "code"

    .line 271
    .line 272
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 273
    .line 274
    .line 275
    move-result p3

    .line 276
    if-eqz p3, :cond_12e

    .line 277
    .line 278
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    invoke-static {p1}, Lq2/g0;->B(Ljava/lang/String;)Z

    .line 283
    .line 284
    .line 285
    move-result p1

    .line 286
    if-nez p1, :cond_12e

    .line 287
    .line 288
    invoke-static {}, Lx1/r;->c()Ljava/util/concurrent/Executor;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    new-instance p3, Landroidx/fragment/app/e;

    .line 293
    .line 294
    const/16 v0, 0x9

    .line 295
    .line 296
    invoke-direct {p3, p0, v1, p2, v0}, Landroidx/fragment/app/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 297
    .line 298
    .line 299
    invoke-interface {p1, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 300
    .line 301
    .line 302
    goto :goto_135

    .line 303
    :cond_12e
    invoke-virtual {p0, v1, p2}, Ly2/u;->p(Ly2/m;Landroid/os/Bundle;)V

    .line 304
    .line 305
    .line 306
    goto :goto_135

    .line 307
    :cond_132
    invoke-virtual {p0, v1, p3, v0, v8}, Ly2/u;->o(Ly2/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    :goto_135
    const/4 p1, 0x1

    .line 311
    return p1

    .line 312
    nop

    .line 313
    :pswitch_data_138
    .packed-switch 0x0
        :pswitch_a
    .end packed-switch
.end method

.method public l(Ly2/n;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_a

    .line 2
    .line 3
    invoke-virtual {p0}, Ly2/t;->d()Ly2/o;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Ly2/o;->d(Ly2/n;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    invoke-virtual {p0}, Ly2/t;->d()Ly2/o;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ly2/o;->j()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public m(Ly2/m;)Landroid/os/Bundle;
    .registers 9

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p1, Ly2/m;->b:Ljava/util/HashSet;

    .line 12
    .line 13
    if-eqz v1, :cond_25

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_15

    .line 20
    .line 21
    goto :goto_25

    .line 22
    :cond_15
    const-string v1, ","

    .line 23
    .line 24
    iget-object v2, p1, Ly2/m;->b:Ljava/util/HashSet;

    .line 25
    .line 26
    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "scope"

    .line 31
    .line 32
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v2, v1}, Ly2/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_25
    :goto_25
    iget v1, p1, Ly2/m;->c:I

    .line 39
    .line 40
    if-nez v1, :cond_2a

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    :cond_2a
    const-string v2, "default_audience"

    .line 44
    .line 45
    invoke-static {v1}, Lq2/x;->b(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p1, Ly2/m;->e:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {p0, p1}, Ly2/t;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    const-string v1, "state"

    .line 59
    .line 60
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    sget-object p1, Lx1/a;->l:Ljava/util/Date;

    .line 64
    .line 65
    invoke-static {}, Lh8/b;->f()Lx1/a;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-eqz p1, :cond_49

    .line 70
    .line 71
    iget-object p1, p1, Lx1/a;->e:Ljava/lang/String;

    .line 72
    .line 73
    goto :goto_4a

    .line 74
    :cond_49
    const/4 p1, 0x0

    .line 75
    :goto_4a
    const-string v1, "0"

    .line 76
    .line 77
    const-string v2, "1"

    .line 78
    .line 79
    const-string v3, "access_token"

    .line 80
    .line 81
    if-eqz p1, :cond_7d

    .line 82
    .line 83
    invoke-virtual {p0}, Ly2/t;->d()Ly2/o;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-virtual {v4}, Ly2/o;->e()Landroidx/fragment/app/h0;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    if-eqz v4, :cond_5d

    .line 92
    .line 93
    goto :goto_61

    .line 94
    :cond_5d
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    :goto_61
    const-string v5, "com.facebook.login.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY"

    .line 99
    .line 100
    const/4 v6, 0x0

    .line 101
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    const-string v5, "TOKEN"

    .line 106
    .line 107
    const-string v6, ""

    .line 108
    .line 109
    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    if-eqz v4, :cond_7d

    .line 118
    .line 119
    invoke-virtual {v0, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, v3, v2}, Ly2/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    goto :goto_8d

    .line 126
    :cond_7d
    invoke-virtual {p0}, Ly2/t;->d()Ly2/o;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {p1}, Ly2/o;->e()Landroidx/fragment/app/h0;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    if-eqz p1, :cond_8a

    .line 135
    .line 136
    invoke-static {p1}, Lq2/g0;->c(Landroid/content/Context;)V

    .line 137
    .line 138
    .line 139
    :cond_8a
    invoke-virtual {p0, v3, v1}, Ly2/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    :goto_8d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 143
    .line 144
    .line 145
    move-result-wide v3

    .line 146
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    const-string v3, "cbt"

    .line 151
    .line 152
    invoke-virtual {v0, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    sget-object p1, Lx1/r;->a:Lx1/r;

    .line 156
    .line 157
    invoke-static {}, Lx1/j0;->c()Z

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    if-eqz p1, :cond_a3

    .line 162
    .line 163
    move-object v1, v2

    .line 164
    :cond_a3
    const-string p1, "ies"

    .line 165
    .line 166
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    return-object v0
.end method

.method public n()Lx1/f;
    .registers 2

    .line 1
    iget-object v0, p0, Ly2/u;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lx1/f;

    .line 4
    .line 5
    return-object v0
.end method

.method public o(Ly2/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_12

    .line 3
    .line 4
    const-string v1, "logged_out"

    .line 5
    .line 6
    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_12

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    sput-boolean p1, Ly2/a;->j:Z

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ly2/u;->l(Ly2/n;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_12
    const-string v1, "service_disabled"

    .line 20
    .line 21
    const-string v2, "AndroidAuthKillSwitchException"

    .line 22
    .line 23
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1}, Ls6/h;->k([Ljava/lang/Object;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/util/Collection;

    .line 32
    .line 33
    check-cast v1, Ljava/lang/Iterable;

    .line 34
    .line 35
    invoke-static {v1, p2}, Ls6/g;->p(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_2c

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Ly2/u;->l(Ly2/n;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_2c
    const-string v0, "access_denied"

    .line 46
    .line 47
    const-string v1, "OAuthAccessDeniedException"

    .line 48
    .line 49
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v0}, Ls6/h;->k([Ljava/lang/Object;)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Ljava/util/Collection;

    .line 58
    .line 59
    check-cast v0, Ljava/lang/Iterable;

    .line 60
    .line 61
    invoke-static {v0, p2}, Ls6/g;->p(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_50

    .line 66
    .line 67
    new-instance v1, Ly2/n;

    .line 68
    .line 69
    const/4 v4, 0x0

    .line 70
    const/4 v6, 0x0

    .line 71
    const/4 v3, 0x2

    .line 72
    const/4 v5, 0x0

    .line 73
    move-object v2, p1

    .line 74
    invoke-direct/range {v1 .. v6}, Ly2/n;-><init>(Ly2/m;ILx1/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v1}, Ly2/u;->l(Ly2/n;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_50
    move-object v2, p1

    .line 82
    new-instance p1, Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .line 86
    .line 87
    if-eqz p2, :cond_5b

    .line 88
    .line 89
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    :cond_5b
    if-eqz p3, :cond_60

    .line 93
    .line 94
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    :cond_60
    const-string p2, ": "

    .line 98
    .line 99
    invoke-static {p2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    move-object v3, v2

    .line 104
    new-instance v2, Ly2/n;

    .line 105
    .line 106
    const/4 v4, 0x3

    .line 107
    const/4 v5, 0x0

    .line 108
    move-object v7, p4

    .line 109
    invoke-direct/range {v2 .. v7}, Ly2/n;-><init>(Ly2/m;ILx1/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, v2}, Ly2/u;->l(Ly2/n;)V

    .line 113
    .line 114
    .line 115
    return-void
.end method

.method public p(Ly2/m;Landroid/os/Bundle;)V
    .registers 11

    .line 1
    :try_start_0
    iget-object v1, p1, Ly2/m;->b:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {p0}, Ly2/u;->n()Lx1/f;

    .line 4
    .line 5
    .line 6
    move-result-object v3

    .line 7
    iget-object v4, p1, Ly2/m;->d:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v1, p2, v3, v4}, Ly1/j;->b(Ljava/util/HashSet;Landroid/os/Bundle;Lx1/f;Ljava/lang/String;)Lx1/a;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    iget-object v1, p1, Ly2/m;->w:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {p2, v1}, Ly1/j;->c(Landroid/os/Bundle;Ljava/lang/String;)Lx1/g;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    new-instance v1, Ly2/n;

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v7, 0x0

    .line 23
    const/4 v3, 0x1

    .line 24
    move-object v2, p1

    .line 25
    invoke-direct/range {v1 .. v7}, Ly2/n;-><init>(Ly2/m;ILx1/a;Lx1/g;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v1}, Ly2/u;->l(Ly2/n;)V
    :try_end_1e
    .catch Lx1/l; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catch_1f
    move-exception v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    if-eqz v0, :cond_2e

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    :cond_2e
    const-string v0, ": "

    .line 48
    .line 49
    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    new-instance v1, Ly2/n;

    .line 54
    .line 55
    const/4 v3, 0x3

    .line 56
    const/4 v4, 0x0

    .line 57
    const/4 v6, 0x0

    .line 58
    move-object v2, p1

    .line 59
    invoke-direct/range {v1 .. v6}, Ly2/n;-><init>(Ly2/m;ILx1/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v1}, Ly2/u;->l(Ly2/n;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public q(Ly2/m;Landroid/os/Bundle;Lx1/l;)V
    .registers 16

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ly2/t;->d()Ly2/o;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Ly2/u;->d:Ljava/lang/Object;

    .line 12
    .line 13
    const/4 v4, 0x3

    .line 14
    const-string v2, ": "

    .line 15
    .line 16
    if-eqz p2, :cond_93

    .line 17
    .line 18
    const-string p3, "e2e"

    .line 19
    .line 20
    invoke-virtual {p2, p3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1f

    .line 25
    .line 26
    invoke-virtual {p2, p3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    iput-object p3, p0, Ly2/u;->d:Ljava/lang/Object;

    .line 31
    .line 32
    :cond_1f
    :try_start_1f
    iget-object p3, p1, Ly2/m;->b:Ljava/util/HashSet;

    .line 33
    .line 34
    invoke-virtual {p0}, Ly2/u;->n()Lx1/f;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v3, p1, Ly2/m;->d:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {p3, p2, v0, v3}, Ly1/j;->b(Ljava/util/HashSet;Landroid/os/Bundle;Lx1/f;Ljava/lang/String;)Lx1/a;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    iget-object p1, p1, Ly2/m;->w:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {p2, p1}, Ly1/j;->c(Landroid/os/Bundle;Ljava/lang/String;)Lx1/g;

    .line 47
    .line 48
    .line 49
    move-result-object v9

    .line 50
    iget-object v6, v1, Ly2/o;->g:Ly2/m;

    .line 51
    .line 52
    new-instance v5, Ly2/n;

    .line 53
    .line 54
    const/4 v10, 0x0

    .line 55
    const/4 v11, 0x0

    .line 56
    const/4 v7, 0x1

    .line 57
    invoke-direct/range {v5 .. v11}, Ly2/n;-><init>(Ly2/m;ILx1/a;Lx1/g;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ly2/o;->e()Landroidx/fragment/app/h0;

    .line 61
    .line 62
    .line 63
    move-result-object p1
    :try_end_3f
    .catch Lx1/l; {:try_start_1f .. :try_end_3f} :catch_74

    .line 64
    if-eqz p1, :cond_d8

    .line 65
    .line 66
    :try_start_41
    invoke-virtual {v1}, Ly2/o;->e()Landroidx/fragment/app/h0;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1}, Landroid/webkit/CookieSyncManager;->sync()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_4c} :catch_4c

    .line 75
    .line 76
    .line 77
    :catch_4c
    if-eqz v8, :cond_d8

    .line 78
    .line 79
    :try_start_4e
    iget-object p1, v8, Lx1/a;->e:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {p0}, Ly2/t;->d()Ly2/o;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    invoke-virtual {p2}, Ly2/o;->e()Landroidx/fragment/app/h0;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    if-eqz p2, :cond_5b

    .line 90
    .line 91
    goto :goto_5f

    .line 92
    :cond_5b
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    :goto_5f
    const-string p3, "com.facebook.login.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY"

    .line 97
    .line 98
    const/4 v0, 0x0

    .line 99
    invoke-virtual {p2, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    const-string p3, "TOKEN"

    .line 108
    .line 109
    invoke-interface {p2, p3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_73
    .catch Lx1/l; {:try_start_4e .. :try_end_73} :catch_74

    .line 114
    .line 115
    .line 116
    goto :goto_d8

    .line 117
    :catch_74
    move-exception v0

    .line 118
    move-object p1, v0

    .line 119
    iget-object v3, v1, Ly2/o;->g:Ly2/m;

    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    new-instance p2, Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .line 129
    .line 130
    if-eqz p1, :cond_86

    .line 131
    .line 132
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    :cond_86
    invoke-static {v2, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    new-instance v2, Ly2/n;

    .line 140
    .line 141
    const/4 v5, 0x0

    .line 142
    const/4 v7, 0x0

    .line 143
    invoke-direct/range {v2 .. v7}, Ly2/n;-><init>(Ly2/m;ILx1/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    :goto_91
    move-object v5, v2

    .line 147
    goto :goto_d8

    .line 148
    :cond_93
    instance-of p1, p3, Lx1/n;

    .line 149
    .line 150
    if-eqz p1, :cond_a4

    .line 151
    .line 152
    iget-object v6, v1, Ly2/o;->g:Ly2/m;

    .line 153
    .line 154
    new-instance v5, Ly2/n;

    .line 155
    .line 156
    const/4 v8, 0x0

    .line 157
    const/4 v10, 0x0

    .line 158
    const/4 v7, 0x2

    .line 159
    const-string v9, "User canceled log in."

    .line 160
    .line 161
    invoke-direct/range {v5 .. v10}, Ly2/n;-><init>(Ly2/m;ILx1/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    goto :goto_d8

    .line 165
    :cond_a4
    iput-object v0, p0, Ly2/u;->d:Ljava/lang/Object;

    .line 166
    .line 167
    if-eqz p3, :cond_ad

    .line 168
    .line 169
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    goto :goto_ae

    .line 174
    :cond_ad
    move-object p1, v0

    .line 175
    :goto_ae
    instance-of p2, p3, Lx1/t;

    .line 176
    .line 177
    if-eqz p2, :cond_c0

    .line 178
    .line 179
    check-cast p3, Lx1/t;

    .line 180
    .line 181
    iget-object p1, p3, Lx1/t;->a:Lx1/o;

    .line 182
    .line 183
    iget p2, p1, Lx1/o;->b:I

    .line 184
    .line 185
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-virtual {p1}, Lx1/o;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    :cond_c0
    move-object v7, v0

    .line 194
    iget-object v3, v1, Ly2/o;->g:Ly2/m;

    .line 195
    .line 196
    new-instance p2, Ljava/util/ArrayList;

    .line 197
    .line 198
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .line 200
    .line 201
    if-eqz p1, :cond_cd

    .line 202
    .line 203
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    :cond_cd
    invoke-static {v2, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v6

    .line 210
    new-instance v2, Ly2/n;

    .line 211
    .line 212
    const/4 v5, 0x0

    .line 213
    invoke-direct/range {v2 .. v7}, Ly2/n;-><init>(Ly2/m;ILx1/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    goto :goto_91

    .line 217
    :cond_d8
    :goto_d8
    iget-object p1, p0, Ly2/u;->d:Ljava/lang/Object;

    .line 218
    .line 219
    check-cast p1, Ljava/lang/String;

    .line 220
    .line 221
    invoke-static {p1}, Lq2/g0;->B(Ljava/lang/String;)Z

    .line 222
    .line 223
    .line 224
    move-result p1

    .line 225
    if-nez p1, :cond_e9

    .line 226
    .line 227
    iget-object p1, p0, Ly2/u;->d:Ljava/lang/Object;

    .line 228
    .line 229
    check-cast p1, Ljava/lang/String;

    .line 230
    .line 231
    invoke-virtual {p0, p1}, Ly2/t;->g(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    :cond_e9
    invoke-virtual {v1, v5}, Ly2/o;->d(Ly2/n;)V

    .line 235
    .line 236
    .line 237
    return-void
.end method

.method public r(Landroid/content/Intent;)Z
    .registers 5

    .line 1
    if-eqz p1, :cond_44

    .line 2
    .line 3
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/high16 v1, 0x10000

    .line 12
    .line 13
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "getApplicationContext()\n\u2026nager.MATCH_DEFAULT_ONLY)"

    .line 18
    .line 19
    invoke-static {v1, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    check-cast v0, Ljava/util/Collection;

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1e

    .line 29
    .line 30
    goto :goto_44

    .line 31
    :cond_1e
    invoke-virtual {p0}, Ly2/t;->d()Ly2/o;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v0, v0, Ly2/o;->c:Ly2/q;

    .line 36
    .line 37
    invoke-static {v0}, Landroidx/fragment/app/m1;->d(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    const/4 v2, 0x0

    .line 42
    if-eqz v1, :cond_2c

    .line 43
    .line 44
    goto :goto_2d

    .line 45
    :cond_2c
    move-object v0, v2

    .line 46
    :goto_2d
    if-eqz v0, :cond_3f

    .line 47
    .line 48
    iget-object v0, v0, Ly2/q;->i0:Landroidx/fragment/app/v;

    .line 49
    .line 50
    if-eqz v0, :cond_39

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Landroidx/fragment/app/v;->a(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    sget-object v2, Lr6/j;->a:Lr6/j;

    .line 56
    .line 57
    goto :goto_3f

    .line 58
    :cond_39
    const-string p1, "launcher"

    .line 59
    .line 60
    invoke-static {p1}, Ld7/g;->i(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v2

    .line 64
    :cond_3f
    :goto_3f
    if-nez v2, :cond_42

    .line 65
    .line 66
    goto :goto_44

    .line 67
    :cond_42
    const/4 p1, 0x1

    .line 68
    return p1

    .line 69
    :cond_44
    :goto_44
    const/4 p1, 0x0

    .line 70
    return p1
.end method
