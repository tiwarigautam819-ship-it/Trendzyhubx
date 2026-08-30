###### Class com.engagelab.privates.common.e (com.engagelab.privates.common.e)
.class public Lcom/engagelab/privates/common/e;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 14

    .line 1
    const-string v0, "cert"

    .line 2
    .line 3
    const-string v1, "CrtClient"

    .line 4
    .line 5
    const-string v2, "Basic "

    .line 6
    .line 7
    const-string v3, "atn:"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    :try_start_9
    invoke-static {p0}, Lcom/engagelab/privates/core/global/MTCoreGlobal;->getHttpAddress(Landroid/content/Context;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v5

    .line 14
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v6

    .line 18
    if-eqz v6, :cond_1c

    .line 19
    .line 20
    const-string p0, "there are no report url"

    .line 21
    .line 22
    invoke-static {v1, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-object v4

    .line 26
    :catch_19
    move-exception p0

    .line 27
    goto/16 :goto_105

    .line 28
    .line 29
    :cond_1c
    invoke-static {}, Lcom/engagelab/privates/common/utils/AESUtil;->generateSeed()I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    int-to-long v6, v6

    .line 34
    invoke-static {v6, v7}, Lcom/engagelab/privates/common/utils/AESUtil;->getMd5AesKey(J)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    const/16 v7, 0x10

    .line 39
    .line 40
    new-array v7, v7, [B

    .line 41
    .line 42
    fill-array-data v7, :array_118

    .line 43
    .line 44
    .line 45
    new-instance v8, Ljava/lang/String;

    .line 46
    .line 47
    const-string v9, "UTF-8"

    .line 48
    .line 49
    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 50
    .line 51
    .line 52
    move-result-object v9

    .line 53
    invoke-direct {v8, v7, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 54
    .line 55
    .line 56
    const/16 v7, 0x62

    .line 57
    .line 58
    invoke-static {v8, v7}, Lcom/engagelab/privates/common/utils/AESUtil;->getIv(Ljava/lang/String;C)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    invoke-static {p0}, Lcom/engagelab/privates/common/global/MTGlobal;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    new-instance v9, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v10, ":"

    .line 75
    .line 76
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v9

    .line 86
    new-instance v10, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-static {v1, v3}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-static {v9}, Lcom/engagelab/privates/common/utils/StringUtil;->stringToUtf8Bytes(Ljava/lang/String;)[B

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-static {v8}, Lcom/engagelab/privates/common/utils/StringUtil;->get32MD5String(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v9

    .line 109
    invoke-static {v3, v9, v7}, Lcom/engagelab/privates/common/utils/SM4Util;->encryptBytes([BLjava/lang/String;Ljava/lang/String;)[B

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    new-instance v9, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    const/16 v2, 0xa

    .line 119
    .line 120
    invoke-static {v3, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    new-instance v9, Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .line 135
    .line 136
    const/4 v10, 0x0

    .line 137
    move v11, v10

    .line 138
    :goto_89
    const/4 v12, 0x3

    .line 139
    if-ge v11, v12, :cond_92

    .line 140
    .line 141
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 142
    .line 143
    .line 144
    add-int/lit8 v11, v11, 0x1

    .line 145
    .line 146
    goto :goto_89

    .line 147
    :cond_92
    new-instance v5, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    const-string v11, "/get_cert?ver="

    .line 153
    .line 154
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-static {p0}, Lcom/engagelab/privates/common/r;->p(Landroid/content/Context;)I

    .line 158
    .line 159
    .line 160
    move-result v11

    .line 161
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string v11, "&k="

    .line 165
    .line 166
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 177
    .line 178
    .line 179
    move-result v8

    .line 180
    :cond_b3
    if-ge v10, v8, :cond_ff

    .line 181
    .line 182
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v11

    .line 186
    add-int/lit8 v10, v10, 0x1

    .line 187
    .line 188
    check-cast v11, Ljava/lang/String;

    .line 189
    .line 190
    new-instance v12, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v11

    .line 205
    invoke-static {p0, v11, v3}, Lcom/engagelab/privates/common/t;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B

    .line 206
    .line 207
    .line 208
    move-result-object v11

    .line 209
    if-eqz v11, :cond_b3

    .line 210
    .line 211
    new-instance p0, Ljava/lang/String;

    .line 212
    .line 213
    sget-object v3, Lcom/engagelab/privates/common/constants/MTCommonConstants;->UTF_8:Ljava/lang/String;

    .line 214
    .line 215
    invoke-direct {p0, v11, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 216
    .line 217
    .line 218
    new-instance v3, Lorg/json/JSONObject;

    .line 219
    .line 220
    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 224
    .line 225
    .line 226
    move-result p0

    .line 227
    if-eqz p0, :cond_fa

    .line 228
    .line 229
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p0

    .line 233
    invoke-static {p0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    invoke-static {p0, v6, v7}, Lcom/engagelab/privates/common/utils/SM4Util;->decryptBytes([BLjava/lang/String;Ljava/lang/String;)[B

    .line 238
    .line 239
    .line 240
    move-result-object p0

    .line 241
    new-instance v2, Ljava/lang/String;

    .line 242
    .line 243
    sget-object v5, Lcom/engagelab/privates/common/constants/MTCommonConstants;->UTF_8:Ljava/lang/String;

    .line 244
    .line 245
    invoke-direct {v2, p0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 249
    .line 250
    .line 251
    :cond_fa
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p0

    .line 255
    return-object p0

    .line 256
    :cond_ff
    const-string p0, "get crt failed"

    .line 257
    .line 258
    invoke-static {v1, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_104} :catch_19

    .line 259
    .line 260
    .line 261
    return-object v4

    .line 262
    :goto_105
    new-instance v0, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    const-string v2, "get crt failed un :"

    .line 265
    .line 266
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object p0

    .line 276
    invoke-static {v1, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    return-object v4

    .line 280
    nop

    .line 281
    :array_118
    .array-data 1
        0xbt
        0xdt
        0x12t
        0x50t
        0x52t
        0x51t
        0x52t
        0x56t
        0x52t
        0x57t
        0x52t
        0x54t
        0x3t
        0x32t
        0x9t
        0x43t
    .end array-data
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 8

    .line 1
    const-string v0, "get crt failed jsonObject : "

    .line 2
    .line 3
    const-string v1, "get crt Success ver = "

    .line 4
    .line 5
    const-string v2, "get crt body : "

    .line 6
    .line 7
    invoke-static {p0}, Lcom/engagelab/privates/common/e;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    const/4 v5, 0x0

    .line 16
    const-string v6, "CrtClient"

    .line 17
    .line 18
    if-eqz v4, :cond_19

    .line 19
    .line 20
    const-string p0, "get crt failed"

    .line 21
    .line 22
    invoke-static {v6, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return v5

    .line 26
    :cond_19
    :try_start_19
    new-instance v4, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-static {v6, v2}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance v2, Lorg/json/JSONObject;

    .line 42
    .line 43
    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v3, "code"

    .line 47
    .line 48
    const/4 v4, -0x1

    .line 49
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-nez v3, :cond_5b

    .line 54
    .line 55
    const-string v0, "ver"

    .line 56
    .line 57
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    const-string v3, "cert"

    .line 62
    .line 63
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-static {p0, v0}, Lcom/engagelab/privates/common/r;->a(Landroid/content/Context;I)V

    .line 68
    .line 69
    .line 70
    invoke-static {p0, v2}, Lcom/engagelab/privates/common/r;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    new-instance p0, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-static {v6, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    const/4 p0, 0x1

    .line 89
    return p0

    .line 90
    :catch_59
    move-exception p0

    .line 91
    goto :goto_6b

    .line 92
    :cond_5b
    new-instance p0, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-static {v6, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_6a} :catch_59

    .line 105
    .line 106
    .line 107
    goto :goto_7c

    .line 108
    :goto_6b
    new-instance v0, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const-string v1, "get crt failed : "

    .line 111
    .line 112
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-static {v6, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    :goto_7c
    return v5
.end method
