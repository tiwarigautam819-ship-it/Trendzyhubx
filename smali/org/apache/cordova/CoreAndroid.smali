###### Class org.apache.cordova.CoreAndroid (org.apache.cordova.CoreAndroid)
.class public Lorg/apache/cordova/CoreAndroid;
.super Lorg/apache/cordova/o;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final PLUGIN_NAME:Ljava/lang/String; = "CoreAndroid"


# instance fields
.field public b:Lq2/d;

.field public c:Lorg/apache/cordova/d;

.field public d:Lorg/apache/cordova/m0;

.field public e:Lorg/apache/cordova/m0;

.field public final f:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/apache/cordova/CoreAndroid;->f:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method

.method public static getBuildConfigValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p0, ".BuildConfig"

    .line 23
    .line 24
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0
    :try_end_2a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_2a} :catch_2f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_2a} :catch_3c
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_2a} :catch_2d
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_2a} :catch_2b

    .line 43
    return-object p0

    .line 44
    :catch_2b
    move-exception p0

    .line 45
    goto :goto_31

    .line 46
    :catch_2d
    move-exception p0

    .line 47
    goto :goto_35

    .line 48
    :catch_2f
    move-exception p0

    .line 49
    goto :goto_39

    .line 50
    :goto_31
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    .line 52
    .line 53
    goto :goto_3c

    .line 54
    :goto_35
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 55
    .line 56
    .line 57
    goto :goto_3c

    .line 58
    :goto_39
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    .line 60
    .line 61
    :catch_3c
    :goto_3c
    return-object v0
.end method


