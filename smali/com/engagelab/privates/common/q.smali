###### Class com.engagelab.privates.common.q (com.engagelab.privates.common.q)
.class public Lcom/engagelab/privates/common/q;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const/16 v0, 0x2f

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_1c

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/engagelab/privates/common/utils/Guard;->string([B)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Lcom/engagelab/privates/common/q;->a:Ljava/lang/String;

    .line 13
    .line 14
    const/16 v0, 0x2a

    .line 15
    .line 16
    new-array v0, v0, [B

    .line 17
    .line 18
    fill-array-data v0, :array_38

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lcom/engagelab/privates/common/utils/Guard;->string([B)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/engagelab/privates/common/q;->b:Ljava/lang/String;

    .line 26
    .line 27
    return-void

    .line 28
    nop

    .line 29
    :array_1c
    .array-data 1
        0x58t
        0x54t
        0x6dt
        0x78t
        0x65t
        0x2bt
        0x1ft
        0xft
        0x7et
        0x64t
        0x79t
        0x73t
        0x51t
        0x4ct
        0x34t
        0x7bt
        0x7ft
        0x62t
        0x1et
        0x45t
        0x77t
        0x6ft
        0x77t
        0x76t
        0x55t
        0x4ct
        0x78t
        0x6at
        0x38t
        0x72t
        0x5ft
        0x4dt
        0x36t
        0x7et
        0x27t
        0x3et
        0x57t
        0x45t
        0x6dt
        0x25t
        0x65t
        0x78t
        0x43t
        0x41t
        0x7dt
        0x6ct
        0x64t
    .end array-data

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    :array_38
    .array-data 1
        0x48t
        0x6dt
        0x7ct
        0x66t
        0x62t
        0xat
        0xft
        0x36t
        0x6ft
        0x7at
        0x7et
        0x52t
        0x41t
        0x75t
        0x25t
        0x65t
        0x78t
        0x43t
        0xet
        0x6ct
        0x7at
        0x79t
        0x63t
        0x51t
        0xet
        0x7at
        0x66t
        0x39t
        0x67t
        0x1t
        0xft
        0x7et
        0x6dt
        0x62t
        0x3ct
        0x43t
        0x49t
        0x6at
        0x69t
        0x72t
        0x75t
        0x42t
    .end array-data
.end method

.method public static a(Landroid/content/Context;)V
    .registers 4

    .line 1
    const-string v0, "GlobalSis"

    .line 2
    .line 3
    const-string v1, "clear address and stopConnect"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/util/HashSet;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {p0, v0}, Lcom/engagelab/privates/common/r;->a(Landroid/content/Context;Ljava/util/Set;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v0}, Lcom/engagelab/privates/common/r;->c(Landroid/content/Context;Ljava/util/Set;)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Lorg/json/JSONArray;

    .line 20
    .line 21
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {p0, v1}, Lcom/engagelab/privates/common/r;->a(Landroid/content/Context;Lorg/json/JSONArray;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p0, v0}, Lcom/engagelab/privates/common/r;->b(Landroid/content/Context;Ljava/util/Set;)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Landroid/os/Bundle;

    .line 31
    .line 32
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v1, "retry"

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 39
    .line 40
    .line 41
    const/16 v0, 0xbb1

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-static {p0, v0, v1}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .registers 3

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lcom/engagelab/privates/common/r;->a(Landroid/content/Context;Ljava/util/Set;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v0}, Lcom/engagelab/privates/common/r;->c(Landroid/content/Context;Ljava/util/Set;)V

    .line 10
    .line 11
    .line 12
    const/16 v0, 0xbb1

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-static {p0, v0, v1}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 16
    .line 17
    .line 18
    const/16 v0, 0xbb2

    .line 19
    .line 20
    invoke-static {p0, v0, v1}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .registers 4

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lcom/engagelab/privates/common/r;->a(Landroid/content/Context;Lorg/json/JSONArray;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "retry"

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 18
    .line 19
    .line 20
    const/16 v1, 0xbb1

    .line 21
    .line 22
    invoke-static {p0, v1, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Lcom/engagelab/privates/core/global/MTCoreGlobal;->getServiceNode()Lcom/engagelab/privates/core/constants/MTCoreConstants$ServiceNode;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lcom/engagelab/privates/core/constants/MTCoreConstants$ServiceNode;->REGION_CHINA:Lcom/engagelab/privates/core/constants/MTCoreConstants$ServiceNode;

    .line 6
    .line 7
    if-ne p0, v0, :cond_b

    .line 8
    .line 9
    sget-object p0, Lcom/engagelab/privates/common/q;->b:Ljava/lang/String;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_b
    sget-object p0, Lcom/engagelab/privates/common/q;->a:Ljava/lang/String;

    .line 13
    .line 14
    return-object p0
.end method

.method public static e(Landroid/content/Context;)V
    .registers 13

    .line 1
    const-string v0, "code"

    .line 2
    .line 3
    const-string v1, "roundUpPolling"

    .line 4
    .line 5
    const-string v2, "GlobalSis"

    .line 6
    .line 7
    invoke-static {v2, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Lcom/engagelab/privates/common/utils/SystemUtil;->isNetworkConnecting(Landroid/content/Context;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_15

    .line 15
    .line 16
    const-string p0, "can\'t network 2"

    .line 17
    .line 18
    invoke-static {v2, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_15
    invoke-static {}, Lcom/engagelab/privates/core/global/MTAddressGlobal;->getList()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    :cond_1d
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_f7

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, [Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {p0}, Lcom/engagelab/privates/common/r;->d(Landroid/content/Context;)Ljava/util/Set;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-nez v4, :cond_39

    .line 51
    .line 52
    const-string p0, "!lobalSisAddress.isEmpty()"

    .line 53
    .line 54
    invoke-static {v2, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_39
    new-instance v4, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v5, "urls\uff1a"

    .line 61
    .line 62
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-static {v2, v4}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    array-length v4, v3

    .line 80
    const/4 v5, 0x0

    .line 81
    move v6, v5

    .line 82
    :goto_51
    if-ge v6, v4, :cond_1d

    .line 83
    .line 84
    aget-object v7, v3, v6

    .line 85
    .line 86
    new-instance v8, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v9, "address\uff1a"

    .line 89
    .line 90
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    invoke-static {v2, v8}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const-string v8, ":"

    .line 104
    .line 105
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    array-length v9, v8

    .line 110
    add-int/lit8 v9, v9, -0x1

    .line 111
    .line 112
    aget-object v8, v8, v9

    .line 113
    .line 114
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 115
    .line 116
    .line 117
    move-result v9

    .line 118
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 119
    .line 120
    .line 121
    move-result v10

    .line 122
    sub-int/2addr v9, v10

    .line 123
    add-int/lit8 v9, v9, -0x1

    .line 124
    .line 125
    invoke-virtual {v7, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v9

    .line 129
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    move-result v8

    .line 133
    :try_start_84
    invoke-static {}, Lcom/engagelab/privates/common/k;->a()Lcom/engagelab/privates/common/j;

    .line 134
    .line 135
    .line 136
    move-result-object v10

    .line 137
    const/16 v11, 0x320

    .line 138
    .line 139
    invoke-virtual {v10, v11, p0, v9, v8}, Lcom/engagelab/privates/common/j;->a(ILandroid/content/Context;Ljava/lang/String;I)[B

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    if-nez v8, :cond_91

    .line 144
    .line 145
    goto :goto_f3

    .line 146
    :cond_91
    invoke-virtual {v10, p0, v8}, Lcom/engagelab/privates/common/j;->a(Landroid/content/Context;[B)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v8

    .line 150
    if-eqz v8, :cond_f3

    .line 151
    .line 152
    new-instance v9, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    const-string v11, "responseImp\uff1a"

    .line 158
    .line 159
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v9

    .line 169
    invoke-static {v2, v9}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    new-instance v9, Lorg/json/JSONObject;

    .line 173
    .line 174
    invoke-direct {v9, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 178
    .line 179
    .line 180
    move-result v11

    .line 181
    if-eqz v11, :cond_d2

    .line 182
    .line 183
    new-instance v7, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    const-string v8, "code\uff1a"

    .line 189
    .line 190
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    move-result v8

    .line 197
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v7

    .line 204
    invoke-static {v2, v7}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    goto/16 :goto_1d

    .line 208
    .line 209
    :catchall_d0
    move-exception v7

    .line 210
    goto :goto_e2

    .line 211
    :cond_d2
    new-instance v9, Ljava/util/HashSet;

    .line 212
    .line 213
    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v9, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    invoke-static {p0, v9}, Lcom/engagelab/privates/common/r;->a(Landroid/content/Context;Ljava/util/Set;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v10, p0, v8}, Lcom/engagelab/privates/common/j;->a(Landroid/content/Context;Ljava/lang/String;)I
    :try_end_e0
    .catchall {:try_start_84 .. :try_end_e0} :catchall_d0

    .line 223
    .line 224
    .line 225
    goto/16 :goto_1d

    .line 226
    .line 227
    :goto_e2
    new-instance v8, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    const-string v9, "fail:"

    .line 230
    .line 231
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v7

    .line 241
    invoke-static {v2, v7}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    :cond_f3
    :goto_f3
    add-int/lit8 v6, v6, 0x1

    .line 245
    .line 246
    goto/16 :goto_51

    .line 247
    .line 248
    :cond_f7
    return-void
.end method

.method public static f(Landroid/content/Context;)V
    .registers 11

    .line 1
    const-string v0, "start"

    .line 2
    .line 3
    const-string v1, "GlobalSis"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lcom/engagelab/privates/common/r;->d(Landroid/content/Context;)Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_17

    .line 17
    .line 18
    const-string p0, "has address"

    .line 19
    .line 20
    invoke-static {v1, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_17
    invoke-static {p0}, Lcom/engagelab/privates/common/utils/SystemUtil;->isNetworkConnecting(Landroid/content/Context;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_23

    .line 29
    .line 30
    const-string p0, "can\'t network 1"

    .line 31
    .line 32
    invoke-static {v1, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_23
    invoke-static {p0}, Lcom/engagelab/privates/common/q;->d(Landroid/content/Context;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-instance v2, Lorg/json/JSONObject;

    .line 41
    .line 42
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v3, "appkey"

    .line 46
    .line 47
    :try_start_2e
    invoke-static {p0}, Lcom/engagelab/privates/common/global/MTGlobal;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_35
    .catchall {:try_start_2e .. :try_end_35} :catchall_35

    .line 52
    .line 53
    .line 54
    :catchall_35
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v4, "jsonParams:"

    .line 61
    .line 62
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-static {v1, v3}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v4, "requestUrl:"

    .line 82
    .line 83
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-static {v1, v3}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    new-instance v3, Ljava/util/HashMap;

    .line 97
    .line 98
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 99
    .line 100
    .line 101
    const-string v4, "content-type"

    .line 102
    .line 103
    const-string v5, "application/json"

    .line 104
    .line 105
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    const/4 v4, 0x0

    .line 109
    move v5, v4

    .line 110
    :goto_6d
    const/4 v6, 0x3

    .line 111
    if-ge v5, v6, :cond_116

    .line 112
    .line 113
    const/4 v6, 0x1

    .line 114
    invoke-static {p0, v0, v3, v2, v6}, Lcom/engagelab/privates/common/https/HttpUtils;->postPair(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;[BZ)Landroid/util/Pair;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v7, [B

    .line 121
    .line 122
    new-instance v8, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    const-string v9, "code:"

    .line 125
    .line 126
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 130
    .line 131
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    invoke-static {v1, v6}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    new-instance v6, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    const-string v8, "bytes:"

    .line 144
    .line 145
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    invoke-static {v1, v6}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    if-eqz v7, :cond_112

    .line 159
    .line 160
    :try_start_9f
    new-instance v6, Ljava/lang/String;

    .line 161
    .line 162
    sget-object v8, Lcom/engagelab/privates/common/constants/MTCommonConstants;->UTF_8:Ljava/lang/String;

    .line 163
    .line 164
    invoke-direct {v6, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 165
    .line 166
    .line 167
    new-instance v7, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    const-string v8, "body:"

    .line 173
    .line 174
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v7

    .line 184
    invoke-static {v1, v7}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    new-instance v7, Lorg/json/JSONObject;

    .line 188
    .line 189
    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    const-string v6, "sis_addr"

    .line 193
    .line 194
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 195
    .line 196
    .line 197
    move-result-object v6

    .line 198
    if-eqz v6, :cond_e3

    .line 199
    .line 200
    new-instance v7, Ljava/util/LinkedHashSet;

    .line 201
    .line 202
    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V

    .line 203
    .line 204
    .line 205
    move v8, v4

    .line 206
    :goto_cd
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    .line 207
    .line 208
    .line 209
    move-result v9

    .line 210
    if-ge v8, v9, :cond_df

    .line 211
    .line 212
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v9

    .line 216
    invoke-interface {v7, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    add-int/lit8 v8, v8, 0x1

    .line 220
    .line 221
    goto :goto_cd

    .line 222
    :catchall_dd
    move-exception v6

    .line 223
    goto :goto_101

    .line 224
    :cond_df
    invoke-static {p0, v7}, Lcom/engagelab/privates/common/r;->a(Landroid/content/Context;Ljava/util/Set;)V

    .line 225
    .line 226
    .line 227
    goto :goto_f6

    .line 228
    :cond_e3
    const-string v6, "code"

    .line 229
    .line 230
    const/4 v8, -0x1

    .line 231
    invoke-virtual {v7, v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 232
    .line 233
    .line 234
    move-result v6

    .line 235
    const/16 v7, 0x7d1

    .line 236
    .line 237
    if-ne v7, v6, :cond_f7

    .line 238
    .line 239
    const-string v6, "CODE_NOT_APPKEY"

    .line 240
    .line 241
    invoke-static {v1, v6}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    invoke-static {p0}, Lcom/engagelab/privates/common/q;->a(Landroid/content/Context;)V

    .line 245
    .line 246
    .line 247
    :goto_f6
    return-void

    .line 248
    :cond_f7
    const/16 v7, 0x7d0

    .line 249
    .line 250
    if-ne v7, v6, :cond_112

    .line 251
    .line 252
    const-string v6, "CODE_SERVICE_ERR"

    .line 253
    .line 254
    invoke-static {v1, v6}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_100
    .catchall {:try_start_9f .. :try_end_100} :catchall_dd

    .line 255
    .line 256
    .line 257
    goto :goto_112

    .line 258
    :goto_101
    new-instance v7, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    const-string v8, "start fail:"

    .line 261
    .line 262
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v6

    .line 272
    invoke-static {v1, v6}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    :cond_112
    :goto_112
    add-int/lit8 v5, v5, 0x1

    .line 276
    .line 277
    goto/16 :goto_6d

    .line 278
    .line 279
    :cond_116
    invoke-static {p0}, Lcom/engagelab/privates/common/q;->e(Landroid/content/Context;)V

    .line 280
    .line 281
    .line 282
    return-void
.end method
