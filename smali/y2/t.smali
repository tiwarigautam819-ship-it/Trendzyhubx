###### Class y2.t (y2.t)
.class public abstract Ly2/t;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field public a:Ljava/util/HashMap;

.field public b:Ly2/o;


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-gez v0, :cond_c

    .line 10
    .line 11
    move-object v2, v1

    .line 12
    goto :goto_22

    .line 13
    :cond_c
    new-instance v2, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    :goto_12
    if-ge v3, v0, :cond_22

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    add-int/lit8 v3, v3, 0x1

    .line 33
    .line 34
    goto :goto_12

    .line 35
    :cond_22
    :goto_22
    if-eqz v2, :cond_28

    .line 36
    .line 37
    invoke-static {v2}, Ls6/r;->y(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    :cond_28
    iput-object v1, p0, Ly2/t;->a:Ljava/util/HashMap;

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Ly2/t;->a:Ljava/util/HashMap;

    .line 2
    .line 3
    if-nez v0, :cond_b

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Ly2/t;->a:Ljava/util/HashMap;

    .line 11
    .line 12
    :cond_b
    iget-object v0, p0, Ly2/t;->a:Ljava/util/HashMap;

    .line 13
    .line 14
    if-eqz v0, :cond_1d

    .line 15
    .line 16
    if-eqz p2, :cond_16

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    const/4 p2, 0x0

    .line 24
    :goto_17
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Ljava/lang/String;

    .line 29
    .line 30
    :cond_1d
    return-void
.end method

.method public b()V
    .registers 1

    .line 1
    return-void
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    const-string v0, "authId"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 9
    .line 10
    .line 11
    :try_start_a
    const-string v1, "0_auth_logger_id"

    .line 12
    .line 13
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    .line 15
    .line 16
    const-string p1, "3_method"

    .line 17
    .line 18
    invoke-virtual {p0}, Ly2/t;->e()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Ly2/t;->j(Lorg/json/JSONObject;)V
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_1b} :catch_1c

    .line 26
    .line 27
    .line 28
    goto :goto_34

    .line 29
    :catch_1c
    move-exception p1

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v2, "Error creating client state json: "

    .line 33
    .line 34
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const-string v1, "LoginMethodHandler"

    .line 49
    .line 50
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    :goto_34
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const-string v0, "param.toString()"

    .line 58
    .line 59
    invoke-static {v0, p1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    return-object p1
.end method

.method public final d()Ly2/o;
    .registers 2

    .line 1
    iget-object v0, p0, Ly2/t;->b:Ly2/o;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_5
    const-string v0, "loginClient"

    .line 7
    .line 8
    invoke-static {v0}, Ld7/g;->i(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    throw v0
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public f()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "fb"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, "://authorize/"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method

.method public final g(Ljava/lang/String;)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Ly2/t;->d()Ly2/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Ly2/o;->g:Ly2/m;

    .line 6
    .line 7
    if-eqz v0, :cond_c

    .line 8
    .line 9
    iget-object v0, v0, Ly2/m;->d:Ljava/lang/String;

    .line 10
    .line 11
    if-nez v0, :cond_10

    .line 12
    .line 13
    :cond_c
    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_10
    invoke-virtual {p0}, Ly2/t;->d()Ly2/o;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Ly2/o;->e()Landroidx/fragment/app/h0;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    new-instance v2, Ly1/k;

    .line 26
    .line 27
    invoke-direct {v2, v1, v0}, Ly1/k;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    new-instance v1, Landroid/os/Bundle;

    .line 31
    .line 32
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v3, "fb_web_login_e2e"

    .line 36
    .line 37
    invoke-virtual {v1, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string p1, "fb_web_login_switchback_time"

    .line 41
    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 43
    .line 44
    .line 45
    move-result-wide v3

    .line 46
    invoke-virtual {v1, p1, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 47
    .line 48
    .line 49
    const-string p1, "app_id"

    .line 50
    .line 51
    invoke-virtual {v1, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    sget-object p1, Lx1/r;->a:Lx1/r;

    .line 55
    .line 56
    invoke-static {}, Lx1/j0;->c()Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_42

    .line 61
    .line 62
    const-string p1, "fb_dialogs_web_login_dialog_complete"

    .line 63
    .line 64
    invoke-virtual {v2, v1, p1}, Ly1/k;->g(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_42
    return-void
.end method

.method public h(IILandroid/content/Intent;)Z
    .registers 4

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final i(Ly2/m;Landroid/os/Bundle;)V
    .registers 8

    .line 1
    const-string v0, "id_token"

    .line 2
    .line 3
    const-string v1, "code"

    .line 4
    .line 5
    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {v2}, Lq2/g0;->B(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-nez v3, :cond_a9

    .line 14
    .line 15
    if-eqz v2, :cond_a1

    .line 16
    .line 17
    invoke-virtual {p0}, Ly2/t;->f()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    iget-object p1, p1, Ly2/m;->x:Ljava/lang/String;

    .line 22
    .line 23
    if-nez p1, :cond_1a

    .line 24
    .line 25
    const-string p1, ""

    .line 26
    .line 27
    :cond_1a
    const-string v4, "redirectUri"

    .line 28
    .line 29
    invoke-static {v4, v3}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    new-instance v4, Landroid/os/Bundle;

    .line 33
    .line 34
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v1, "client_id"

    .line 41
    .line 42
    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v4, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string v1, "redirect_uri"

    .line 50
    .line 51
    invoke-virtual {v4, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string v1, "code_verifier"

    .line 55
    .line 56
    invoke-virtual {v4, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sget-object p1, Lx1/z;->j:Ljava/lang/String;

    .line 60
    .line 61
    const-string p1, "oauth/access_token"

    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    invoke-static {v1, p1, v1}, Lx1/w;->u(Lx1/a;Ljava/lang/String;Lx1/v;)Lx1/z;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    sget-object v2, Lx1/d0;->a:Lx1/d0;

    .line 69
    .line 70
    iput-object v2, p1, Lx1/z;->h:Lx1/d0;

    .line 71
    .line 72
    iput-object v4, p1, Lx1/z;->d:Landroid/os/Bundle;

    .line 73
    .line 74
    invoke-virtual {p1}, Lx1/z;->c()Lx1/c0;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iget-object v2, p1, Lx1/c0;->c:Lx1/o;

    .line 79
    .line 80
    if-nez v2, :cond_97

    .line 81
    .line 82
    :try_start_51
    iget-object p1, p1, Lx1/c0;->b:Lorg/json/JSONObject;
    :try_end_53
    .catch Lorg/json/JSONException; {:try_start_51 .. :try_end_53} :catch_5c

    .line 83
    .line 84
    const-string v2, "access_token"

    .line 85
    .line 86
    if-eqz p1, :cond_5e

    .line 87
    .line 88
    :try_start_57
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    goto :goto_5e

    .line 93
    :catch_5c
    move-exception p1

    .line 94
    goto :goto_7f

    .line 95
    :cond_5e
    :goto_5e
    if-eqz p1, :cond_77

    .line 96
    .line 97
    invoke-static {v1}, Lq2/g0;->B(Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-nez v3, :cond_77

    .line 102
    .line 103
    invoke-virtual {p2, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-eqz v1, :cond_76

    .line 111
    .line 112
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p2, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    :cond_76
    return-void

    .line 120
    :cond_77
    new-instance p1, Lx1/l;

    .line 121
    .line 122
    const-string p2, "No access token found from result"

    .line 123
    .line 124
    invoke-direct {p1, p2}, Lx1/l;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw p1
    :try_end_7f
    .catch Lorg/json/JSONException; {:try_start_57 .. :try_end_7f} :catch_5c

    .line 128
    :goto_7f
    new-instance p2, Lx1/l;

    .line 129
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    const-string v1, "Fail to process code exchange response: "

    .line 133
    .line 134
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-direct {p2, p1}, Lx1/l;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw p2

    .line 152
    :cond_97
    new-instance p1, Lx1/t;

    .line 153
    .line 154
    invoke-virtual {v2}, Lx1/o;->a()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    invoke-direct {p1, v2, p2}, Lx1/t;-><init>(Lx1/o;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    throw p1

    .line 162
    :cond_a1
    new-instance p1, Lx1/l;

    .line 163
    .line 164
    const-string p2, "Failed to create code exchange request"

    .line 165
    .line 166
    invoke-direct {p1, p2}, Lx1/l;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    throw p1

    .line 170
    :cond_a9
    new-instance p1, Lx1/l;

    .line 171
    .line 172
    const-string p2, "No code param found from the request"

    .line 173
    .line 174
    invoke-direct {p1, p2}, Lx1/l;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw p1
.end method

.method public j(Lorg/json/JSONObject;)V
    .registers 2

    .line 1
    return-void
.end method

.method public abstract k(Ly2/m;)I
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 1
    const-string p2, "dest"

    .line 2
    .line 3
    invoke-static {p2, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Ly2/t;->a:Ljava/util/HashMap;

    .line 7
    .line 8
    if-nez p2, :cond_e

    .line 9
    .line 10
    const/4 p2, -0x1

    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_e
    invoke-interface {p2}, Ljava/util/Map;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    :goto_1d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_3c

    .line 35
    .line 36
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Ljava/util/Map$Entry;

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Ljava/lang/String;

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    goto :goto_1d

    .line 61
    :cond_3c
    return-void
.end method
