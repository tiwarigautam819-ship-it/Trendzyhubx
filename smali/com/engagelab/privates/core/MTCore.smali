###### Class com.engagelab.privates.core.MTCore (com.engagelab.privates.core.MTCore)
.class public Lcom/engagelab/privates/core/MTCore;
.super Lcom/engagelab/privates/common/observer/MTObserver;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/engagelab/privates/common/constants/MTCommonConstants;->getLogTag()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "CORE"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lcom/engagelab/privates/core/MTCore;->a:Ljava/lang/String;

    .line 23
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/engagelab/privates/common/constants/MTCommonConstants;->getLogTag()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, "REPORT"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lcom/engagelab/privates/core/MTCore;->b:Ljava/lang/String;

    .line 46
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-static {}, Lcom/engagelab/privates/common/constants/MTCommonConstants;->getLogTag()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v1, "CONNECT"

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    sput-object v0, Lcom/engagelab/privates/core/MTCore;->c:Ljava/lang/String;

    .line 69
    .line 70
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/engagelab/privates/common/observer/MTObserver;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 9

    .line 1
    const/16 v0, 0x7d1

    .line 2
    .line 3
    if-eq p2, v0, :cond_4b

    .line 4
    .line 5
    const/16 v0, 0x7d2

    .line 6
    .line 7
    if-eq p2, v0, :cond_43

    .line 8
    .line 9
    const/16 v0, 0x8b9

    .line 10
    .line 11
    if-eq p2, v0, :cond_3d

    .line 12
    .line 13
    const/16 v0, 0xbb1

    .line 14
    .line 15
    if-eq p2, v0, :cond_34

    .line 16
    .line 17
    const/16 v0, 0xbb2

    .line 18
    .line 19
    const-wide/16 v1, 0x2710

    .line 20
    .line 21
    if-eq p2, v0, :cond_25

    .line 22
    .line 23
    sget-object v0, Lcom/engagelab/privates/core/MTCore;->a:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {}, Lcom/engagelab/privates/core/global/MTCoreGlobal;->getHeartbeatInterval()J

    .line 26
    .line 27
    .line 28
    move-result-wide v3

    .line 29
    add-long/2addr v3, v1

    .line 30
    long-to-int v1, v3

    .line 31
    invoke-static {p1, v0, v1}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->buildHandler(Landroid/content/Context;Ljava/lang/String;I)V

    .line 32
    .line 33
    .line 34
    invoke-static {p1, v0, p2, p3}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessage(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_25
    sget-object v0, Lcom/engagelab/privates/core/MTCore;->c:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {}, Lcom/engagelab/privates/core/global/MTCoreGlobal;->getHeartbeatInterval()J

    .line 41
    .line 42
    .line 43
    move-result-wide v3

    .line 44
    add-long/2addr v3, v1

    .line 45
    long-to-int v1, v3

    .line 46
    invoke-static {p1, v0, v1}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->buildHandler(Landroid/content/Context;Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    invoke-static {p1, v0, p2, p3}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessage(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_34
    sget-object v0, Lcom/engagelab/privates/core/MTCore;->c:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {p1, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->releaseHandler(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-static {p1, v0, p2, p3}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessage(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_3d
    sget-object v0, Lcom/engagelab/privates/core/MTCore;->b:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {p1, v0, p2, p3}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessage(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_43
    invoke-static {}, Lcom/engagelab/privates/common/d;->a()Lcom/engagelab/privates/common/d;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-virtual {p2, p1}, Lcom/engagelab/privates/common/d;->c(Landroid/content/Context;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_4b
    invoke-static {}, Lcom/engagelab/privates/common/d;->a()Lcom/engagelab/privates/common/d;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-virtual {p2, p1}, Lcom/engagelab/privates/common/d;->b(Landroid/content/Context;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public getSdkFlag()S
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public getSdkName()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "core_sdk_ver"

    .line 2
    .line 3
    return-object v0
.end method

.method public getSdkPriority()I
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "5.3.0"

    .line 2
    .line 3
    return-object v0
.end method

.method public getThreadName()[Ljava/lang/String;
    .registers 4

    .line 1
    sget-object v0, Lcom/engagelab/privates/core/MTCore;->a:Ljava/lang/String;

    .line 2
    .line 3
    sget-object v1, Lcom/engagelab/privates/core/MTCore;->b:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/engagelab/privates/core/MTCore;->c:Ljava/lang/String;

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public handleDelayMessage(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4

    .line 1
    const/4 p3, 0x2

    .line 2
    if-eq p2, p3, :cond_1b

    .line 3
    .line 4
    const/16 p3, 0xbae

    .line 5
    .line 6
    if-eq p2, p3, :cond_14

    .line 7
    .line 8
    const/16 p3, 0xbb0

    .line 9
    .line 10
    if-eq p2, p3, :cond_c

    .line 11
    .line 12
    return-void

    .line 13
    :cond_c
    invoke-static {}, Lcom/engagelab/privates/common/d;->a()Lcom/engagelab/privates/common/d;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p2, p1}, Lcom/engagelab/privates/common/d;->e(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_14
    const/16 p2, 0xbb2

    .line 22
    .line 23
    const/4 p3, 0x0

    .line 24
    invoke-static {p1, p2, p3}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1b
    invoke-static {}, Lcom/engagelab/privates/common/d;->a()Lcom/engagelab/privates/common/d;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p2, p1}, Lcom/engagelab/privates/common/d;->a(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public handleMessage(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 6

    .line 1
    const/16 v0, 0x13

    .line 2
    .line 3
    if-eq p2, v0, :cond_c0

    .line 4
    .line 5
    const/16 v0, 0x19

    .line 6
    .line 7
    if-eq p2, v0, :cond_b8

    .line 8
    .line 9
    const/16 v0, 0x7c7

    .line 10
    .line 11
    if-eq p2, v0, :cond_b4

    .line 12
    .line 13
    const/16 v0, 0x7cf

    .line 14
    .line 15
    if-eq p2, v0, :cond_a5

    .line 16
    .line 17
    const/16 v0, 0x8ae

    .line 18
    .line 19
    if-eq p2, v0, :cond_9d

    .line 20
    .line 21
    const/16 v0, 0x835

    .line 22
    .line 23
    if-eq p2, v0, :cond_95

    .line 24
    .line 25
    const/16 v0, 0x836

    .line 26
    .line 27
    if-eq p2, v0, :cond_8d

    .line 28
    .line 29
    const/16 v0, 0xbb6

    .line 30
    .line 31
    if-eq p2, v0, :cond_85

    .line 32
    .line 33
    const/16 v0, 0xbb7

    .line 34
    .line 35
    if-eq p2, v0, :cond_7d

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    const/16 v1, 0xbb2

    .line 39
    .line 40
    packed-switch p2, :pswitch_data_c8

    .line 41
    .line 42
    .line 43
    packed-switch p2, :pswitch_data_d2

    .line 44
    .line 45
    .line 46
    packed-switch p2, :pswitch_data_dc

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :pswitch_31
    invoke-static {}, Lcom/engagelab/privates/common/d;->a()Lcom/engagelab/privates/common/d;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-virtual {p2, p1}, Lcom/engagelab/privates/common/d;->i(Landroid/content/Context;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :pswitch_39
    invoke-static {}, Lcom/engagelab/privates/common/d;->a()Lcom/engagelab/privates/common/d;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-virtual {p2, p1}, Lcom/engagelab/privates/common/d;->h(Landroid/content/Context;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :pswitch_41
    invoke-static {}, Lcom/engagelab/privates/common/d;->a()Lcom/engagelab/privates/common/d;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p2, p1}, Lcom/engagelab/privates/common/d;->d(Landroid/content/Context;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :pswitch_49
    invoke-static {}, Lcom/engagelab/privates/common/d;->a()Lcom/engagelab/privates/common/d;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-virtual {p2, p1, p3}, Lcom/engagelab/privates/common/d;->c(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :pswitch_51
    invoke-static {p1, v1, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :pswitch_55
    invoke-static {p1, p3}, Lcom/engagelab/privates/common/n;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :pswitch_59
    invoke-static {}, Lcom/engagelab/privates/common/c;->a()Lcom/engagelab/privates/common/c;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-virtual {p2, p1, p3}, Lcom/engagelab/privates/common/c;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :pswitch_61
    invoke-static {}, Lcom/engagelab/privates/common/p;->a()Lcom/engagelab/privates/common/p;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    invoke-virtual {p2, p1, p3}, Lcom/engagelab/privates/common/p;->b(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :pswitch_69
    invoke-static {}, Lcom/engagelab/privates/common/b;->a()Lcom/engagelab/privates/common/b;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    invoke-virtual {p2, p1}, Lcom/engagelab/privates/common/b;->b(Landroid/content/Context;)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :pswitch_71
    invoke-static {}, Lcom/engagelab/privates/common/b;->a()Lcom/engagelab/privates/common/b;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    invoke-virtual {p2, p1}, Lcom/engagelab/privates/common/b;->a(Landroid/content/Context;)V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :pswitch_79
    invoke-static {p1, v1, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :cond_7d
    :pswitch_7d
    invoke-static {}, Lcom/engagelab/privates/common/d;->a()Lcom/engagelab/privates/common/d;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    invoke-virtual {p2, p1}, Lcom/engagelab/privates/common/d;->e(Landroid/content/Context;)V

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :cond_85
    :pswitch_85
    invoke-static {}, Lcom/engagelab/privates/common/d;->a()Lcom/engagelab/privates/common/d;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    invoke-virtual {p2, p1}, Lcom/engagelab/privates/common/d;->g(Landroid/content/Context;)V

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :cond_8d
    invoke-static {}, Lcom/engagelab/privates/common/a;->a()Lcom/engagelab/privates/common/a;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    invoke-virtual {p2, p1, p3}, Lcom/engagelab/privates/common/a;->b(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :cond_95
    invoke-static {}, Lcom/engagelab/privates/common/a;->a()Lcom/engagelab/privates/common/a;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    invoke-virtual {p2, p1, p3}, Lcom/engagelab/privates/common/a;->c(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :cond_9d
    invoke-static {}, Lcom/engagelab/privates/common/d;->a()Lcom/engagelab/privates/common/d;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    invoke-virtual {p2, p1, p3}, Lcom/engagelab/privates/common/d;->b(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 163
    .line 164
    .line 165
    return-void

    .line 166
    :cond_a5
    invoke-static {}, Lcom/engagelab/privates/common/a;->a()Lcom/engagelab/privates/common/a;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    invoke-virtual {p2, p1}, Lcom/engagelab/privates/common/a;->b(Landroid/content/Context;)V

    .line 171
    .line 172
    .line 173
    invoke-static {}, Lcom/engagelab/privates/common/a;->a()Lcom/engagelab/privates/common/a;

    .line 174
    .line 175
    .line 176
    move-result-object p2

    .line 177
    invoke-virtual {p2, p1}, Lcom/engagelab/privates/common/a;->a(Landroid/content/Context;)V

    .line 178
    .line 179
    .line 180
    return-void

    .line 181
    :cond_b4
    invoke-static {p1, p3}, Lcom/engagelab/privates/common/n;->b(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 182
    .line 183
    .line 184
    return-void

    .line 185
    :cond_b8
    invoke-static {}, Lcom/engagelab/privates/common/a;->a()Lcom/engagelab/privates/common/a;

    .line 186
    .line 187
    .line 188
    move-result-object p2

    .line 189
    invoke-virtual {p2, p1, p3}, Lcom/engagelab/privates/common/a;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 190
    .line 191
    .line 192
    return-void

    .line 193
    :cond_c0
    invoke-static {}, Lcom/engagelab/privates/common/d;->a()Lcom/engagelab/privates/common/d;

    .line 194
    .line 195
    .line 196
    move-result-object p2

    .line 197
    invoke-virtual {p2, p1, p3}, Lcom/engagelab/privates/common/d;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 198
    .line 199
    .line 200
    return-void

    .line 201
    :pswitch_data_c8
    .packed-switch 0x7c9
        :pswitch_79
        :pswitch_71
        :pswitch_69
    .end packed-switch

    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    :pswitch_data_d2
    .packed-switch 0x8b9
        :pswitch_61
        :pswitch_59
        :pswitch_55
    .end packed-switch

    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    :pswitch_data_dc
    .packed-switch 0xbae
        :pswitch_51
        :pswitch_85
        :pswitch_7d
        :pswitch_49
        :pswitch_41
        :pswitch_39
        :pswitch_31
    .end packed-switch
.end method

.method public isSdk()Z
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public isSupport(I)Z
    .registers 3

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p1, v0, :cond_3e

    .line 3
    .line 4
    const/16 v0, 0x13

    .line 5
    .line 6
    if-eq p1, v0, :cond_3e

    .line 7
    .line 8
    const/16 v0, 0x19

    .line 9
    .line 10
    if-eq p1, v0, :cond_3e

    .line 11
    .line 12
    const/16 v0, 0x7c7

    .line 13
    .line 14
    if-eq p1, v0, :cond_3e

    .line 15
    .line 16
    const/16 v0, 0x8ae

    .line 17
    .line 18
    if-eq p1, v0, :cond_3e

    .line 19
    .line 20
    const/16 v0, 0x7ce

    .line 21
    .line 22
    if-eq p1, v0, :cond_3e

    .line 23
    .line 24
    const/16 v0, 0x7cf

    .line 25
    .line 26
    if-eq p1, v0, :cond_3e

    .line 27
    .line 28
    const/16 v0, 0x7d1

    .line 29
    .line 30
    if-eq p1, v0, :cond_3e

    .line 31
    .line 32
    const/16 v0, 0x7d2

    .line 33
    .line 34
    if-eq p1, v0, :cond_3e

    .line 35
    .line 36
    const/16 v0, 0x835

    .line 37
    .line 38
    if-eq p1, v0, :cond_3e

    .line 39
    .line 40
    const/16 v0, 0x836

    .line 41
    .line 42
    if-eq p1, v0, :cond_3e

    .line 43
    .line 44
    const/16 v0, 0xbb6

    .line 45
    .line 46
    if-eq p1, v0, :cond_3e

    .line 47
    .line 48
    const/16 v0, 0xbb7

    .line 49
    .line 50
    if-eq p1, v0, :cond_3e

    .line 51
    .line 52
    packed-switch p1, :pswitch_data_40

    .line 53
    .line 54
    .line 55
    packed-switch p1, :pswitch_data_4a

    .line 56
    .line 57
    .line 58
    packed-switch p1, :pswitch_data_54

    .line 59
    .line 60
    .line 61
    const/4 p1, 0x0

    .line 62
    return p1

    .line 63
    :cond_3e
    :pswitch_3e
    const/4 p1, 0x1

    .line 64
    return p1

    .line 65
    :pswitch_data_40
    .packed-switch 0x7c9
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
    .end packed-switch

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    :pswitch_data_4a
    .packed-switch 0x8b9
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
    .end packed-switch

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    :pswitch_data_54
    .packed-switch 0xbae
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
    .end packed-switch
.end method
