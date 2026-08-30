###### Class q2.d (q2.d)
.class public final Lq2/d;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static c:Lq2/d;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lq2/d;->a:I

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 2
    iput p1, p0, Lq2/d;->a:I

    iput-object p2, p0, Lq2/d;->b:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lq2/d;->a:I

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "context.applicationContext"

    invoke-static {v0, p1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lq2/d;->b:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic a()Lq2/d;
    .registers 3

    .line 1
    const-class v0, Lq2/d;

    .line 2
    .line 3
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_a

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_a
    :try_start_a
    sget-object v0, Lq2/d;->c:Lq2/d;
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_d

    .line 12
    .line 13
    return-object v0

    .line 14
    :catchall_d
    move-exception v1

    .line 15
    invoke-static {v1, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-object v2
.end method


# virtual methods
.method public b()V
    .registers 5

    .line 1
    const-string v0, "FirebaseMessaging"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-nez v2, :cond_15

    .line 9
    .line 10
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    .line 12
    const/16 v3, 0x17

    .line 13
    .line 14
    if-ne v2, v3, :cond_1a

    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1a

    .line 21
    .line 22
    :cond_15
    const-string v1, "Connectivity change received registered"

    .line 23
    .line 24
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_1a
    new-instance v0, Landroid/content/IntentFilter;

    .line 28
    .line 29
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 30
    .line 31
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lq2/d;->b:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v1, Lcom/google/firebase/messaging/c0;

    .line 37
    .line 38
    iget-object v1, v1, Lcom/google/firebase/messaging/c0;->c:Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 39
    .line 40
    iget-object v1, v1, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Landroid/content/Context;

    .line 41
    .line 42
    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public finalize()V
    .registers 3

    .line 1
    iget v0, p0, Lq2/d;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_32

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_9
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_10

    .line 15
    .line 16
    goto :goto_31

    .line 17
    :cond_10
    :try_start_10
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_2d

    .line 21
    if-eqz v0, :cond_17

    .line 22
    .line 23
    goto :goto_31

    .line 24
    :cond_17
    :try_start_17
    iget-object v0, p0, Lq2/d;->b:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Landroid/content/Context;

    .line 27
    .line 28
    invoke-static {v0}, Ly0/b;->a(Landroid/content/Context;)Ly0/b;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "getInstance(applicationContext)"

    .line 33
    .line 34
    invoke-static {v1, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p0}, Ly0/b;->d(Landroid/content/BroadcastReceiver;)V
    :try_end_27
    .catchall {:try_start_17 .. :try_end_27} :catchall_28

    .line 38
    .line 39
    .line 40
    goto :goto_31

    .line 41
    :catchall_28
    move-exception v0

    .line 42
    :try_start_29
    invoke-static {v0, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2d

    .line 43
    .line 44
    .line 45
    goto :goto_31

    .line 46
    :catchall_2d
    move-exception v0

    .line 47
    invoke-static {v0, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    :goto_31
    return-void

    .line 51
    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12

    .line 1
    iget v0, p0, Lq2/d;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "intent"

    .line 5
    .line 6
    const-string v3, "context"

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_1c0

    .line 9
    .line 10
    .line 11
    invoke-static {v3, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v2, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    new-instance p1, Landroid/content/Intent;

    .line 18
    .line 19
    iget-object v0, p0, Lq2/d;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Lcom/facebook/CustomTabMainActivity;

    .line 22
    .line 23
    const-class v1, Lcom/facebook/CustomTabMainActivity;

    .line 24
    .line 25
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    .line 27
    .line 28
    sget v1, Lcom/facebook/CustomTabMainActivity;->c:I

    .line 29
    .line 30
    const-string v1, "CustomTabMainActivity.action_refresh"

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    const-string v1, "CustomTabMainActivity.extra_url"

    .line 36
    .line 37
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    const/high16 p2, 0x24000000

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :pswitch_34
    invoke-static {v3, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v2, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lq2/d;->b:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast p1, Lcom/facebook/CustomTabActivity;

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :pswitch_42
    iget-object p1, p0, Lq2/d;->b:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p1, Lcom/capacitorjs/plugins/share/SharePlugin;

    .line 70
    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 72
    .line 73
    const/16 v1, 0x21

    .line 74
    .line 75
    if-lt v0, v1, :cond_56

    .line 76
    .line 77
    invoke-static {p2}, Lb/q;->h(Landroid/content/Intent;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    check-cast p2, Landroid/content/ComponentName;

    .line 82
    .line 83
    invoke-static {p1, p2}, Lcom/capacitorjs/plugins/share/SharePlugin;->c(Lcom/capacitorjs/plugins/share/SharePlugin;Landroid/content/ComponentName;)V

    .line 84
    .line 85
    .line 86
    goto :goto_5d

    .line 87
    :cond_56
    invoke-static {p1, p2}, Lcom/capacitorjs/plugins/share/SharePlugin;->d(Lcom/capacitorjs/plugins/share/SharePlugin;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-static {p1, p2}, Lcom/capacitorjs/plugins/share/SharePlugin;->c(Lcom/capacitorjs/plugins/share/SharePlugin;Landroid/content/ComponentName;)V

    .line 92
    .line 93
    .line 94
    :goto_5d
    return-void

    .line 95
    :pswitch_5e
    iget-object p1, p0, Lq2/d;->b:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast p1, Lorg/apache/cordova/CoreAndroid;

    .line 98
    .line 99
    if-eqz p2, :cond_b9

    .line 100
    .line 101
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    const-string v1, "android.intent.action.PHONE_STATE"

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_b9

    .line 112
    .line 113
    const-string v0, "state"

    .line 114
    .line 115
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-eqz v1, :cond_b9

    .line 120
    .line 121
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    const-string v1, "telephone"

    .line 132
    .line 133
    if-eqz v0, :cond_92

    .line 134
    .line 135
    iget-object p1, p1, Lorg/apache/cordova/o;->webView:Lorg/apache/cordova/t;

    .line 136
    .line 137
    invoke-interface {p1}, Lorg/apache/cordova/t;->getPluginManager()Lorg/apache/cordova/l0;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    const-string p2, "ringing"

    .line 142
    .line 143
    invoke-virtual {p1, v1, p2}, Lorg/apache/cordova/l0;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    goto :goto_b9

    .line 147
    :cond_92
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-eqz v0, :cond_a6

    .line 154
    .line 155
    iget-object p1, p1, Lorg/apache/cordova/o;->webView:Lorg/apache/cordova/t;

    .line 156
    .line 157
    invoke-interface {p1}, Lorg/apache/cordova/t;->getPluginManager()Lorg/apache/cordova/l0;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    const-string p2, "offhook"

    .line 162
    .line 163
    invoke-virtual {p1, v1, p2}, Lorg/apache/cordova/l0;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    goto :goto_b9

    .line 167
    :cond_a6
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    .line 168
    .line 169
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result p2

    .line 173
    if-eqz p2, :cond_b9

    .line 174
    .line 175
    iget-object p1, p1, Lorg/apache/cordova/o;->webView:Lorg/apache/cordova/t;

    .line 176
    .line 177
    invoke-interface {p1}, Lorg/apache/cordova/t;->getPluginManager()Lorg/apache/cordova/l0;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    const-string p2, "idle"

    .line 182
    .line 183
    invoke-virtual {p1, v1, p2}, Lorg/apache/cordova/l0;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    :cond_b9
    :goto_b9
    return-void

    .line 187
    :pswitch_ba
    iget-object p1, p0, Lq2/d;->b:Ljava/lang/Object;

    .line 188
    .line 189
    check-cast p1, Landroid/webkit/WebSettings;

    .line 190
    .line 191
    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    return-void

    .line 195
    :pswitch_c2
    iget-object p1, p0, Lq2/d;->b:Ljava/lang/Object;

    .line 196
    .line 197
    check-cast p1, Lg/c0;

    .line 198
    .line 199
    invoke-virtual {p1}, Lg/c0;->g()V

    .line 200
    .line 201
    .line 202
    return-void

    .line 203
    :pswitch_ca
    iget-object p1, p0, Lq2/d;->b:Ljava/lang/Object;

    .line 204
    .line 205
    check-cast p1, Lcom/google/firebase/messaging/c0;

    .line 206
    .line 207
    if-nez p1, :cond_d1

    .line 208
    .line 209
    goto :goto_10d

    .line 210
    :cond_d1
    invoke-virtual {p1}, Lcom/google/firebase/messaging/c0;->a()Z

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    if-nez p1, :cond_d8

    .line 215
    .line 216
    goto :goto_10d

    .line 217
    :cond_d8
    const-string p1, "FirebaseMessaging"

    .line 218
    .line 219
    const/4 p2, 0x3

    .line 220
    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    if-nez v0, :cond_ed

    .line 225
    .line 226
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 227
    .line 228
    const/16 v2, 0x17

    .line 229
    .line 230
    if-ne v0, v2, :cond_f2

    .line 231
    .line 232
    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 233
    .line 234
    .line 235
    move-result p2

    .line 236
    if-eqz p2, :cond_f2

    .line 237
    .line 238
    :cond_ed
    const-string p2, "Connectivity changed. Starting background sync."

    .line 239
    .line 240
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    .line 242
    .line 243
    :cond_f2
    iget-object p1, p0, Lq2/d;->b:Ljava/lang/Object;

    .line 244
    .line 245
    check-cast p1, Lcom/google/firebase/messaging/c0;

    .line 246
    .line 247
    iget-object p2, p1, Lcom/google/firebase/messaging/c0;->c:Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 248
    .line 249
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 250
    .line 251
    .line 252
    const-wide/16 v2, 0x0

    .line 253
    .line 254
    invoke-static {p1, v2, v3}, Lcom/google/firebase/messaging/FirebaseMessaging;->b(Ljava/lang/Runnable;J)V

    .line 255
    .line 256
    .line 257
    iget-object p1, p0, Lq2/d;->b:Ljava/lang/Object;

    .line 258
    .line 259
    check-cast p1, Lcom/google/firebase/messaging/c0;

    .line 260
    .line 261
    iget-object p1, p1, Lcom/google/firebase/messaging/c0;->c:Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 262
    .line 263
    iget-object p1, p1, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Landroid/content/Context;

    .line 264
    .line 265
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 266
    .line 267
    .line 268
    iput-object v1, p0, Lq2/d;->b:Ljava/lang/Object;

    .line 269
    .line 270
    :goto_10d
    return-void

    .line 271
    :pswitch_10e
    const-string v0, ""

    .line 272
    .line 273
    const-string v2, "replaceAll(...)"

    .line 274
    .line 275
    const-string v3, "compile(...)"

    .line 276
    .line 277
    const-string v4, "bf_"

    .line 278
    .line 279
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result v5

    .line 283
    if-eqz v5, :cond_11e

    .line 284
    .line 285
    goto/16 :goto_1bf

    .line 286
    .line 287
    :cond_11e
    :try_start_11e
    new-instance v5, Ly1/k;

    .line 288
    .line 289
    invoke-direct {v5, p1, v1}, Ly1/k;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    new-instance p1, Ljava/lang/StringBuilder;

    .line 293
    .line 294
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    if-eqz p2, :cond_134

    .line 298
    .line 299
    const-string v4, "event_name"

    .line 300
    .line 301
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    goto :goto_135

    .line 306
    :catchall_131
    move-exception p1

    .line 307
    goto/16 :goto_1bc

    .line 308
    .line 309
    :cond_134
    move-object v4, v1

    .line 310
    :goto_135
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    if-eqz p2, :cond_145

    .line 318
    .line 319
    const-string v4, "event_args"

    .line 320
    .line 321
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    .line 322
    .line 323
    .line 324
    move-result-object p2

    .line 325
    goto :goto_146

    .line 326
    :cond_145
    move-object p2, v1

    .line 327
    :goto_146
    new-instance v4, Landroid/os/Bundle;

    .line 328
    .line 329
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 330
    .line 331
    .line 332
    if-eqz p2, :cond_151

    .line 333
    .line 334
    invoke-virtual {p2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    :cond_151
    if-eqz v1, :cond_1b0

    .line 339
    .line 340
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    :goto_157
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 345
    .line 346
    .line 347
    move-result v6

    .line 348
    if-eqz v6, :cond_1b0

    .line 349
    .line 350
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v6

    .line 354
    check-cast v6, Ljava/lang/String;

    .line 355
    .line 356
    const-string v7, "key"

    .line 357
    .line 358
    invoke-static {v7, v6}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 359
    .line 360
    .line 361
    const-string v7, "[^0-9a-zA-Z _-]"

    .line 362
    .line 363
    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 364
    .line 365
    .line 366
    move-result-object v7

    .line 367
    invoke-static {v3, v7}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 368
    .line 369
    .line 370
    const-string v8, "-"

    .line 371
    .line 372
    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 373
    .line 374
    .line 375
    move-result-object v7

    .line 376
    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v7

    .line 380
    invoke-static {v2, v7}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 381
    .line 382
    .line 383
    const-string v8, "^[ -]*"

    .line 384
    .line 385
    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 386
    .line 387
    .line 388
    move-result-object v8

    .line 389
    invoke-static {v3, v8}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 393
    .line 394
    .line 395
    move-result-object v7

    .line 396
    invoke-virtual {v7, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v7

    .line 400
    invoke-static {v2, v7}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 401
    .line 402
    .line 403
    const-string v8, "[ -]*$"

    .line 404
    .line 405
    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 406
    .line 407
    .line 408
    move-result-object v8

    .line 409
    invoke-static {v3, v8}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 413
    .line 414
    .line 415
    move-result-object v7

    .line 416
    invoke-virtual {v7, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v7

    .line 420
    invoke-static {v2, v7}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {p2, v6}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object v6

    .line 427
    check-cast v6, Ljava/lang/String;

    .line 428
    .line 429
    invoke-virtual {v4, v7, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    goto :goto_157

    .line 433
    :cond_1b0
    sget-object p2, Lx1/r;->a:Lx1/r;

    .line 434
    .line 435
    invoke-static {}, Lx1/j0;->c()Z

    .line 436
    .line 437
    .line 438
    move-result p2

    .line 439
    if-eqz p2, :cond_1bf

    .line 440
    .line 441
    invoke-virtual {v5, p1, v4}, Ly1/k;->d(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1bb
    .catchall {:try_start_11e .. :try_end_1bb} :catchall_131

    .line 442
    .line 443
    .line 444
    goto :goto_1bf

    .line 445
    :goto_1bc
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 446
    .line 447
    .line 448
    :cond_1bf
    :goto_1bf
    return-void

    .line 449
    :pswitch_data_1c0
    .packed-switch 0x0
        :pswitch_10e
        :pswitch_ca
        :pswitch_c2
        :pswitch_ba
        :pswitch_5e
        :pswitch_42
        :pswitch_34
    .end packed-switch
.end method
