###### Class y2.v (y2.v)
.class public final Ly2/v;
.super Ly2/u;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ly2/v;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public e:Lq2/p0;

.field public f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Lx1/f;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ln4/e;

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ln4/e;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Ly2/v;->CREATOR:Landroid/os/Parcelable$Creator;

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
    const-string v0, "web_view"

    iput-object v0, p0, Ly2/v;->g:Ljava/lang/String;

    .line 3
    sget-object v0, Lx1/f;->d:Lx1/f;

    iput-object v0, p0, Ly2/v;->h:Lx1/f;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ly2/v;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ly2/o;)V
    .registers 2

    .line 5
    invoke-direct {p0}, Ly2/u;-><init>()V

    .line 6
    iput-object p1, p0, Ly2/t;->b:Ly2/o;

    .line 7
    const-string p1, "web_view"

    iput-object p1, p0, Ly2/v;->g:Ljava/lang/String;

    .line 8
    sget-object p1, Lx1/f;->d:Lx1/f;

    iput-object p1, p0, Ly2/v;->h:Lx1/f;

    return-void
.end method


# virtual methods
.method public final b()V
    .registers 2

    .line 1
    iget-object v0, p0, Ly2/v;->e:Lq2/p0;

    .line 2
    .line 3
    if-eqz v0, :cond_c

    .line 4
    .line 5
    if-eqz v0, :cond_9

    .line 6
    .line 7
    invoke-virtual {v0}, Lq2/p0;->cancel()V

    .line 8
    .line 9
    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Ly2/v;->e:Lq2/p0;

    .line 12
    .line 13
    :cond_c
    return-void
