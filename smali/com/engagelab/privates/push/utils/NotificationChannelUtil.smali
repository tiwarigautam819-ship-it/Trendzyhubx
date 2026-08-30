###### Class com.engagelab.privates.push.utils.NotificationChannelUtil (com.engagelab.privates.push.utils.NotificationChannelUtil)
.class public Lcom/engagelab/privates/push/utils/NotificationChannelUtil;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field private static final CHANNEL_DEFAULT:Ljava/lang/String; = "ENGAGELAB_PRIVATES_CHANNEL_normal"

.field private static final CHANNEL_HIGH:Ljava/lang/String; = "ENGAGELAB_PRIVATES_CHANNEL_high"

.field private static final CHANNEL_LOW:Ljava/lang/String; = "ENGAGELAB_PRIVATES_CHANNEL_low"

.field private static final CHANNEL_SILENCE:Ljava/lang/String; = "ENGAGELAB_PRIVATES_CHANNEL_silence"

.field private static final TAG:Ljava/lang/String; = "NotificationChannelUtil"


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

.method public static getChannel(Landroid/content/Context;ZLcom/engagelab/privates/push/api/NotificationMessage;)Ljava/lang/String;
    .registers 11

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-ge v0, v1, :cond_8

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_8
    invoke-static {p0, p1, p2}, Lcom/engagelab/privates/push/utils/NotificationChannelUtil;->getChannelId(Landroid/content/Context;ZLcom/engagelab/privates/push/api/NotificationMessage;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "notification"

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroid/app/NotificationManager;

    .line 20
    .line 21
    invoke-static {v1, v0}, Lr1/a;->d(Landroid/app/NotificationManager;Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {p0, p1, p2}, Lcom/engagelab/privates/push/utils/NotificationChannelUtil;->getChannelImportance(Landroid/content/Context;ZLcom/engagelab/privates/push/api/NotificationMessage;)I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const-string v4, "NotificationChannelUtil"

    .line 30
    .line 31
    if-eqz v2, :cond_53

    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/NotificationMessage;->getImportance()I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    const/4 p1, -0x1

    .line 38
    const-string p2, "has channelId:"

    .line 39
    .line 40
    if-eq p1, p0, :cond_43

    .line 41
    .line 42
    invoke-static {v2, v3}, Lr1/a;->l(Landroid/app/NotificationChannel;I)V

    .line 43
    .line 44
    .line 45
    new-instance p0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p1, " and set channelImportance:"

    .line 54
    .line 55
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-static {v4, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_43
    new-instance p0, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-static {v4, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-object v0

    .line 84
    :cond_53
    invoke-static {p0, p1, p2}, Lcom/engagelab/privates/push/utils/NotificationChannelUtil;->getChannelName(Landroid/content/Context;ZLcom/engagelab/privates/push/api/NotificationMessage;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-static {v3, v0, v2}, Lr1/a;->b(ILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    invoke-static {p0, p1, p2}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getSoundUri(Landroid/content/Context;ZLcom/engagelab/privates/push/api/NotificationMessage;)Landroid/net/Uri;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    invoke-static {p0, p1, p2}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getDefaults(Landroid/content/Context;ZLcom/engagelab/privates/push/api/NotificationMessage;)I

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    invoke-static {p0, p1, p2}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getVisibility(Landroid/content/Context;ZLcom/engagelab/privates/push/api/NotificationMessage;)I

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    invoke-static {v5, p0}, Lr1/a;->q(Landroid/app/NotificationChannel;I)V

    .line 105
    .line 106
    .line 107
    if-eqz v6, :cond_72

    .line 108
    .line 109
    :try_start_6c
    invoke-static {v5, v6}, Lr1/a;->m(Landroid/app/NotificationChannel;Landroid/net/Uri;)V

    .line 110
    .line 111
    .line 112
    goto :goto_8c

    .line 113
    :catchall_70
    move-exception p0

    .line 114
    goto :goto_7b

    .line 115
    :cond_72
    and-int/lit8 p0, v7, 0x1

    .line 116
    .line 117
    if-eqz p0, :cond_77

    .line 118
    .line 119
    goto :goto_8c

    .line 120
    :cond_77
    invoke-static {v5}, Lr1/a;->k(Landroid/app/NotificationChannel;)V
    :try_end_7a
    .catchall {:try_start_6c .. :try_end_7a} :catchall_70

    .line 121
    .line 122
    .line 123
    goto :goto_8c

    .line 124
    :goto_7b
    new-instance p1, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    const-string p2, "setSound fail:"

    .line 127
    .line 128
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-static {v4, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    :goto_8c
    and-int/lit8 p0, v7, 0x4

    .line 142
    .line 143
    const/4 p1, 0x0

    .line 144
    const/4 p2, 0x1

    .line 145
    if-eqz p0, :cond_94

    .line 146
    .line 147
    move p0, p2

    .line 148
    goto :goto_95

    .line 149
    :cond_94
    move p0, p1

    .line 150
    :goto_95
    invoke-static {v5, p0}, Lr1/a;->o(Landroid/app/NotificationChannel;Z)V

    .line 151
    .line 152
    .line 153
    and-int/lit8 p0, v7, 0x2

    .line 154
    .line 155
    if-eqz p0, :cond_9d

    .line 156
    .line 157
    move p1, p2

    .line 158
    :cond_9d
    invoke-static {v5, p1}, Lr1/a;->r(Landroid/app/NotificationChannel;Z)V

    .line 159
    .line 160
    .line 161
    invoke-static {v1, v5}, Lcom/getcapacitor/plugin/util/a;->u(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 162
    .line 163
    .line 164
    new-instance p0, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    const-string p1, "build channel channelId:"

    .line 167
    .line 168
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    const-string p1, ", channelName:"

    .line 175
    .line 176
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string p1, ", channelImportance:"

    .line 183
    .line 184
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    invoke-static {v4, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    return-object v0
.end method

.method private static getChannelId(Landroid/content/Context;ZLcom/engagelab/privates/push/api/NotificationMessage;)Ljava/lang/String;
    .registers 4

    .line 1
    if-eqz p1, :cond_15

    .line 2
    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string p1, "N_ENGAGELAB_PRIVATES_CHANNEL_silence_"

    .line 6
    .line 7
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/NotificationMessage;->getPriority()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_15
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/NotificationMessage;->getChannelId()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-nez p0, :cond_24

    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/NotificationMessage;->getChannelId()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :cond_24
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/NotificationMessage;->getPriority()I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    const/4 p1, -0x2

    .line 42
    if-eq p0, p1, :cond_ce

    .line 43
    .line 44
    const/4 p1, -0x1

    .line 45
    if-eq p0, p1, :cond_ce

    .line 46
    .line 47
    const/4 p1, 0x1

    .line 48
    const-string v0, "_"

    .line 49
    .line 50
    if-eq p0, p1, :cond_82

    .line 51
    .line 52
    const/4 p1, 0x2

    .line 53
    if-eq p0, p1, :cond_82

    .line 54
    .line 55
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/NotificationMessage;->getSound()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    const-string p1, "N_ENGAGELAB_PRIVATES_CHANNEL_normal_"

    .line 64
    .line 65
    if-eqz p0, :cond_5d

    .line 66
    .line 67
    new-instance p0, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/NotificationMessage;->getPriority()I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/NotificationMessage;->getDefaults()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    return-object p0

    .line 94
    :cond_5d
    new-instance p0, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/NotificationMessage;->getPriority()I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/NotificationMessage;->getDefaults()I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/NotificationMessage;->getSound()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    return-object p0

    .line 131
    :cond_82
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/NotificationMessage;->getSound()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 136
    .line 137
    .line 138
    move-result p0

    .line 139
    const-string p1, "N_ENGAGELAB_PRIVATES_CHANNEL_high_"

    .line 140
    .line 141
    if-eqz p0, :cond_a9

    .line 142
    .line 143
    new-instance p0, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/NotificationMessage;->getPriority()I

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/NotificationMessage;->getDefaults()I

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    return-object p0

    .line 170
    :cond_a9
    new-instance p0, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/NotificationMessage;->getPriority()I

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/NotificationMessage;->getDefaults()I

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/NotificationMessage;->getSound()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    return-object p0

    .line 207
    :cond_ce
    new-instance p0, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    const-string p1, "N_ENGAGELAB_PRIVATES_CHANNEL_low_"

    .line 210
    .line 211
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/NotificationMessage;->getPriority()I

    .line 215
    .line 216
    .line 217
    move-result p1

    .line 218
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    return-object p0
.end method

.method private static getChannelImportance(Landroid/content/Context;ZLcom/engagelab/privates/push/api/NotificationMessage;)I
    .registers 3

    .line 1
    if-eqz p1, :cond_d

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/NotificationMessage;->getPriority()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/4 p1, -0x2

    .line 8
    if-eq p0, p1, :cond_b

    .line 9
    .line 10
    const/4 p0, 0x2

    .line 11
    return p0

    .line 12
    :cond_b
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_d
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/NotificationMessage;->getPriority()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    invoke-static {p0}, Lcom/engagelab/privates/push/utils/NotificationChannelUtil;->getImportance(I)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0
.end method

.method private static getChannelName(Landroid/content/Context;ZLcom/engagelab/privates/push/api/NotificationMessage;)Ljava/lang/String;
    .registers 5

    .line 1
    const-string v0, "string"

    .line 2
    .line 3
    if-eqz p1, :cond_1c

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    const-string v1, "ENGAGELAB_PRIVATES_CHANNEL_silence"

    .line 14
    .line 15
    invoke-virtual {p1, v1, v0, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-lez p1, :cond_19

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :cond_19
    const-string p0, "SILENCE"

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_1c
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/NotificationMessage;->getPriority()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const/4 p2, -0x2

    .line 34
    if-eq p1, p2, :cond_32

    .line 35
    .line 36
    const/4 p2, -0x1

    .line 37
    if-eq p1, p2, :cond_32

    .line 38
    .line 39
    const/4 p2, 0x1

    .line 40
    if-eq p1, p2, :cond_2f

    .line 41
    .line 42
    const/4 p2, 0x2

    .line 43
    if-eq p1, p2, :cond_2f

    .line 44
    .line 45
    const-string p1, "ENGAGELAB_PRIVATES_CHANNEL_normal"

    .line 46
    .line 47
    goto :goto_34

    .line 48
    :cond_2f
    const-string p1, "ENGAGELAB_PRIVATES_CHANNEL_high"

    .line 49
    .line 50
    goto :goto_34

    .line 51
    :cond_32
    const-string p1, "ENGAGELAB_PRIVATES_CHANNEL_low"

    .line 52
    .line 53
    :goto_34
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {p2, p1, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-lez p1, :cond_47

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    return-object p0

    .line 72
    :cond_47
    const-string p0, "NORMAL"

    .line 73
    .line 74
    return-object p0
.end method

.method private static getImportance(I)I
    .registers 4

    .line 1
    const/4 v0, -0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eq p0, v0, :cond_13

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    const/4 v2, 0x2

    .line 7
    if-eq p0, v0, :cond_12

    .line 8
    .line 9
    if-eq p0, v1, :cond_10

    .line 10
    .line 11
    if-eq p0, v2, :cond_e

    .line 12
    .line 13
    const/4 p0, 0x3

    .line 14
    return p0

    .line 15
    :cond_e
    const/4 p0, 0x5

    .line 16
    return p0

    .line 17
    :cond_10
    const/4 p0, 0x4

    .line 18
    return p0

    .line 19
    :cond_12
    return v2

    .line 20
    :cond_13
    return v1
.end method
