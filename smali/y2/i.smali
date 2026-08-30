###### Class y2.i (y2.i)
.class public final Ly2/i;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lg/g;

.field public c:Lb2/d;

.field public d:Z

.field public e:Landroid/os/Messenger;

.field public final f:I

.field public final g:I

.field public final h:Ljava/lang/String;

.field public final i:I

.field public final j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ly2/m;)V
    .registers 5

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {v0, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p2, Ly2/m;->d:Ljava/lang/String;

    .line 7
    .line 8
    iget-object p2, p2, Ly2/m;->w:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "applicationId"

    .line 11
    .line 12
    invoke-static {v1, v0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-nez v1, :cond_18

    .line 23
    .line 24
    goto :goto_19

    .line 25
    :cond_18
    move-object p1, v1

    .line 26
    :goto_19
    iput-object p1, p0, Ly2/i;->a:Landroid/content/Context;

    .line 27
    .line 28
    const/high16 p1, 0x10000

    .line 29
    .line 30
    iput p1, p0, Ly2/i;->f:I

    .line 31
    .line 32
    const p1, 0x10001

    .line 33
    .line 34
    .line 35
    iput p1, p0, Ly2/i;->g:I

    .line 36
    .line 37
    iput-object v0, p0, Ly2/i;->h:Ljava/lang/String;

    .line 38
    .line 39
    const p1, 0x133060d

    .line 40
    .line 41
    .line 42
    iput p1, p0, Ly2/i;->i:I

    .line 43
    .line 44
    iput-object p2, p0, Ly2/i;->j:Ljava/lang/String;

    .line 45
    .line 46
    new-instance p1, Lg/g;

    .line 47
    .line 48
    invoke-direct {p1, p0}, Lg/g;-><init>(Ly2/i;)V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Ly2/i;->b:Lg/g;

    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .registers 11

    .line 1
    iget-boolean v0, p0, Ly2/i;->d:Z

    .line 2
    .line 3
    if-nez v0, :cond_6

    .line 4
    .line 5
    goto/16 :goto_f7

    .line 6
    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Ly2/i;->d:Z

    .line 9
    .line 10
    iget-object v1, p0, Ly2/i;->c:Lb2/d;

    .line 11
    .line 12
    if-eqz v1, :cond_f7

    .line 13
    .line 14
    iget-object v2, v1, Lb2/d;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Ly2/j;

    .line 17
    .line 18
    iget-object v1, v1, Lb2/d;->c:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Ly2/m;

    .line 21
    .line 22
    const-string v3, "$request"

    .line 23
    .line 24
    invoke-static {v3, v1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object v3, v2, Ly2/j;->c:Ly2/i;

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    if-eqz v3, :cond_21

    .line 31
    .line 32
    iput-object v4, v3, Ly2/i;->c:Lb2/d;

    .line 33
    .line 34
    :cond_21
    iput-object v4, v2, Ly2/j;->c:Ly2/i;

    .line 35
    .line 36
    invoke-virtual {v2}, Ly2/t;->d()Ly2/o;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    iget-object v3, v3, Ly2/o;->e:Ly2/p;

    .line 41
    .line 42
    const-string v5, "progressBar"

    .line 43
    .line 44
    if-eqz v3, :cond_3f

    .line 45
    .line 46
    iget-object v3, v3, Ly2/p;->a:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v3, Ly2/q;

    .line 49
    .line 50
    iget-object v3, v3, Ly2/q;->j0:Landroid/view/View;

    .line 51
    .line 52
    if-eqz v3, :cond_3b

    .line 53
    .line 54
    const/16 v6, 0x8

    .line 55
    .line 56
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    goto :goto_3f

    .line 60
    :cond_3b
    invoke-static {v5}, Ld7/g;->i(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v4

    .line 64
    :cond_3f
    :goto_3f
    if-eqz p1, :cond_f0

    .line 65
    .line 66
    const-string v3, "com.facebook.platform.extra.PERMISSIONS"

    .line 67
    .line 68
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    if-nez v3, :cond_4b

    .line 73
    .line 74
    sget-object v3, Ls6/o;->a:Ls6/o;

    .line 75
    .line 76
    :cond_4b
    iget-object v6, v1, Ly2/m;->b:Ljava/util/HashSet;

    .line 77
    .line 78
    if-nez v6, :cond_51

    .line 79
    .line 80
    sget-object v6, Ls6/q;->a:Ls6/q;

    .line 81
    .line 82
    :cond_51
    const-string v7, "com.facebook.platform.extra.ID_TOKEN"

    .line 83
    .line 84
    invoke-virtual {p1, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    const-string v8, "openid"

    .line 89
    .line 90
    invoke-interface {v6, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    if-eqz v8, :cond_6f

    .line 95
    .line 96
    if-eqz v7, :cond_67

    .line 97
    .line 98
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 99
    .line 100
    .line 101
    move-result v7

    .line 102
    if-nez v7, :cond_6f

    .line 103
    .line 104
    :cond_67
    invoke-virtual {v2}, Ly2/t;->d()Ly2/o;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p1}, Ly2/o;->j()V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :cond_6f
    move-object v7, v6

    .line 113
    check-cast v7, Ljava/util/Collection;

    .line 114
    .line 115
    invoke-interface {v3, v7}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    if-eqz v7, :cond_be

    .line 120
    .line 121
    const-string v3, "com.facebook.platform.extra.USER_ID"

    .line 122
    .line 123
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    if-eqz v3, :cond_8b

    .line 128
    .line 129
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    if-nez v3, :cond_87

    .line 134
    .line 135
    goto :goto_8b

    .line 136
    :cond_87
    invoke-virtual {v2, v1, p1}, Ly2/j;->l(Ly2/m;Landroid/os/Bundle;)V

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    :cond_8b
    :goto_8b
    invoke-virtual {v2}, Ly2/t;->d()Ly2/o;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    iget-object v3, v3, Ly2/o;->e:Ly2/p;

    .line 145
    .line 146
    if-eqz v3, :cond_a3

    .line 147
    .line 148
    iget-object v3, v3, Ly2/p;->a:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast v3, Ly2/q;

    .line 151
    .line 152
    iget-object v3, v3, Ly2/q;->j0:Landroid/view/View;

    .line 153
    .line 154
    if-eqz v3, :cond_9f

    .line 155
    .line 156
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 157
    .line 158
    .line 159
    goto :goto_a3

    .line 160
    :cond_9f
    invoke-static {v5}, Ld7/g;->i(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    throw v4

    .line 164
    :cond_a3
    :goto_a3
    const-string v0, "com.facebook.platform.extra.ACCESS_TOKEN"

    .line 165
    .line 166
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    if-eqz v0, :cond_b6

    .line 171
    .line 172
    new-instance v3, Lc5/h;

    .line 173
    .line 174
    const/16 v4, 0x14

    .line 175
    .line 176
    invoke-direct {v3, p1, v2, v1, v4}, Lc5/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 177
    .line 178
    .line 179
    invoke-static {v0, v3}, Lq2/g0;->q(Ljava/lang/String;Lq2/f0;)V

    .line 180
    .line 181
    .line 182
    return-void

    .line 183
    :cond_b6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 184
    .line 185
    const-string v0, "Required value was null."

    .line 186
    .line 187
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw p1

    .line 191
    :cond_be
    new-instance p1, Ljava/util/HashSet;

    .line 192
    .line 193
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 194
    .line 195
    .line 196
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    :cond_c7
    :goto_c7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 201
    .line 202
    .line 203
    move-result v4

    .line 204
    if-eqz v4, :cond_dd

    .line 205
    .line 206
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    check-cast v4, Ljava/lang/String;

    .line 211
    .line 212
    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v5

    .line 216
    if-nez v5, :cond_c7

    .line 217
    .line 218
    invoke-virtual {p1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    goto :goto_c7

    .line 222
    :cond_dd
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    if-nez v0, :cond_ee

    .line 227
    .line 228
    const-string v0, ","

    .line 229
    .line 230
    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    const-string v3, "new_permissions"

    .line 235
    .line 236
    invoke-virtual {v2, v3, v0}, Ly2/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    :cond_ee
    iput-object p1, v1, Ly2/m;->b:Ljava/util/HashSet;

    .line 240
    .line 241
    :cond_f0
    invoke-virtual {v2}, Ly2/t;->d()Ly2/o;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    invoke-virtual {p1}, Ly2/o;->j()V

    .line 246
    .line 247
    .line 248
    :cond_f7
    :goto_f7
    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "service"

    .line 7
    .line 8
    invoke-static {p1, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Landroid/os/Messenger;

    .line 12
    .line 13
    invoke-direct {p1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Ly2/i;->e:Landroid/os/Messenger;

    .line 17
    .line 18
    new-instance p1, Landroid/os/Bundle;

    .line 19
    .line 20
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string p2, "com.facebook.platform.extra.APPLICATION_ID"

    .line 24
    .line 25
    iget-object v0, p0, Ly2/i;->h:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object p2, p0, Ly2/i;->j:Ljava/lang/String;

    .line 31
    .line 32
    if-eqz p2, :cond_26

    .line 33
    .line 34
    const-string v0, "com.facebook.platform.extra.NONCE"

    .line 35
    .line 36
    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_26
    iget p2, p0, Ly2/i;->f:I

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    invoke-static {v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    iget v1, p0, Ly2/i;->i:I

    .line 47
    .line 48
    iput v1, p2, Landroid/os/Message;->arg1:I

    .line 49
    .line 50
    invoke-virtual {p2, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 51
    .line 52
    .line 53
    new-instance p1, Landroid/os/Messenger;

    .line 54
    .line 55
    iget-object v1, p0, Ly2/i;->b:Lg/g;

    .line 56
    .line 57
    invoke-direct {p1, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 58
    .line 59
    .line 60
    iput-object p1, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 61
    .line 62
    :try_start_3d
    iget-object p1, p0, Ly2/i;->e:Landroid/os/Messenger;

    .line 63
    .line 64
    if-eqz p1, :cond_44

    .line 65
    .line 66
    invoke-virtual {p1, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_44} :catch_45

    .line 67
    .line 68
    .line 69
    :cond_44
    return-void

    .line 70
    :catch_45
    invoke-virtual {p0, v0}, Ly2/i;->a(Landroid/os/Bundle;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Ly2/i;->e:Landroid/os/Messenger;

    .line 8
    .line 9
    :try_start_8
    iget-object v0, p0, Ly2/i;->a:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_d} :catch_d

    .line 12
    .line 13
    .line 14
    :catch_d
    invoke-virtual {p0, p1}, Ly2/i;->a(Landroid/os/Bundle;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
