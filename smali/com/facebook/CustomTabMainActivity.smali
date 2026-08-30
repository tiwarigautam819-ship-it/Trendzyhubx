###### Class com.facebook.CustomTabMainActivity (com.facebook.CustomTabMainActivity)
.class public final Lcom/facebook/CustomTabMainActivity;
.super Landroid/app/Activity;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final synthetic c:I


# instance fields
.field public a:Z

.field public b:Lq2/d;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/facebook/CustomTabMainActivity;->a:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;I)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/facebook/CustomTabMainActivity;->b:Lq2/d;

    .line 2
    .line 3
    if-eqz v0, :cond_b

    .line 4
    .line 5
    invoke-static {p0}, Ly0/b;->a(Landroid/content/Context;)Ly0/b;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1, v0}, Ly0/b;->d(Landroid/content/BroadcastReceiver;)V

    .line 10
    .line 11
    .line 12
    :cond_b
    const-string v0, "intent"

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz p1, :cond_48

    .line 16
    .line 17
    const-string v2, "CustomTabMainActivity.extra_url"

    .line 18
    .line 19
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-eqz v2, :cond_30

    .line 24
    .line 25
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-static {v3}, Lq2/g0;->G(Ljava/lang/String;)Landroid/os/Bundle;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v2}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v2}, Lq2/g0;->G(Ljava/lang/String;)Landroid/os/Bundle;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v3, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 46
    .line 47
    .line 48
    goto :goto_35

    .line 49
    :cond_30
    new-instance v3, Landroid/os/Bundle;

    .line 50
    .line 51
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 52
    .line 53
    .line 54
    :goto_35
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-static {v0, v2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-static {v2, v3, v1}, Lq2/b0;->e(Landroid/content/Intent;Landroid/os/Bundle;Lx1/l;)Landroid/content/Intent;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-nez v0, :cond_43

    .line 66
    .line 67
    goto :goto_44

    .line 68
    :cond_43
    move-object p1, v0

    .line 69
    :goto_44
    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 70
    .line 71
    .line 72
    goto :goto_56

    .line 73
    :cond_48
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {v0, p1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-static {p1, v1, v1}, Lq2/b0;->e(Landroid/content/Intent;Landroid/os/Bundle;Lx1/l;)Landroid/content/Intent;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 85
    .line 86
    .line 87
    :goto_56
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 13

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "CustomTabActivity.action_customTabRedirect"

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v0, :cond_1b

    .line 20
    .line 21
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1b
    if-nez p1, :cond_127

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string v0, "CustomTabMainActivity.extra_action"

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    if-nez p1, :cond_2a

    .line 41
    .line 42
    return-void

    .line 43
    :cond_2a
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v3, "CustomTabMainActivity.extra_params"

    .line 48
    .line 49
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    const-string v4, "CustomTabMainActivity.extra_chromePackage"

    .line 58
    .line 59
    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    const-string v5, "CustomTabMainActivity.extra_targetApp"

    .line 68
    .line 69
    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    const/4 v5, 0x2

    .line 74
    invoke-static {v5}, Landroidx/fragment/app/m1;->h(I)[I

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    array-length v6, v5

    .line 79
    move v7, v2

    .line 80
    :goto_4f
    const/4 v8, 0x1

    .line 81
    if-ge v7, v6, :cond_62

    .line 82
    .line 83
    aget v9, v5, v7

    .line 84
    .line 85
    invoke-static {v9}, Lq2/x;->c(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v10

    .line 89
    invoke-virtual {v10, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v10

    .line 93
    if-eqz v10, :cond_5f

    .line 94
    .line 95
    goto :goto_63

    .line 96
    :cond_5f
    add-int/lit8 v7, v7, 0x1

    .line 97
    .line 98
    goto :goto_4f

    .line 99
    :cond_62
    move v9, v8

    .line 100
    :goto_63
    sget-object v4, Lx1/j;->a:[I

    .line 101
    .line 102
    invoke-static {v9}, Landroidx/fragment/app/m1;->e(I)I

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    aget v4, v4, v5

    .line 107
    .line 108
    if-ne v4, v8, :cond_bb

    .line 109
    .line 110
    new-instance v4, Lq2/y;

    .line 111
    .line 112
    invoke-direct {v4, v0, p1}, Lo5/c;-><init>(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    if-nez v0, :cond_79

    .line 116
    .line 117
    new-instance v0, Landroid/os/Bundle;

    .line 118
    .line 119
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 120
    .line 121
    .line 122
    :cond_79
    const-string v5, "oauth"

    .line 123
    .line 124
    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    if-eqz v5, :cond_8c

    .line 129
    .line 130
    invoke-static {}, Lq2/g0;->r()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    const-string v5, "oauth/authorize"

    .line 135
    .line 136
    invoke-static {p1, v5, v0}, Lq2/g0;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    goto :goto_ac

    .line 141
    :cond_8c
    invoke-static {}, Lq2/g0;->r()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    new-instance v6, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-static {}, Lx1/r;->d()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v7

    .line 154
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v7, "/dialog/"

    .line 158
    .line 159
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-static {v5, p1, v0}, Lq2/g0;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    :goto_ac
    invoke-static {v4}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    if-eqz v0, :cond_b3

    .line 178
    .line 179
    goto :goto_c0

    .line 180
    :cond_b3
    :try_start_b3
    iput-object p1, v4, Lo5/c;->b:Ljava/lang/Object;
    :try_end_b5
    .catchall {:try_start_b3 .. :try_end_b5} :catchall_b6

    .line 181
    .line 182
    goto :goto_c0

    .line 183
    :catchall_b6
    move-exception p1

    .line 184
    invoke-static {p1, v4}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    goto :goto_c0

    .line 188
    :cond_bb
    new-instance v4, Lo5/c;

    .line 189
    .line 190
    invoke-direct {v4, v0, p1}, Lo5/c;-><init>(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    :goto_c0
    invoke-static {v4}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result p1

    .line 197
    if-eqz p1, :cond_c8

    .line 198
    .line 199
    :catch_c6
    :goto_c6
    move p1, v2

    .line 200
    goto :goto_fe

    .line 201
    :cond_c8
    :try_start_c8
    sget-object p1, Ly2/b;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 202
    .line 203
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 207
    .line 208
    .line 209
    new-instance p1, Landroid/content/Intent;

    .line 210
    .line 211
    const-string v0, "android.intent.action.VIEW"

    .line 212
    .line 213
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    new-instance v0, Landroid/os/Bundle;

    .line 217
    .line 218
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 219
    .line 220
    .line 221
    const-string v5, "android.support.customtabs.extra.SESSION"

    .line 222
    .line 223
    const/4 v6, 0x0

    .line 224
    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 228
    .line 229
    .line 230
    const-string v0, "android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS"

    .line 231
    .line 232
    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_ed
    .catchall {:try_start_c8 .. :try_end_ed} :catchall_f9

    .line 236
    .line 237
    .line 238
    :try_start_ed
    iget-object v0, v4, Lo5/c;->b:Ljava/lang/Object;

    .line 239
    .line 240
    check-cast v0, Landroid/net/Uri;

    .line 241
    .line 242
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 243
    .line 244
    .line 245
    invoke-virtual {p0, p1, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_f7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_ed .. :try_end_f7} :catch_c6
    .catchall {:try_start_ed .. :try_end_f7} :catchall_f9

    .line 246
    .line 247
    .line 248
    move p1, v8

    .line 249
    goto :goto_fe

    .line 250
    :catchall_f9
    move-exception p1

    .line 251
    invoke-static {p1, v4}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    goto :goto_c6

    .line 255
    :goto_fe
    iput-boolean v2, p0, Lcom/facebook/CustomTabMainActivity;->a:Z

    .line 256
    .line 257
    if-nez p1, :cond_113

    .line 258
    .line 259
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    const-string v0, "CustomTabMainActivity.no_activity_exception"

    .line 264
    .line 265
    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    invoke-virtual {p0, v2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 273
    .line 274
    .line 275
    return-void

    .line 276
    :cond_113
    new-instance p1, Lq2/d;

    .line 277
    .line 278
    const/4 v0, 0x7

    .line 279
    invoke-direct {p1, v0, p0}, Lq2/d;-><init>(ILjava/lang/Object;)V

    .line 280
    .line 281
    .line 282
    iput-object p1, p0, Lcom/facebook/CustomTabMainActivity;->b:Lq2/d;

    .line 283
    .line 284
    invoke-static {p0}, Ly0/b;->a(Landroid/content/Context;)Ly0/b;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    new-instance v2, Landroid/content/IntentFilter;

    .line 289
    .line 290
    invoke-direct {v2, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v0, p1, v2}, Ly0/b;->b(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 294
    .line 295
    .line 296
    :cond_127
    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .registers 5

    .line 1
    const-string v0, "intent"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 7
    .line 8
    .line 9
    const-string v0, "CustomTabMainActivity.action_refresh"

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, -0x1

    .line 20
    if-eqz v0, :cond_27

    .line 21
    .line 22
    new-instance v0, Landroid/content/Intent;

    .line 23
    .line 24
    const-string v2, "CustomTabActivity.action_destroy"

    .line 25
    .line 26
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p0}, Ly0/b;->a(Landroid/content/Context;)Ly0/b;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2, v0}, Ly0/b;->c(Landroid/content/Intent;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1, v1}, Lcom/facebook/CustomTabMainActivity;->a(Landroid/content/Intent;I)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_27
    const-string v0, "CustomTabActivity.action_customTabRedirect"

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_36

    .line 51
    .line 52
    invoke-virtual {p0, p1, v1}, Lcom/facebook/CustomTabMainActivity;->a(Landroid/content/Intent;I)V

    .line 53
    .line 54
    .line 55
    :cond_36
    return-void
.end method

.method public final onResume()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/facebook/CustomTabMainActivity;->a:Z

    .line 5
    .line 6
    if-eqz v0, :cond_c

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v1, v0}, Lcom/facebook/CustomTabMainActivity;->a(Landroid/content/Intent;I)V

    .line 11
    .line 12
    .line 13
    :cond_c
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/facebook/CustomTabMainActivity;->a:Z

    .line 15
    .line 16
    return-void
.end method