# virtual methods
.method public backHistory()V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/o;->cordova:Lorg/apache/cordova/m;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/apache/cordova/m;->getActivity()Lg/m;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lorg/apache/cordova/b0;

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    invoke-direct {v1, p0, v2}, Lorg/apache/cordova/b0;-><init>(Lorg/apache/cordova/CoreAndroid;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public clearCache()V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/o;->cordova:Lorg/apache/cordova/m;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/apache/cordova/m;->getActivity()Lg/m;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lorg/apache/cordova/b0;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-direct {v1, p0, v2}, Lorg/apache/cordova/b0;-><init>(Lorg/apache/cordova/CoreAndroid;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public clearHistory()V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/o;->cordova:Lorg/apache/cordova/m;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/apache/cordova/m;->getActivity()Lg/m;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lorg/apache/cordova/b0;

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-direct {v1, p0, v2}, Lorg/apache/cordova/b0;-><init>(Lorg/apache/cordova/CoreAndroid;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/d;)Z
    .registers 8

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_3
    const-string v2, "clearCache"

    .line 5
    .line 6
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/4 v3, 0x1

    .line 11
    if-eqz v2, :cond_11

    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/apache/cordova/CoreAndroid;->clearCache()V

    .line 14
    .line 15
    .line 16
    goto/16 :goto_c3

    .line 17
    .line 18
    :cond_11
    const-string v2, "show"

    .line 19
    .line 20
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_2a

    .line 25
    .line 26
    iget-object p1, p0, Lorg/apache/cordova/o;->cordova:Lorg/apache/cordova/m;

    .line 27
    .line 28
    invoke-interface {p1}, Lorg/apache/cordova/m;->getActivity()Lg/m;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    new-instance p2, Lorg/apache/cordova/b0;

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-direct {p2, p0, v2}, Lorg/apache/cordova/b0;-><init>(Lorg/apache/cordova/CoreAndroid;I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_c3

    .line 42
    .line 43
    :cond_2a
    const-string v2, "loadUrl"

    .line 44
    .line 45
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_3f

    .line 50
    .line 51
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {p0, p1, p2}, Lorg/apache/cordova/CoreAndroid;->loadUrl(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 60
    .line 61
    .line 62
    goto/16 :goto_c3

    .line 63
    .line 64
    :cond_3f
    const-string v2, "cancelLoadUrl"

    .line 65
    .line 66
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_49

    .line 71
    .line 72
    goto/16 :goto_c3

    .line 73
    .line 74
    :cond_49
    const-string v2, "clearHistory"

    .line 75
    .line 76
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_56

    .line 81
    .line 82
    invoke-virtual {p0}, Lorg/apache/cordova/CoreAndroid;->clearHistory()V

    .line 83
    .line 84
    .line 85
    goto/16 :goto_c3

    .line 86
    .line 87
    :cond_56
    const-string v2, "backHistory"

    .line 88
    .line 89
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_62

    .line 94
    .line 95
    invoke-virtual {p0}, Lorg/apache/cordova/CoreAndroid;->backHistory()V

    .line 96
    .line 97
    .line 98
    goto :goto_c3

    .line 99
    :cond_62
    const-string v2, "overrideButton"

    .line 100
    .line 101
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_76

    .line 106
    .line 107
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getBoolean(I)Z

    .line 112
    .line 113
    .line 114
    move-result p2

    .line 115
    invoke-virtual {p0, p1, p2}, Lorg/apache/cordova/CoreAndroid;->overrideButton(Ljava/lang/String;Z)V

    .line 116
    .line 117
    .line 118
    goto :goto_c3

    .line 119
    :cond_76
    const-string v2, "overrideBackbutton"

    .line 120
    .line 121
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-eqz v2, :cond_86

    .line 126
    .line 127
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getBoolean(I)Z

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    invoke-virtual {p0, p1}, Lorg/apache/cordova/CoreAndroid;->overrideBackbutton(Z)V

    .line 132
    .line 133
    .line 134
    goto :goto_c3

    .line 135
    :cond_86
    const-string p2, "exitApp"

    .line 136
    .line 137
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result p2

    .line 141
    if-eqz p2, :cond_92

    .line 142
    .line 143
    invoke-virtual {p0}, Lorg/apache/cordova/CoreAndroid;->exitApp()V

    .line 144
    .line 145
    .line 146
    goto :goto_c3

    .line 147
    :cond_92
    const-string p2, "messageChannel"

    .line 148
    .line 149
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    if-eqz p1, :cond_c3

    .line 154
    .line 155
    iget-object p1, p0, Lorg/apache/cordova/CoreAndroid;->f:Ljava/lang/Object;

    .line 156
    .line 157
    monitor-enter p1
    :try_end_9d
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_9d} :catch_cd

    .line 158
    :try_start_9d
    iput-object p3, p0, Lorg/apache/cordova/CoreAndroid;->c:Lorg/apache/cordova/d;

    .line 159
    .line 160
    iget-object p2, p0, Lorg/apache/cordova/CoreAndroid;->e:Lorg/apache/cordova/m0;

    .line 161
    .line 162
    const/4 v0, 0x0

    .line 163
    if-eqz p2, :cond_b0

    .line 164
    .line 165
    iput-boolean v3, p2, Lorg/apache/cordova/m0;->c:Z

    .line 166
    .line 167
    if-eqz p3, :cond_ab

    .line 168
    .line 169
    invoke-virtual {p3, p2}, Lorg/apache/cordova/d;->sendPluginResult(Lorg/apache/cordova/m0;)V

    .line 170
    .line 171
    .line 172
    :cond_ab
    iput-object v0, p0, Lorg/apache/cordova/CoreAndroid;->e:Lorg/apache/cordova/m0;

    .line 173
    .line 174
    goto :goto_b0

    .line 175
    :catchall_ae
    move-exception p2

    .line 176
    goto :goto_c1

    .line 177
    :cond_b0
    :goto_b0
    iget-object p2, p0, Lorg/apache/cordova/CoreAndroid;->d:Lorg/apache/cordova/m0;

    .line 178
    .line 179
    if-eqz p2, :cond_bf

    .line 180
    .line 181
    iput-boolean v3, p2, Lorg/apache/cordova/m0;->c:Z

    .line 182
    .line 183
    iget-object v2, p0, Lorg/apache/cordova/CoreAndroid;->c:Lorg/apache/cordova/d;

    .line 184
    .line 185
    if-eqz v2, :cond_bd

    .line 186
    .line 187
    invoke-virtual {v2, p2}, Lorg/apache/cordova/d;->sendPluginResult(Lorg/apache/cordova/m0;)V

    .line 188
    .line 189
    .line 190
    :cond_bd
    iput-object v0, p0, Lorg/apache/cordova/CoreAndroid;->d:Lorg/apache/cordova/m0;

    .line 191
    .line 192
    :cond_bf
    monitor-exit p1

    .line 193
    return v3

    .line 194
    :goto_c1
    monitor-exit p1
    :try_end_c2
    .catchall {:try_start_9d .. :try_end_c2} :catchall_ae

    .line 195
    :try_start_c2
    throw p2

    .line 196
    :cond_c3
    :goto_c3
    new-instance p1, Lorg/apache/cordova/m0;

    .line 197
    .line 198
    const/4 p2, 0x2

    .line 199
    invoke-direct {p1, p2, v0}, Lorg/apache/cordova/m0;-><init>(ILjava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p3, p1}, Lorg/apache/cordova/d;->sendPluginResult(Lorg/apache/cordova/m0;)V
    :try_end_cc
    .catch Lorg/json/JSONException; {:try_start_c2 .. :try_end_cc} :catch_cd

    .line 203
    .line 204
    .line 205
    return v3

    .line 206
    :catch_cd
    new-instance p1, Lorg/apache/cordova/m0;

    .line 207
    .line 208
    const/16 p2, 0x9

    .line 209
    .line 210
    invoke-direct {p1, p2}, Lorg/apache/cordova/m0;-><init>(I)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p3, p1}, Lorg/apache/cordova/d;->sendPluginResult(Lorg/apache/cordova/m0;)V

    .line 214
    .line 215
    .line 216
    return v1
.end method

.method public exitApp()V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/o;->webView:Lorg/apache/cordova/t;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/apache/cordova/t;->getPluginManager()Lorg/apache/cordova/l0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "exit"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/l0;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public fireJavascriptEvent(Ljava/lang/String;)V
    .registers 6

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_5
    const-string v1, "action"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_a} :catch_b

    .line 9
    .line 10
    .line 11
    goto :goto_13

    .line 12
    :catch_b
    move-exception v1

    .line 13
    const-string v2, "CordovaApp"

    .line 14
    .line 15
    const-string v3, "Failed to create event message"

    .line 16
    .line 17
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18
    .line 19
    .line 20
    :goto_13
    new-instance v1, Lorg/apache/cordova/m0;

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    invoke-direct {v1, v0, v2}, Lorg/apache/cordova/m0;-><init>(Lorg/json/JSONObject;I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lorg/apache/cordova/CoreAndroid;->c:Lorg/apache/cordova/d;

    .line 27
    .line 28
    if-nez v0, :cond_34

    .line 29
    .line 30
    const-string v0, "pause"

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_28

    .line 37
    .line 38
    iput-object v1, p0, Lorg/apache/cordova/CoreAndroid;->e:Lorg/apache/cordova/m0;

    .line 39
    .line 40
    goto :goto_3c

    .line 41
    :cond_28
    const-string v0, "resume"

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_3c

    .line 48
    .line 49
    const/4 p1, 0x0

    .line 50
    iput-object p1, p0, Lorg/apache/cordova/CoreAndroid;->e:Lorg/apache/cordova/m0;

    .line 51
    .line 52
    goto :goto_3c

    .line 53
    :cond_34
    const/4 p1, 0x1

    .line 54
    iput-boolean p1, v1, Lorg/apache/cordova/m0;->c:Z

    .line 55
    .line 56
    if-eqz v0, :cond_3c

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lorg/apache/cordova/d;->sendPluginResult(Lorg/apache/cordova/m0;)V

    .line 59
    .line 60
    .line 61
    :cond_3c
    :goto_3c
    return-void
.end method

.method public isBackbuttonOverridden()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/o;->webView:Lorg/apache/cordova/t;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-interface {v0, v1}, Lorg/apache/cordova/t;->isButtonPlumbedToJs(I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public loadUrl(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 13

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz p2, :cond_84

    .line 11
    .line 12
    invoke-virtual {p2}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    move v3, v1

    .line 17
    move v4, v3

    .line 18
    move v5, v4

    .line 19
    :goto_12
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    if-ge v1, v6, :cond_82

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    const-string v7, "wait"

    .line 30
    .line 31
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    if-eqz v7, :cond_29

    .line 36
    .line 37
    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    goto :goto_7f

    .line 42
    :cond_29
    const-string v7, "openexternal"

    .line 43
    .line 44
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    if-eqz v7, :cond_36

    .line 49
    .line 50
    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    goto :goto_7f

    .line 55
    :cond_36
    const-string v7, "clearhistory"

    .line 56
    .line 57
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    if-eqz v7, :cond_43

    .line 62
    .line 63
    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    goto :goto_7f

    .line 68
    :cond_43
    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    if-nez v7, :cond_4a

    .line 73
    .line 74
    goto :goto_7f

    .line 75
    :cond_4a
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    const-class v9, Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v8

    .line 85
    if-eqz v8, :cond_5c

    .line 86
    .line 87
    check-cast v7, Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    goto :goto_7f

    .line 93
    :cond_5c
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    move-result-object v8

    .line 97
    const-class v9, Ljava/lang/Boolean;

    .line 98
    .line 99
    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v8

    .line 103
    if-eqz v8, :cond_6e

    .line 104
    .line 105
    check-cast v7, Ljava/lang/Boolean;

    .line 106
    .line 107
    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    goto :goto_7f

    .line 111
    :cond_6e
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    move-result-object v8

    .line 115
    const-class v9, Ljava/lang/Integer;

    .line 116
    .line 117
    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v8

    .line 121
    if-eqz v8, :cond_7f

    .line 122
    .line 123
    check-cast v7, Ljava/lang/Integer;

    .line 124
    .line 125
    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    :cond_7f
    :goto_7f
    add-int/lit8 v1, v1, 0x1

    .line 129
    .line 130
    goto :goto_12

    .line 131
    :cond_82
    move v1, v3

    .line 132
    goto :goto_86

    .line 133
    :cond_84
    move v4, v1

    .line 134
    move v5, v4

    .line 135
    :goto_86
    if-lez v1, :cond_96

    .line 136
    .line 137
    :try_start_88
    monitor-enter p0
    :try_end_89
    .catch Ljava/lang/InterruptedException; {:try_start_88 .. :try_end_89} :catch_92

    .line 138
    int-to-long v1, v1

    .line 139
    :try_start_8a
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 140
    .line 141
    .line 142
    monitor-exit p0

    .line 143
    goto :goto_96

    .line 144
    :catchall_8f
    move-exception p2

    .line 145
    monitor-exit p0
    :try_end_91
    .catchall {:try_start_8a .. :try_end_91} :catchall_8f

    .line 146
    :try_start_91
    throw p2
    :try_end_92
    .catch Ljava/lang/InterruptedException; {:try_start_91 .. :try_end_92} :catch_92

    .line 147
    :catch_92
    move-exception p2

    .line 148
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 149
    .line 150
    .line 151
    :cond_96
    :goto_96
    iget-object p2, p0, Lorg/apache/cordova/o;->webView:Lorg/apache/cordova/t;

    .line 152
    .line 153
    invoke-interface {p2, p1, v4, v5, v0}, Lorg/apache/cordova/t;->showWebPage(Ljava/lang/String;ZZLjava/util/Map;)V

    .line 154
    .line 155
    .line 156
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/o;->webView:Lorg/apache/cordova/t;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/apache/cordova/t;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/apache/cordova/CoreAndroid;->b:Lq2/d;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public overrideBackbutton(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/o;->webView:Lorg/apache/cordova/t;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-interface {v0, v1, p1}, Lorg/apache/cordova/t;->setButtonPlumbedToJs(IZ)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public overrideButton(Ljava/lang/String;Z)V
    .registers 4

    .line 1
    const-string v0, "volumeup"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_10

    .line 8
    .line 9
    iget-object p1, p0, Lorg/apache/cordova/o;->webView:Lorg/apache/cordova/t;

    .line 10
    .line 11
    const/16 v0, 0x18

    .line 12
    .line 13
    invoke-interface {p1, v0, p2}, Lorg/apache/cordova/t;->setButtonPlumbedToJs(IZ)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_10
    const-string v0, "volumedown"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_20

    .line 24
    .line 25
    iget-object p1, p0, Lorg/apache/cordova/o;->webView:Lorg/apache/cordova/t;

    .line 26
    .line 27
    const/16 v0, 0x19

    .line 28
    .line 29
    invoke-interface {p1, v0, p2}, Lorg/apache/cordova/t;->setButtonPlumbedToJs(IZ)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_20
    const-string v0, "menubutton"

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_2f

    .line 40
    .line 41
    iget-object p1, p0, Lorg/apache/cordova/o;->webView:Lorg/apache/cordova/t;

    .line 42
    .line 43
    const/16 v0, 0x52

    .line 44
    .line 45
    invoke-interface {p1, v0, p2}, Lorg/apache/cordova/t;->setButtonPlumbedToJs(IZ)V

    .line 46
    .line 47
    .line 48
    :cond_2f
    return-void
.end method

.method public pluginInitialize()V
    .registers 4

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "android.intent.action.PHONE_STATE"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lq2/d;

    .line 12
    .line 13
    const/4 v2, 0x4

    .line 14
    invoke-direct {v1, v2, p0}, Lq2/d;-><init>(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lorg/apache/cordova/CoreAndroid;->b:Lq2/d;

    .line 18
    .line 19
    iget-object v1, p0, Lorg/apache/cordova/o;->webView:Lorg/apache/cordova/t;

    .line 20
    .line 21
    invoke-interface {v1}, Lorg/apache/cordova/t;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v2, p0, Lorg/apache/cordova/CoreAndroid;->b:Lq2/d;

    .line 26
    .line 27
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public sendResumeEvent(Lorg/apache/cordova/m0;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/CoreAndroid;->f:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lorg/apache/cordova/CoreAndroid;->c:Lorg/apache/cordova/d;

    .line 5
    .line 6
    if-eqz v1, :cond_10

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    iput-boolean v2, p1, Lorg/apache/cordova/m0;->c:Z

    .line 10
    .line 11
    if-eqz v1, :cond_12

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Lorg/apache/cordova/d;->sendPluginResult(Lorg/apache/cordova/m0;)V

    .line 14
    .line 15
    .line 16
    goto :goto_12

    .line 17
    :cond_10
    iput-object p1, p0, Lorg/apache/cordova/CoreAndroid;->d:Lorg/apache/cordova/m0;

    .line 18
    .line 19
    :cond_12
    :goto_12
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :catchall_14
    move-exception p1

    .line 22
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    .line 23
    throw p1
.end method
