###### Class bridges.JSBridge (bridges.JSBridge)
.class public Lbridges/JSBridge;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final bridgeName:Ljava/lang/String; = "NativeBridge"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final appContext:Landroid/content/Context;

.field private final eventTrackString:Ljava/lang/String;

.field private final reader:Lutils/ReplacePropertiesUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lbridges/JSBridge;->appContext:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, Lbridges/JSBridge;->activity:Landroid/app/Activity;

    .line 11
    .line 12
    new-instance p2, Lutils/ReplacePropertiesUtil;

    .line 13
    .line 14
    invoke-direct {p2, p1}, Lutils/ReplacePropertiesUtil;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    iput-object p2, p0, Lbridges/JSBridge;->reader:Lutils/ReplacePropertiesUtil;

    .line 18
    .line 19
    invoke-static {p1}, Lh8/b;->q(Landroid/content/Context;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lbridges/JSBridge;->eventTrackString:Ljava/lang/String;

    .line 24
    .line 25
    return-void
.end method

.method private static ensureExtMatchesMime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "image/png"

    .line 6
    .line 7
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_19

    .line 12
    .line 13
    const-string v1, ".png"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_19

    .line 20
    .line 21
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :cond_19
    const-string v1, "image/jpeg"

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_36

    .line 33
    .line 34
    const-string v1, ".jpg"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-nez v2, :cond_36

    .line 41
    .line 42
    const-string v2, ".jpeg"

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_36

    .line 49
    .line 50
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0

    .line 55
    :cond_36
    const-string v1, "image/webp"

    .line 56
    .line 57
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_4b

    .line 62
    .line 63
    const-string v1, ".webp"

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-nez v2, :cond_4b

    .line 70
    .line 71
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0

    .line 76
    :cond_4b
    const-string v1, "image/gif"

    .line 77
    .line 78
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_5f

    .line 83
    .line 84
    const-string p1, ".gif"

    .line 85
    .line 86
    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-nez v0, :cond_5f

    .line 91
    .line 92
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    :cond_5f
    return-object p0
.end method

.method private static guessExtByMime(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, ".bin"

    .line 2
    .line 3
    if-nez p0, :cond_5

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_5
    const-string v1, "image/png"

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_10

    .line 13
    .line 14
    const-string p0, ".png"

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_10
    const-string v1, "image/jpeg"

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1b

    .line 24
    .line 25
    const-string p0, ".jpg"

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_1b
    const-string v1, "image/webp"

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_26

    .line 35
    .line 36
    const-string p0, ".webp"

    .line 37
    .line 38
    return-object p0

    .line 39
    :cond_26
    const-string v1, "image/gif"

    .line 40
    .line 41
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-eqz p0, :cond_31

    .line 46
    .line 47
    const-string p0, ".gif"

    .line 48
    .line 49
    return-object p0

    .line 50
    :cond_31
    return-object v0
.end method

.method private static jsonError(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    const-string v0, "unknown"

    .line 2
    .line 3
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "error"

    .line 9
    .line 10
    if-nez p0, :cond_d

    .line 11
    .line 12
    move-object v3, v0

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    move-object v3, p0

    .line 15
    :goto_e
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_15} :catch_16

    .line 22
    return-object p0

    .line 23
    :catch_16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v2, "{\"error\":\""

    .line 26
    .line 27
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    if-nez p0, :cond_20

    .line 31
    .line 32
    move-object p0, v0

    .line 33
    :cond_20
    const-string v0, "\"}"

    .line 34
    .line 35
    invoke-static {v1, p0, v0}, Lq2/x;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method


# virtual methods
.method public getInfoString()Ljava/lang/String;
    .registers 45
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "is_valid_pwd"

    .line 4
    .line 5
    const-string v2, "applicationId"

    .line 6
    .line 7
    const-string v3, "packageType"

    .line 8
    .line 9
    const-string v4, "ReplaceProps"

    .line 10
    .line 11
    const-string v5, "\u2705\u8bfb\u53d6\u5230\u7684\u6570\u636e: launcher="

    .line 12
    .line 13
    const-string v6, "\u2705\u8bfb\u53d6\u5230\u7684\u6570\u636e: icon="

    .line 14
    .line 15
    const-string v7, "\u2705\u8bfb\u53d6\u5230\u7684\u6570\u636e: domainUrl="

    .line 16
    .line 17
    const-string v8, "\u2705\u8bfb\u53d6\u5230\u7684\u6570\u636e: tenantId="

    .line 18
    .line 19
    const-string v9, "\u2705\u8bfb\u53d6\u5230\u7684\u6570\u636e: type="

    .line 20
    .line 21
    const-string v10, "\u2705\u8bfb\u53d6\u5230\u7684\u6570\u636e: env="

    .line 22
    .line 23
    const-string v11, "\u2705\u8bfb\u53d6\u5230\u7684\u6570\u636e: channelPackageId="

    .line 24
    .line 25
    const-string v12, "\u2705\u8bfb\u53d6\u5230\u7684\u6570\u636e: invitationCode="

    .line 26
    .line 27
    const-string v13, "\u2705\u8bfb\u53d6\u5230\u7684\u6570\u636e: versionName="

    .line 28
    .line 29
    const-string v14, "\u2705\u8bfb\u53d6\u5230\u7684\u6570\u636e: versionCode="

    .line 30
    .line 31
    const-string v15, "\u2705\u8bfb\u53d6\u5230\u7684\u6570\u636e: appName="

    .line 32
    .line 33
    move-object/from16 v16, v5

    .line 34
    .line 35
    const-string v5, "\u2705\u8bfb\u53d6\u5230\u7684\u6570\u636e: appId="

    .line 36
    .line 37
    move-object/from16 v17, v6

    .line 38
    .line 39
    const-string v6, "\u2705\u8bfb\u53d6\u5230\u7684\u6570\u636e: packageType="

    .line 40
    .line 41
    move-object/from16 v18, v7

    .line 42
    .line 43
    const-string v7, "\u2705\u8bfb\u53d6\u5230\u7684\u6570\u636e: eventTrackString="

    .line 44
    .line 45
    move-object/from16 v19, v8

    .line 46
    .line 47
    new-instance v8, Lorg/json/JSONObject;

    .line 48
    .line 49
    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 50
    .line 51
    .line 52
    move-object/from16 v20, v9

    .line 53
    .line 54
    :try_start_35
    iget-object v9, v1, Lbridges/JSBridge;->appContext:Landroid/content/Context;

    .line 55
    .line 56
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 57
    .line 58
    .line 59
    move-result-object v9

    .line 60
    move-object/from16 v21, v10

    .line 61
    .line 62
    const-string v10, "android_id"

    .line 63
    .line 64
    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v9

    .line 68
    const-string v10, "deviceId"

    .line 69
    .line 70
    invoke-virtual {v8, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    .line 72
    .line 73
    iget-object v9, v1, Lbridges/JSBridge;->reader:Lutils/ReplacePropertiesUtil;
    :try_end_4a
    .catch Lorg/json/JSONException; {:try_start_35 .. :try_end_4a} :catch_5f

    .line 74
    .line 75
    const-string v10, ""

    .line 76
    .line 77
    if-eqz v9, :cond_64

    .line 78
    .line 79
    :try_start_4e
    invoke-virtual {v9, v3}, Lutils/ReplacePropertiesUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    if-eqz v9, :cond_64

    .line 84
    .line 85
    iget-object v9, v1, Lbridges/JSBridge;->reader:Lutils/ReplacePropertiesUtil;

    .line 86
    .line 87
    invoke-virtual {v9, v3}, Lutils/ReplacePropertiesUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    goto :goto_65

    .line 96
    :catch_5f
    move-exception v0

    .line 97
    move-object/from16 v22, v8

    .line 98
    .line 99
    goto/16 :goto_2c2

    .line 100
    .line 101
    :cond_64
    move-object v3, v10

    .line 102
    :goto_65
    iget-object v9, v1, Lbridges/JSBridge;->reader:Lutils/ReplacePropertiesUtil;

    .line 103
    .line 104
    if-eqz v9, :cond_7a

    .line 105
    .line 106
    invoke-virtual {v9, v2}, Lutils/ReplacePropertiesUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v9

    .line 110
    if-eqz v9, :cond_7a

    .line 111
    .line 112
    iget-object v9, v1, Lbridges/JSBridge;->reader:Lutils/ReplacePropertiesUtil;

    .line 113
    .line 114
    invoke-virtual {v9, v2}, Lutils/ReplacePropertiesUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    goto :goto_7b

    .line 123
    :cond_7a
    move-object v2, v10

    .line 124
    :goto_7b
    iget-object v9, v1, Lbridges/JSBridge;->reader:Lutils/ReplacePropertiesUtil;
    :try_end_7d
    .catch Lorg/json/JSONException; {:try_start_4e .. :try_end_7d} :catch_5f

    .line 125
    .line 126
    move-object/from16 v22, v10

    .line 127
    .line 128
    const-string v10, "appName"

    .line 129
    .line 130
    if-eqz v9, :cond_96

    .line 131
    .line 132
    :try_start_83
    invoke-virtual {v9, v10}, Lutils/ReplacePropertiesUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v9

    .line 136
    if-eqz v9, :cond_96

    .line 137
    .line 138
    iget-object v9, v1, Lbridges/JSBridge;->reader:Lutils/ReplacePropertiesUtil;

    .line 139
    .line 140
    invoke-virtual {v9, v10}, Lutils/ReplacePropertiesUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v9

    .line 144
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v9

    .line 148
    :goto_93
    move-object/from16 v23, v11

    .line 149
    .line 150
    goto :goto_99

    .line 151
    :cond_96
    move-object/from16 v9, v22

    .line 152
    .line 153
    goto :goto_93

    .line 154
    :goto_99
    iget-object v11, v1, Lbridges/JSBridge;->reader:Lutils/ReplacePropertiesUtil;
    :try_end_9b
    .catch Lorg/json/JSONException; {:try_start_83 .. :try_end_9b} :catch_5f

    .line 155
    .line 156
    move-object/from16 v24, v12

    .line 157
    .line 158
    const-string v12, "versionCode"

    .line 159
    .line 160
    if-eqz v11, :cond_b4

    .line 161
    .line 162
    :try_start_a1
    invoke-virtual {v11, v12}, Lutils/ReplacePropertiesUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v11

    .line 166
    if-eqz v11, :cond_b4

    .line 167
    .line 168
    iget-object v11, v1, Lbridges/JSBridge;->reader:Lutils/ReplacePropertiesUtil;

    .line 169
    .line 170
    invoke-virtual {v11, v12}, Lutils/ReplacePropertiesUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v11

    .line 174
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v11

    .line 178
    :goto_b1
    move-object/from16 v25, v13

    .line 179
    .line 180
    goto :goto_b7

    .line 181
    :cond_b4
    move-object/from16 v11, v22

    .line 182
    .line 183
    goto :goto_b1

    .line 184
    :goto_b7
    iget-object v13, v1, Lbridges/JSBridge;->reader:Lutils/ReplacePropertiesUtil;
    :try_end_b9
    .catch Lorg/json/JSONException; {:try_start_a1 .. :try_end_b9} :catch_5f

    .line 185
    .line 186
    move-object/from16 v26, v14

    .line 187
    .line 188
    const-string v14, "versionName"

    .line 189
    .line 190
    if-eqz v13, :cond_d2

    .line 191
    .line 192
    :try_start_bf
    invoke-virtual {v13, v14}, Lutils/ReplacePropertiesUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v13

    .line 196
    if-eqz v13, :cond_d2

    .line 197
    .line 198
    iget-object v13, v1, Lbridges/JSBridge;->reader:Lutils/ReplacePropertiesUtil;

    .line 199
    .line 200
    invoke-virtual {v13, v14}, Lutils/ReplacePropertiesUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v13

    .line 204
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v13

    .line 208
    :goto_cf
    move-object/from16 v27, v15

    .line 209
    .line 210
    goto :goto_d5

    .line 211
    :cond_d2
    move-object/from16 v13, v22

    .line 212
    .line 213
    goto :goto_cf

    .line 214
    :goto_d5
    iget-object v15, v1, Lbridges/JSBridge;->reader:Lutils/ReplacePropertiesUtil;
    :try_end_d7
    .catch Lorg/json/JSONException; {:try_start_bf .. :try_end_d7} :catch_5f

    .line 215
    .line 216
    move-object/from16 v28, v5

    .line 217
    .line 218
    const-string v5, "invitationCode"

    .line 219
    .line 220
    if-eqz v15, :cond_f0

    .line 221
    .line 222
    :try_start_dd
    invoke-virtual {v15, v5}, Lutils/ReplacePropertiesUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v15

    .line 226
    if-eqz v15, :cond_f0

    .line 227
    .line 228
    iget-object v15, v1, Lbridges/JSBridge;->reader:Lutils/ReplacePropertiesUtil;

    .line 229
    .line 230
    invoke-virtual {v15, v5}, Lutils/ReplacePropertiesUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v15

    .line 234
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v15

    .line 238
    :goto_ed
    move-object/from16 v29, v6

    .line 239
    .line 240
    goto :goto_f3

    .line 241
    :cond_f0
    move-object/from16 v15, v22

    .line 242
    .line 243
    goto :goto_ed

    .line 244
    :goto_f3
    iget-object v6, v1, Lbridges/JSBridge;->reader:Lutils/ReplacePropertiesUtil;

    .line 245
    .line 246
    if-eqz v6, :cond_108

    .line 247
    .line 248
    invoke-virtual {v6, v0}, Lutils/ReplacePropertiesUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v6

    .line 252
    if-eqz v6, :cond_108

    .line 253
    .line 254
    iget-object v6, v1, Lbridges/JSBridge;->reader:Lutils/ReplacePropertiesUtil;

    .line 255
    .line 256
    invoke-virtual {v6, v0}, Lutils/ReplacePropertiesUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    goto :goto_10a

    .line 265
    :cond_108
    move-object/from16 v0, v22

    .line 266
    .line 267
    :goto_10a
    iget-object v6, v1, Lbridges/JSBridge;->reader:Lutils/ReplacePropertiesUtil;
    :try_end_10c
    .catch Lorg/json/JSONException; {:try_start_dd .. :try_end_10c} :catch_5f

    .line 268
    .line 269
    move-object/from16 v30, v4

    .line 270
    .line 271
    const-string v4, "channelPackageId"

    .line 272
    .line 273
    if-eqz v6, :cond_125

    .line 274
    .line 275
    :try_start_112
    invoke-virtual {v6, v4}, Lutils/ReplacePropertiesUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v6

    .line 279
    if-eqz v6, :cond_125

    .line 280
    .line 281
    iget-object v6, v1, Lbridges/JSBridge;->reader:Lutils/ReplacePropertiesUtil;

    .line 282
    .line 283
    invoke-virtual {v6, v4}, Lutils/ReplacePropertiesUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v6

    .line 287
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v6

    .line 291
    :goto_122
    move-object/from16 v31, v7

    .line 292
    .line 293
    goto :goto_128

    .line 294
    :cond_125
    move-object/from16 v6, v22

    .line 295
    .line 296
    goto :goto_122

    .line 297
    :goto_128
    iget-object v7, v1, Lbridges/JSBridge;->reader:Lutils/ReplacePropertiesUtil;
    :try_end_12a
    .catch Lorg/json/JSONException; {:try_start_112 .. :try_end_12a} :catch_5f

    .line 298
    .line 299
    move-object/from16 v32, v4

    .line 300
    .line 301
    const-string v4, "env"

    .line 302
    .line 303
    if-eqz v7, :cond_143

    .line 304
    .line 305
    :try_start_130
    invoke-virtual {v7, v4}, Lutils/ReplacePropertiesUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v7

    .line 309
    if-eqz v7, :cond_143

    .line 310
    .line 311
    iget-object v7, v1, Lbridges/JSBridge;->reader:Lutils/ReplacePropertiesUtil;

    .line 312
    .line 313
    invoke-virtual {v7, v4}, Lutils/ReplacePropertiesUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v7

    .line 317
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v7

    .line 321
    :goto_140
    move-object/from16 v33, v4

    .line 322
    .line 323
    goto :goto_146

    .line 324
    :cond_143
    move-object/from16 v7, v22

    .line 325
    .line 326
    goto :goto_140

    .line 327
    :goto_146
    iget-object v4, v1, Lbridges/JSBridge;->reader:Lutils/ReplacePropertiesUtil;
    :try_end_148
    .catch Lorg/json/JSONException; {:try_start_130 .. :try_end_148} :catch_5f

    .line 328
    .line 329
    move-object/from16 v34, v7

    .line 330
    .line 331
    const-string v7, "type"

    .line 332
    .line 333
    if-eqz v4, :cond_161

    .line 334
    .line 335
    :try_start_14e
    invoke-virtual {v4, v7}, Lutils/ReplacePropertiesUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v4

    .line 339
    if-eqz v4, :cond_161

    .line 340
    .line 341
    iget-object v4, v1, Lbridges/JSBridge;->reader:Lutils/ReplacePropertiesUtil;

    .line 342
    .line 343
    invoke-virtual {v4, v7}, Lutils/ReplacePropertiesUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v4

    .line 347
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v4

    .line 351
    move-object/from16 v35, v4

    .line 352
    .line 353
    goto :goto_163

    .line 354
    :cond_161
    move-object/from16 v35, v22

    .line 355
    .line 356
    :goto_163
    iget-object v4, v1, Lbridges/JSBridge;->reader:Lutils/ReplacePropertiesUtil;
    :try_end_165
    .catch Lorg/json/JSONException; {:try_start_14e .. :try_end_165} :catch_5f

    .line 357
    .line 358
    move-object/from16 v36, v7

    .line 359
    .line 360
    const-string v7, "domainUrl"

    .line 361
    .line 362
    if-eqz v4, :cond_17e

    .line 363
    .line 364
    :try_start_16b
    invoke-virtual {v4, v7}, Lutils/ReplacePropertiesUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v4

    .line 368
    if-eqz v4, :cond_17e

    .line 369
    .line 370
    iget-object v4, v1, Lbridges/JSBridge;->reader:Lutils/ReplacePropertiesUtil;

    .line 371
    .line 372
    invoke-virtual {v4, v7}, Lutils/ReplacePropertiesUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v4

    .line 376
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v4

    .line 380
    move-object/from16 v37, v4

    .line 381
    .line 382
    goto :goto_180

    .line 383
    :cond_17e
    move-object/from16 v37, v22

    .line 384
    .line 385
    :goto_180
    iget-object v4, v1, Lbridges/JSBridge;->reader:Lutils/ReplacePropertiesUtil;
    :try_end_182
    .catch Lorg/json/JSONException; {:try_start_16b .. :try_end_182} :catch_5f

    .line 386
    .line 387
    move-object/from16 v38, v7

    .line 388
    .line 389
    const-string v7, "tenantId"

    .line 390
    .line 391
    if-eqz v4, :cond_19b

    .line 392
    .line 393
    :try_start_188
    invoke-virtual {v4, v7}, Lutils/ReplacePropertiesUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v4

    .line 397
    if-eqz v4, :cond_19b

    .line 398
    .line 399
    iget-object v4, v1, Lbridges/JSBridge;->reader:Lutils/ReplacePropertiesUtil;

    .line 400
    .line 401
    invoke-virtual {v4, v7}, Lutils/ReplacePropertiesUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v4

    .line 405
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v4

    .line 409
    move-object/from16 v39, v4

    .line 410
    .line 411
    goto :goto_19d

    .line 412
    :cond_19b
    move-object/from16 v39, v22

    .line 413
    .line 414
    :goto_19d
    iget-object v4, v1, Lbridges/JSBridge;->reader:Lutils/ReplacePropertiesUtil;
    :try_end_19f
    .catch Lorg/json/JSONException; {:try_start_188 .. :try_end_19f} :catch_5f

    .line 415
    .line 416
    move-object/from16 v40, v7

    .line 417
    .line 418
    const-string v7, "icon"

    .line 419
    .line 420
    if-eqz v4, :cond_1b8

    .line 421
    .line 422
    :try_start_1a5
    invoke-virtual {v4, v7}, Lutils/ReplacePropertiesUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v4

    .line 426
    if-eqz v4, :cond_1b8

    .line 427
    .line 428
    iget-object v4, v1, Lbridges/JSBridge;->reader:Lutils/ReplacePropertiesUtil;

    .line 429
    .line 430
    invoke-virtual {v4, v7}, Lutils/ReplacePropertiesUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v4

    .line 434
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v4

    .line 438
    move-object/from16 v41, v4

    .line 439
    .line 440
    goto :goto_1ba

    .line 441
    :cond_1b8
    move-object/from16 v41, v22

    .line 442
    .line 443
    :goto_1ba
    iget-object v4, v1, Lbridges/JSBridge;->reader:Lutils/ReplacePropertiesUtil;
    :try_end_1bc
    .catch Lorg/json/JSONException; {:try_start_1a5 .. :try_end_1bc} :catch_5f

    .line 444
    .line 445
    move-object/from16 v42, v7

    .line 446
    .line 447
    const-string v7, "launcher"

    .line 448
    .line 449
    if-eqz v4, :cond_1d4

    .line 450
    .line 451
    :try_start_1c2
    invoke-virtual {v4, v7}, Lutils/ReplacePropertiesUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v4

    .line 455
    if-eqz v4, :cond_1d4

    .line 456
    .line 457
    iget-object v4, v1, Lbridges/JSBridge;->reader:Lutils/ReplacePropertiesUtil;

    .line 458
    .line 459
    invoke-virtual {v4, v7}, Lutils/ReplacePropertiesUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v4

    .line 463
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v4

    .line 467
    move-object/from16 v22, v4

    .line 468
    .line 469
    :cond_1d4
    const-string v4, "apkType"

    .line 470
    .line 471
    move-object/from16 v43, v7

    .line 472
    .line 473
    const-string v7, "native"

    .line 474
    .line 475
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 476
    .line 477
    .line 478
    move-result v7

    .line 479
    if-eqz v7, :cond_1e3

    .line 480
    .line 481
    const-string v7, "full_apk"

    .line 482
    .line 483
    goto :goto_1e5

    .line 484
    :cond_1e3
    const-string v7, "quick_apk"

    .line 485
    .line 486
    :goto_1e5
    invoke-virtual {v8, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 487
    .line 488
    .line 489
    const-string v4, "appId"

    .line 490
    .line 491
    invoke-virtual {v8, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 492
    .line 493
    .line 494
    invoke-virtual {v8, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 495
    .line 496
    .line 497
    const-string v4, "isValidPwd"

    .line 498
    .line 499
    invoke-virtual {v8, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 500
    .line 501
    .line 502
    invoke-virtual {v8, v12, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 503
    .line 504
    .line 505
    invoke-virtual {v8, v14, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 506
    .line 507
    .line 508
    const-string v0, "eventList"

    .line 509
    .line 510
    iget-object v4, v1, Lbridges/JSBridge;->eventTrackString:Ljava/lang/String;

    .line 511
    .line 512
    invoke-virtual {v8, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 513
    .line 514
    .line 515
    invoke-virtual {v8, v5, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 516
    .line 517
    .line 518
    move-object/from16 v0, v32

    .line 519
    .line 520
    invoke-virtual {v8, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 521
    .line 522
    .line 523
    move-object/from16 v0, v33

    .line 524
    .line 525
    move-object/from16 v7, v34

    .line 526
    .line 527
    invoke-virtual {v8, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 528
    .line 529
    .line 530
    move-object/from16 v4, v35

    .line 531
    .line 532
    move-object/from16 v0, v36

    .line 533
    .line 534
    invoke-virtual {v8, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 535
    .line 536
    .line 537
    move-object/from16 v0, v39

    .line 538
    .line 539
    move-object/from16 v5, v40

    .line 540
    .line 541
    invoke-virtual {v8, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 542
    .line 543
    .line 544
    move-object/from16 v5, v37

    .line 545
    .line 546
    move-object/from16 v10, v38

    .line 547
    .line 548
    invoke-virtual {v8, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 549
    .line 550
    .line 551
    move-object/from16 v10, v41

    .line 552
    .line 553
    move-object/from16 v12, v42

    .line 554
    .line 555
    invoke-virtual {v8, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 556
    .line 557
    .line 558
    move-object/from16 v12, v22

    .line 559
    .line 560
    move-object/from16 v14, v43

    .line 561
    .line 562
    invoke-virtual {v8, v14, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 563
    .line 564
    .line 565
    new-instance v14, Ljava/lang/StringBuilder;
    :try_end_236
    .catch Lorg/json/JSONException; {:try_start_1c2 .. :try_end_236} :catch_5f

    .line 566
    .line 567
    move-object/from16 v22, v8

    .line 568
    .line 569
    move-object/from16 v8, v31

    .line 570
    .line 571
    :try_start_23a
    invoke-direct {v14, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 572
    .line 573
    .line 574
    iget-object v8, v1, Lbridges/JSBridge;->eventTrackString:Ljava/lang/String;

    .line 575
    .line 576
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    .line 578
    .line 579
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 580
    .line 581
    .line 582
    move-result-object v8

    .line 583
    move-object/from16 v14, v30

    .line 584
    .line 585
    invoke-static {v14, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    .line 587
    .line 588
    move-object/from16 v8, v29

    .line 589
    .line 590
    invoke-virtual {v8, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v3

    .line 594
    invoke-static {v14, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    .line 596
    .line 597
    move-object/from16 v3, v28

    .line 598
    .line 599
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object v2

    .line 603
    invoke-static {v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    .line 605
    .line 606
    move-object/from16 v2, v27

    .line 607
    .line 608
    invoke-virtual {v2, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v2

    .line 612
    invoke-static {v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    .line 614
    .line 615
    move-object/from16 v2, v26

    .line 616
    .line 617
    invoke-virtual {v2, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object v2

    .line 621
    invoke-static {v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    .line 623
    .line 624
    move-object/from16 v2, v25

    .line 625
    .line 626
    invoke-virtual {v2, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 627
    .line 628
    .line 629
    move-result-object v2

    .line 630
    invoke-static {v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    .line 632
    .line 633
    move-object/from16 v2, v24

    .line 634
    .line 635
    invoke-virtual {v2, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object v2

    .line 639
    invoke-static {v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    .line 641
    .line 642
    move-object/from16 v2, v23

    .line 643
    .line 644
    invoke-virtual {v2, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 645
    .line 646
    .line 647
    move-result-object v2

    .line 648
    invoke-static {v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    .line 650
    .line 651
    move-object/from16 v2, v21

    .line 652
    .line 653
    invoke-virtual {v2, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object v2

    .line 657
    invoke-static {v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    .line 659
    .line 660
    move-object/from16 v2, v20

    .line 661
    .line 662
    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object v2

    .line 666
    invoke-static {v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    .line 668
    .line 669
    move-object/from16 v2, v19

    .line 670
    .line 671
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 672
    .line 673
    .line 674
    move-result-object v0

    .line 675
    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    .line 677
    .line 678
    move-object/from16 v0, v18

    .line 679
    .line 680
    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 681
    .line 682
    .line 683
    move-result-object v0

    .line 684
    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    .line 686
    .line 687
    move-object/from16 v0, v17

    .line 688
    .line 689
    invoke-virtual {v0, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 690
    .line 691
    .line 692
    move-result-object v0

    .line 693
    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    .line 695
    .line 696
    move-object/from16 v0, v16

    .line 697
    .line 698
    invoke-virtual {v0, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 699
    .line 700
    .line 701
    move-result-object v0

    .line 702
    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c0
    .catch Lorg/json/JSONException; {:try_start_23a .. :try_end_2c0} :catch_2c1

    .line 703
    .line 704
    .line 705
    goto :goto_2c9

    .line 706
    :catch_2c1
    move-exception v0

    .line 707
    :goto_2c2
    const-string v2, "JSBridge"

    .line 708
    .line 709
    const-string v3, "getInfoString JSON \u5931\u8d25"

    .line 710
    .line 711
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 712
    .line 713
    .line 714
    :goto_2c9
    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 715
    .line 716
    .line 717
    move-result-object v0

    .line 718
    return-object v0
.end method

.method public openExternalPage(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "openExternalPage: params="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "\u2705JSBridge"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    :try_start_13
    new-instance v0, Landroid/content/Intent;

    .line 21
    .line 22
    iget-object v1, p0, Lbridges/JSBridge;->appContext:Landroid/content/Context;

    .line 23
    .line 24
    const-class v2, Lcom/lottery/app/GameActivity;

    .line 25
    .line 26
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 27
    .line 28
    .line 29
    const/high16 v1, 0x10000000

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    const-string v1, "params"

    .line 35
    .line 36
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lbridges/JSBridge;->appContext:Landroid/content/Context;

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_2b} :catch_2c

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :catch_2c
    move-exception p1

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v1, "openExternalPage \u5931\u8d25: "

    .line 49
    .line 50
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const-string v1, "JSBridge"

    .line 65
    .line 66
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public openExternalUrl(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "openExternalUrl: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "\u2705JSBridge"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    :try_start_13
    new-instance v0, Landroid/content/Intent;

    .line 21
    .line 22
    const-string v1, "android.intent.action.VIEW"

    .line 23
    .line 24
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 29
    .line 30
    .line 31
    const/high16 p1, 0x10000000

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lbridges/JSBridge;->appContext:Landroid/content/Context;

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_28} :catch_29

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catch_29
    move-exception p1

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v1, "openExternalUrl \u5931\u8d25: "

    .line 46
    .line 47
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const-string v1, "\u2639\ufe0fJSBridge"

    .line 62
    .line 63
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public readClipboardPayload()Ljava/lang/String;
    .registers 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "reason"

    .line 2
    .line 3
    const-string v1, "ok"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_5
    iget-object v3, p0, Lbridges/JSBridge;->activity:Landroid/app/Activity;

    .line 7
    .line 8
    invoke-virtual {v3}, Landroid/app/Activity;->hasWindowFocus()Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-nez v3, :cond_24

    .line 13
    .line 14
    new-instance v3, Lorg/json/JSONObject;

    .line 15
    .line 16
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const-string v4, "no_focus"

    .line 24
    .line 25
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0

    .line 34
    :catchall_21
    move-exception v3

    .line 35
    goto/16 :goto_9e

    .line 36
    .line 37
    :cond_24
    iget-object v3, p0, Lbridges/JSBridge;->activity:Landroid/app/Activity;

    .line 38
    .line 39
    invoke-static {v3}, Ld4/a;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    if-eqz v3, :cond_8a

    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_37

    .line 54
    .line 55
    goto :goto_8a

    .line 56
    :cond_37
    const-string v4, "["

    .line 57
    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v4
    :try_end_3d
    .catchall {:try_start_5 .. :try_end_3d} :catchall_21

    .line 62
    const-string v5, "data"

    .line 63
    .line 64
    const/4 v6, 0x1

    .line 65
    if-eqz v4, :cond_59

    .line 66
    .line 67
    :try_start_42
    new-instance v4, Lorg/json/JSONObject;

    .line 68
    .line 69
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    new-instance v6, Lorg/json/JSONArray;

    .line 77
    .line 78
    invoke-direct {v6, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    return-object v0

    .line 90
    :cond_59
    const-string v4, "{"

    .line 91
    .line 92
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-eqz v4, :cond_78

    .line 97
    .line 98
    new-instance v4, Lorg/json/JSONObject;

    .line 99
    .line 100
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    new-instance v6, Lorg/json/JSONObject;

    .line 108
    .line 109
    invoke-direct {v6, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    return-object v0

    .line 121
    :cond_78
    new-instance v4, Lorg/json/JSONObject;

    .line 122
    .line 123
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    return-object v0

    .line 139
    :cond_8a
    :goto_8a
    new-instance v3, Lorg/json/JSONObject;

    .line 140
    .line 141
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    const-string v4, "no_data"

    .line 149
    .line 150
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0
    :try_end_9d
    .catchall {:try_start_42 .. :try_end_9d} :catchall_21

    .line 158
    return-object v0

    .line 159
    :goto_9e
    new-instance v4, Lorg/json/JSONObject;

    .line 160
    .line 161
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    const-string v2, "error"

    .line 169
    .line 170
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    const-string v2, "message"

    .line 183
    .line 184
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    return-object v0
.end method

.method public readClipboardPayloadNoEncode()Ljava/lang/String;
    .registers 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "reason"

    .line 2
    .line 3
    const-string v1, "ok"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_5
    iget-object v3, p0, Lbridges/JSBridge;->activity:Landroid/app/Activity;

    .line 7
    .line 8
    invoke-virtual {v3}, Landroid/app/Activity;->hasWindowFocus()Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-nez v3, :cond_24

    .line 13
    .line 14
    new-instance v3, Lorg/json/JSONObject;

    .line 15
    .line 16
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const-string v4, "no_focus"

    .line 24
    .line 25
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0

    .line 34
    :catchall_21
    move-exception v3

    .line 35
    goto/16 :goto_d1

    .line 36
    .line 37
    :cond_24
    iget-object v3, p0, Lbridges/JSBridge;->appContext:Landroid/content/Context;

    .line 38
    .line 39
    const-class v4, Landroid/content/ClipboardManager;

    .line 40
    .line 41
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Landroid/content/ClipboardManager;

    .line 46
    .line 47
    const/4 v4, 0x0

    .line 48
    if-eqz v3, :cond_d0

    .line 49
    .line 50
    invoke-virtual {v3}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-nez v5, :cond_39

    .line 55
    .line 56
    goto/16 :goto_d0

    .line 57
    .line 58
    :cond_39
    invoke-virtual {v3}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    if-eqz v3, :cond_d0

    .line 63
    .line 64
    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-nez v5, :cond_47

    .line 69
    .line 70
    goto/16 :goto_d0

    .line 71
    .line 72
    :cond_47
    invoke-virtual {v3, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    iget-object v5, p0, Lbridges/JSBridge;->appContext:Landroid/content/Context;

    .line 77
    .line 78
    invoke-virtual {v3, v5}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    if-nez v3, :cond_54

    .line 83
    .line 84
    return-object v4

    .line 85
    :cond_54
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    if-eqz v3, :cond_bc

    .line 94
    .line 95
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    if-eqz v4, :cond_69

    .line 104
    .line 105
    goto :goto_bc

    .line 106
    :cond_69
    const-string v4, "["

    .line 107
    .line 108
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 109
    .line 110
    .line 111
    move-result v4
    :try_end_6f
    .catchall {:try_start_5 .. :try_end_6f} :catchall_21

    .line 112
    const-string v5, "data"

    .line 113
    .line 114
    const/4 v6, 0x1

    .line 115
    if-eqz v4, :cond_8b

    .line 116
    .line 117
    :try_start_74
    new-instance v4, Lorg/json/JSONObject;

    .line 118
    .line 119
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    new-instance v6, Lorg/json/JSONArray;

    .line 127
    .line 128
    invoke-direct {v6, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    return-object v0

    .line 140
    :cond_8b
    const-string v4, "{"

    .line 141
    .line 142
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    if-eqz v4, :cond_aa

    .line 147
    .line 148
    new-instance v4, Lorg/json/JSONObject;

    .line 149
    .line 150
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v4, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    new-instance v6, Lorg/json/JSONObject;

    .line 158
    .line 159
    invoke-direct {v6, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    return-object v0

    .line 171
    :cond_aa
    new-instance v4, Lorg/json/JSONObject;

    .line 172
    .line 173
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v4, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    return-object v0

    .line 189
    :cond_bc
    :goto_bc
    new-instance v3, Lorg/json/JSONObject;

    .line 190
    .line 191
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    const-string v4, "no_data"

    .line 199
    .line 200
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v0
    :try_end_cf
    .catchall {:try_start_74 .. :try_end_cf} :catchall_21

    .line 208
    return-object v0

    .line 209
    :cond_d0
    :goto_d0
    return-object v4

    .line 210
    :goto_d1
    new-instance v4, Lorg/json/JSONObject;

    .line 211
    .line 212
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    const-string v2, "error"

    .line 220
    .line 221
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    const-string v2, "message"

    .line 234
    .line 235
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    return-object v0
.end method

.method public saveBase64(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "is_pending"

    .line 2
    .line 3
    const-string v1, "="

    .line 4
    .line 5
    const-string v2, "=="

    .line 6
    .line 7
    const-string v3, "image_"

    .line 8
    .line 9
    if-eqz p2, :cond_1d

    .line 10
    .line 11
    :try_start_a
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_15

    .line 20
    .line 21
    goto :goto_1d

    .line 22
    :cond_15
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    goto :goto_1f

    .line 27
    :catchall_1a
    move-exception p1

    .line 28
    goto/16 :goto_196

    .line 29
    .line 30
    :cond_1d
    :goto_1d
    const-string p2, "image/png"

    .line 31
    .line 32
    :goto_1f
    const-string v4, "Pictures/MyApp"

    .line 33
    .line 34
    if-eqz p1, :cond_33

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-eqz v5, :cond_2e

    .line 45
    .line 46
    goto :goto_33

    .line 47
    :cond_2e
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    goto :goto_4a

    .line 52
    :cond_33
    :goto_33
    new-instance p1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 58
    .line 59
    .line 60
    move-result-wide v5

    .line 61
    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-static {p2}, Lbridges/JSBridge;->guessExtByMime(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1
    :try_end_4a
    .catchall {:try_start_a .. :try_end_4a} :catchall_1a

    .line 75
    :goto_4a
    const-string v3, ""

    .line 76
    .line 77
    if-nez p3, :cond_50

    .line 78
    .line 79
    move-object p3, v3

    .line 80
    goto :goto_54

    .line 81
    :cond_50
    :try_start_50
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    :goto_54
    const/16 v5, 0x2c

    .line 86
    .line 87
    invoke-virtual {p3, v5}, Ljava/lang/String;->indexOf(I)I

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    const-string v6, "data:"

    .line 92
    .line 93
    invoke-virtual {p3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    const/4 v7, 0x1

    .line 98
    const/4 v8, 0x0

    .line 99
    if-eqz v6, :cond_84

    .line 100
    .line 101
    if-lez v5, :cond_84

    .line 102
    .line 103
    invoke-virtual {p3, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    const-string v9, "^data:"

    .line 108
    .line 109
    invoke-virtual {v6, v9, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    const-string v9, ";base64"

    .line 114
    .line 115
    invoke-virtual {v6, v9, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    if-eqz v6, :cond_7f

    .line 120
    .line 121
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 122
    .line 123
    .line 124
    move-result v9

    .line 125
    if-nez v9, :cond_7f

    .line 126
    .line 127
    move-object p2, v6

    .line 128
    :cond_7f
    add-int/2addr v5, v7

    .line 129
    invoke-virtual {p3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p3

    .line 133
    :cond_84
    const-string v5, "\\s+"

    .line 134
    .line 135
    invoke-virtual {p3, v5, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p3

    .line 139
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    if-eqz v3, :cond_97

    .line 144
    .line 145
    const-string p1, "empty base64"

    .line 146
    .line 147
    invoke-static {p1}, Lbridges/JSBridge;->jsonError(Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    return-object p1

    .line 152
    :cond_97
    const-string v3, "-"

    .line 153
    .line 154
    invoke-virtual {p3, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    if-nez v3, :cond_aa

    .line 159
    .line 160
    const-string v3, "_"

    .line 161
    .line 162
    invoke-virtual {p3, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    if-eqz v3, :cond_a8

    .line 167
    .line 168
    goto :goto_aa

    .line 169
    :cond_a8
    move v3, v8

    .line 170
    goto :goto_ab

    .line 171
    :cond_aa
    :goto_aa
    move v3, v7

    .line 172
    :goto_ab
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 173
    .line 174
    .line 175
    move-result v5

    .line 176
    rem-int/lit8 v5, v5, 0x4

    .line 177
    .line 178
    const/4 v6, 0x2

    .line 179
    if-ne v5, v6, :cond_b9

    .line 180
    .line 181
    invoke-virtual {p3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p3

    .line 185
    goto :goto_ca

    .line 186
    :cond_b9
    const/4 v2, 0x3

    .line 187
    if-ne v5, v2, :cond_c1

    .line 188
    .line 189
    invoke-virtual {p3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p3

    .line 193
    goto :goto_ca

    .line 194
    :cond_c1
    if-ne v5, v7, :cond_ca

    .line 195
    .line 196
    const-string p1, "invalid base64 length"

    .line 197
    .line 198
    invoke-static {p1}, Lbridges/JSBridge;->jsonError(Ljava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p1
    :try_end_c9
    .catchall {:try_start_50 .. :try_end_c9} :catchall_1a

    .line 202
    return-object p1

    .line 203
    :cond_ca
    :goto_ca
    if-eqz v3, :cond_cf

    .line 204
    .line 205
    const/16 v1, 0x8

    .line 206
    .line 207
    goto :goto_d0

    .line 208
    :cond_cf
    move v1, v8

    .line 209
    :goto_d0
    or-int/2addr v1, v6

    .line 210
    :try_start_d1
    invoke-static {p3, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 211
    .line 212
    .line 213
    move-result-object p3
    :try_end_d5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d1 .. :try_end_d5} :catch_d6
    .catchall {:try_start_d1 .. :try_end_d5} :catchall_1a

    .line 214
    goto :goto_da

    .line 215
    :catch_d6
    :try_start_d6
    invoke-static {p3, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 216
    .line 217
    .line 218
    move-result-object p3

    .line 219
    :goto_da
    const-string v1, "image/"

    .line 220
    .line 221
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    if-eqz v1, :cond_102

    .line 226
    .line 227
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    .line 228
    .line 229
    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 230
    .line 231
    .line 232
    iput-boolean v7, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 233
    .line 234
    array-length v3, p3

    .line 235
    invoke-static {p3, v8, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 236
    .line 237
    .line 238
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 239
    .line 240
    if-lez v3, :cond_fb

    .line 241
    .line 242
    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 243
    .line 244
    if-gtz v2, :cond_f6

    .line 245
    .line 246
    goto :goto_fb

    .line 247
    :cond_f6
    invoke-static {p1, p2}, Lbridges/JSBridge;->ensureExtMatchesMime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    goto :goto_102

    .line 252
    :cond_fb
    :goto_fb
    const-string p1, "decoded bytes are not a valid image"

    .line 253
    .line 254
    invoke-static {p1}, Lbridges/JSBridge;->jsonError(Ljava/lang/String;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    return-object p1

    .line 259
    :cond_102
    :goto_102
    if-eqz v1, :cond_107

    .line 260
    .line 261
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 262
    .line 263
    goto :goto_10d

    .line 264
    :cond_107
    const-string v1, "external"

    .line 265
    .line 266
    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    :goto_10d
    iget-object v2, p0, Lbridges/JSBridge;->appContext:Landroid/content/Context;

    .line 271
    .line 272
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    new-instance v3, Landroid/content/ContentValues;

    .line 277
    .line 278
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 279
    .line 280
    .line 281
    const-string v5, "_display_name"

    .line 282
    .line 283
    invoke-virtual {v3, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    const-string v5, "mime_type"

    .line 287
    .line 288
    invoke-virtual {v3, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    const-string v5, "relative_path"

    .line 292
    .line 293
    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 297
    .line 298
    .line 299
    move-result-object v4

    .line 300
    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v2, v1, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    if-nez v1, :cond_13b

    .line 308
    .line 309
    const-string p1, "insert failed"

    .line 310
    .line 311
    invoke-static {p1}, Lbridges/JSBridge;->jsonError(Ljava/lang/String;)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    return-object p1

    .line 316
    :cond_13b
    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    .line 317
    .line 318
    .line 319
    move-result-object v3
    :try_end_13f
    .catchall {:try_start_d6 .. :try_end_13f} :catchall_1a

    .line 320
    if-nez v3, :cond_14f

    .line 321
    .line 322
    :try_start_141
    const-string p1, "openOutputStream null"

    .line 323
    .line 324
    invoke-static {p1}, Lbridges/JSBridge;->jsonError(Ljava/lang/String;)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object p1
    :try_end_147
    .catchall {:try_start_141 .. :try_end_147} :catchall_14d

    .line 328
    if-eqz v3, :cond_14c

    .line 329
    .line 330
    :try_start_149
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_14c
    .catchall {:try_start_149 .. :try_end_14c} :catchall_1a

    .line 331
    .line 332
    .line 333
    :cond_14c
    return-object p1

    .line 334
    :catchall_14d
    move-exception p1

    .line 335
    goto :goto_18b

    .line 336
    :cond_14f
    :try_start_14f
    invoke-virtual {v3, p3}, Ljava/io/OutputStream;->write([B)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_155
    .catchall {:try_start_14f .. :try_end_155} :catchall_14d

    .line 340
    .line 341
    .line 342
    :try_start_155
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 343
    .line 344
    .line 345
    new-instance v3, Landroid/content/ContentValues;

    .line 346
    .line 347
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 348
    .line 349
    .line 350
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 351
    .line 352
    .line 353
    move-result-object v4

    .line 354
    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 355
    .line 356
    .line 357
    const/4 v0, 0x0

    .line 358
    invoke-virtual {v2, v1, v3, v0, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 359
    .line 360
    .line 361
    new-instance v0, Lorg/json/JSONObject;

    .line 362
    .line 363
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 364
    .line 365
    .line 366
    const-string v2, "uri"

    .line 367
    .line 368
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 373
    .line 374
    .line 375
    const-string v1, "bytes"

    .line 376
    .line 377
    array-length p3, p3

    .line 378
    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 379
    .line 380
    .line 381
    const-string p3, "mime"

    .line 382
    .line 383
    invoke-virtual {v0, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 384
    .line 385
    .line 386
    const-string p2, "filename"

    .line 387
    .line 388
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object p1
    :try_end_18a
    .catchall {:try_start_155 .. :try_end_18a} :catchall_1a

    .line 395
    return-object p1

    .line 396
    :goto_18b
    if-eqz v3, :cond_195

    .line 397
    .line 398
    :try_start_18d
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_190
    .catchall {:try_start_18d .. :try_end_190} :catchall_191

    .line 399
    .line 400
    .line 401
    goto :goto_195

    .line 402
    :catchall_191
    move-exception p2

    .line 403
    :try_start_192
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 404
    .line 405
    .line 406
    :cond_195
    :goto_195
    throw p1
    :try_end_196
    .catchall {:try_start_192 .. :try_end_196} :catchall_1a

    .line 407
    :goto_196
    const-string p2, "JSBridge"

    .line 408
    .line 409
    const-string p3, "saveBase64 failed"

    .line 410
    .line 411
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 412
    .line 413
    .line 414
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object p1

    .line 418
    invoke-static {p1}, Lbridges/JSBridge;->jsonError(Ljava/lang/String;)Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object p1

    .line 422
    return-object p1
.end method

.method public shareFacebookBase64(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    return-void
.end method

.method public shareImageToApp(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    if-eqz p1, :cond_5c

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_d

    .line 12
    .line 13
    goto :goto_5c

    .line 14
    :cond_d
    :try_start_d
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    new-instance v0, Landroid/content/Intent;

    .line 19
    .line 20
    const-string v1, "android.intent.action.SEND"

    .line 21
    .line 22
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v1, "image/*"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    const-string v1, "android.intent.extra.STREAM"

    .line 31
    .line 32
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    const v1, 0x10000001

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lbridges/JSBridge;->appContext:Landroid/content/Context;

    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string v2, "image"

    .line 48
    .line 49
    invoke-static {v1, v2, p1}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 54
    .line 55
    .line 56
    if-eqz p2, :cond_49

    .line 57
    .line 58
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-nez p1, :cond_49

    .line 67
    .line 68
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    goto :goto_49

    .line 72
    :catch_47
    move-exception p1

    .line 73
    goto :goto_55

    .line 74
    :cond_49
    :goto_49
    iget-object p1, p0, Lbridges/JSBridge;->appContext:Landroid/content/Context;

    .line 75
    .line 76
    const-string p2, "Share image"

    .line 77
    .line 78
    invoke-static {v0, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_54} :catch_47

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :goto_55
    const-string p2, "JSBridge"

    .line 87
    .line 88
    const-string v0, "shareImageToApp failed"

    .line 89
    .line 90
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    .line 92
    .line 93
    :cond_5c
    :goto_5c
    return-void
.end method

.method public trackEvent(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "\u6536\u5230\u4e8b\u4ef6: "

    .line 2
    .line 3
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string p1, "\u2705JSBridge"

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    const-string p1, "event"

    .line 26
    .line 27
    const-string v0, ""

    .line 28
    .line 29
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    const-string p1, "params"

    .line 33
    .line 34
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_24} :catch_25

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :catch_25
    move-exception p1

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v1, "JSON\u89e3\u6790\u5931\u8d25: "

    .line 42
    .line 43
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const-string v0, "JSBridge"

    .line 58
    .line 59
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    return-void
.end method
