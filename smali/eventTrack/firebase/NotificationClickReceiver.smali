###### Class eventTrack.firebase.NotificationClickReceiver (eventTrack.firebase.NotificationClickReceiver)
.class public LeventTrack/firebase/NotificationClickReceiver;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    const-string v1, "\u2705 \u6253\u5f00\u5916\u90e8\u5730\u5740: "

    .line 4
    .line 5
    const-string v2, "\ud83d\ude80 payload = "

    .line 6
    .line 7
    const-string v3, "targetLink"

    .line 8
    .line 9
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    const-string v4, "openPage"

    .line 14
    .line 15
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    new-instance v5, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v6, "\ud83d\udd17 Notification clicked! targetLink="

    .line 22
    .line 23
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v6, " openPage="

    .line 30
    .line 31
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    const-string v6, "FCM"

    .line 42
    .line 43
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    const/4 v5, 0x0

    .line 47
    :try_start_2e
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    if-eqz p2, :cond_9e

    .line 52
    .line 53
    const-string v7, "\ud83d\udce6 Intent extras:"

    .line 54
    .line 55
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    if-eqz p2, :cond_a3

    .line 63
    .line 64
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    if-nez v7, :cond_47

    .line 69
    .line 70
    :catch_45
    move-object v8, v5

    .line 71
    goto :goto_5e

    .line 72
    :cond_47
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    const/16 v8, 0x27

    .line 77
    .line 78
    const/16 v9, 0x22

    .line 79
    .line 80
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v7
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_53} :catch_67

    .line 84
    :try_start_53
    new-instance v8, Lorg/json/JSONObject;

    .line 85
    .line 86
    invoke-direct {v8, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_58} :catch_59

    .line 87
    .line 88
    .line 89
    goto :goto_5e

    .line 90
    :catch_59
    :try_start_59
    new-instance v8, Lorg/json/JSONArray;

    .line 91
    .line 92
    invoke-direct {v8, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5e} :catch_45

    .line 93
    .line 94
    .line 95
    :goto_5e
    :try_start_5e
    instance-of v7, v8, Lorg/json/JSONObject;

    .line 96
    .line 97
    if-eqz v7, :cond_69

    .line 98
    .line 99
    check-cast v8, Lorg/json/JSONObject;

    .line 100
    .line 101
    sput-object v8, Ln6/f;->a:Lorg/json/JSONObject;

    .line 102
    .line 103
    goto :goto_88

    .line 104
    :catch_67
    move-exception p2

    .line 105
    goto :goto_be

    .line 106
    :cond_69
    instance-of v7, v8, Lorg/json/JSONArray;

    .line 107
    .line 108
    if-eqz v7, :cond_78

    .line 109
    .line 110
    new-instance p2, Lorg/json/JSONObject;

    .line 111
    .line 112
    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_72} :catch_67

    .line 113
    .line 114
    .line 115
    :try_start_72
    invoke-virtual {p2, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_75} :catch_75

    .line 116
    .line 117
    .line 118
    :catch_75
    :try_start_75
    sput-object p2, Ln6/f;->a:Lorg/json/JSONObject;

    .line 119
    .line 120
    goto :goto_88

    .line 121
    :cond_78
    new-instance v0, Lorg/json/JSONObject;

    .line 122
    .line 123
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_7d} :catch_67

    .line 124
    .line 125
    .line 126
    :try_start_7d
    const-string v7, "raw"

    .line 127
    .line 128
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    invoke-virtual {v0, v7, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_86} :catch_86

    .line 133
    .line 134
    .line 135
    :catch_86
    :try_start_86
    sput-object v0, Ln6/f;->a:Lorg/json/JSONObject;

    .line 136
    .line 137
    :goto_88
    new-instance p2, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    sget-object v0, Ln6/f;->a:Lorg/json/JSONObject;

    .line 143
    .line 144
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    invoke-static {v6, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    goto :goto_a3

    .line 159
    :cond_9e
    const-string p2, "\u26a0\ufe0f Intent extras is null"

    .line 160
    .line 161
    invoke-static {v6, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    :cond_a3
    :goto_a3
    sget-object p2, Ln6/f;->a:Lorg/json/JSONObject;

    .line 165
    .line 166
    const-string v0, "mp_notification_click"

    .line 167
    .line 168
    invoke-static {v0, p2}, Ln6/e;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 169
    .line 170
    .line 171
    const-string v0, "AnalyticsReporter"

    .line 172
    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    const-string v7, "notification_click\u57cb\u70b9"

    .line 176
    .line 177
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_bd} :catch_67

    .line 188
    .line 189
    .line 190
    goto :goto_c3

    .line 191
    :goto_be
    const-string v0, "reportJson error"

    .line 192
    .line 193
    invoke-static {v6, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    .line 195
    .line 196
    :goto_c3
    if-eqz v3, :cond_fc

    .line 197
    .line 198
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 199
    .line 200
    .line 201
    move-result p2

    .line 202
    if-nez p2, :cond_fc

    .line 203
    .line 204
    :try_start_cb
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    invoke-static {v6, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .line 210
    .line 211
    new-instance p2, Landroid/content/Intent;

    .line 212
    .line 213
    const-string v0, "android.intent.action.VIEW"

    .line 214
    .line 215
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 220
    .line 221
    .line 222
    const/high16 v0, 0x10000000

    .line 223
    .line 224
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_e5} :catch_e6

    .line 228
    .line 229
    .line 230
    return-void

    .line 231
    :catch_e6
    move-exception p2

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    const-string v1, "\u274c \u6253\u5f00\u6d4f\u89c8\u5668\u5931\u8d25: "

    .line 235
    .line 236
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p2

    .line 243
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object p2

    .line 250
    invoke-static {v6, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    .line 252
    .line 253
    :cond_fc
    if-eqz v4, :cond_126

    .line 254
    .line 255
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object p2

    .line 259
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 260
    .line 261
    .line 262
    move-result p2

    .line 263
    if-nez p2, :cond_126

    .line 264
    .line 265
    const-string p2, "/"

    .line 266
    .line 267
    invoke-virtual {v4, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    if-eqz v0, :cond_111

    .line 272
    .line 273
    goto :goto_121

    .line 274
    :cond_111
    :try_start_111
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    if-ltz v0, :cond_120

    .line 279
    .line 280
    sget-object v1, Ln6/f;->b:[Ljava/lang/String;

    .line 281
    .line 282
    array-length v2, v1

    .line 283
    if-ge v0, v2, :cond_120

    .line 284
    .line 285
    aget-object v0, v1, v0
    :try_end_11e
    .catch Ljava/lang/NumberFormatException; {:try_start_111 .. :try_end_11e} :catch_120

    .line 286
    .line 287
    move-object v4, v0

    .line 288
    goto :goto_121

    .line 289
    :catch_120
    :cond_120
    move-object v4, v5

    .line 290
    :goto_121
    if-nez v4, :cond_125

    .line 291
    .line 292
    move-object v5, p2

    .line 293
    goto :goto_126

    .line 294
    :cond_125
    move-object v5, v4

    .line 295
    :cond_126
    :goto_126
    new-instance p2, Ljava/lang/StringBuilder;

    .line 296
    .line 297
    const-string v0, "\u2705 \u8f93\u51fa\u5185\u90e8\u5730\u5740: "

    .line 298
    .line 299
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object p2

    .line 309
    invoke-static {v6, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    .line 311
    .line 312
    new-instance p2, Landroid/content/Intent;

    .line 313
    .line 314
    const-class v0, Lcom/lottery/app/MainActivity;

    .line 315
    .line 316
    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 317
    .line 318
    .line 319
    const/high16 v0, 0x14000000

    .line 320
    .line 321
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 322
    .line 323
    .line 324
    if-eqz v5, :cond_154

    .line 325
    .line 326
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 331
    .line 332
    .line 333
    move-result v0

    .line 334
    if-nez v0, :cond_154

    .line 335
    .line 336
    const-string v0, "openUrl"

    .line 337
    .line 338
    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    .line 340
    .line 341
    :cond_154
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 342
    .line 343
    .line 344
    new-instance p1, Ljava/lang/StringBuilder;

    .line 345
    .line 346
    const-string p2, "\u2705 \u6253\u5f00\u5185\u90e8\u5730\u5740: "

    .line 347
    .line 348
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object p1

    .line 358
    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    .line 360
    .line 361
    return-void
.end method
