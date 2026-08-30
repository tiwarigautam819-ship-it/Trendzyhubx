###### Class y2.l (y2.l)
.class public final Ly2/l;
.super Ly2/u;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ly2/l;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ln4/e;

    .line 2
    .line 3
    const/16 v1, 0x14

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ln4/e;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Ly2/l;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0, p1}, Ly2/u;-><init>(ILandroid/os/Parcel;)V

    .line 4
    const-string p1, "katana_proxy_auth"

    iput-object p1, p0, Ly2/l;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ly2/o;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Ly2/u;-><init>(Ly2/o;)V

    .line 2
    const-string p1, "katana_proxy_auth"

    iput-object p1, p0, Ly2/l;->e:Ljava/lang/String;

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
    iget-object v0, p0, Ly2/l;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k(Ly2/m;)I
    .registers 27

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
    iget v2, v0, Ly2/m;->a:I

    .line 11
    .line 12
    sget-boolean v3, Lx1/r;->m:Z

    .line 13
    .line 14
    if-eqz v3, :cond_1d

    .line 15
    .line 16
    invoke-static {}, Lq2/g;->c()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    if-eqz v3, :cond_1d

    .line 21
    .line 22
    invoke-static {v2}, Lq2/x;->a(I)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1d

    .line 27
    .line 28
    const/4 v15, 0x1

    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    const/4 v15, 0x0

    .line 31
    :goto_1e
    new-instance v2, Lorg/json/JSONObject;

    .line 32
    .line 33
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 34
    .line 35
    .line 36
    :try_start_23
    const-string v3, "init"

    .line 37
    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 39
    .line 40
    .line 41
    move-result-wide v6

    .line 42
    invoke-virtual {v2, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_2c} :catch_2c

    .line 43
    .line 44
    .line 45
    :catch_2c
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v10

    .line 49
    const-string v2, "e2e.toString()"

    .line 50
    .line 51
    invoke-static {v2, v10}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ly2/t;->d()Ly2/o;

    .line 55
    .line 56
    .line 57
    iget-object v8, v0, Ly2/m;->d:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v9, v0, Ly2/m;->b:Ljava/util/HashSet;

    .line 60
    .line 61
    invoke-virtual {v0}, Ly2/m;->a()Z

    .line 62
    .line 63
    .line 64
    move-result v11

    .line 65
    iget v2, v0, Ly2/m;->c:I

    .line 66
    .line 67
    if-nez v2, :cond_46

    .line 68
    .line 69
    const/4 v12, 0x1

    .line 70
    goto :goto_47

    .line 71
    :cond_46
    move v12, v2

    .line 72
    :goto_47
    iget-object v2, v0, Ly2/m;->e:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Ly2/t;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v13

    .line 78
    iget-object v14, v0, Ly2/m;->h:Ljava/lang/String;

    .line 79
    .line 80
    iget-object v2, v0, Ly2/m;->j:Ljava/lang/String;

    .line 81
    .line 82
    iget-boolean v3, v0, Ly2/m;->k:Z

    .line 83
    .line 84
    iget-boolean v6, v0, Ly2/m;->m:Z

    .line 85
    .line 86
    iget-boolean v7, v0, Ly2/m;->v:Z

    .line 87
    .line 88
    const/16 v22, 0x1

    .line 89
    .line 90
    iget-object v4, v0, Ly2/m;->w:Ljava/lang/String;

    .line 91
    .line 92
    iget v0, v0, Ly2/m;->z:I

    .line 93
    .line 94
    if-eqz v0, :cond_62

    .line 95
    .line 96
    invoke-static {v0}, Lq2/x;->l(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    :cond_62
    sget-object v0, Lq2/b0;->a:Lq2/b0;

    .line 100
    .line 101
    const/16 v23, 0x0

    .line 102
    .line 103
    const-class v5, Lq2/b0;

    .line 104
    .line 105
    invoke-static {v5}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    const/16 v24, 0x0

    .line 110
    .line 111
    if-eqz v0, :cond_71

    .line 112
    .line 113
    goto :goto_be

    .line 114
    :cond_71
    :try_start_71
    const-string v0, "applicationId"

    .line 115
    .line 116
    invoke-static {v0, v8}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    const-string v0, "permissions"

    .line 120
    .line 121
    invoke-static {v0, v9}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    const-string v0, "authType"

    .line 125
    .line 126
    invoke-static {v0, v14}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    sget-object v0, Lq2/b0;->b:Ljava/util/ArrayList;

    .line 130
    .line 131
    move-object/from16 v16, v2

    .line 132
    .line 133
    new-instance v2, Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .line 137
    .line 138
    move/from16 v17, v3

    .line 139
    .line 140
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    move-object/from16 v21, v4

    .line 145
    .line 146
    move/from16 v4, v23

    .line 147
    .line 148
    :goto_93
    if-ge v4, v3, :cond_b8

    .line 149
    .line 150
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v18

    .line 154
    add-int/lit8 v4, v4, 0x1

    .line 155
    .line 156
    check-cast v18, Lq2/a0;

    .line 157
    .line 158
    move/from16 v19, v6

    .line 159
    .line 160
    sget-object v6, Lq2/b0;->a:Lq2/b0;

    .line 161
    .line 162
    move/from16 v20, v7

    .line 163
    .line 164
    move-object/from16 v7, v18

    .line 165
    .line 166
    const/16 v18, 0x1

    .line 167
    .line 168
    invoke-virtual/range {v6 .. v21}, Lq2/b0;->c(Lq2/a0;Ljava/lang/String;Ljava/util/HashSet;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZZLjava/lang/String;)Landroid/content/Intent;

    .line 169
    .line 170
    .line 171
    move-result-object v6

    .line 172
    if-eqz v6, :cond_b3

    .line 173
    .line 174
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b0
    .catchall {:try_start_71 .. :try_end_b0} :catchall_b1

    .line 175
    .line 176
    .line 177
    goto :goto_b3

    .line 178
    :catchall_b1
    move-exception v0

    .line 179
    goto :goto_bb

    .line 180
    :cond_b3
    :goto_b3
    move/from16 v6, v19

    .line 181
    .line 182
    move/from16 v7, v20

    .line 183
    .line 184
    goto :goto_93

    .line 185
    :cond_b8
    move-object/from16 v24, v2

    .line 186
    .line 187
    goto :goto_be

    .line 188
    :goto_bb
    invoke-static {v0, v5}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    :goto_be
    const-string v0, "e2e"

    .line 192
    .line 193
    invoke-virtual {v1, v0, v10}, Ly2/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    move/from16 v2, v23

    .line 201
    .line 202
    :cond_c9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    if-eqz v3, :cond_e3

    .line 207
    .line 208
    add-int/lit8 v2, v2, 0x1

    .line 209
    .line 210
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    check-cast v3, Landroid/content/Intent;

    .line 215
    .line 216
    sget-object v4, Lx1/r;->a:Lx1/r;

    .line 217
    .line 218
    invoke-static {}, Lq2/g;->k()V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1, v3}, Ly2/u;->r(Landroid/content/Intent;)Z

    .line 222
    .line 223
    .line 224
    move-result v3

    .line 225
    if-eqz v3, :cond_c9

    .line 226
    .line 227
    return v2

    .line 228
    :cond_e3
    return v23
.end method
