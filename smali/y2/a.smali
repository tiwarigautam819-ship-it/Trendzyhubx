###### Class y2.a (y2.a)
.class public final Ly2/a;
.super Ly2/u;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ly2/a;",
            ">;"
        }
    .end annotation
.end field

.field public static j:Z


# instance fields
.field public e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Lx1/f;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ln4/e;

    .line 2
    .line 3
    const/16 v1, 0xf

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ln4/e;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Ly2/a;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0, p1}, Ly2/u;-><init>(ILandroid/os/Parcel;)V

    .line 2
    const-string v0, "custom_tab"

    iput-object v0, p0, Ly2/a;->h:Ljava/lang/String;

    .line 3
    sget-object v0, Lx1/f;->e:Lx1/f;

    iput-object v0, p0, Ly2/a;->i:Lx1/f;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ly2/a;->f:Ljava/lang/String;

    .line 5
    invoke-super {p0}, Ly2/t;->f()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lq2/g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ly2/a;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ly2/o;)V
    .registers 4

    .line 7
    invoke-direct {p0}, Ly2/u;-><init>()V

    .line 8
    iput-object p1, p0, Ly2/t;->b:Ly2/o;

    .line 9
    const-string p1, "custom_tab"

    iput-object p1, p0, Ly2/a;->h:Ljava/lang/String;

    .line 10
    sget-object p1, Lx1/f;->e:Lx1/f;

    iput-object p1, p0, Ly2/a;->i:Lx1/f;

    .line 11
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    .line 12
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x64

    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    const/16 p1, 0x20

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "BigInteger(length * 5, r).toString(32)"

    invoke-static {v0, p1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    iput-object p1, p0, Ly2/a;->f:Ljava/lang/String;

    const/4 p1, 0x0

    .line 14
    sput-boolean p1, Ly2/a;->j:Z

    .line 15
    invoke-super {p0}, Ly2/t;->f()Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-static {p1}, Lq2/g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ly2/a;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ly2/a;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ly2/a;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h(IILandroid/content/Intent;)Z
    .registers 10

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p3, :cond_e

    .line 3
    .line 4
    sget v1, Lcom/facebook/CustomTabMainActivity;->c:I

    .line 5
    .line 6
    const-string v1, "CustomTabMainActivity.no_activity_exception"

    .line 7
    .line 8
    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_e

    .line 13
    .line 14
    goto :goto_1a

    .line 15
    :cond_e
    const/4 v1, 0x1

    .line 16
    if-eq p1, v1, :cond_12

    .line 17
    .line 18
    goto :goto_1a

    .line 19
    :cond_12
    invoke-virtual {p0}, Ly2/t;->d()Ly2/o;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object p1, p1, Ly2/o;->g:Ly2/m;

    .line 24
    .line 25
    if-nez p1, :cond_1b

    .line 26
    .line 27
    :goto_1a
    return v0

    .line 28
    :cond_1b
    const/4 v2, -0x1

    .line 29
    const/4 v3, 0x0

    .line 30
    if-ne p2, v2, :cond_10f

    .line 31
    .line 32
    if-eqz p3, :cond_2a

    .line 33
    .line 34
    sget p2, Lcom/facebook/CustomTabMainActivity;->c:I

    .line 35
    .line 36
    const-string p2, "CustomTabMainActivity.extra_url"

    .line 37
    .line 38
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    goto :goto_2b

    .line 43
    :cond_2a
    move-object p2, v3

    .line 44
    :goto_2b
    if-eqz p2, :cond_10e

    .line 45
    .line 46
    const-string p3, "fbconnect://cct."

    .line 47
    .line 48
    invoke-static {p2, p3, v0}, Lk7/o;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 49
    .line 50
    .line 51
    move-result p3

    .line 52
    if-nez p3, :cond_3f

    .line 53
    .line 54
    invoke-super {p0}, Ly2/t;->f()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p3

    .line 58
    invoke-static {p2, p3, v0}, Lk7/o;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 59
    .line 60
    .line 61
    move-result p3

    .line 62
    if-eqz p3, :cond_10e

    .line 63
    .line 64
    :cond_3f
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    invoke-virtual {p2}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    invoke-static {p3}, Lq2/g0;->G(Ljava/lang/String;)Landroid/os/Bundle;

    .line 73
    .line 74
    .line 75
    move-result-object p3

    .line 76
    invoke-virtual {p2}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-static {p2}, Lq2/g0;->G(Ljava/lang/String;)Landroid/os/Bundle;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 85
    .line 86
    .line 87
    :try_start_56
    const-string p2, "state"

    .line 88
    .line 89
    invoke-virtual {p3, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    if-nez p2, :cond_5f

    .line 94
    .line 95
    goto :goto_70

    .line 96
    :cond_5f
    new-instance v4, Lorg/json/JSONObject;

    .line 97
    .line 98
    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    const-string p2, "7_challenge"

    .line 102
    .line 103
    invoke-virtual {v4, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    iget-object v4, p0, Ly2/a;->f:Ljava/lang/String;

    .line 108
    .line 109
    invoke-static {p2, v4}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v0
    :try_end_70
    .catch Lorg/json/JSONException; {:try_start_56 .. :try_end_70} :catch_70

    .line 113
    :catch_70
    :goto_70
    if-nez v0, :cond_7e

    .line 114
    .line 115
    new-instance p2, Lx1/l;

    .line 116
    .line 117
    const-string p3, "Invalid state parameter"

    .line 118
    .line 119
    invoke-direct {p2, p3}, Lx1/l;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, p1, v3, p2}, Ly2/u;->q(Ly2/m;Landroid/os/Bundle;Lx1/l;)V

    .line 123
    .line 124
    .line 125
    goto/16 :goto_10e

    .line 126
    .line 127
    :cond_7e
    const-string p2, "error"

    .line 128
    .line 129
    invoke-virtual {p3, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    if-nez p2, :cond_8c

    .line 134
    .line 135
    const-string p2, "error_type"

    .line 136
    .line 137
    invoke-virtual {p3, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    :cond_8c
    const-string v0, "error_msg"

    .line 142
    .line 143
    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    if-nez v0, :cond_9a

    .line 148
    .line 149
    const-string v0, "error_message"

    .line 150
    .line 151
    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    :cond_9a
    if-nez v0, :cond_a2

    .line 156
    .line 157
    const-string v0, "error_description"

    .line 158
    .line 159
    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    :cond_a2
    const-string v4, "error_code"

    .line 164
    .line 165
    invoke-virtual {p3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    if-eqz v4, :cond_af

    .line 170
    .line 171
    :try_start_aa
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    move-result v4
    :try_end_ae
    .catch Ljava/lang/NumberFormatException; {:try_start_aa .. :try_end_ae} :catch_af

    .line 175
    goto :goto_b0

    .line 176
    :catch_af
    :cond_af
    move v4, v2

    .line 177
    :goto_b0
    invoke-static {p2}, Lq2/g0;->B(Ljava/lang/String;)Z

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    if-eqz v5, :cond_d9

    .line 182
    .line 183
    invoke-static {v0}, Lq2/g0;->B(Ljava/lang/String;)Z

    .line 184
    .line 185
    .line 186
    move-result v5

    .line 187
    if-eqz v5, :cond_d9

    .line 188
    .line 189
    if-ne v4, v2, :cond_d9

    .line 190
    .line 191
    const-string p2, "access_token"

    .line 192
    .line 193
    invoke-virtual {p3, p2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 194
    .line 195
    .line 196
    move-result p2

    .line 197
    if-eqz p2, :cond_ca

    .line 198
    .line 199
    invoke-virtual {p0, p1, p3, v3}, Ly2/u;->q(Ly2/m;Landroid/os/Bundle;Lx1/l;)V

    .line 200
    .line 201
    .line 202
    goto :goto_10e

    .line 203
    :cond_ca
    invoke-static {}, Lx1/r;->c()Ljava/util/concurrent/Executor;

    .line 204
    .line 205
    .line 206
    move-result-object p2

    .line 207
    new-instance v0, Landroidx/fragment/app/e;

    .line 208
    .line 209
    const/16 v2, 0x8

    .line 210
    .line 211
    invoke-direct {v0, p0, p1, p3, v2}, Landroidx/fragment/app/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 212
    .line 213
    .line 214
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 215
    .line 216
    .line 217
    goto :goto_10e

    .line 218
    :cond_d9
    if-eqz p2, :cond_f4

    .line 219
    .line 220
    const-string p3, "access_denied"

    .line 221
    .line 222
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result p3

    .line 226
    if-nez p3, :cond_eb

    .line 227
    .line 228
    const-string p3, "OAuthAccessDeniedException"

    .line 229
    .line 230
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result p3

    .line 234
    if-eqz p3, :cond_f4

    .line 235
    .line 236
    :cond_eb
    new-instance p2, Lx1/n;

    .line 237
    .line 238
    invoke-direct {p2}, Ljava/lang/RuntimeException;-><init>()V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p0, p1, v3, p2}, Ly2/u;->q(Ly2/m;Landroid/os/Bundle;Lx1/l;)V

    .line 242
    .line 243
    .line 244
    goto :goto_10e

    .line 245
    :cond_f4
    const/16 p3, 0x1069

    .line 246
    .line 247
    if-ne v4, p3, :cond_101

    .line 248
    .line 249
    new-instance p2, Lx1/n;

    .line 250
    .line 251
    invoke-direct {p2}, Ljava/lang/RuntimeException;-><init>()V

    .line 252
    .line 253
    .line 254
    invoke-virtual {p0, p1, v3, p2}, Ly2/u;->q(Ly2/m;Landroid/os/Bundle;Lx1/l;)V

    .line 255
    .line 256
    .line 257
    goto :goto_10e

    .line 258
    :cond_101
    new-instance p3, Lx1/o;

    .line 259
    .line 260
    invoke-direct {p3, v4, p2, v0}, Lx1/o;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    new-instance p2, Lx1/t;

    .line 264
    .line 265
    invoke-direct {p2, p3, v0}, Lx1/t;-><init>(Lx1/o;Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p0, p1, v3, p2}, Ly2/u;->q(Ly2/m;Landroid/os/Bundle;Lx1/l;)V

    .line 269
    .line 270
    .line 271
    :cond_10e
    :goto_10e
    return v1

    .line 272
    :cond_10f
    new-instance p2, Lx1/n;

    .line 273
    .line 274
    invoke-direct {p2}, Ljava/lang/RuntimeException;-><init>()V

    .line 275
    .line 276
    .line 277
    invoke-virtual {p0, p1, v3, p2}, Ly2/u;->q(Ly2/m;Landroid/os/Bundle;Lx1/l;)V

    .line 278
    .line 279
    .line 280
    return v0
.end method

.method public final j(Lorg/json/JSONObject;)V
    .registers 4

    .line 1
    const-string v0, "7_challenge"

    .line 2
    .line 3
    iget-object v1, p0, Ly2/a;->f:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final k(Ly2/m;)I
    .registers 12

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget v0, p1, Ly2/m;->l:I

    .line 7
    .line 8
    invoke-virtual {p0}, Ly2/t;->d()Ly2/o;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v2, p0, Ly2/a;->g:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-nez v3, :cond_15

    .line 19
    .line 20
    goto/16 :goto_175

    .line 21
    .line 22
    :cond_15
    invoke-virtual {p0, p1}, Ly2/u;->m(Ly2/m;)Landroid/os/Bundle;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    iget-object v4, p1, Ly2/m;->d:Ljava/lang/String;

    .line 27
    .line 28
    const-string v5, "redirect_uri"

    .line 29
    .line 30
    invoke-virtual {v3, v5, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 v2, 0x2

    .line 34
    if-ne v0, v2, :cond_29

    .line 35
    .line 36
    const-string v5, "app_id"

    .line 37
    .line 38
    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    goto :goto_2e

    .line 42
    :cond_29
    const-string v5, "client_id"

    .line 43
    .line 44
    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :goto_2e
    new-instance v4, Lorg/json/JSONObject;

    .line 48
    .line 49
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 50
    .line 51
    .line 52
    :try_start_33
    const-string v5, "init"

    .line 53
    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 55
    .line 56
    .line 57
    move-result-wide v6

    .line 58
    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_3c
    .catch Lorg/json/JSONException; {:try_start_33 .. :try_end_3c} :catch_3c

    .line 59
    .line 60
    .line 61
    :catch_3c
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    const-string v5, "e2e.toString()"

    .line 66
    .line 67
    invoke-static {v5, v4}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    const-string v5, "e2e"

    .line 71
    .line 72
    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const-string v4, "response_type"

    .line 76
    .line 77
    if-ne v0, v2, :cond_54

    .line 78
    .line 79
    const-string v5, "token,signed_request,graph_domain,granted_scopes"

    .line 80
    .line 81
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    goto :goto_6a

    .line 85
    :cond_54
    iget-object v5, p1, Ly2/m;->b:Ljava/util/HashSet;

    .line 86
    .line 87
    const-string v6, "openid"

    .line 88
    .line 89
    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    if-eqz v5, :cond_65

    .line 94
    .line 95
    const-string v5, "nonce"

    .line 96
    .line 97
    iget-object v6, p1, Ly2/m;->w:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {v3, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :cond_65
    const-string v5, "id_token,token,signed_request,graph_domain"

    .line 103
    .line 104
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :goto_6a
    const-string v4, "code_challenge"

    .line 108
    .line 109
    iget-object v5, p1, Ly2/m;->y:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget v4, p1, Ly2/m;->z:I

    .line 115
    .line 116
    const/4 v5, 0x0

    .line 117
    if-eqz v4, :cond_7b

    .line 118
    .line 119
    invoke-static {v4}, Lq2/x;->l(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    goto :goto_7c

    .line 124
    :cond_7b
    move-object v4, v5

    .line 125
    :goto_7c
    const-string v6, "code_challenge_method"

    .line 126
    .line 127
    invoke-virtual {v3, v6, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    const-string v4, "return_scopes"

    .line 131
    .line 132
    const-string v6, "true"

    .line 133
    .line 134
    invoke-virtual {v3, v4, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    const-string v4, "auth_type"

    .line 138
    .line 139
    iget-object v7, p1, Ly2/m;->h:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {v3, v4, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget v4, p1, Ly2/m;->a:I

    .line 145
    .line 146
    invoke-static {v4}, Lq2/x;->m(I)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    const-string v7, "login_behavior"

    .line 151
    .line 152
    invoke-virtual {v3, v7, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    sget-object v4, Lx1/r;->a:Lx1/r;

    .line 156
    .line 157
    const-string v4, "android-18.1.3"

    .line 158
    .line 159
    const-string v7, "sdk"

    .line 160
    .line 161
    invoke-virtual {v3, v7, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    const-string v4, "sso"

    .line 165
    .line 166
    const-string v7, "chrome_custom_tab"

    .line 167
    .line 168
    invoke-virtual {v3, v4, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    sget-boolean v4, Lx1/r;->l:Z

    .line 172
    .line 173
    const-string v7, "1"

    .line 174
    .line 175
    const-string v8, "0"

    .line 176
    .line 177
    if-eqz v4, :cond_b4

    .line 178
    .line 179
    move-object v4, v7

    .line 180
    goto :goto_b5

    .line 181
    :cond_b4
    move-object v4, v8

    .line 182
    :goto_b5
    const-string v9, "cct_prefetching"

    .line 183
    .line 184
    invoke-virtual {v3, v9, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    iget-boolean v4, p1, Ly2/m;->m:Z

    .line 188
    .line 189
    if-eqz v4, :cond_c7

    .line 190
    .line 191
    const-string v4, "fx_app"

    .line 192
    .line 193
    invoke-static {v0}, Lq2/x;->c(I)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v9

    .line 197
    invoke-virtual {v3, v4, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    :cond_c7
    iget-boolean v4, p1, Ly2/m;->v:Z

    .line 201
    .line 202
    if-eqz v4, :cond_d0

    .line 203
    .line 204
    const-string v4, "skip_dedupe"

    .line 205
    .line 206
    invoke-virtual {v3, v4, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    :cond_d0
    iget-object v4, p1, Ly2/m;->j:Ljava/lang/String;

    .line 210
    .line 211
    if-eqz v4, :cond_e3

    .line 212
    .line 213
    const-string v6, "messenger_page_id"

    .line 214
    .line 215
    invoke-virtual {v3, v6, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    iget-boolean p1, p1, Ly2/m;->k:Z

    .line 219
    .line 220
    if-eqz p1, :cond_de

    .line 221
    .line 222
    move-object v8, v7

    .line 223
    :cond_de
    const-string p1, "reset_messenger_state"

    .line 224
    .line 225
    invoke-virtual {v3, p1, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    :cond_e3
    sget-boolean p1, Ly2/a;->j:Z

    .line 229
    .line 230
    if-eqz p1, :cond_ec

    .line 231
    .line 232
    const-string p1, "cct_over_app_switch"

    .line 233
    .line 234
    invoke-virtual {v3, p1, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    :cond_ec
    sget-boolean p1, Lx1/r;->l:Z

    .line 238
    .line 239
    if-eqz p1, :cond_138

    .line 240
    .line 241
    if-ne v0, v2, :cond_10c

    .line 242
    .line 243
    sget-object p1, Ly2/b;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 244
    .line 245
    invoke-static {}, Lq2/g0;->r()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    const-string v2, "oauth/authorize"

    .line 250
    .line 251
    invoke-static {p1, v2, v3}, Lq2/g0;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    .line 252
    .line 253
    .line 254
    sget-object p1, Ly2/b;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 255
    .line 256
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 260
    .line 261
    .line 262
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 263
    .line 264
    .line 265
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 266
    .line 267
    .line 268
    goto :goto_138

    .line 269
    :cond_10c
    sget-object p1, Ly2/b;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 270
    .line 271
    invoke-static {}, Lq2/g0;->p()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    .line 276
    .line 277
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    .line 279
    .line 280
    invoke-static {}, Lx1/r;->d()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v4

    .line 284
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    const-string v4, "/dialog/oauth"

    .line 288
    .line 289
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    invoke-static {p1, v2, v3}, Lq2/g0;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    .line 297
    .line 298
    .line 299
    sget-object p1, Ly2/b;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 300
    .line 301
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 302
    .line 303
    .line 304
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 305
    .line 306
    .line 307
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 308
    .line 309
    .line 310
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 311
    .line 312
    .line 313
    :cond_138
    :goto_138
    invoke-virtual {v1}, Ly2/o;->e()Landroidx/fragment/app/h0;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    if-eqz p1, :cond_175

    .line 318
    .line 319
    new-instance v2, Landroid/content/Intent;

    .line 320
    .line 321
    const-class v4, Lcom/facebook/CustomTabMainActivity;

    .line 322
    .line 323
    invoke-direct {v2, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 324
    .line 325
    .line 326
    sget p1, Lcom/facebook/CustomTabMainActivity;->c:I

    .line 327
    .line 328
    const-string p1, "CustomTabMainActivity.extra_action"

    .line 329
    .line 330
    const-string v4, "oauth"

    .line 331
    .line 332
    invoke-virtual {v2, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    .line 334
    .line 335
    const-string p1, "CustomTabMainActivity.extra_params"

    .line 336
    .line 337
    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 338
    .line 339
    .line 340
    iget-object p1, p0, Ly2/a;->e:Ljava/lang/String;

    .line 341
    .line 342
    if-eqz p1, :cond_158

    .line 343
    .line 344
    goto :goto_15e

    .line 345
    :cond_158
    invoke-static {}, Lq2/g;->c()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object p1

    .line 349
    iput-object p1, p0, Ly2/a;->e:Ljava/lang/String;

    .line 350
    .line 351
    :goto_15e
    const-string v3, "CustomTabMainActivity.extra_chromePackage"

    .line 352
    .line 353
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    .line 355
    .line 356
    const-string p1, "CustomTabMainActivity.extra_targetApp"

    .line 357
    .line 358
    invoke-static {v0}, Lq2/x;->c(I)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    .line 364
    .line 365
    iget-object p1, v1, Ly2/o;->c:Ly2/q;

    .line 366
    .line 367
    const/4 v0, 0x1

    .line 368
    if-eqz p1, :cond_174

    .line 369
    .line 370
    invoke-virtual {p1, v2, v0, v5}, Landroidx/fragment/app/c0;->J(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 371
    .line 372
    .line 373
    :cond_174
    return v0

    .line 374
    :cond_175
    :goto_175
    const/4 p1, 0x0

    .line 375
    return p1
.end method

.method public final n()Lx1/f;
    .registers 2

    .line 1
    iget-object v0, p0, Ly2/a;->i:Lx1/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 1
    const-string v0, "dest"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Ly2/t;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Ly2/a;->f:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