.end method

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
    iget-object v0, p0, Ly2/v;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k(Ly2/m;)I
    .registers 15

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Ly2/u;->m(Ly2/m;)Landroid/os/Bundle;

    .line 7
    .line 8
    .line 9
    move-result-object v4

    .line 10
    new-instance v6, Lu3/o;

    .line 11
    .line 12
    invoke-direct {v6, p0, p1}, Lu3/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Lorg/json/JSONObject;

    .line 16
    .line 17
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 18
    .line 19
    .line 20
    :try_start_13
    const-string v1, "init"

    .line 21
    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_1c} :catch_1c

    .line 27
    .line 28
    .line 29
    :catch_1c
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "e2e.toString()"

    .line 34
    .line 35
    invoke-static {v1, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Ly2/v;->f:Ljava/lang/String;

    .line 39
    .line 40
    const-string v1, "e2e"

    .line 41
    .line 42
    invoke-virtual {p0, v1, v0}, Ly2/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Ly2/t;->d()Ly2/o;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ly2/o;->e()Landroidx/fragment/app/h0;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    if-nez v2, :cond_38

    .line 54
    .line 55
    const/4 p1, 0x0

    .line 56
    return p1

    .line 57
    :cond_38
    invoke-static {v2}, Lq2/g0;->y(Landroid/content/Context;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    iget-object v3, p1, Ly2/m;->d:Ljava/lang/String;

    .line 62
    .line 63
    const-string v5, "applicationId"

    .line 64
    .line 65
    invoke-static {v5, v3}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-static {v3, v5}, Lq2/g;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v5, p0, Ly2/v;->f:Ljava/lang/String;

    .line 72
    .line 73
    const-string v7, "null cannot be cast to non-null type kotlin.String"

    .line 74
    .line 75
    invoke-static {v7, v5}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    if-eqz v0, :cond_52

    .line 79
    .line 80
    const-string v0, "fbconnect://chrome_os_success"

    .line 81
    .line 82
    goto :goto_54

    .line 83
    :cond_52
    const-string v0, "fbconnect://success"

    .line 84
    .line 85
    :goto_54
    iget-object v7, p1, Ly2/m;->h:Ljava/lang/String;

    .line 86
    .line 87
    const-string v8, "authType"

    .line 88
    .line 89
    invoke-static {v8, v7}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    iget v8, p1, Ly2/m;->a:I

    .line 93
    .line 94
    const-string v9, "loginBehavior"

    .line 95
    .line 96
    invoke-static {v8, v9}, La1/a;->n(ILjava/lang/String;)V

    .line 97
    .line 98
    .line 99
    move-object v9, v5

    .line 100
    iget v5, p1, Ly2/m;->l:I

    .line 101
    .line 102
    const-string v10, "targetApp"

    .line 103
    .line 104
    invoke-static {v5, v10}, La1/a;->n(ILjava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-boolean v11, p1, Ly2/m;->m:Z

    .line 108
    .line 109
    iget-boolean p1, p1, Ly2/m;->v:Z

    .line 110
    .line 111
    const-string v12, "redirect_uri"

    .line 112
    .line 113
    invoke-virtual {v4, v12, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    const-string v0, "client_id"

    .line 117
    .line 118
    invoke-virtual {v4, v0, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v4, v1, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    const/4 v0, 0x2

    .line 125
    if-ne v5, v0, :cond_81

    .line 126
    .line 127
    const-string v0, "token,signed_request,graph_domain,granted_scopes"

    .line 128
    .line 129
    goto :goto_83

    .line 130
    :cond_81
    const-string v0, "token,signed_request,graph_domain"

    .line 131
    .line 132
    :goto_83
    const-string v1, "response_type"

    .line 133
    .line 134
    invoke-virtual {v4, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    const-string v0, "return_scopes"

    .line 138
    .line 139
    const-string v1, "true"

    .line 140
    .line 141
    invoke-virtual {v4, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    const-string v0, "auth_type"

    .line 145
    .line 146
    invoke-virtual {v4, v0, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    const-string v0, "login_behavior"

    .line 150
    .line 151
    invoke-static {v8}, Lq2/x;->m(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-virtual {v4, v0, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    if-eqz v11, :cond_a8

    .line 159
    .line 160
    const-string v0, "fx_app"

    .line 161
    .line 162
    invoke-static {v5}, Lq2/x;->c(I)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    invoke-virtual {v4, v0, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    :cond_a8
    if-eqz p1, :cond_af

    .line 170
    .line 171
    const-string p1, "skip_dedupe"

    .line 172
    .line 173
    invoke-virtual {v4, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    :cond_af
    sget p1, Lq2/p0;->m:I

    .line 177
    .line 178
    invoke-static {v5, v10}, La1/a;->n(ILjava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-static {v2}, Lq2/p0;->b(Landroidx/fragment/app/h0;)V

    .line 182
    .line 183
    .line 184
    new-instance v1, Lq2/p0;

    .line 185
    .line 186
    const-string v3, "oauth"

    .line 187
    .line 188
    invoke-direct/range {v1 .. v6}, Lq2/p0;-><init>(Landroidx/fragment/app/h0;Ljava/lang/String;Landroid/os/Bundle;ILq2/k0;)V

    .line 189
    .line 190
    .line 191
    iput-object v1, p0, Ly2/v;->e:Lq2/p0;

    .line 192
    .line 193
    new-instance p1, Lq2/i;

    .line 194
    .line 195
    invoke-direct {p1}, Lq2/i;-><init>()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1}, Landroidx/fragment/app/c0;->I()V

    .line 199
    .line 200
    .line 201
    iget-object v0, p0, Ly2/v;->e:Lq2/p0;

    .line 202
    .line 203
    iput-object v0, p1, Lq2/i;->t0:Landroid/app/Dialog;

    .line 204
    .line 205
    invoke-virtual {v2}, Landroidx/fragment/app/h0;->getSupportFragmentManager()Landroidx/fragment/app/y0;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    const-string v1, "FacebookDialogFragment"

    .line 210
    .line 211
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/t;->L(Landroidx/fragment/app/y0;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    const/4 p1, 0x1

    .line 215
    return p1
.end method

.method public final n()Lx1/f;
    .registers 2

    .line 1
    iget-object v0, p0, Ly2/v;->h:Lx1/f;

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
    iget-object p2, p0, Ly2/v;->f:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
