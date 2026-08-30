###### Class com.getcapacitor.MessageHandler (com.getcapacitor.MessageHandler)
.class public Lcom/getcapacitor/MessageHandler;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field private bridge:Lcom/getcapacitor/Bridge;

.field private cordovaPluginManager:Lorg/apache/cordova/l0;

.field private javaScriptReplyProxy:Lj1/a;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Lcom/getcapacitor/Bridge;Landroid/webkit/WebView;Lorg/apache/cordova/l0;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/getcapacitor/MessageHandler;->bridge:Lcom/getcapacitor/Bridge;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/getcapacitor/MessageHandler;->webView:Landroid/webkit/WebView;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/getcapacitor/MessageHandler;->cordovaPluginManager:Lorg/apache/cordova/l0;

    .line 9
    .line 10
    const-string p3, "WEB_MESSAGE_LISTENER"

    .line 11
    .line 12
    invoke-static {p3}, Ly1/g;->r(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result p3

    .line 16
    const-string v0, "androidBridge"

    .line 17
    .line 18
    if-eqz p3, :cond_2e

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/getcapacitor/Bridge;->getConfig()Lcom/getcapacitor/CapConfig;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    invoke-virtual {p3}, Lcom/getcapacitor/CapConfig;->isUsingLegacyBridge()Z

    .line 25
    .line 26
    .line 27
    move-result p3

    .line 28
    if-nez p3, :cond_2e

    .line 29
    .line 30
    new-instance p3, Lcom/getcapacitor/m;

    .line 31
    .line 32
    invoke-direct {p3, p0}, Lcom/getcapacitor/m;-><init>(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :try_start_22
    invoke-virtual {p1}, Lcom/getcapacitor/Bridge;->getAllowedOriginRules()Ljava/util/Set;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p2, p1, p3}, Lj1/d;->b(Landroid/webkit/WebView;Ljava/util/Set;Lcom/getcapacitor/m;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_29} :catch_2a

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :catch_2a
    invoke-virtual {p2, p0, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_2e
    invoke-virtual {p2, p0, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public static synthetic a(Lcom/getcapacitor/MessageHandler;Landroid/webkit/WebView;Lj1/b;Landroid/net/Uri;ZLk1/f;)V
    .registers 6

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/getcapacitor/MessageHandler;->lambda$new$0(Landroid/webkit/WebView;Lj1/b;Landroid/net/Uri;ZLj1/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/getcapacitor/MessageHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/getcapacitor/MessageHandler;->lambda$callCordovaPluginMethod$2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/getcapacitor/MessageHandler;->lambda$legacySendResponseMessage$1(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private callCordovaPluginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/MessageHandler;->bridge:Lcom/getcapacitor/Bridge;

    .line 2
    .line 3
    new-instance v1, Lcom/getcapacitor/p;

    .line 4
    .line 5
    move-object v2, p0

    .line 6
    move-object v5, p1

    .line 7
    move-object v3, p2

    .line 8
    move-object v4, p3

    .line 9
    move-object v6, p4

    .line 10
    invoke-direct/range {v1 .. v6}, Lcom/getcapacitor/p;-><init>(Lcom/getcapacitor/MessageHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/getcapacitor/Bridge;->execute(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private callPluginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/getcapacitor/JSObject;)V
    .registers 11

    .line 1
    new-instance v0, Lcom/getcapacitor/PluginCall;

    .line 2
    .line 3
    move-object v1, p0

    .line 4
    move-object v3, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v4, p3

    .line 7
    move-object v5, p4

    .line 8
    invoke-direct/range {v0 .. v5}, Lcom/getcapacitor/PluginCall;-><init>(Lcom/getcapacitor/MessageHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/getcapacitor/JSObject;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, v1, Lcom/getcapacitor/MessageHandler;->bridge:Lcom/getcapacitor/Bridge;

    .line 12
    .line 13
    invoke-virtual {p1, v2, v4, v0}, Lcom/getcapacitor/Bridge;->callPluginMethod(Ljava/lang/String;Ljava/lang/String;Lcom/getcapacitor/PluginCall;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private synthetic lambda$callCordovaPluginMethod$2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/MessageHandler;->cordovaPluginManager:Lorg/apache/cordova/l0;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/cordova/l0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static synthetic lambda$legacySendResponseMessage$1(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private lambda$new$0(Landroid/webkit/WebView;Lj1/b;Landroid/net/Uri;ZLj1/a;)V
    .registers 6

    .line 1
    if-eqz p4, :cond_38

    .line 2
    .line 3
    iget p1, p2, Lj1/b;->b:I

    .line 4
    .line 5
    if-nez p1, :cond_e

    .line 6
    .line 7
    iget-object p1, p2, Lj1/b;->a:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/getcapacitor/MessageHandler;->postMessage(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput-object p5, p0, Lcom/getcapacitor/MessageHandler;->javaScriptReplyProxy:Lj1/a;

    .line 13
    .line 14
    return-void

    .line 15
    :cond_e
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    new-instance p3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string p4, "Wrong data accessor type detected. "

    .line 20
    .line 21
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string p4, "String"

    .line 25
    .line 26
    if-eqz p1, :cond_24

    .line 27
    .line 28
    const/4 p5, 0x1

    .line 29
    if-eq p1, p5, :cond_21

    .line 30
    .line 31
    const-string p1, "Unknown"

    .line 32
    .line 33
    goto :goto_25

    .line 34
    :cond_21
    const-string p1, "ArrayBuffer"

    .line 35
    .line 36
    goto :goto_25

    .line 37
    :cond_24
    move-object p1, p4

    .line 38
    :goto_25
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p1, " expected, but got "

    .line 42
    .line 43
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p2

    .line 57
    :cond_38
    const-string p1, "Plugin execution is allowed in Main Frame only"

    .line 58
    .line 59
    invoke-static {p1}, Lcom/getcapacitor/Logger;->warn(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method private legacySendResponseMessage(Lcom/getcapacitor/PluginResult;)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "window.Capacitor.fromNative("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/getcapacitor/PluginResult;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p1, ")"

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object v0, p0, Lcom/getcapacitor/MessageHandler;->webView:Landroid/webkit/WebView;

    .line 25
    .line 26
    new-instance v1, Lcom/getcapacitor/o;

    .line 27
    .line 28
    invoke-direct {v1, v0, p1}, Lcom/getcapacitor/o;-><init>(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public postMessage(Ljava/lang/String;)V
    .registers 11
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "To native (Capacitor plugin): callbackId: "

    .line 2
    .line 3
    const-string v1, "JavaScript Error: "

    .line 4
    .line 5
    const-string v2, "To native (Cordova plugin): callbackId: "

    .line 6
    .line 7
    :try_start_6
    new-instance v3, Lcom/getcapacitor/JSObject;

    .line 8
    .line 9
    invoke-direct {v3, p1}, Lcom/getcapacitor/JSObject;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v4, "type"

    .line 13
    .line 14
    invoke-virtual {v3, v4}, Lcom/getcapacitor/JSObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x1

    .line 20
    if-eqz v4, :cond_17

    .line 21
    .line 22
    move v7, v6

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    move v7, v5

    .line 25
    :goto_18
    if-eqz v7, :cond_27

    .line 26
    .line 27
    const-string v8, "cordova"

    .line 28
    .line 29
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v8

    .line 33
    if-eqz v8, :cond_27

    .line 34
    .line 35
    move v8, v6

    .line 36
    goto :goto_28

    .line 37
    :catch_24
    move-exception p1

    .line 38
    goto/16 :goto_d6

    .line 39
    .line 40
    :cond_27
    move v8, v5

    .line 41
    :goto_28
    if-eqz v7, :cond_33

    .line 42
    .line 43
    const-string v7, "js.error"

    .line 44
    .line 45
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_33

    .line 50
    .line 51
    move v5, v6

    .line 52
    :cond_33
    const-string v4, "callbackId"

    .line 53
    .line 54
    invoke-virtual {v3, v4}, Lcom/getcapacitor/JSObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_39} :catch_24

    .line 58
    const-string v6, "Plugin"

    .line 59
    .line 60
    if-eqz v8, :cond_82

    .line 61
    .line 62
    :try_start_3d
    const-string p1, "service"

    .line 63
    .line 64
    invoke-virtual {v3, p1}, Lcom/getcapacitor/JSObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const-string v0, "action"

    .line 69
    .line 70
    invoke-virtual {v3, v0}, Lcom/getcapacitor/JSObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const-string v1, "actionArgs"

    .line 75
    .line 76
    invoke-virtual {v3, v1}, Lcom/getcapacitor/JSObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    filled-new-array {v6}, [Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-static {v3}, Lcom/getcapacitor/Logger;->tags([Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    new-instance v5, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v2, ", service: "

    .line 97
    .line 98
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v2, ", action: "

    .line 105
    .line 106
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v2, ", actionArgs: "

    .line 113
    .line 114
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-static {v3, v2}, Lcom/getcapacitor/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-direct {p0, v4, p1, v0, v1}, Lcom/getcapacitor/MessageHandler;->callCordovaPluginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :cond_82
    if-eqz v5, :cond_94

    .line 132
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-static {p1}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :cond_94
    const-string p1, "pluginId"

    .line 150
    .line 151
    invoke-virtual {v3, p1}, Lcom/getcapacitor/JSObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    const-string v1, "methodName"

    .line 156
    .line 157
    invoke-virtual {v3, v1}, Lcom/getcapacitor/JSObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    const-string v2, "options"

    .line 162
    .line 163
    new-instance v5, Lcom/getcapacitor/JSObject;

    .line 164
    .line 165
    invoke-direct {v5}, Lcom/getcapacitor/JSObject;-><init>()V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v3, v2, v5}, Lcom/getcapacitor/JSObject;->getJSObject(Ljava/lang/String;Lcom/getcapacitor/JSObject;)Lcom/getcapacitor/JSObject;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    filled-new-array {v6}, [Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    invoke-static {v3}, Lcom/getcapacitor/Logger;->tags([Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    new-instance v5, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    const-string v0, ", pluginId: "

    .line 189
    .line 190
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    const-string v0, ", methodName: "

    .line 197
    .line 198
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-static {v3, v0}, Lcom/getcapacitor/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-direct {p0, v4, p1, v1, v2}, Lcom/getcapacitor/MessageHandler;->callPluginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/getcapacitor/JSObject;)V
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_d5} :catch_24

    .line 212
    .line 213
    .line 214
    return-void

    .line 215
    :goto_d6
    const-string v0, "Post message error:"

    .line 216
    .line 217
    invoke-static {v0, p1}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 218
    .line 219
    .line 220
    return-void
.end method

.method public sendResponseMessage(Lcom/getcapacitor/PluginCall;Lcom/getcapacitor/PluginResult;Lcom/getcapacitor/PluginResult;)V
    .registers 8

    .line 1
    const-string v0, "Sending plugin error: "

    .line 2
    .line 3
    :try_start_2
    new-instance v1, Lcom/getcapacitor/PluginResult;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/getcapacitor/PluginResult;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "save"

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->isKeptAlive()Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    invoke-virtual {v1, v2, v3}, Lcom/getcapacitor/PluginResult;->put(Ljava/lang/String;Z)Lcom/getcapacitor/PluginResult;

    .line 15
    .line 16
    .line 17
    const-string v2, "callbackId"

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->getCallbackId()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v1, v2, v3}, Lcom/getcapacitor/PluginResult;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/getcapacitor/PluginResult;

    .line 24
    .line 25
    .line 26
    const-string v2, "pluginId"

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->getPluginId()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v1, v2, v3}, Lcom/getcapacitor/PluginResult;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/getcapacitor/PluginResult;

    .line 33
    .line 34
    .line 35
    const-string v2, "methodName"

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->getMethodName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v1, v2, v3}, Lcom/getcapacitor/PluginResult;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/getcapacitor/PluginResult;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2b} :catch_4c

    .line 42
    .line 43
    .line 44
    const-string v2, "success"

    .line 45
    .line 46
    if-eqz p3, :cond_4e

    .line 47
    .line 48
    const/4 p2, 0x0

    .line 49
    :try_start_30
    invoke-virtual {v1, v2, p2}, Lcom/getcapacitor/PluginResult;->put(Ljava/lang/String;Z)Lcom/getcapacitor/PluginResult;

    .line 50
    .line 51
    .line 52
    const-string p2, "error"

    .line 53
    .line 54
    invoke-virtual {v1, p2, p3}, Lcom/getcapacitor/PluginResult;->put(Ljava/lang/String;Lcom/getcapacitor/PluginResult;)Lcom/getcapacitor/PluginResult;

    .line 55
    .line 56
    .line 57
    new-instance p2, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/getcapacitor/PluginResult;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-static {p2}, Lcom/getcapacitor/Logger;->debug(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    goto :goto_59

    .line 77
    :catch_4c
    move-exception p2

    .line 78
    goto :goto_ab

    .line 79
    :cond_4e
    const/4 p3, 0x1

    .line 80
    invoke-virtual {v1, v2, p3}, Lcom/getcapacitor/PluginResult;->put(Ljava/lang/String;Z)Lcom/getcapacitor/PluginResult;

    .line 81
    .line 82
    .line 83
    if-eqz p2, :cond_59

    .line 84
    .line 85
    const-string p3, "data"

    .line 86
    .line 87
    invoke-virtual {v1, p3, p2}, Lcom/getcapacitor/PluginResult;->put(Ljava/lang/String;Lcom/getcapacitor/PluginResult;)Lcom/getcapacitor/PluginResult;

    .line 88
    .line 89
    .line 90
    :cond_59
    :goto_59
    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->getCallbackId()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    const-string p3, "-1"

    .line 95
    .line 96
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    if-nez p2, :cond_a1

    .line 101
    .line 102
    iget-object p2, p0, Lcom/getcapacitor/MessageHandler;->bridge:Lcom/getcapacitor/Bridge;

    .line 103
    .line 104
    invoke-virtual {p2}, Lcom/getcapacitor/Bridge;->getConfig()Lcom/getcapacitor/CapConfig;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    invoke-virtual {p2}, Lcom/getcapacitor/CapConfig;->isUsingLegacyBridge()Z

    .line 109
    .line 110
    .line 111
    move-result p2

    .line 112
    if-eqz p2, :cond_75

    .line 113
    .line 114
    invoke-direct {p0, v1}, Lcom/getcapacitor/MessageHandler;->legacySendResponseMessage(Lcom/getcapacitor/PluginResult;)V

    .line 115
    .line 116
    .line 117
    goto :goto_bc

    .line 118
    :cond_75
    const-string p2, "WEB_MESSAGE_LISTENER"

    .line 119
    .line 120
    invoke-static {p2}, Ly1/g;->r(Ljava/lang/String;)Z

    .line 121
    .line 122
    .line 123
    move-result p2

    .line 124
    if-eqz p2, :cond_9d

    .line 125
    .line 126
    iget-object p2, p0, Lcom/getcapacitor/MessageHandler;->javaScriptReplyProxy:Lj1/a;

    .line 127
    .line 128
    if-eqz p2, :cond_9d

    .line 129
    .line 130
    invoke-virtual {v1}, Lcom/getcapacitor/PluginResult;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p3

    .line 134
    check-cast p2, Lk1/f;

    .line 135
    .line 136
    sget-object v0, Lk1/k;->c:Lk1/b;

    .line 137
    .line 138
    invoke-virtual {v0}, Lk1/c;->b()Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_95

    .line 143
    .line 144
    iget-object p2, p2, Lk1/f;->a:Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;

    .line 145
    .line 146
    invoke-interface {p2, p3}, Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;->postMessage(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    goto :goto_bc

    .line 150
    :cond_95
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    .line 151
    .line 152
    const-string p3, "This method is not supported by the current version of the framework and the current WebView APK"

    .line 153
    .line 154
    invoke-direct {p2, p3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw p2

    .line 158
    :cond_9d
    invoke-direct {p0, v1}, Lcom/getcapacitor/MessageHandler;->legacySendResponseMessage(Lcom/getcapacitor/PluginResult;)V

    .line 159
    .line 160
    .line 161
    goto :goto_bc

    .line 162
    :cond_a1
    iget-object p2, p0, Lcom/getcapacitor/MessageHandler;->bridge:Lcom/getcapacitor/Bridge;

    .line 163
    .line 164
    invoke-virtual {p2}, Lcom/getcapacitor/Bridge;->getApp()Lcom/getcapacitor/App;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    invoke-virtual {p2, v1}, Lcom/getcapacitor/App;->fireRestoredResult(Lcom/getcapacitor/PluginResult;)V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_aa} :catch_4c

    .line 169
    .line 170
    .line 171
    goto :goto_bc

    .line 172
    :goto_ab
    new-instance p3, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    const-string v0, "sendResponseMessage: error: "

    .line 175
    .line 176
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    invoke-static {p2}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    :goto_bc
    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->isKeptAlive()Z

    .line 190
    .line 191
    .line 192
    move-result p2

    .line 193
    if-nez p2, :cond_c7

    .line 194
    .line 195
    iget-object p2, p0, Lcom/getcapacitor/MessageHandler;->bridge:Lcom/getcapacitor/Bridge;

    .line 196
    .line 197
    invoke-virtual {p1, p2}, Lcom/getcapacitor/PluginCall;->release(Lcom/getcapacitor/Bridge;)V

    .line 198
    .line 199
    .line 200
    :cond_c7
    return-void
.end method

###### Class com.getcapacitor.o (com.getcapacitor.o)
.class public final synthetic Lcom/getcapacitor/o;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/webkit/WebView;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/getcapacitor/o;->a:Landroid/webkit/WebView;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/getcapacitor/o;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/o;->a:Landroid/webkit/WebView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/getcapacitor/o;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/getcapacitor/MessageHandler;->c(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
