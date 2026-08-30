###### Class x1.p (x1.p)
.class public final synthetic Lx1/p;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, Lx1/p;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 10

    .line 1
    iget v0, p0, Lx1/p;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_13c

    .line 5
    .line 6
    .line 7
    sget-object v0, Lx1/g0;->d:Lx1/w;

    .line 8
    .line 9
    sget-object v2, Lx1/e;->f:Lo3/a;

    .line 10
    .line 11
    invoke-virtual {v2}, Lo3/a;->d()Lx1/e;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object v3, v2, Lx1/e;->b:Lx1/b;

    .line 16
    .line 17
    iget-object v3, v3, Lx1/b;->a:Landroid/content/SharedPreferences;

    .line 18
    .line 19
    const-string v4, "com.facebook.AccessTokenManager.CachedAccessToken"

    .line 20
    .line 21
    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-eqz v5, :cond_2c

    .line 26
    .line 27
    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    if-eqz v3, :cond_2c

    .line 32
    .line 33
    :try_start_20
    new-instance v4, Lorg/json/JSONObject;

    .line 34
    .line 35
    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    sget-object v3, Lx1/a;->l:Ljava/util/Date;

    .line 39
    .line 40
    invoke-static {v4}, Lh8/b;->d(Lorg/json/JSONObject;)Lx1/a;

    .line 41
    .line 42
    .line 43
    move-result-object v3
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_2b} :catch_2c

    .line 44
    goto :goto_2d

    .line 45
    :catch_2c
    :cond_2c
    move-object v3, v1

    .line 46
    :goto_2d
    const/4 v4, 0x0

    .line 47
    if-eqz v3, :cond_33

    .line 48
    .line 49
    invoke-virtual {v2, v3, v4}, Lx1/e;->c(Lx1/a;Z)V

    .line 50
    .line 51
    .line 52
    :cond_33
    invoke-virtual {v0}, Lx1/w;->p()Lx1/g0;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    iget-object v3, v2, Lx1/g0;->b:Lx1/b;

    .line 57
    .line 58
    iget-object v3, v3, Lx1/b;->a:Landroid/content/SharedPreferences;

    .line 59
    .line 60
    const-string v5, "com.facebook.ProfileManager.CachedProfile"

    .line 61
    .line 62
    invoke-interface {v3, v5, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    if-eqz v3, :cond_4e

    .line 67
    .line 68
    :try_start_43
    new-instance v5, Lorg/json/JSONObject;

    .line 69
    .line 70
    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    new-instance v3, Lx1/f0;

    .line 74
    .line 75
    invoke-direct {v3, v5}, Lx1/f0;-><init>(Lorg/json/JSONObject;)V
    :try_end_4d
    .catch Lorg/json/JSONException; {:try_start_43 .. :try_end_4d} :catch_4e

    .line 76
    .line 77
    .line 78
    goto :goto_4f

    .line 79
    :catch_4e
    :cond_4e
    move-object v3, v1

    .line 80
    :goto_4f
    if-eqz v3, :cond_54

    .line 81
    .line 82
    invoke-virtual {v2, v3, v4}, Lx1/g0;->a(Lx1/f0;Z)V

    .line 83
    .line 84
    .line 85
    :cond_54
    sget-object v2, Lx1/a;->l:Ljava/util/Date;

    .line 86
    .line 87
    invoke-static {}, Lh8/b;->i()Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    const/4 v3, 0x1

    .line 92
    if-eqz v2, :cond_84

    .line 93
    .line 94
    invoke-virtual {v0}, Lx1/w;->p()Lx1/g0;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    iget-object v2, v2, Lx1/g0;->c:Lx1/f0;

    .line 99
    .line 100
    if-nez v2, :cond_84

    .line 101
    .line 102
    invoke-static {}, Lh8/b;->f()Lx1/a;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    if-nez v2, :cond_6c

    .line 107
    .line 108
    goto :goto_84

    .line 109
    :cond_6c
    invoke-static {}, Lh8/b;->i()Z

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    if-nez v5, :cond_7a

    .line 114
    .line 115
    invoke-virtual {v0}, Lx1/w;->p()Lx1/g0;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v0, v1, v3}, Lx1/g0;->a(Lx1/f0;Z)V

    .line 120
    .line 121
    .line 122
    goto :goto_84

    .line 123
    :cond_7a
    iget-object v0, v2, Lx1/a;->e:Ljava/lang/String;

    .line 124
    .line 125
    new-instance v2, Lx1/w;

    .line 126
    .line 127
    invoke-direct {v2, v3}, Lx1/w;-><init>(I)V

    .line 128
    .line 129
    .line 130
    invoke-static {v0, v2}, Lq2/g0;->q(Ljava/lang/String;Lq2/f0;)V

    .line 131
    .line 132
    .line 133
    :cond_84
    :goto_84
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    sget-object v2, Lx1/r;->d:Ljava/lang/String;

    .line 138
    .line 139
    sget-object v5, Ly1/k;->c:Ljava/lang/String;

    .line 140
    .line 141
    invoke-static {}, Lx1/j0;->c()Z

    .line 142
    .line 143
    .line 144
    move-result v5

    .line 145
    if-nez v5, :cond_93

    .line 146
    .line 147
    goto :goto_a8

    .line 148
    :cond_93
    new-instance v5, Ly1/k;

    .line 149
    .line 150
    invoke-direct {v5, v0, v2}, Ly1/k;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-static {}, Ly1/k;->b()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    if-eqz v2, :cond_124

    .line 158
    .line 159
    new-instance v6, La2/i;

    .line 160
    .line 161
    const/16 v7, 0x18

    .line 162
    .line 163
    invoke-direct {v6, v0, v7, v5}, La2/i;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 167
    .line 168
    .line 169
    :goto_a8
    const-string v0, "You haven\'t set the Auto App Link URL scheme: fb<YOUR APP ID> in AndroidManifest"

    .line 170
    .line 171
    const-class v2, Lx1/j0;

    .line 172
    .line 173
    invoke-static {v2}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v5

    .line 177
    if-eqz v5, :cond_b3

    .line 178
    .line 179
    goto :goto_102

    .line 180
    :cond_b3
    :try_start_b3
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v7

    .line 192
    const/16 v8, 0x80

    .line 193
    .line 194
    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 195
    .line 196
    .line 197
    move-result-object v6

    .line 198
    const-string v7, "ctx.packageManager.getAp\u2026ageManager.GET_META_DATA)"

    .line 199
    .line 200
    invoke-static {v7, v6}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 204
    .line 205
    if-eqz v6, :cond_102

    .line 206
    .line 207
    const-string v7, "com.facebook.sdk.AutoAppLinkEnabled"

    .line 208
    .line 209
    invoke-virtual {v6, v7, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 210
    .line 211
    .line 212
    move-result v4

    .line 213
    if-eqz v4, :cond_102

    .line 214
    .line 215
    new-instance v4, Ly1/k;

    .line 216
    .line 217
    invoke-direct {v4, v5, v1}, Ly1/k;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    new-instance v5, Landroid/os/Bundle;

    .line 221
    .line 222
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 223
    .line 224
    .line 225
    invoke-static {}, Lq2/g0;->x()Z

    .line 226
    .line 227
    .line 228
    move-result v6

    .line 229
    if-nez v6, :cond_f3

    .line 230
    .line 231
    const-string v6, "SchemeWarning"

    .line 232
    .line 233
    invoke-virtual {v5, v6, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    const-string v6, "x1.j0"

    .line 237
    .line 238
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .line 240
    .line 241
    goto :goto_f3

    .line 242
    :catchall_f1
    move-exception v0

    .line 243
    goto :goto_ff

    .line 244
    :cond_f3
    :goto_f3
    const-string v0, "fb_auto_applink"

    .line 245
    .line 246
    invoke-static {}, Lx1/j0;->c()Z

    .line 247
    .line 248
    .line 249
    move-result v6

    .line 250
    if-eqz v6, :cond_102

    .line 251
    .line 252
    invoke-virtual {v4, v0, v5}, Ly1/k;->d(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_fe
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b3 .. :try_end_fe} :catch_102
    .catchall {:try_start_b3 .. :try_end_fe} :catchall_f1

    .line 253
    .line 254
    .line 255
    goto :goto_102

    .line 256
    :goto_ff
    invoke-static {v0, v2}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    :catch_102
    :cond_102
    :goto_102
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    const-string v2, "getApplicationContext().applicationContext"

    .line 268
    .line 269
    invoke-static {v2, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    new-instance v2, Ly1/k;

    .line 273
    .line 274
    invoke-direct {v2, v0, v1}, Ly1/k;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    invoke-static {v2}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    if-eqz v0, :cond_11b

    .line 282
    .line 283
    goto :goto_123

    .line 284
    :cond_11b
    :try_start_11b
    invoke-static {v3}, Ly1/i;->c(I)V
    :try_end_11e
    .catchall {:try_start_11b .. :try_end_11e} :catchall_11f

    .line 285
    .line 286
    .line 287
    goto :goto_123

    .line 288
    :catchall_11f
    move-exception v0

    .line 289
    invoke-static {v0, v2}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    :goto_123
    return-object v1

    .line 293
    :cond_124
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 294
    .line 295
    const-string v1, "Required value was null."

    .line 296
    .line 297
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    throw v0

    .line 301
    :pswitch_12c
    sget-object v0, Lx1/r;->h:Landroid/content/Context;

    .line 302
    .line 303
    if-eqz v0, :cond_135

    .line 304
    .line 305
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    return-object v0

    .line 310
    :cond_135
    const-string v0, "applicationContext"

    .line 311
    .line 312
    invoke-static {v0}, Ld7/g;->i(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    throw v1

    .line 316
    nop

    .line 317
    :pswitch_data_13c
    .packed-switch 0x0
        :pswitch_12c
    .end packed-switch
.end method
