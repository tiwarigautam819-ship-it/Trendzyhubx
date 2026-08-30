###### Class y2.k (y2.k)
.class public final Ly2/k;
.super Ly2/u;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ly2/k;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final e:Ljava/lang/String;

.field public final f:Lx1/f;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ln4/e;

    .line 2
    .line 3
    const/16 v1, 0x13

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ln4/e;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Ly2/k;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0, p1}, Ly2/u;-><init>(ILandroid/os/Parcel;)V

    .line 5
    const-string p1, "instagram_login"

    iput-object p1, p0, Ly2/k;->e:Ljava/lang/String;

    .line 6
    sget-object p1, Lx1/f;->g:Lx1/f;

    iput-object p1, p0, Ly2/k;->f:Lx1/f;

    return-void
.end method

.method public constructor <init>(Ly2/o;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Ly2/u;-><init>(Ly2/o;)V

    .line 2
    const-string p1, "instagram_login"

    iput-object p1, p0, Ly2/k;->e:Ljava/lang/String;

    .line 3
    sget-object p1, Lx1/f;->g:Lx1/f;

    iput-object p1, p0, Ly2/k;->f:Lx1/f;

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
    iget-object v0, p0, Ly2/k;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k(Ly2/m;)I
    .registers 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v2, "request"

    .line 6
    .line 7
    invoke-static {v2, v0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Lorg/json/JSONObject;

    .line 11
    .line 12
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 13
    .line 14
    .line 15
    :try_start_e
    const-string v3, "init"

    .line 16
    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v4

    .line 21
    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_17} :catch_17

    .line 22
    .line 23
    .line 24
    :catch_17
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v10

    .line 28
    const-string v2, "e2e.toString()"

    .line 29
    .line 30
    invoke-static {v2, v10}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ly2/t;->d()Ly2/o;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2}, Ly2/o;->e()Landroidx/fragment/app/h0;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    if-eqz v2, :cond_2b

    .line 42
    .line 43
    goto :goto_2f

    .line 44
    :cond_2b
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    :goto_2f
    iget-object v8, v0, Ly2/m;->d:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v9, v0, Ly2/m;->b:Ljava/util/HashSet;

    .line 51
    .line 52
    invoke-virtual {v0}, Ly2/m;->a()Z

    .line 53
    .line 54
    .line 55
    move-result v11

    .line 56
    iget v3, v0, Ly2/m;->c:I

    .line 57
    .line 58
    const/4 v4, 0x1

    .line 59
    if-nez v3, :cond_3e

    .line 60
    .line 61
    move v12, v4

    .line 62
    goto :goto_3f

    .line 63
    :cond_3e
    move v12, v3

    .line 64
    :goto_3f
    iget-object v3, v0, Ly2/m;->e:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v1, v3}, Ly2/t;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v13

    .line 70
    iget-object v14, v0, Ly2/m;->h:Ljava/lang/String;

    .line 71
    .line 72
    iget-object v3, v0, Ly2/m;->j:Ljava/lang/String;

    .line 73
    .line 74
    iget-boolean v5, v0, Ly2/m;->k:Z

    .line 75
    .line 76
    iget-boolean v6, v0, Ly2/m;->m:Z

    .line 77
    .line 78
    iget-boolean v0, v0, Ly2/m;->v:Z

    .line 79
    .line 80
    sget-object v7, Lq2/b0;->a:Lq2/b0;

    .line 81
    .line 82
    const-class v7, Lq2/b0;

    .line 83
    .line 84
    invoke-static {v7}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v15

    .line 88
    const/16 v22, 0x0

    .line 89
    .line 90
    if-eqz v15, :cond_5f

    .line 91
    .line 92
    :goto_5b
    move-object/from16 v0, v22

    .line 93
    .line 94
    goto/16 :goto_c1

    .line 95
    .line 96
    :cond_5f
    :try_start_5f
    const-string v15, "applicationId"

    .line 97
    .line 98
    invoke-static {v15, v8}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    const-string v15, "permissions"

    .line 102
    .line 103
    invoke-static {v15, v9}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    const-string v15, "authType"

    .line 107
    .line 108
    invoke-static {v15, v14}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6e
    .catchall {:try_start_5f .. :try_end_6e} :catchall_bb

    .line 109
    .line 110
    .line 111
    move-object v15, v7

    .line 112
    :try_start_6f
    new-instance v7, Lq2/a0;

    .line 113
    .line 114
    invoke-direct {v7, v4}, Lq2/a0;-><init>(I)V

    .line 115
    .line 116
    .line 117
    move/from16 v19, v6

    .line 118
    .line 119
    sget-object v6, Lq2/b0;->a:Lq2/b0;

    .line 120
    .line 121
    const-string v21, ""
    :try_end_7a
    .catchall {:try_start_6f .. :try_end_7a} :catchall_b8

    .line 122
    .line 123
    move-object v4, v15

    .line 124
    const/4 v15, 0x0

    .line 125
    const/16 v18, 0x2

    .line 126
    .line 127
    move/from16 v20, v0

    .line 128
    .line 129
    move-object/from16 v16, v3

    .line 130
    .line 131
    move/from16 v17, v5

    .line 132
    .line 133
    :try_start_84
    invoke-virtual/range {v6 .. v21}, Lq2/b0;->c(Lq2/a0;Ljava/lang/String;Ljava/util/HashSet;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZZLjava/lang/String;)Landroid/content/Intent;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-static {v4}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v3
    :try_end_8c
    .catchall {:try_start_84 .. :try_end_8c} :catchall_b6

    .line 141
    if-eqz v3, :cond_8f

    .line 142
    .line 143
    goto :goto_5b

    .line 144
    :cond_8f
    if-nez v0, :cond_92

    .line 145
    .line 146
    goto :goto_5b

    .line 147
    :cond_92
    :try_start_92
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    const/4 v5, 0x0

    .line 152
    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    if-nez v3, :cond_9e

    .line 157
    .line 158
    goto :goto_5b

    .line 159
    :cond_9e
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 160
    .line 161
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 162
    .line 163
    const-string v5, "resolveInfo.activityInfo.packageName"

    .line 164
    .line 165
    invoke-static {v5, v3}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    invoke-static {v2, v3}, Lq2/l;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 169
    .line 170
    .line 171
    move-result v2
    :try_end_ab
    .catchall {:try_start_92 .. :try_end_ab} :catchall_b1

    .line 172
    if-nez v2, :cond_ae

    .line 173
    .line 174
    goto :goto_5b

    .line 175
    :cond_ae
    move-object/from16 v22, v0

    .line 176
    .line 177
    goto :goto_5b

    .line 178
    :catchall_b1
    move-exception v0

    .line 179
    :try_start_b2
    invoke-static {v0, v4}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_b5
    .catchall {:try_start_b2 .. :try_end_b5} :catchall_b6

    .line 180
    .line 181
    .line 182
    goto :goto_5b

    .line 183
    :catchall_b6
    move-exception v0

    .line 184
    goto :goto_bd

    .line 185
    :catchall_b8
    move-exception v0

    .line 186
    move-object v4, v15

    .line 187
    goto :goto_bd

    .line 188
    :catchall_bb
    move-exception v0

    .line 189
    move-object v4, v7

    .line 190
    :goto_bd
    invoke-static {v0, v4}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    goto :goto_5b

    .line 194
    :goto_c1
    const-string v2, "e2e"

    .line 195
    .line 196
    invoke-virtual {v1, v2, v10}, Ly2/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    sget-object v2, Lx1/r;->a:Lx1/r;

    .line 200
    .line 201
    invoke-static {}, Lq2/g;->k()V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1, v0}, Ly2/u;->r(Landroid/content/Intent;)Z

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    return v0
.end method

.method public final n()Lx1/f;
    .registers 2

    .line 1
    iget-object v0, p0, Ly2/k;->f:Lx1/f;

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
    return-void
.end method
