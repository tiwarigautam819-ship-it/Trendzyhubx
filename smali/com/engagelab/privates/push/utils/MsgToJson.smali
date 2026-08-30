###### Class com.engagelab.privates.push.utils.MsgToJson (com.engagelab.privates.push.utils.MsgToJson)
.class public Lcom/engagelab/privates/push/utils/MsgToJson;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static aliasMessageToJson(Lcom/engagelab/privates/push/api/AliasMessage;)Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "alias"

    .line 7
    .line 8
    :try_start_7
    invoke-virtual {p0}, Lcom/engagelab/privates/push/api/AliasMessage;->getAlias()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_e} :catch_21

    .line 13
    .line 14
    .line 15
    const-string v1, "code"

    .line 16
    .line 17
    :try_start_10
    invoke-virtual {p0}, Lcom/engagelab/privates/push/api/AliasMessage;->getCode()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_17} :catch_21

    .line 22
    .line 23
    .line 24
    const-string v1, "sequence"

    .line 25
    .line 26
    :try_start_19
    invoke-virtual {p0}, Lcom/engagelab/privates/push/api/AliasMessage;->getSequence()I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_20} :catch_21

    .line 31
    .line 32
    .line 33
    goto :goto_25

    .line 34
    :catch_21
    move-exception p0

    .line 35
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    .line 37
    .line 38
    :goto_25
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method

.method private static arrayToJson([Ljava/lang/String;)Lorg/json/JSONArray;
    .registers 5

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p0, :cond_13

    .line 7
    .line 8
    array-length v1, p0

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_9
    if-ge v2, v1, :cond_13

    .line 11
    .line 12
    aget-object v3, p0, v2

    .line 13
    .line 14
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 15
    .line 16
    .line 17
    add-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    goto :goto_9

    .line 20
    :cond_13
    return-object v0
.end method

.method public static booleanToJson(Z)Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_5
    const-string v1, "enable"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_a} :catch_b

    .line 9
    .line 10
    .line 11
    goto :goto_f

    .line 12
    :catch_b
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    .line 15
    .line 16
    :goto_f
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method private static bundleToJson(Landroid/os/Bundle;)Lorg/json/JSONObject;
    .registers 5

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p0, :cond_23

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_23

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    .line 34
    .line 35
    goto :goto_f

    .line 36
    :cond_23
    return-object v0
.end method

.method public static customMessageToJson(Lcom/engagelab/privates/push/api/CustomMessage;)Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "content"

    .line 7
    .line 8
    :try_start_7
    invoke-virtual {p0}, Lcom/engagelab/privates/push/api/CustomMessage;->getContent()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_e} :catch_49

    .line 13
    .line 14
    .line 15
    const-string v1, "contentType"

    .line 16
    .line 17
    :try_start_10
    invoke-virtual {p0}, Lcom/engagelab/privates/push/api/CustomMessage;->getContentType()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_17} :catch_49

    .line 22
    .line 23
    .line 24
    const-string v1, "messageId"

    .line 25
    .line 26
    :try_start_19
    invoke-virtual {p0}, Lcom/engagelab/privates/push/api/CustomMessage;->getMessageId()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_20} :catch_49

    .line 31
    .line 32
    .line 33
    const-string v1, "platform"

    .line 34
    .line 35
    :try_start_22
    invoke-virtual {p0}, Lcom/engagelab/privates/push/api/CustomMessage;->getPlatform()B

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_29} :catch_49

    .line 40
    .line 41
    .line 42
    const-string v1, "platformMessageId"

    .line 43
    .line 44
    :try_start_2b
    invoke-virtual {p0}, Lcom/engagelab/privates/push/api/CustomMessage;->getPlatformMessageId()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_2b .. :try_end_32} :catch_49

    .line 49
    .line 50
    .line 51
    const-string v1, "title"

    .line 52
    .line 53
    :try_start_34
    invoke-virtual {p0}, Lcom/engagelab/privates/push/api/CustomMessage;->getTitle()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/engagelab/privates/push/api/CustomMessage;->getExtras()Landroid/os/Bundle;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-static {p0}, Lcom/engagelab/privates/push/utils/MsgToJson;->bundleToJson(Landroid/os/Bundle;)Lorg/json/JSONObject;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    const-string v1, "extras"

    .line 69
    .line 70
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_48
    .catch Lorg/json/JSONException; {:try_start_34 .. :try_end_48} :catch_49

    .line 71
    .line 72
    .line 73
    goto :goto_4d

    .line 74
    :catch_49
    move-exception p0

    .line 75
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 76
    .line 77
    .line 78
    :goto_4d
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0
.end method

