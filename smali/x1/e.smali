###### Class x1.e (x1.e)
.class public final Lx1/e;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final f:Lo3/a;

.field public static g:Lx1/e;


# instance fields
.field public final a:Ly0/b;

.field public final b:Lx1/b;

.field public c:Lx1/a;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public e:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lo3/a;

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lo3/a;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lx1/e;->f:Lo3/a;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Ly0/b;Lx1/b;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx1/e;->a:Ly0/b;

    .line 5
    .line 6
    iput-object p2, p0, Lx1/e;->b:Lx1/b;

    .line 7
    .line 8
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lx1/e;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    new-instance p1, Ljava/util/Date;

    .line 17
    .line 18
    const-wide/16 v0, 0x0

    .line 19
    .line 20
    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lx1/e;->e:Ljava/util/Date;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 20

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    iget-object v2, v7, Lx1/e;->c:Lx1/a;

    .line 4
    .line 5
    if-nez v2, :cond_7

    .line 6
    .line 7
    goto :goto_11

    .line 8
    :cond_7
    iget-object v0, v7, Lx1/e;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    const/4 v8, 0x0

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v8, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_12

    .line 17
    .line 18
    :goto_11
    return-void

    .line 19
    :cond_12
    new-instance v0, Ljava/util/Date;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, v7, Lx1/e;->e:Ljava/util/Date;

    .line 25
    .line 26
    new-instance v4, Ljava/util/HashSet;

    .line 27
    .line 28
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v5, Ljava/util/HashSet;

    .line 32
    .line 33
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 34
    .line 35
    .line 36
    new-instance v6, Ljava/util/HashSet;

    .line 37
    .line 38
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 39
    .line 40
    .line 41
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    .line 43
    invoke-direct {v3, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 44
    .line 45
    .line 46
    move v0, v1

    .line 47
    new-instance v1, Lcom/google/firebase/messaging/s;

    .line 48
    .line 49
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 50
    .line 51
    .line 52
    new-instance v15, Lx1/b0;

    .line 53
    .line 54
    new-instance v9, Lx1/c;

    .line 55
    .line 56
    const/4 v14, 0x0

    .line 57
    move-object v10, v3

    .line 58
    move-object v11, v4

    .line 59
    move-object v12, v5

    .line 60
    move-object v13, v6

    .line 61
    invoke-direct/range {v9 .. v14}, Lx1/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 62
    .line 63
    .line 64
    new-instance v10, Landroid/os/Bundle;

    .line 65
    .line 66
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v11, "permission,status"

    .line 70
    .line 71
    const-string v12, "fields"

    .line 72
    .line 73
    invoke-virtual {v10, v12, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    sget-object v11, Lx1/z;->j:Ljava/lang/String;

    .line 77
    .line 78
    const-string v11, "me/permissions"

    .line 79
    .line 80
    invoke-static {v2, v11, v9}, Lx1/w;->u(Lx1/a;Ljava/lang/String;Lx1/v;)Lx1/z;

    .line 81
    .line 82
    .line 83
    move-result-object v9

    .line 84
    iput-object v10, v9, Lx1/z;->d:Landroid/os/Bundle;

    .line 85
    .line 86
    sget-object v10, Lx1/d0;->a:Lx1/d0;

    .line 87
    .line 88
    iput-object v10, v9, Lx1/z;->h:Lx1/d0;

    .line 89
    .line 90
    new-instance v11, Ls2/a;

    .line 91
    .line 92
    const/4 v13, 0x2

    .line 93
    invoke-direct {v11, v13, v1}, Ls2/a;-><init>(ILjava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    iget-object v14, v2, Lx1/a;->k:Ljava/lang/String;

    .line 97
    .line 98
    if-nez v14, :cond_65

    .line 99
    .line 100
    const-string v14, "facebook"

    .line 101
    .line 102
    :cond_65
    move/from16 v16, v0

    .line 103
    .line 104
    const-string v0, "instagram"

    .line 105
    .line 106
    invoke-virtual {v14, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_77

    .line 111
    .line 112
    new-instance v0, Lo3/a;

    .line 113
    .line 114
    const/16 v14, 0x1c

    .line 115
    .line 116
    invoke-direct {v0, v14}, Lo3/a;-><init>(I)V

    .line 117
    .line 118
    .line 119
    goto :goto_7e

    .line 120
    :cond_77
    new-instance v0, Lo3/a;

    .line 121
    .line 122
    const/16 v14, 0x1b

    .line 123
    .line 124
    invoke-direct {v0, v14}, Lo3/a;-><init>(I)V

    .line 125
    .line 126
    .line 127
    :goto_7e
    new-instance v14, Landroid/os/Bundle;

    .line 128
    .line 129
    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 130
    .line 131
    .line 132
    iget v0, v0, Lo3/a;->a:I

    .line 133
    .line 134
    packed-switch v0, :pswitch_data_e2

    .line 135
    .line 136
    .line 137
    const-string v17, "ig_refresh_token"

    .line 138
    .line 139
    :goto_8a
    move/from16 v18, v8

    .line 140
    .line 141
    move-object/from16 v8, v17

    .line 142
    .line 143
    goto :goto_92

    .line 144
    :pswitch_8f
    const-string v17, "fb_extend_sso_token"

    .line 145
    .line 146
    goto :goto_8a

    .line 147
    :goto_92
    const-string v13, "grant_type"

    .line 148
    .line 149
    invoke-virtual {v14, v13, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    const-string v8, "client_id"

    .line 153
    .line 154
    iget-object v13, v2, Lx1/a;->h:Ljava/lang/String;

    .line 155
    .line 156
    invoke-virtual {v14, v8, v13}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    const-string v8, "access_token,expires_at,expires_in,data_access_expiration_time,graph_domain"

    .line 160
    .line 161
    invoke-virtual {v14, v12, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    packed-switch v0, :pswitch_data_e8

    .line 165
    .line 166
    .line 167
    const-string v0, "refresh_access_token"

    .line 168
    .line 169
    goto :goto_ab

    .line 170
    :pswitch_a9
    const-string v0, "oauth/access_token"

    .line 171
    .line 172
    :goto_ab
    invoke-static {v2, v0, v11}, Lx1/w;->u(Lx1/a;Ljava/lang/String;Lx1/v;)Lx1/z;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    iput-object v14, v0, Lx1/z;->d:Landroid/os/Bundle;

    .line 177
    .line 178
    iput-object v10, v0, Lx1/z;->h:Lx1/d0;

    .line 179
    .line 180
    const/4 v8, 0x2

    .line 181
    new-array v8, v8, [Lx1/z;

    .line 182
    .line 183
    aput-object v9, v8, v18

    .line 184
    .line 185
    aput-object v0, v8, v16

    .line 186
    .line 187
    invoke-direct {v15, v8}, Lx1/b0;-><init>([Lx1/z;)V

    .line 188
    .line 189
    .line 190
    new-instance v0, Lx1/d;

    .line 191
    .line 192
    invoke-direct/range {v0 .. v7}, Lx1/d;-><init>(Lcom/google/firebase/messaging/s;Lx1/a;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;Lx1/e;)V

    .line 193
    .line 194
    .line 195
    iget-object v1, v15, Lx1/b0;->d:Ljava/util/ArrayList;

    .line 196
    .line 197
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    if-nez v2, :cond_cd

    .line 202
    .line 203
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    :cond_cd
    invoke-static {v15}, Lq2/g;->i(Lx1/b0;)V

    .line 207
    .line 208
    .line 209
    new-instance v0, Lx1/a0;

    .line 210
    .line 211
    invoke-direct {v0, v15}, Lx1/a0;-><init>(Lx1/b0;)V

    .line 212
    .line 213
    .line 214
    invoke-static {}, Lx1/r;->c()Ljava/util/concurrent/Executor;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    move/from16 v2, v18

    .line 219
    .line 220
    new-array v2, v2, [Ljava/lang/Void;

    .line 221
    .line 222
    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 223
    .line 224
    .line 225
    return-void

    .line 226
    nop

    .line 227
    :pswitch_data_e2
    .packed-switch 0x1b
        :pswitch_8f
    .end packed-switch

    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    :pswitch_data_e8
    .packed-switch 0x1b
        :pswitch_a9
    .end packed-switch
.end method

.method public final b(Lx1/a;Lx1/a;)V
    .registers 6

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-class v2, Lcom/facebook/CurrentAccessTokenExpirationBroadcastReceiver;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    .line 11
    .line 12
    const-string v1, "com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    const-string v1, "com.facebook.sdk.EXTRA_OLD_ACCESS_TOKEN"

    .line 18
    .line 19
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    const-string p1, "com.facebook.sdk.EXTRA_NEW_ACCESS_TOKEN"

    .line 23
    .line 24
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lx1/e;->a:Ly0/b;

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ly0/b;->c(Landroid/content/Intent;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final c(Lx1/a;Z)V
    .registers 9

    .line 1
    iget-object v0, p0, Lx1/e;->b:Lx1/b;

    .line 2
    .line 3
    iget-object v0, v0, Lx1/b;->a:Landroid/content/SharedPreferences;

    .line 4
    .line 5
    iget-object v1, p0, Lx1/e;->c:Lx1/a;

    .line 6
    .line 7
    iput-object p1, p0, Lx1/e;->c:Lx1/a;

    .line 8
    .line 9
    iget-object v2, p0, Lx1/e;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Ljava/util/Date;

    .line 16
    .line 17
    const-wide/16 v4, 0x0

    .line 18
    .line 19
    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 20
    .line 21
    .line 22
    iput-object v2, p0, Lx1/e;->e:Ljava/util/Date;

    .line 23
    .line 24
    if-eqz p2, :cond_43

    .line 25
    .line 26
    const-string p2, "com.facebook.AccessTokenManager.CachedAccessToken"

    .line 27
    .line 28
    if-eqz p1, :cond_31

    .line 29
    .line 30
    :try_start_1d
    invoke-virtual {p1}, Lx1/a;->a()Lorg/json/JSONObject;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-interface {v0, p2, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_30} :catch_43

    .line 47
    .line 48
    .line 49
    goto :goto_43

    .line 50
    :cond_31
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-interface {v0, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 59
    .line 60
    .line 61
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-static {p2}, Lq2/g0;->c(Landroid/content/Context;)V

    .line 66
    .line 67
    .line 68
    :catch_43
    :cond_43
    :goto_43
    const/4 p2, 0x1

    .line 69
    if-nez v1, :cond_4c

    .line 70
    .line 71
    if-nez p1, :cond_4a

    .line 72
    .line 73
    move v0, p2

    .line 74
    goto :goto_50

    .line 75
    :cond_4a
    move v0, v3

    .line 76
    goto :goto_50

    .line 77
    :cond_4c
    invoke-virtual {v1, p1}, Lx1/a;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    :goto_50
    if-nez v0, :cond_93

    .line 82
    .line 83
    invoke-virtual {p0, v1, p1}, Lx1/e;->b(Lx1/a;Lx1/a;)V

    .line 84
    .line 85
    .line 86
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    sget-object v0, Lx1/a;->l:Ljava/util/Date;

    .line 91
    .line 92
    invoke-static {}, Lh8/b;->f()Lx1/a;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    const-string v1, "alarm"

    .line 97
    .line 98
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    check-cast v1, Landroid/app/AlarmManager;

    .line 103
    .line 104
    invoke-static {}, Lh8/b;->i()Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-eqz v2, :cond_93

    .line 109
    .line 110
    if-eqz v0, :cond_72

    .line 111
    .line 112
    iget-object v2, v0, Lx1/a;->a:Ljava/util/Date;

    .line 113
    .line 114
    goto :goto_73

    .line 115
    :cond_72
    const/4 v2, 0x0

    .line 116
    :goto_73
    if-eqz v2, :cond_93

    .line 117
    .line 118
    if-nez v1, :cond_78

    .line 119
    .line 120
    goto :goto_93

    .line 121
    :cond_78
    new-instance v2, Landroid/content/Intent;

    .line 122
    .line 123
    const-class v4, Lcom/facebook/CurrentAccessTokenExpirationBroadcastReceiver;

    .line 124
    .line 125
    invoke-direct {v2, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    .line 127
    .line 128
    const-string v4, "com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED"

    .line 129
    .line 130
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    .line 132
    .line 133
    const/high16 v4, 0x4000000

    .line 134
    .line 135
    invoke-static {p1, v3, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    :try_start_8a
    iget-object v0, v0, Lx1/a;->a:Ljava/util/Date;

    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 142
    .line 143
    .line 144
    move-result-wide v2

    .line 145
    invoke-virtual {v1, p2, v2, v3, p1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_93} :catch_93

    .line 146
    .line 147
    .line 148
    :catch_93
    :cond_93
    :goto_93
    return-void
.end method
