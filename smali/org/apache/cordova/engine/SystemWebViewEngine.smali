###### Class org.apache.cordova.engine.SystemWebViewEngine (org.apache.cordova.engine.SystemWebViewEngine)
.class public Lorg/apache/cordova/engine/SystemWebViewEngine;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lorg/apache/cordova/v;


# static fields
.field public static final TAG:Ljava/lang/String; = "SystemWebViewEngine"


# instance fields
.field public final a:Lorg/apache/cordova/engine/SystemWebView;

.field public final b:Le5/e;

.field public c:Lorg/apache/cordova/q;

.field public d:Lorg/apache/cordova/h;

.field public e:Lorg/apache/cordova/u;

.field public f:Lorg/apache/cordova/t;

.field public g:Lorg/apache/cordova/m;

.field public h:Lorg/apache/cordova/l0;

.field public i:Lorg/apache/cordova/s;

.field public j:Lq2/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/apache/cordova/q;)V
    .registers 4

    .line 1
    new-instance v0, Lorg/apache/cordova/engine/SystemWebView;

    invoke-direct {v0, p1}, Lorg/apache/cordova/engine/SystemWebView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2}, Lorg/apache/cordova/engine/SystemWebViewEngine;-><init>(Lorg/apache/cordova/engine/SystemWebView;Lorg/apache/cordova/q;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/cordova/engine/SystemWebView;)V
    .registers 3

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lorg/apache/cordova/engine/SystemWebViewEngine;-><init>(Lorg/apache/cordova/engine/SystemWebView;Lorg/apache/cordova/q;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/cordova/engine/SystemWebView;Lorg/apache/cordova/q;)V
    .registers 5

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->c:Lorg/apache/cordova/q;

    .line 5
    iput-object p1, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->a:Lorg/apache/cordova/engine/SystemWebView;

    .line 6
    new-instance p2, Le5/e;

    const/16 v0, 0x18

    .line 7
    invoke-direct {p2, v0}, Le5/e;-><init>(I)V

    .line 8
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const/4 v1, 0x1

    .line 9
    invoke-static {v1}, Landroid/webkit/CookieManager;->setAcceptFileSchemeCookies(Z)V

    .line 10
    invoke-virtual {v0, p1, v1}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 11
    iput-object p2, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->b:Le5/e;

    return-void
.end method


# virtual methods
.method public canGoBack()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->a:Lorg/apache/cordova/engine/SystemWebView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public clearCache()V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->a:Lorg/apache/cordova/engine/SystemWebView;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public clearHistory()V
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->a:Lorg/apache/cordova/engine/SystemWebView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public destroy()V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->a:Lorg/apache/cordova/engine/SystemWebView;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/apache/cordova/engine/SystemWebView;->b:Lg8/c;

    .line 4
    .line 5
    iget-object v1, v1, Lg8/c;->d:Lcom/google/android/gms/internal/measurement/y4;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Landroid/app/AlertDialog;

    .line 10
    .line 11
    if-eqz v1, :cond_f

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    .line 14
    .line 15
    .line 16
    :cond_f
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->j:Lq2/d;

    .line 20
    .line 21
    if-eqz v1, :cond_38

    .line 22
    .line 23
    :try_start_16
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->j:Lq2/d;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1f} :catch_20

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catch_20
    move-exception v0

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v2, "Error unregistering configuration receiver: "

    .line 37
    .line 38
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const-string v2, "SystemWebViewEngine"

    .line 53
    .line 54
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    .line 56
    .line 57
    :cond_38
    return-void
.end method

.method public evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->a:Lorg/apache/cordova/engine/SystemWebView;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getCookieManager()Lorg/apache/cordova/d0;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->b:Le5/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCordovaWebView()Lorg/apache/cordova/t;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->f:Lorg/apache/cordova/t;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->a:Lorg/apache/cordova/engine/SystemWebView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->a:Lorg/apache/cordova/engine/SystemWebView;

    .line 2
    .line 3
    return-object v0
.end method

