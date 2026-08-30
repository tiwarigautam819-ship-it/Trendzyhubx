###### Class com.lottery.app.MainActivity (com.lottery.app.MainActivity)
.class public Lcom/lottery/app/MainActivity;
.super Lcom/getcapacitor/BridgeActivity;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final synthetic g:I


# instance fields
.field public a:Lutils/ReplacePropertiesUtil;

.field public b:Landroid/widget/FrameLayout;

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/getcapacitor/BridgeActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/lottery/app/MainActivity;->c:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/lottery/app/MainActivity;->d:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/lottery/app/MainActivity;->e:Z

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final f()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/high16 v1, 0xc000000

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/high16 v1, -0x80000000

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/high16 v1, -0x1000000

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v0, v1}, Lt4/b;->k(Landroid/view/Window;Z)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final g()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/lottery/app/MainActivity;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    goto :goto_31

    .line 6
    :cond_5
    iget-boolean v0, p0, Lcom/lottery/app/MainActivity;->c:Z

    .line 7
    .line 8
    if-eqz v0, :cond_31

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/lottery/app/MainActivity;->d:Z

    .line 11
    .line 12
    if-nez v0, :cond_e

    .line 13
    .line 14
    goto :goto_31

    .line 15
    :cond_e
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/lottery/app/MainActivity;->e:Z

    .line 17
    .line 18
    iget-object v0, p0, Lcom/lottery/app/MainActivity;->b:Landroid/widget/FrameLayout;

    .line 19
    .line 20
    if-eqz v0, :cond_31

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-wide/16 v1, 0xfa

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v1, Ll6/g;

    .line 38
    .line 39
    const/4 v2, 0x2

    .line 40
    invoke-direct {v1, p0, v2}, Ll6/g;-><init>(Lcom/lottery/app/MainActivity;I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 48
    .line 49
    .line 50
    :cond_31
    :goto_31
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/lottery/app/MainActivity;->f:Landroid/webkit/WebViewClient;

    .line 2
    .line 3
    instance-of v1, v0, Ll6/c;

    .line 4
    .line 5
    if-eqz v1, :cond_14

    .line 6
    .line 7
    check-cast v0, Ll6/c;

    .line 8
    .line 9
    const/16 v1, 0x2766

    .line 10
    .line 11
    if-eq p1, v1, :cond_10

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    goto :goto_14

    .line 17
    :cond_10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_14
    :goto_14
    invoke-super {p0, p1, p2, p3}, Lcom/getcapacitor/BridgeActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final onBackPressed()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/getcapacitor/BridgeActivity;->getBridge()Lcom/getcapacitor/Bridge;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/getcapacitor/Bridge;->getWebView()Landroid/webkit/WebView;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_14

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_14

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_14
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    const-string v1, "Confirm Exit"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "Do you really want to exit the game?"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    new-instance v1, Ll6/f;

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-direct {v1, v2, p0}, Ll6/f;-><init>(ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    const-string v2, "Exit"

    .line 45
    .line 46
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "Cancel"

    .line 51
    .line 52
    const/4 v2, 0x0

    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 9

    .line 1
    invoke-super {p0, p1}, Lcom/getcapacitor/BridgeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/lottery/app/MainActivity;->a:Lutils/ReplacePropertiesUtil;

    .line 5
    .line 6
    if-nez p1, :cond_e

    .line 7
    .line 8
    new-instance p1, Lutils/ReplacePropertiesUtil;

    .line 9
    .line 10
    invoke-direct {p1, p0}, Lutils/ReplacePropertiesUtil;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/lottery/app/MainActivity;->a:Lutils/ReplacePropertiesUtil;

    .line 14
    .line 15
    :cond_e
    const-string p1, "ga4_config_pref"

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v1, "ga4_config_json"

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_29

    .line 30
    .line 31
    new-instance v1, Lcom/getcapacitor/n;

    .line 32
    .line 33
    const/16 v2, 0xb

    .line 34
    .line 35
    invoke-direct {v1, v2}, Lcom/getcapacitor/n;-><init>(I)V

    .line 36
    .line 37
    .line 38
    invoke-static {p0, p1, v1}, Ln6/c;->a(Landroid/content/Context;Ljava/lang/String;Ln6/a;)V

    .line 39
    .line 40
    .line 41
    goto :goto_30

    .line 42
    :cond_29
    const-string p1, "AppInit"

    .line 43
    .line 44
    const-string v1, "No local GA4 config, waiting H5 to provide."

    .line 45
    .line 46
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    :goto_30
    invoke-virtual {p0}, Lcom/getcapacitor/BridgeActivity;->getBridge()Lcom/getcapacitor/Bridge;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Lcom/getcapacitor/Bridge;->getWebView()Landroid/webkit/WebView;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p0}, Lcom/lottery/app/MainActivity;->f()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    new-instance v2, Lbridges/TomBridge;

    .line 65
    .line 66
    invoke-direct {v2, p0, p1}, Lbridges/TomBridge;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    .line 67
    .line 68
    .line 69
    const-string v3, "TomNativeBridge"

    .line 70
    .line 71
    invoke-virtual {p1, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    new-instance v2, Lbridges/JSBridge;

    .line 75
    .line 76
    invoke-direct {v2, p0, p0}, Lbridges/JSBridge;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    .line 77
    .line 78
    .line 79
    const-string v3, "NativeBridge"

    .line 80
    .line 81
    invoke-virtual {p1, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const/high16 v2, -0x1000000

    .line 85
    .line 86
    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v0}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v0}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 93
    .line 94
    .line 95
    const/4 v3, 0x1

    .line 96
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 112
    .line 113
    .line 114
    const/4 v4, -0x1

    .line 115
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 119
    .line 120
    .line 121
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 122
    .line 123
    const/16 v6, 0x1a

    .line 124
    .line 125
    if-lt v5, v6, :cond_81

    .line 126
    .line 127
    invoke-static {v1}, Lcom/getcapacitor/plugin/util/a;->w(Landroid/webkit/WebSettings;)V

    .line 128
    .line 129
    .line 130
    :cond_81
    invoke-virtual {p0}, Lcom/getcapacitor/BridgeActivity;->getBridge()Lcom/getcapacitor/Bridge;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v1}, Lcom/getcapacitor/Bridge;->getWebView()Landroid/webkit/WebView;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    new-instance v5, Li8/l;

    .line 139
    .line 140
    invoke-direct {v5, v0, v0}, Li8/l;-><init>(ZZ)V

    .line 141
    .line 142
    .line 143
    sget-object v6, Lj0/k0;->a:Ljava/util/WeakHashMap;

    .line 144
    .line 145
    invoke-static {v1, v5}, Lj0/d0;->i(Landroid/view/View;Lj0/r;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, v0}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1}, Landroid/view/View;->requestApplyInsets()V

    .line 152
    .line 153
    .line 154
    iget-object v1, p0, Lcom/lottery/app/MainActivity;->a:Lutils/ReplacePropertiesUtil;

    .line 155
    .line 156
    invoke-virtual {v1}, Lutils/ReplacePropertiesUtil;->isDebugger()Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    invoke-static {v1}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 161
    .line 162
    .line 163
    iget-object v1, p0, Lcom/lottery/app/MainActivity;->a:Lutils/ReplacePropertiesUtil;

    .line 164
    .line 165
    const-string v5, "packageType"

    .line 166
    .line 167
    invoke-virtual {v1, v5}, Lutils/ReplacePropertiesUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    const-string v5, "embed"

    .line 172
    .line 173
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    if-eqz v1, :cond_ba

    .line 178
    .line 179
    new-instance v1, Ll6/c;

    .line 180
    .line 181
    invoke-direct {v1, p0, p0, v3}, Ll6/c;-><init>(Landroid/app/Activity;Landroid/app/Activity;I)V

    .line 182
    .line 183
    .line 184
    iput-object v1, p0, Lcom/lottery/app/MainActivity;->f:Landroid/webkit/WebViewClient;

    .line 185
    .line 186
    goto :goto_c5

    .line 187
    :cond_ba
    new-instance v1, Ll6/h;

    .line 188
    .line 189
    invoke-virtual {p0}, Lcom/getcapacitor/BridgeActivity;->getBridge()Lcom/getcapacitor/Bridge;

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    invoke-direct {v1, p0, v5}, Ll6/h;-><init>(Lcom/lottery/app/MainActivity;Lcom/getcapacitor/Bridge;)V

    .line 194
    .line 195
    .line 196
    iput-object v1, p0, Lcom/lottery/app/MainActivity;->f:Landroid/webkit/WebViewClient;

    .line 197
    .line 198
    :goto_c5
    iget-object v1, p0, Lcom/lottery/app/MainActivity;->f:Landroid/webkit/WebViewClient;

    .line 199
    .line 200
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 201
    .line 202
    .line 203
    new-instance p1, Landroid/os/Handler;

    .line 204
    .line 205
    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 210
    .line 211
    .line 212
    new-instance v1, Ll6/g;

    .line 213
    .line 214
    invoke-direct {v1, p0, v0}, Ll6/g;-><init>(Lcom/lottery/app/MainActivity;I)V

    .line 215
    .line 216
    .line 217
    const-wide/16 v5, 0x0

    .line 218
    .line 219
    invoke-virtual {p1, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 220
    .line 221
    .line 222
    new-instance p1, Landroid/os/Handler;

    .line 223
    .line 224
    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 229
    .line 230
    .line 231
    new-instance v0, Ll6/g;

    .line 232
    .line 233
    invoke-direct {v0, p0, v3}, Ll6/g;-><init>(Lcom/lottery/app/MainActivity;I)V

    .line 234
    .line 235
    .line 236
    const-wide/16 v5, 0x708

    .line 237
    .line 238
    invoke-virtual {p1, v0, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 239
    .line 240
    .line 241
    iget-object p1, p0, Lcom/lottery/app/MainActivity;->a:Lutils/ReplacePropertiesUtil;

    .line 242
    .line 243
    const-string v0, "launcher"

    .line 244
    .line 245
    invoke-virtual {p1, v0}, Lutils/ReplacePropertiesUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    if-eqz p1, :cond_104

    .line 250
    .line 251
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    if-nez v0, :cond_104

    .line 256
    .line 257
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    :cond_104
    new-instance v0, Landroid/widget/FrameLayout;

    .line 262
    .line 263
    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 264
    .line 265
    .line 266
    iput-object v0, p0, Lcom/lottery/app/MainActivity;->b:Landroid/widget/FrameLayout;

    .line 267
    .line 268
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 269
    .line 270
    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    .line 275
    .line 276
    iget-object v0, p0, Lcom/lottery/app/MainActivity;->b:Landroid/widget/FrameLayout;

    .line 277
    .line 278
    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 279
    .line 280
    .line 281
    iget-object v0, p0, Lcom/lottery/app/MainActivity;->b:Landroid/widget/FrameLayout;

    .line 282
    .line 283
    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 284
    .line 285
    .line 286
    const/16 v0, 0xa

    .line 287
    .line 288
    if-eqz p1, :cond_180

    .line 289
    .line 290
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 291
    .line 292
    .line 293
    move-result p1

    .line 294
    if-nez p1, :cond_180

    .line 295
    .line 296
    invoke-virtual {p0}, Lg/m;->getResources()Landroid/content/res/Resources;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    const-string v1, "drawable"

    .line 301
    .line 302
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v2

    .line 306
    const-string v5, "splash"

    .line 307
    .line 308
    invoke-virtual {p1, v5, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    .line 310
    .line 311
    move-result p1

    .line 312
    if-eqz p1, :cond_171

    .line 313
    .line 314
    new-instance v1, Landroid/widget/ImageView;

    .line 315
    .line 316
    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 317
    .line 318
    .line 319
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 320
    .line 321
    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    .line 326
    .line 327
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 328
    .line 329
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 333
    .line 334
    .line 335
    iget-object p1, p0, Lcom/lottery/app/MainActivity;->b:Landroid/widget/FrameLayout;

    .line 336
    .line 337
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 338
    .line 339
    .line 340
    iget-object p1, p0, Lcom/lottery/app/MainActivity;->b:Landroid/widget/FrameLayout;

    .line 341
    .line 342
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    invoke-virtual {p0, p1, v1}, Lg/m;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    .line 348
    .line 349
    iget-object p1, p0, Lcom/lottery/app/MainActivity;->b:Landroid/widget/FrameLayout;

    .line 350
    .line 351
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    new-instance v1, La2/g;

    .line 355
    .line 356
    invoke-direct {v1, v0, p1}, La2/g;-><init>(ILjava/lang/Object;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 360
    .line 361
    .line 362
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 363
    .line 364
    .line 365
    move-result-object p1

    .line 366
    invoke-static {p1, v3, v3, v3}, Lf4/f;->a(Landroid/view/Window;ZZZ)V

    .line 367
    .line 368
    .line 369
    return-void

    .line 370
    :cond_171
    const-string p1, "MainActivity"

    .line 371
    .line 372
    const-string v0, "\u542f\u52a8\u56fe\u5565\u90fd\u6ca1\u6709"

    .line 373
    .line 374
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    .line 376
    .line 377
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 378
    .line 379
    .line 380
    move-result-object p1

    .line 381
    invoke-static {p1, v3, v3, v3}, Lf4/f;->a(Landroid/view/Window;ZZZ)V

    .line 382
    .line 383
    .line 384
    return-void

    .line 385
    :cond_180
    new-instance p1, Landroid/widget/TextView;

    .line 386
    .line 387
    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 388
    .line 389
    .line 390
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 391
    .line 392
    const/16 v5, 0x11

    .line 393
    .line 394
    invoke-direct {v1, v4, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 401
    .line 402
    .line 403
    const-string v1, "loading..."

    .line 404
    .line 405
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 412
    .line 413
    .line 414
    const/4 v1, 0x2

    .line 415
    const/high16 v2, 0x41a00000    # 20.0f

    .line 416
    .line 417
    invoke-virtual {p1, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 418
    .line 419
    .line 420
    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 421
    .line 422
    invoke-virtual {p1, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 423
    .line 424
    .line 425
    const v1, 0x3d4ccccd    # 0.05f

    .line 426
    .line 427
    .line 428
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 429
    .line 430
    .line 431
    iget-object v1, p0, Lcom/lottery/app/MainActivity;->b:Landroid/widget/FrameLayout;

    .line 432
    .line 433
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 434
    .line 435
    .line 436
    iget-object p1, p0, Lcom/lottery/app/MainActivity;->b:Landroid/widget/FrameLayout;

    .line 437
    .line 438
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 439
    .line 440
    .line 441
    move-result-object v1

    .line 442
    invoke-virtual {p0, p1, v1}, Lg/m;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 443
    .line 444
    .line 445
    iget-object p1, p0, Lcom/lottery/app/MainActivity;->b:Landroid/widget/FrameLayout;

    .line 446
    .line 447
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    new-instance v1, La2/g;

    .line 451
    .line 452
    invoke-direct {v1, v0, p1}, La2/g;-><init>(ILjava/lang/Object;)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 456
    .line 457
    .line 458
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 459
    .line 460
    .line 461
    move-result-object p1

    .line 462
    invoke-static {p1, v3, v3, v3}, Lf4/f;->a(Landroid/view/Window;ZZZ)V

    .line 463
    .line 464
    .line 465
    return-void
.end method

.method public final onDestroy()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/getcapacitor/BridgeActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/getcapacitor/BridgeActivity;->getBridge()Lcom/getcapacitor/Bridge;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/getcapacitor/Bridge;->getWebView()Landroid/webkit/WebView;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_30

    .line 13
    .line 14
    const-string v1, "about:blank"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 20
    .line 21
    .line 22
    const-string v1, "webview.db"

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    const-string v1, "webviewCache.db"

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Landroid/view/ViewGroup;

    .line 37
    .line 38
    if-eqz v1, :cond_2a

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 41
    .line 42
    .line 43
    :cond_2a
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 47
    .line 48
    .line 49
    :cond_30
    return-void
.end method

.method public final onPause()V
    .registers 4

    .line 1
    sget-boolean v0, Lm6/g;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_17

    .line 4
    .line 5
    invoke-static {}, Lm6/d;->b()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_b

    .line 10
    .line 11
    goto :goto_17

    .line 12
    :cond_b
    :try_start_b
    sget-object v0, Lm6/d;->a:Ljava/lang/Class;

    .line 13
    .line 14
    const-string v1, "onPause"

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_17

    .line 22
    .line 23
    .line 24
    :catchall_17
    :cond_17
    :goto_17
    invoke-super {p0}, Lcom/getcapacitor/BridgeActivity;->onPause()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final onResume()V
    .registers 6

    .line 1
    invoke-super {p0}, Lcom/getcapacitor/BridgeActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/lottery/app/MainActivity;->f()V

    .line 5
    .line 6
    .line 7
    sget-boolean v0, Lm6/g;->a:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1d

    .line 10
    .line 11
    invoke-static {}, Lm6/d;->b()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_11

    .line 16
    .line 17
    goto :goto_1d

    .line 18
    :cond_11
    :try_start_11
    sget-object v0, Lm6/d;->a:Ljava/lang/Class;

    .line 19
    .line 20
    const-string v1, "onResume"

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_1d

    .line 28
    .line 29
    .line 30
    :catchall_1d
    :cond_1d
    :goto_1d
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0}, Landroid/view/Window;->getStatusBarColor()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-virtual {v0}, Landroid/view/Window;->getNavigationBarColor()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const/4 v3, 0x3

    .line 63
    new-array v3, v3, [Ljava/lang/Object;

    .line 64
    .line 65
    const/4 v4, 0x0

    .line 66
    aput-object v2, v3, v4

    .line 67
    .line 68
    const/4 v2, 0x1

    .line 69
    aput-object v0, v3, v2

    .line 70
    .line 71
    const/4 v0, 0x2

    .line 72
    aput-object v1, v3, v0

    .line 73
    .line 74
    const-string v0, "statusColor=#%08X navColor=#%08X vis=0x%08X"

    .line 75
    .line 76
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    const-string v1, "MainActivity"

    .line 81
    .line 82
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    return-void
.end method
