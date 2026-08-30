###### Class b2.e (b2.e)
.class public final synthetic Lb2/e;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 1
    iput p2, p0, Lb2/e;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lb2/e;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 13

    .line 1
    iget v0, p0, Lb2/e;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_134

    .line 5
    .line 6
    .line 7
    const-string v0, "com.facebook.appevents.UserDataStore.internalUserData"

    .line 8
    .line 9
    iget-object v2, p0, Lb2/e;->b:Ljava/lang/String;

    .line 10
    .line 11
    const-class v3, Ly1/t;

    .line 12
    .line 13
    invoke-static {v3}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_13

    .line 18
    .line 19
    goto :goto_3c

    .line 20
    :cond_13
    :try_start_13
    sget-object v4, Ly1/t;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    .line 22
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-nez v4, :cond_23

    .line 27
    .line 28
    sget-object v4, Ly1/t;->a:Ly1/t;

    .line 29
    .line 30
    invoke-virtual {v4}, Ly1/t;->b()V

    .line 31
    .line 32
    .line 33
    goto :goto_23

    .line 34
    :catchall_21
    move-exception v0

    .line 35
    goto :goto_39

    .line 36
    :cond_23
    :goto_23
    sget-object v4, Ly1/t;->b:Landroid/content/SharedPreferences;

    .line 37
    .line 38
    if-eqz v4, :cond_33

    .line 39
    .line 40
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 49
    .line 50
    .line 51
    goto :goto_3c

    .line 52
    :cond_33
    const-string v0, "sharedPreferences"

    .line 53
    .line 54
    invoke-static {v0}, Ld7/g;->i(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v1
    :try_end_39
    .catchall {:try_start_13 .. :try_end_39} :catchall_21

    .line 58
    :goto_39
    invoke-static {v0, v3}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :goto_3c
    return-void

    .line 62
    :pswitch_3d
    iget-object v0, p0, Lb2/e;->b:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v0}, Lutils/ResistBanUtil;->a(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :pswitch_43
    iget-object v0, p0, Lb2/e;->b:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {v0}, Lutils/ResistBanUtil;->b(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :pswitch_49
    iget-object v0, p0, Lb2/e;->b:Ljava/lang/String;

    .line 75
    .line 76
    const-string v2, "0"

    .line 77
    .line 78
    const-class v3, Lb2/f;

    .line 79
    .line 80
    invoke-static {v3}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_57

    .line 85
    .line 86
    goto/16 :goto_133

    .line 87
    .line 88
    :cond_57
    :try_start_57
    new-instance v8, Landroid/os/Bundle;

    .line 89
    .line 90
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-static {v4}, Lq2/g;->b(Landroid/content/Context;)Lq2/c;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    new-instance v5, Lorg/json/JSONArray;

    .line 102
    .line 103
    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 104
    .line 105
    .line 106
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;
    :try_end_6b
    .catchall {:try_start_57 .. :try_end_6b} :catchall_7c

    .line 107
    .line 108
    const-string v7, ""

    .line 109
    .line 110
    if-eqz v6, :cond_70

    .line 111
    .line 112
    goto :goto_71

    .line 113
    :cond_70
    move-object v6, v7

    .line 114
    :goto_71
    :try_start_71
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 115
    .line 116
    .line 117
    const/4 v10, 0x0

    .line 118
    if-eqz v4, :cond_7f

    .line 119
    .line 120
    invoke-virtual {v4}, Lq2/c;->a()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    goto :goto_80

    .line 125
    :catchall_7c
    move-exception v0

    .line 126
    goto/16 :goto_130

    .line 127
    .line 128
    :cond_7f
    move-object v6, v10

    .line 129
    :goto_80
    if-eqz v6, :cond_8a

    .line 130
    .line 131
    invoke-virtual {v4}, Lq2/c;->a()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 136
    .line 137
    .line 138
    goto :goto_8d

    .line 139
    :cond_8a
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 140
    .line 141
    .line 142
    :goto_8d
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 143
    .line 144
    .line 145
    invoke-static {}, Lk2/e;->j()Z

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    if-eqz v4, :cond_98

    .line 150
    .line 151
    const-string v2, "1"

    .line 152
    .line 153
    :cond_98
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_9b
    .catchall {:try_start_71 .. :try_end_9b} :catchall_7c

    .line 154
    .line 155
    .line 156
    :try_start_9b
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    iget-object v1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_a9} :catch_a9
    .catchall {:try_start_9b .. :try_end_a9} :catchall_7c

    .line 169
    .line 170
    :catch_a9
    if-nez v1, :cond_b4

    .line 171
    .line 172
    :try_start_ab
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    const-string v2, "getDefault()"

    .line 177
    .line 178
    invoke-static {v2, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    :cond_b4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const/16 v4, 0x5f

    .line 194
    .line 195
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    const-string v2, "extInfoArray.toString()"

    .line 217
    .line 218
    invoke-static {v2, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    const-string v2, "device_session_id"

    .line 222
    .line 223
    invoke-static {}, Lb2/f;->a()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v4

    .line 227
    invoke-virtual {v8, v2, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    const-string v2, "extinfo"

    .line 231
    .line 232
    invoke-virtual {v8, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    sget-object v1, Lx1/z;->j:Ljava/lang/String;

    .line 236
    .line 237
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 238
    .line 239
    const-string v2, "%s/app_indexing_session"

    .line 240
    .line 241
    const/4 v4, 0x1

    .line 242
    new-array v5, v4, [Ljava/lang/Object;

    .line 243
    .line 244
    const/4 v11, 0x0

    .line 245
    aput-object v0, v5, v11

    .line 246
    .line 247
    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v7

    .line 255
    new-instance v5, Lx1/z;

    .line 256
    .line 257
    sget-object v9, Lx1/d0;->b:Lx1/d0;

    .line 258
    .line 259
    const/4 v6, 0x0

    .line 260
    invoke-direct/range {v5 .. v10}, Lx1/z;-><init>(Lx1/a;Ljava/lang/String;Landroid/os/Bundle;Lx1/d0;Lx1/v;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v5}, Lx1/z;->c()Lx1/c0;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    iget-object v0, v0, Lx1/c0;->b:Lorg/json/JSONObject;

    .line 268
    .line 269
    sget-object v1, Lb2/f;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 270
    .line 271
    if-eqz v0, :cond_119

    .line 272
    .line 273
    const-string v2, "is_app_indexing_enabled"

    .line 274
    .line 275
    invoke-virtual {v0, v2, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    if-eqz v0, :cond_119

    .line 280
    .line 281
    goto :goto_11a

    .line 282
    :cond_119
    move v4, v11

    .line 283
    :goto_11a
    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 287
    .line 288
    .line 289
    move-result v0

    .line 290
    if-nez v0, :cond_126

    .line 291
    .line 292
    sput-object v10, Lb2/f;->e:Ljava/lang/String;

    .line 293
    .line 294
    goto :goto_12d

    .line 295
    :cond_126
    sget-object v0, Lb2/f;->d:Lb2/n;

    .line 296
    .line 297
    if-eqz v0, :cond_12d

    .line 298
    .line 299
    invoke-virtual {v0}, Lb2/n;->c()V

    .line 300
    .line 301
    .line 302
    :cond_12d
    :goto_12d
    sput-boolean v11, Lb2/f;->h:Z
    :try_end_12f
    .catchall {:try_start_ab .. :try_end_12f} :catchall_7c

    .line 303
    .line 304
    goto :goto_133

    .line 305
    :goto_130
    invoke-static {v0, v3}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 306
    .line 307
    .line 308
    :goto_133
    return-void

    .line 309
    :pswitch_data_134
    .packed-switch 0x0
        :pswitch_49
        :pswitch_43
        :pswitch_3d
    .end packed-switch
.end method