.method public goBack()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->a:Lorg/apache/cordova/engine/SystemWebView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_d

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    return v0

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public init(Lorg/apache/cordova/t;Lorg/apache/cordova/m;Lorg/apache/cordova/u;Lorg/apache/cordova/s;Lorg/apache/cordova/l0;Lorg/apache/cordova/i0;)V
    .registers 10

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->g:Lorg/apache/cordova/m;

    .line 2
    .line 3
    if-nez v0, :cond_126

    .line 4
    .line 5
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->c:Lorg/apache/cordova/q;

    .line 6
    .line 7
    if-nez v0, :cond_e

    .line 8
    .line 9
    invoke-interface {p1}, Lorg/apache/cordova/t;->getPreferences()Lorg/apache/cordova/q;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->c:Lorg/apache/cordova/q;

    .line 14
    .line 15
    :cond_e
    iput-object p1, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->f:Lorg/apache/cordova/t;

    .line 16
    .line 17
    iput-object p2, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->g:Lorg/apache/cordova/m;

    .line 18
    .line 19
    iput-object p3, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->e:Lorg/apache/cordova/u;

    .line 20
    .line 21
    iput-object p4, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->i:Lorg/apache/cordova/s;

    .line 22
    .line 23
    iput-object p5, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->h:Lorg/apache/cordova/l0;

    .line 24
    .line 25
    iget-object p1, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->a:Lorg/apache/cordova/engine/SystemWebView;

    .line 26
    .line 27
    iput-object p0, p1, Lorg/apache/cordova/engine/SystemWebView;->c:Lorg/apache/cordova/engine/SystemWebViewEngine;

    .line 28
    .line 29
    iget-object p3, p1, Lorg/apache/cordova/engine/SystemWebView;->a:Lg8/e;

    .line 30
    .line 31
    if-nez p3, :cond_28

    .line 32
    .line 33
    new-instance p3, Lg8/e;

    .line 34
    .line 35
    invoke-direct {p3, p0}, Lg8/e;-><init>(Lorg/apache/cordova/engine/SystemWebViewEngine;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p3}, Lorg/apache/cordova/engine/SystemWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 39
    .line 40
    .line 41
    :cond_28
    iget-object p3, p1, Lorg/apache/cordova/engine/SystemWebView;->b:Lg8/c;

    .line 42
    .line 43
    if-nez p3, :cond_34

    .line 44
    .line 45
    new-instance p3, Lg8/c;

    .line 46
    .line 47
    invoke-direct {p3, p0}, Lg8/c;-><init>(Lorg/apache/cordova/engine/SystemWebViewEngine;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p3}, Lorg/apache/cordova/engine/SystemWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 51
    .line 52
    .line 53
    :cond_34
    iget-object p1, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->a:Lorg/apache/cordova/engine/SystemWebView;

    .line 54
    .line 55
    const/4 p3, 0x0

    .line 56
    invoke-virtual {p1, p3}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p3}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 63
    .line 64
    .line 65
    move-result-object p4

    .line 66
    const/4 v0, 0x1

    .line 67
    invoke-virtual {p4, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p4, v0}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 71
    .line 72
    .line 73
    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 74
    .line 75
    invoke-virtual {p4, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 76
    .line 77
    .line 78
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {p4, p3}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->c:Lorg/apache/cordova/q;

    .line 84
    .line 85
    const-string v2, "AndroidInsecureFileModeEnabled"

    .line 86
    .line 87
    invoke-virtual {v1, v2, p3}, Lorg/apache/cordova/q;->a(Ljava/lang/String;Z)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_62

    .line 92
    .line 93
    invoke-virtual {p4, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p4, v0}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 97
    .line 98
    .line 99
    :cond_62
    invoke-virtual {p4, p3}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    const-string v2, "database"

    .line 111
    .line 112
    invoke-virtual {v1, v2, p3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 113
    .line 114
    .line 115
    move-result-object p3

    .line 116
    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p3

    .line 120
    invoke-virtual {p4, v0}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 136
    .line 137
    and-int/lit8 v1, v1, 0x2

    .line 138
    .line 139
    if-eqz v1, :cond_94

    .line 140
    .line 141
    :try_start_8c
    invoke-static {v0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V
    :try_end_8f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8c .. :try_end_8f} :catch_90

    .line 142
    .line 143
    .line 144
    goto :goto_94

    .line 145
    :catch_90
    move-exception v1

    .line 146
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 147
    .line 148
    .line 149
    :cond_94
    :goto_94
    invoke-virtual {p4, p3}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p4, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p4, v0}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p4}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p3

    .line 162
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->c:Lorg/apache/cordova/q;

    .line 163
    .line 164
    const-string v1, "OverrideUserAgent"

    .line 165
    .line 166
    const/4 v2, 0x0

    .line 167
    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/q;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    if-eqz v0, :cond_b0

    .line 172
    .line 173
    invoke-virtual {p4, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    goto :goto_d1

    .line 177
    :cond_b0
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->c:Lorg/apache/cordova/q;

    .line 178
    .line 179
    const-string v1, "AppendUserAgent"

    .line 180
    .line 181
    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/q;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    if-eqz v0, :cond_d1

    .line 186
    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    const-string p3, " "

    .line 196
    .line 197
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p3

    .line 207
    invoke-virtual {p4, p3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    :cond_d1
    :goto_d1
    new-instance p3, Landroid/content/IntentFilter;

    .line 211
    .line 212
    invoke-direct {p3}, Landroid/content/IntentFilter;-><init>()V

    .line 213
    .line 214
    .line 215
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    .line 216
    .line 217
    invoke-virtual {p3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->j:Lq2/d;

    .line 221
    .line 222
    if-nez v0, :cond_f0

    .line 223
    .line 224
    new-instance v0, Lq2/d;

    .line 225
    .line 226
    const/4 v1, 0x3

    .line 227
    invoke-direct {v0, v1, p4}, Lq2/d;-><init>(ILjava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    iput-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->j:Lq2/d;

    .line 231
    .line 232
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    iget-object p4, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->j:Lq2/d;

    .line 237
    .line 238
    invoke-virtual {p1, p4, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 239
    .line 240
    .line 241
    :cond_f0
    new-instance p1, Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode;

    .line 242
    .line 243
    new-instance p3, Lk1/h;

    .line 244
    .line 245
    const/16 p4, 0xb

    .line 246
    .line 247
    invoke-direct {p3, p4, p0}, Lk1/h;-><init>(ILjava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    invoke-direct {p1, p3}, Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode;-><init>(Lorg/apache/cordova/h0;)V

    .line 251
    .line 252
    .line 253
    iget-object p3, p6, Lorg/apache/cordova/i0;->c:Ljava/util/ArrayList;

    .line 254
    .line 255
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    new-instance p1, Lorg/apache/cordova/NativeToJsMessageQueue$EvalBridgeMode;

    .line 259
    .line 260
    invoke-direct {p1, p0, p2}, Lorg/apache/cordova/NativeToJsMessageQueue$EvalBridgeMode;-><init>(Lorg/apache/cordova/v;Lorg/apache/cordova/m;)V

    .line 261
    .line 262
    .line 263
    iget-object p2, p6, Lorg/apache/cordova/i0;->c:Ljava/util/ArrayList;

    .line 264
    .line 265
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    new-instance p1, Lorg/apache/cordova/h;

    .line 269
    .line 270
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 271
    .line 272
    .line 273
    const/4 p2, -0x1

    .line 274
    iput p2, p1, Lorg/apache/cordova/h;->c:I

    .line 275
    .line 276
    iput-object p5, p1, Lorg/apache/cordova/h;->a:Lorg/apache/cordova/l0;

    .line 277
    .line 278
    iput-object p6, p1, Lorg/apache/cordova/h;->b:Lorg/apache/cordova/i0;

    .line 279
    .line 280
    iput-object p1, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->d:Lorg/apache/cordova/h;

    .line 281
    .line 282
    iget-object p2, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->a:Lorg/apache/cordova/engine/SystemWebView;

    .line 283
    .line 284
    new-instance p3, Lg8/a;

    .line 285
    .line 286
    invoke-direct {p3, p1}, Lg8/a;-><init>(Lorg/apache/cordova/h;)V

    .line 287
    .line 288
    .line 289
    const-string p1, "_cordovaNative"

    .line 290
    .line 291
    invoke-virtual {p2, p3, p1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    return-void

    .line 295
    :cond_126
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 296
    .line 297
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 298
    .line 299
    .line 300
    throw p1
.end method

.method public loadUrl(Ljava/lang/String;Z)V
    .registers 3

    .line 1
    iget-object p2, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->a:Lorg/apache/cordova/engine/SystemWebView;

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setPaused(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->a:Lorg/apache/cordova/engine/SystemWebView;

    .line 2
    .line 3
    if-eqz p1, :cond_b

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/webkit/WebView;->pauseTimers()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_b
    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public stopLoading()V
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine;->a:Lorg/apache/cordova/engine/SystemWebView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
