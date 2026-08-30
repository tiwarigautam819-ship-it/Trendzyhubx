###### Class com.facebook.FacebookActivity (com.facebook.FacebookActivity)
.class public Lcom/facebook/FacebookActivity;
.super Landroidx/fragment/app/h0;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public a:Landroidx/fragment/app/c0;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/h0;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    return-void

    .line 8
    :cond_7
    :try_start_7
    const-string v0, "prefix"

    .line 9
    .line 10
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "writer"

    .line 14
    .line 15
    invoke-static {v0, p3}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/fragment/app/h0;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_15

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catchall_15
    move-exception p1

    .line 23
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1
    const-string v0, "newConfig"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lb/p;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/facebook/FacebookActivity;->a:Landroidx/fragment/app/c0;

    .line 10
    .line 11
    if-eqz v0, :cond_f

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroidx/fragment/app/c0;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 14
    .line 15
    .line 16
    :cond_f
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 7

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/h0;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    sget-object v0, Lx1/r;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_23

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "applicationContext"

    .line 21
    .line 22
    invoke-static {v1, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    const-class v1, Lx1/r;

    .line 26
    .line 27
    monitor-enter v1

    .line 28
    :try_start_1b
    invoke-static {v0}, Lx1/r;->j(Landroid/content/Context;)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_20

    .line 29
    .line 30
    .line 31
    monitor-exit v1

    .line 32
    goto :goto_23

    .line 33
    :catchall_20
    move-exception p1

    .line 34
    :try_start_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    .line 35
    throw p1

    .line 36
    :cond_23
    :goto_23
    const v0, 0x7f0c0022

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lb/p;->setContentView(I)V

    .line 40
    .line 41
    .line 42
    const-string v0, "PassThrough"

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    const/4 v0, 0x0

    .line 53
    if-eqz p1, :cond_9e

    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const-string v1, "requestIntent"

    .line 60
    .line 61
    invoke-static {v1, p1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-static {p1}, Lq2/b0;->h(Landroid/content/Intent;)Landroid/os/Bundle;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const-class v1, Lq2/b0;

    .line 69
    .line 70
    invoke-static {v1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    const/4 v3, 0x0

    .line 75
    if-eqz v2, :cond_4e

    .line 76
    .line 77
    :goto_4c
    move-object p1, v3

    .line 78
    goto :goto_8a

    .line 79
    :cond_4e
    if-nez p1, :cond_51

    .line 80
    .line 81
    goto :goto_4c

    .line 82
    :cond_51
    :try_start_51
    const-string v2, "error_type"

    .line 83
    .line 84
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    if-nez v2, :cond_62

    .line 89
    .line 90
    const-string v2, "com.facebook.platform.status.ERROR_TYPE"

    .line 91
    .line 92
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    goto :goto_62

    .line 97
    :catchall_60
    move-exception p1

    .line 98
    goto :goto_86

    .line 99
    :cond_62
    :goto_62
    const-string v4, "error_description"

    .line 100
    .line 101
    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    if-nez v4, :cond_70

    .line 106
    .line 107
    const-string v4, "com.facebook.platform.status.ERROR_DESCRIPTION"

    .line 108
    .line 109
    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    :cond_70
    if-eqz v2, :cond_80

    .line 114
    .line 115
    const-string p1, "UserCanceled"

    .line 116
    .line 117
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-eqz p1, :cond_80

    .line 122
    .line 123
    new-instance p1, Lx1/n;

    .line 124
    .line 125
    invoke-direct {p1, v4}, Lx1/l;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    goto :goto_8a

    .line 129
    :cond_80
    new-instance p1, Lx1/l;

    .line 130
    .line 131
    invoke-direct {p1, v4}, Lx1/l;-><init>(Ljava/lang/String;)V
    :try_end_85
    .catchall {:try_start_51 .. :try_end_85} :catchall_60

    .line 132
    .line 133
    .line 134
    goto :goto_8a

    .line 135
    :goto_86
    invoke-static {p1, v1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    goto :goto_4c

    .line 139
    :goto_8a
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    const-string v2, "intent"

    .line 144
    .line 145
    invoke-static {v2, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    invoke-static {v1, v3, p1}, Lq2/b0;->e(Landroid/content/Intent;Landroid/os/Bundle;Lx1/l;)Landroid/content/Intent;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :cond_9e
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-virtual {p0}, Landroidx/fragment/app/h0;->getSupportFragmentManager()Landroidx/fragment/app/y0;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    const-string v2, "supportFragmentManager"

    .line 168
    .line 169
    invoke-static {v2, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    const-string v2, "SingleFragment"

    .line 173
    .line 174
    invoke-virtual {v1, v2}, Landroidx/fragment/app/y0;->C(Ljava/lang/String;)Landroidx/fragment/app/c0;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    if-nez v3, :cond_e2

    .line 179
    .line 180
    const-string v3, "FacebookDialogFragment"

    .line 181
    .line 182
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    if-eqz p1, :cond_cb

    .line 191
    .line 192
    new-instance v3, Lq2/i;

    .line 193
    .line 194
    invoke-direct {v3}, Lq2/i;-><init>()V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v3}, Landroidx/fragment/app/c0;->I()V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v3, v1, v2}, Landroidx/fragment/app/t;->L(Landroidx/fragment/app/y0;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    goto :goto_e2

    .line 204
    :cond_cb
    new-instance v3, Ly2/q;

    .line 205
    .line 206
    invoke-direct {v3}, Ly2/q;-><init>()V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v3}, Landroidx/fragment/app/c0;->I()V

    .line 210
    .line 211
    .line 212
    new-instance p1, Landroidx/fragment/app/a;

    .line 213
    .line 214
    invoke-direct {p1, v1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/y0;)V

    .line 215
    .line 216
    .line 217
    const v1, 0x7f090061

    .line 218
    .line 219
    .line 220
    invoke-virtual {p1, v1, v3, v2}, Landroidx/fragment/app/a;->e(ILandroidx/fragment/app/c0;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    const/4 v1, 0x1

    .line 224
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/a;->d(ZZ)I

    .line 225
    .line 226
    .line 227
    :cond_e2
    :goto_e2
    iput-object v3, p0, Lcom/facebook/FacebookActivity;->a:Landroidx/fragment/app/c0;

    .line 228
    .line 229
    return-void
.end method
