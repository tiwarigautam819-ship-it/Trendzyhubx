###### Class com.engagelab.privates.common.component.MTCommonActivity (com.engagelab.privates.common.component.MTCommonActivity)
.class public Lcom/engagelab/privates/common/component/MTCommonActivity;
.super Landroid/app/Activity;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field private static final TAG:Ljava/lang/String; = "MTCommonActivity"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private processIntent(Landroid/content/Intent;)V
    .registers 8

    .line 1
    const-string v0, "JMessageExtra"

    .line 2
    .line 3
    const-string v1, "processIntent failed "

    .line 4
    .line 5
    const-string v2, "MTCommonActivity"

    .line 6
    .line 7
    if-nez p1, :cond_14

    .line 8
    .line 9
    :try_start_8
    const-string p1, "processIntent intent is null "

    .line 10
    .line 11
    invoke-static {v2, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_11

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catchall_11
    move-exception p1

    .line 19
    goto/16 :goto_82

    .line 20
    .line 21
    :cond_14
    :try_start_14
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    if-eqz v4, :cond_27

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4
    :try_end_26
    .catchall {:try_start_14 .. :try_end_26} :catchall_11

    .line 39
    goto :goto_29

    .line 40
    :cond_27
    const-string v4, ""

    .line 41
    .line 42
    :goto_29
    :try_start_29
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-eqz v5, :cond_48

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    if-eqz v5, :cond_48

    .line 53
    .line 54
    invoke-virtual {v3, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-eqz v4, :cond_41

    .line 59
    .line 60
    invoke-virtual {v3, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    :goto_3f
    move-object v4, v0

    .line 65
    goto :goto_48

    .line 66
    :cond_41
    const-string v0, "MTMessageExtra"

    .line 67
    .line 68
    invoke-virtual {v3, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    goto :goto_3f

    .line 73
    :cond_48
    :goto_48
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_7b

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    const/16 v0, 0xbbb

    .line 88
    .line 89
    if-eq v0, p1, :cond_5e

    .line 90
    .line 91
    const/16 v0, 0xbbc

    .line 92
    .line 93
    if-ne v0, p1, :cond_6c

    .line 94
    .line 95
    :cond_5e
    const-string v0, "message"

    .line 96
    .line 97
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Lcom/engagelab/privates/push/api/NotificationMessage;
    :try_end_66
    .catchall {:try_start_29 .. :try_end_66} :catchall_11

    .line 102
    .line 103
    if-nez v0, :cond_6c

    .line 104
    .line 105
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :cond_6c
    :try_start_6c
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-static {v0}, Lcom/engagelab/privates/push/api/MTPushPrivatesApi;->init(Landroid/content/Context;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-static {v0, p1, v3}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToMainProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 121
    .line 122
    .line 123
    goto :goto_7e

    .line 124
    :cond_7b
    invoke-direct {p0, v4}, Lcom/engagelab/privates/common/component/MTCommonActivity;->processPlatformMessage(Ljava/lang/String;)V
    :try_end_7e
    .catchall {:try_start_6c .. :try_end_7e} :catchall_11

    .line 125
    .line 126
    .line 127
    :goto_7e
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :goto_82
    :try_start_82
    new-instance v0, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-static {v2, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_95
    .catchall {:try_start_82 .. :try_end_95} :catchall_99

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :catchall_99
    move-exception p1

    .line 155
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 156
    .line 157
    .line 158
    throw p1
.end method

.method private processPlatformMessage(Ljava/lang/String;)V
    .registers 16

    .line 1
    const-string v0, "m_content"

    .line 2
    .line 3
    const-string v1, "MTCommonActivity"

    .line 4
    .line 5
    const-string v2, "platformMessageJson messageId:"

    .line 6
    .line 7
    const-string v3, "platformMessageJson:"

    .line 8
    .line 9
    :try_start_8
    invoke-static {p1}, Lcom/engagelab/privates/common/utils/SM4Util;->decodeMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_13

    .line 18
    .line 19
    return-void

    .line 20
    :cond_13
    new-instance v4, Lorg/json/JSONObject;

    .line 21
    .line 22
    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v4}, Lcom/engagelab/privates/common/log/MTCommonLog;->toLogString(Lorg/json/JSONObject;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->debugOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v4}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getMessageId(Lorg/json/JSONObject;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-static {v1, v2}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string v2, "rom_type"

    .line 64
    .line 65
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    int-to-byte v2, v2

    .line 70
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v3
    :try_end_49
    .catchall {:try_start_8 .. :try_end_49} :catchall_88

    .line 74
    const-string v5, "n_appkey"

    .line 75
    .line 76
    const-string v6, "n_target_event"

    .line 77
    .line 78
    const-string v7, "n_extras"

    .line 79
    .line 80
    const-string v8, "n_intent_ssl"

    .line 81
    .line 82
    const-string v9, "n_intent_uri"

    .line 83
    .line 84
    const-string v10, "n_content"

    .line 85
    .line 86
    const-string v11, "n_title"

    .line 87
    .line 88
    const-string v12, ""

    .line 89
    .line 90
    if-eqz v3, :cond_90

    .line 91
    .line 92
    :try_start_5b
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v9

    .line 108
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    invoke-static {v7}, Lcom/engagelab/privates/push/utils/NotificationUtil;->convertJsonToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    if-eqz v6, :cond_8b

    .line 125
    .line 126
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    .line 127
    .line 128
    .line 129
    move-result v10

    .line 130
    if-lez v10, :cond_8b

    .line 131
    .line 132
    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v12

    .line 136
    goto :goto_8b

    .line 137
    :catchall_88
    move-exception p1

    .line 138
    goto/16 :goto_103

    .line 139
    .line 140
    :cond_8b
    :goto_8b
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    goto :goto_bf

    .line 145
    :cond_90
    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v9

    .line 157
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v8

    .line 161
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 162
    .line 163
    .line 164
    move-result-object v7

    .line 165
    invoke-static {v7}, Lcom/engagelab/privates/push/utils/NotificationUtil;->convertJsonToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    .line 166
    .line 167
    .line 168
    move-result-object v7

    .line 169
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    if-eqz v6, :cond_b8

    .line 174
    .line 175
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    .line 176
    .line 177
    .line 178
    move-result v10

    .line 179
    if-lez v10, :cond_b8

    .line 180
    .line 181
    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v12

    .line 185
    :cond_b8
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    move-object v13, v4

    .line 190
    move-object v4, v0

    .line 191
    move-object v0, v13

    .line 192
    :goto_bf
    new-instance v5, Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 193
    .line 194
    invoke-direct {v5}, Lcom/engagelab/privates/push/api/NotificationMessage;-><init>()V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v5, p1}, Lcom/engagelab/privates/push/api/NotificationMessage;->setMessageId(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    invoke-virtual {p1, v2}, Lcom/engagelab/privates/push/api/NotificationMessage;->setPlatform(B)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-virtual {p1, v3}, Lcom/engagelab/privates/push/api/NotificationMessage;->setTitle(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-virtual {p1, v4}, Lcom/engagelab/privates/push/api/NotificationMessage;->setContent(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    invoke-virtual {p1, v7}, Lcom/engagelab/privates/push/api/NotificationMessage;->setExtras(Landroid/os/Bundle;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    invoke-virtual {p1, v9}, Lcom/engagelab/privates/push/api/NotificationMessage;->setIntentUri(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    invoke-virtual {p1, v8}, Lcom/engagelab/privates/push/api/NotificationMessage;->setIntentSsl(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    invoke-virtual {p1, v12}, Lcom/engagelab/privates/push/api/NotificationMessage;->setTargetEvent(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    invoke-virtual {p1, v0}, Lcom/engagelab/privates/push/api/NotificationMessage;->setAppkey(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    new-instance v0, Landroid/os/Bundle;

    .line 234
    .line 235
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 236
    .line 237
    .line 238
    const-string v2, "message"

    .line 239
    .line 240
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    invoke-static {p1}, Lcom/engagelab/privates/push/api/MTPushPrivatesApi;->init(Landroid/content/Context;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    const/16 v2, 0xbbb

    .line 255
    .line 256
    invoke-static {p1, v2, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToMainProcess(Landroid/content/Context;ILandroid/os/Bundle;)V
    :try_end_102
    .catchall {:try_start_5b .. :try_end_102} :catchall_88

    .line 257
    .line 258
    .line 259
    return-void

    .line 260
    :goto_103
    new-instance v0, Ljava/lang/StringBuilder;

    .line 261
    .line 262
    const-string v2, "processPlatformMessage failed "

    .line 263
    .line 264
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    invoke-static {p1, v0, v1}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-direct {p0, p1}, Lcom/engagelab/privates/common/component/MTCommonActivity;->processIntent(Landroid/content/Intent;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/engagelab/privates/common/component/MTCommonActivity;->processIntent(Landroid/content/Intent;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