.method public static notificationMessageToJSONObject(Lcom/engagelab/privates/push/api/NotificationMessage;)Lorg/json/JSONObject;
    .registers 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "badge"

    .line 7
    .line 8
    :try_start_7
    invoke-virtual {p0}, Lcom/engagelab/privates/push/api/NotificationMessage;->getBadge()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_e} :catch_e6

    .line 13
    .line 14
    .line 15
    const-string v1, "bigPicture"

    .line 16
    .line 17
    :try_start_10
    invoke-virtual {p0}, Lcom/engagelab/privates/push/api/NotificationMessage;->getBigPicture()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_17} :catch_e6

    .line 22
    .line 23
    .line 24
    const-string v1, "bigText"

    .line 25
    .line 26
    :try_start_19
    invoke-virtual {p0}, Lcom/engagelab/privates/push/api/NotificationMessage;->getBigText()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_20} :catch_e6

    .line 31
    .line 32
    .line 33
    const-string v1, "builderId"

    .line 34
    .line 35
    :try_start_22
    invoke-virtual {p0}, Lcom/engagelab/privates/push/api/NotificationMessage;->getBuilderId()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_29} :catch_e6

    .line 40
    .line 41
    .line 42
    const-string v1, "category"

    .line 43
    .line 44
    :try_start_2b
    invoke-virtual {p0}, Lcom/engagelab/privates/push/api/NotificationMessage;->getCategory()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_2b .. :try_end_32} :catch_e6

    .line 49
    .line 50
    .line 51
    const-string v1, "channelId"

    .line 52
    .line 53
    :try_start_34
    invoke-virtual {p0}, Lcom/engagelab/privates/push/api/NotificationMessage;->getChannelId()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_34 .. :try_end_3b} :catch_e6

    .line 58
    .line 59
    .line 60
    const-string v1, "content"

    .line 61
    .line 62
    :try_start_3d
    invoke-virtual {p0}, Lcom/engagelab/privates/push/api/NotificationMessage;->getContent()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_44
    .catch Lorg/json/JSONException; {:try_start_3d .. :try_end_44} :catch_e6

    .line 67
    .line 68
    .line 69
    const-string v1, "defaults"

    .line 70
    .line 71
    :try_start_46
    invoke-virtual {p0}, Lcom/engagelab/privates/push/api/NotificationMessage;->getDefaults()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/engagelab/privates/push/api/NotificationMessage;->getExtras()Landroid/os/Bundle;

    .line 79
    .line 80
    .line 81
    move-result-object v1
    :try_end_51
    .catch Lorg/json/JSONException; {:try_start_46 .. :try_end_51} :catch_e6

    .line 82
    const-string v2, "extras"

    .line 83
    .line 84
    :try_start_53
    invoke-static {v1}, Lcom/engagelab/privates/push/utils/MsgToJson;->bundleToJson(Landroid/os/Bundle;)Lorg/json/JSONObject;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/engagelab/privates/push/api/NotificationMessage;->getInbox()[Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1
    :try_end_5e
    .catch Lorg/json/JSONException; {:try_start_53 .. :try_end_5e} :catch_e6

    .line 95
    const-string v2, "inbox"

    .line 96
    .line 97
    :try_start_60
    invoke-static {v1}, Lcom/engagelab/privates/push/utils/MsgToJson;->arrayToJson([Ljava/lang/String;)Lorg/json/JSONArray;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_67
    .catch Lorg/json/JSONException; {:try_start_60 .. :try_end_67} :catch_e6

    .line 102
    .line 103
    .line 104
    const-string v1, "intentSsl"

    .line 105
    .line 106
    :try_start_69
    invoke-virtual {p0}, Lcom/engagelab/privates/push/api/NotificationMessage;->getIntentSsl()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_70
    .catch Lorg/json/JSONException; {:try_start_69 .. :try_end_70} :catch_e6

    .line 111
    .line 112
    .line 113
    const-string v1, "intentUri"

    .line 114
    .line 115
    :try_start_72
    invoke-virtual {p0}, Lcom/engagelab/privates/push/api/NotificationMessage;->getIntentUri()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_79
    .catch Lorg/json/JSONException; {:try_start_72 .. :try_end_79} :catch_e6

    .line 120
    .line 121
    .line 122
    const-string v1, "largeIcon"

    .line 123
    .line 124
    :try_start_7b
    invoke-virtual {p0}, Lcom/engagelab/privates/push/api/NotificationMessage;->getLargeIcon()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_82
    .catch Lorg/json/JSONException; {:try_start_7b .. :try_end_82} :catch_e6

    .line 129
    .line 130
    .line 131
    const-string v1, "messageId"

    .line 132
    .line 133
    :try_start_84
    invoke-virtual {p0}, Lcom/engagelab/privates/push/api/NotificationMessage;->getMessageId()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8b
    .catch Lorg/json/JSONException; {:try_start_84 .. :try_end_8b} :catch_e6

    .line 138
    .line 139
    .line 140
    const-string v1, "notificationId"

    .line 141
    .line 142
    :try_start_8d
    invoke-virtual {p0}, Lcom/engagelab/privates/push/api/NotificationMessage;->getNotificationId()I

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_94
    .catch Lorg/json/JSONException; {:try_start_8d .. :try_end_94} :catch_e6

    .line 147
    .line 148
    .line 149
    const-string v1, "overrideMessageId"

    .line 150
    .line 151
    :try_start_96
    invoke-virtual {p0}, Lcom/engagelab/privates/push/api/NotificationMessage;->getOverrideMessageId()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9d
    .catch Lorg/json/JSONException; {:try_start_96 .. :try_end_9d} :catch_e6

    .line 156
    .line 157
    .line 158
    const-string v1, "platform"

    .line 159
    .line 160
    :try_start_9f
    invoke-virtual {p0}, Lcom/engagelab/privates/push/api/NotificationMessage;->getPlatform()B

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_a6
    .catch Lorg/json/JSONException; {:try_start_9f .. :try_end_a6} :catch_e6

    .line 165
    .line 166
    .line 167
    const-string v1, "platformMessageId"

    .line 168
    .line 169
    :try_start_a8
    invoke-virtual {p0}, Lcom/engagelab/privates/push/api/NotificationMessage;->getPlatformMessageId()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_af
    .catch Lorg/json/JSONException; {:try_start_a8 .. :try_end_af} :catch_e6

    .line 174
    .line 175
    .line 176
    const-string v1, "priority"

    .line 177
    .line 178
    :try_start_b1
    invoke-virtual {p0}, Lcom/engagelab/privates/push/api/NotificationMessage;->getPriority()I

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_b8
    .catch Lorg/json/JSONException; {:try_start_b1 .. :try_end_b8} :catch_e6

    .line 183
    .line 184
    .line 185
    const-string v1, "importance"

    .line 186
    .line 187
    :try_start_ba
    invoke-virtual {p0}, Lcom/engagelab/privates/push/api/NotificationMessage;->getImportance()I

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_c1
    .catch Lorg/json/JSONException; {:try_start_ba .. :try_end_c1} :catch_e6

    .line 192
    .line 193
    .line 194
    const-string v1, "smallIcon"

    .line 195
    .line 196
    :try_start_c3
    invoke-virtual {p0}, Lcom/engagelab/privates/push/api/NotificationMessage;->getSmallIcon()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_ca
    .catch Lorg/json/JSONException; {:try_start_c3 .. :try_end_ca} :catch_e6

    .line 201
    .line 202
    .line 203
    const-string v1, "sound"

    .line 204
    .line 205
    :try_start_cc
    invoke-virtual {p0}, Lcom/engagelab/privates/push/api/NotificationMessage;->getSound()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_d3
    .catch Lorg/json/JSONException; {:try_start_cc .. :try_end_d3} :catch_e6

    .line 210
    .line 211
    .line 212
    const-string v1, "style"

    .line 213
    .line 214
    :try_start_d5
    invoke-virtual {p0}, Lcom/engagelab/privates/push/api/NotificationMessage;->getStyle()I

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_dc
    .catch Lorg/json/JSONException; {:try_start_d5 .. :try_end_dc} :catch_e6

    .line 219
    .line 220
    .line 221
    const-string v1, "title"

    .line 222
    .line 223
    :try_start_de
    invoke-virtual {p0}, Lcom/engagelab/privates/push/api/NotificationMessage;->getTitle()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p0

    .line 227
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e5
    .catch Lorg/json/JSONException; {:try_start_de .. :try_end_e5} :catch_e6

    .line 228
    .line 229
    .line 230
    return-object v0

    .line 231
    :catch_e6
    move-exception p0

    .line 232
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 233
    .line 234
    .line 235
    return-object v0
.end method

.method public static notificationMessageToJson(Lcom/engagelab/privates/push/api/NotificationMessage;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/engagelab/privates/push/utils/MsgToJson;->notificationMessageToJSONObject(Lcom/engagelab/privates/push/api/NotificationMessage;)Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static platformTokenMessageToJson(Lcom/engagelab/privates/push/api/PlatformTokenMessage;)Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "platform"

    .line 7
    .line 8
    :try_start_7
    invoke-virtual {p0}, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->getPlatform()B

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_e} :catch_18

    .line 13
    .line 14
    .line 15
    const-string v1, "token"

    .line 16
    .line 17
    :try_start_10
    invoke-virtual {p0}, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->getToken()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_17} :catch_18

    .line 22
    .line 23
    .line 24
    goto :goto_1c

    .line 25
    :catch_18
    move-exception p0

    .line 26
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    .line 28
    .line 29
    :goto_1c
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method public static tagMessageToJson(Lcom/engagelab/privates/push/api/TagMessage;)Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "code"

    .line 7
    .line 8
    :try_start_7
    invoke-virtual {p0}, Lcom/engagelab/privates/push/api/TagMessage;->getCode()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_e} :catch_2e

    .line 13
    .line 14
    .line 15
    const-string v1, "queryTag"

    .line 16
    .line 17
    :try_start_10
    invoke-virtual {p0}, Lcom/engagelab/privates/push/api/TagMessage;->getQueryTag()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_17} :catch_2e

    .line 22
    .line 23
    .line 24
    const-string v1, "sequence"

    .line 25
    .line 26
    :try_start_19
    invoke-virtual {p0}, Lcom/engagelab/privates/push/api/TagMessage;->getSequence()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/engagelab/privates/push/api/TagMessage;->getTags()[Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {p0}, Lcom/engagelab/privates/push/utils/MsgToJson;->arrayToJson([Ljava/lang/String;)Lorg/json/JSONArray;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const-string v1, "tags"

    .line 42
    .line 43
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_2d} :catch_2e

    .line 44
    .line 45
    .line 46
    goto :goto_32

    .line 47
    :catch_2e
    move-exception p0

    .line 48
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 49
    .line 50
    .line 51
    :goto_32
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0
.end method
