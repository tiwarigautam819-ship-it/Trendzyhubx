###### Class com.getcapacitor.cordova.MockCordovaWebViewImpl (com.getcapacitor.cordova.MockCordovaWebViewImpl)
.class public Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lorg/apache/cordova/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/getcapacitor/cordova/MockCordovaWebViewImpl$CapacitorEvalBridgeMode;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private cookieManager:Lcom/getcapacitor/cordova/CapacitorCordovaCookieManager;

.field private cordova:Lorg/apache/cordova/m;

.field private hasPausedEver:Z

.field private nativeToJsMessageQueue:Lorg/apache/cordova/i0;

.field private pluginManager:Lorg/apache/cordova/l0;

.field private preferences:Lorg/apache/cordova/q;

.field private resourceApi:Lorg/apache/cordova/s;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->context:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->lambda$eval$0(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Ljava/lang/String;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->lambda$triggerDocumentEvent$1(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$eval$0(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->webView:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static synthetic lambda$triggerDocumentEvent$1(Ljava/lang/String;)V
    .registers 1

    .line 1
    return-void
.end method


# virtual methods
.method public backHistory()Z
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public canGoBack()Z
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public clearCache()V
    .registers 1

    .line 1
    return-void
.end method

.method public clearCache(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    return-void
.end method

.method public clearHistory()V
    .registers 1

    .line 1
    return-void
.end method

.method public eval(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .registers 6
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
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Landroidx/fragment/app/e;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-direct {v1, p0, p1, p2, v2}, Landroidx/fragment/app/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->webView:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getCookieManager()Lorg/apache/cordova/d0;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->cookieManager:Lcom/getcapacitor/cordova/CapacitorCordovaCookieManager;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEngine()Lorg/apache/cordova/v;
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getPluginManager()Lorg/apache/cordova/l0;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->pluginManager:Lorg/apache/cordova/l0;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPreferences()Lorg/apache/cordova/q;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->preferences:Lorg/apache/cordova/q;

    .line 2
    .line 3
    return-object v0
.end method

.method public getResourceApi()Lorg/apache/cordova/s;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->resourceApi:Lorg/apache/cordova/s;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->webView:Landroid/webkit/WebView;

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
    iget-object v0, p0, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->webView:Landroid/webkit/WebView;

    .line 2
    .line 3
    return-object v0
.end method

.method public handleDestroy()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->isInitialized()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 6
    .line 7
    return-void

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->pluginManager:Lorg/apache/cordova/l0;

    .line 9
    .line 10
    invoke-virtual {v0}, Lorg/apache/cordova/l0;->e()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public handlePause(Z)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->isInitialized()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 6
    .line 7
    goto :goto_19

    .line 8
    :cond_7
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->hasPausedEver:Z

    .line 10
    .line 11
    iget-object v1, p0, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->pluginManager:Lorg/apache/cordova/l0;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Lorg/apache/cordova/l0;->g(Z)V

    .line 14
    .line 15
    .line 16
    const-string v1, "pause"

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->triggerDocumentEvent(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    if-nez p1, :cond_19

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->setPaused(Z)V

    .line 24
    .line 25
    .line 26
    :cond_19
    :goto_19
    return-void
.end method

.method public handleResume(Z)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->isInitialized()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 6
    .line 7
    goto :goto_19

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->setPaused(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->pluginManager:Lorg/apache/cordova/l0;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lorg/apache/cordova/l0;->h(Z)V

    .line 15
    .line 16
    .line 17
    iget-boolean p1, p0, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->hasPausedEver:Z

    .line 18
    .line 19
    if-eqz p1, :cond_19

    .line 20
    .line 21
    const-string p1, "resume"

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->triggerDocumentEvent(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_19
    :goto_19
    return-void
.end method

.method public handleStart()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->isInitialized()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 6
    .line 7
    return-void

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->pluginManager:Lorg/apache/cordova/l0;

    .line 9
    .line 10
    invoke-virtual {v0}, Lorg/apache/cordova/l0;->i()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public handleStop()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->isInitialized()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 6
    .line 7
    return-void

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->pluginManager:Lorg/apache/cordova/l0;

    .line 9
    .line 10
    invoke-virtual {v0}, Lorg/apache/cordova/l0;->j()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public hideCustomView()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    return-void
.end method

.method public init(Lorg/apache/cordova/m;Ljava/util/List;Lorg/apache/cordova/q;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/cordova/m;",
            "Ljava/util/List<",
            "Lorg/apache/cordova/j0;",
            ">;",
            "Lorg/apache/cordova/q;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->cordova:Lorg/apache/cordova/m;

    .line 2
    iput-object p3, p0, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->preferences:Lorg/apache/cordova/q;

    .line 3
    new-instance p1, Lorg/apache/cordova/l0;

    iget-object p3, p0, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->cordova:Lorg/apache/cordova/m;

    check-cast p2, Ljava/util/List;

    invoke-direct {p1, p0, p3, p2}, Lorg/apache/cordova/l0;-><init>(Lorg/apache/cordova/t;Lorg/apache/cordova/m;Ljava/util/List;)V

    iput-object p1, p0, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->pluginManager:Lorg/apache/cordova/l0;

    .line 4
    new-instance p2, Lorg/apache/cordova/s;

    iget-object p3, p0, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->context:Landroid/content/Context;

    invoke-direct {p2, p3, p1}, Lorg/apache/cordova/s;-><init>(Landroid/content/Context;Lorg/apache/cordova/l0;)V

    iput-object p2, p0, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->resourceApi:Lorg/apache/cordova/s;

    .line 5
    iget-object p1, p0, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->pluginManager:Lorg/apache/cordova/l0;

    invoke-virtual {p1}, Lorg/apache/cordova/l0;->d()V

    return-void
.end method

.method public init(Lorg/apache/cordova/m;Ljava/util/List;Lorg/apache/cordova/q;Landroid/webkit/WebView;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/cordova/m;",
            "Ljava/util/List<",
            "Lorg/apache/cordova/j0;",
            ">;",
            "Lorg/apache/cordova/q;",
            "Landroid/webkit/WebView;",
            ")V"
        }
    .end annotation

    .line 6
    iput-object p1, p0, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->cordova:Lorg/apache/cordova/m;

    .line 7
    iput-object p4, p0, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->webView:Landroid/webkit/WebView;

    .line 8
    iput-object p3, p0, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->preferences:Lorg/apache/cordova/q;

    .line 9
    new-instance p1, Lorg/apache/cordova/l0;

    iget-object p3, p0, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->cordova:Lorg/apache/cordova/m;

    check-cast p2, Ljava/util/List;

    invoke-direct {p1, p0, p3, p2}, Lorg/apache/cordova/l0;-><init>(Lorg/apache/cordova/t;Lorg/apache/cordova/m;Ljava/util/List;)V

    iput-object p1, p0, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->pluginManager:Lorg/apache/cordova/l0;

    .line 10
    new-instance p2, Lorg/apache/cordova/s;

    iget-object p3, p0, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->context:Landroid/content/Context;

    invoke-direct {p2, p3, p1}, Lorg/apache/cordova/s;-><init>(Landroid/content/Context;Lorg/apache/cordova/l0;)V

    iput-object p2, p0, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->resourceApi:Lorg/apache/cordova/s;

    .line 11
    new-instance p1, Lorg/apache/cordova/i0;

    invoke-direct {p1}, Lorg/apache/cordova/i0;-><init>()V

    iput-object p1, p0, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->nativeToJsMessageQueue:Lorg/apache/cordova/i0;

    .line 12
    new-instance p2, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl$CapacitorEvalBridgeMode;

    iget-object p3, p0, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->cordova:Lorg/apache/cordova/m;

    invoke-direct {p2, p4, p3}, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl$CapacitorEvalBridgeMode;-><init>(Landroid/webkit/WebView;Lorg/apache/cordova/m;)V

    .line 13
    iget-object p1, p1, Lorg/apache/cordova/i0;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object p1, p0, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->nativeToJsMessageQueue:Lorg/apache/cordova/i0;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/apache/cordova/i0;->f(I)V

    .line 15
    new-instance p1, Lcom/getcapacitor/cordova/CapacitorCordovaCookieManager;

    invoke-direct {p1, p4}, Lcom/getcapacitor/cordova/CapacitorCordovaCookieManager;-><init>(Landroid/webkit/WebView;)V

    iput-object p1, p0, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->cookieManager:Lcom/getcapacitor/cordova/CapacitorCordovaCookieManager;

    .line 16
    iget-object p1, p0, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->pluginManager:Lorg/apache/cordova/l0;

    invoke-virtual {p1}, Lorg/apache/cordova/l0;->d()V

    return-void
.end method

.method public isButtonPlumbedToJs(I)Z
    .registers 2

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public isCustomViewShowing()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public isInitialized()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->cordova:Lorg/apache/cordova/m;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->loadUrlIntoView(Ljava/lang/String;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public loadUrlIntoView(Ljava/lang/String;Z)V
    .registers 3

    .line 1
    const-string p2, "about:blank"

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-nez p2, :cond_12

    .line 8
    .line 9
    const-string p2, "javascript:"

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_11

    .line 16
    .line 17
    goto :goto_12

    .line 18
    :cond_11
    return-void

    .line 19
    :cond_12
    :goto_12
    iget-object p2, p0, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->webView:Landroid/webkit/WebView;

    .line 20
    .line 21
    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->pluginManager:Lorg/apache/cordova/l0;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lorg/apache/cordova/l0;->f(Landroid/content/Intent;)V

    .line 6
    .line 7
    .line 8
    :cond_7
    return-void
.end method

.method public postMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->pluginManager:Lorg/apache/cordova/l0;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lorg/apache/cordova/l0;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public sendJavascript(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->nativeToJsMessageQueue:Lorg/apache/cordova/i0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lorg/apache/cordova/g0;

    .line 7
    .line 8
    invoke-direct {v1, p1}, Lorg/apache/cordova/g0;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lorg/apache/cordova/i0;->b(Lorg/apache/cordova/g0;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public sendPluginResult(Lorg/apache/cordova/m0;Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->nativeToJsMessageQueue:Lorg/apache/cordova/i0;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lorg/apache/cordova/i0;->a(Lorg/apache/cordova/m0;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setButtonPlumbedToJs(IZ)V
    .registers 3

    .line 1
    return-void
.end method

.method public setPaused(Z)V
    .registers 2

    .line 1
    if-eqz p1, :cond_d

    .line 2
    .line 3
    iget-object p1, p0, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->webView:Landroid/webkit/WebView;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/webkit/WebView;->onPause()V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->webView:Landroid/webkit/WebView;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/webkit/WebView;->pauseTimers()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_d
    iget-object p1, p0, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->webView:Landroid/webkit/WebView;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/webkit/WebView;->onResume()V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->webView:Landroid/webkit/WebView;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/webkit/WebView;->resumeTimers()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public showCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    return-void
.end method

.method public showWebPage(Ljava/lang/String;ZZLjava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public stopLoading()V
    .registers 1

    .line 1
    return-void
.end method

.method public triggerDocumentEvent(Ljava/lang/String;)V
    .registers 4

    .line 1
    const-string v0, "window.Capacitor.triggerEvent(\'"

    .line 2
    .line 3
    const-string v1, "\', \'document\');"

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Lq2/x;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance v0, Lcom/getcapacitor/d;

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    invoke-direct {v0, v1}, Lcom/getcapacitor/d;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1, v0}, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->eval(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

###### Class com.getcapacitor.cordova.MockCordovaWebViewImpl.CapacitorEvalBridgeMode (com.getcapacitor.cordova.MockCordovaWebViewImpl$CapacitorEvalBridgeMode)
.class public Lcom/getcapacitor/cordova/MockCordovaWebViewImpl$CapacitorEvalBridgeMode;
.super Lorg/apache/cordova/f0;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CapacitorEvalBridgeMode"
.end annotation


# instance fields
.field private final cordova:Lorg/apache/cordova/m;

.field private final webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Lorg/apache/cordova/m;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl$CapacitorEvalBridgeMode;->webView:Landroid/webkit/WebView;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl$CapacitorEvalBridgeMode;->cordova:Lorg/apache/cordova/m;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a(Lcom/getcapacitor/cordova/MockCordovaWebViewImpl$CapacitorEvalBridgeMode;Lorg/apache/cordova/i0;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl$CapacitorEvalBridgeMode;->lambda$onNativeToJsMessageAvailable$0(Lorg/apache/cordova/i0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$onNativeToJsMessageAvailable$0(Lorg/apache/cordova/i0;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Lorg/apache/cordova/i0;->e()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_c

    .line 6
    .line 7
    iget-object v0, p0, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl$CapacitorEvalBridgeMode;->webView:Landroid/webkit/WebView;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 11
    .line 12
    .line 13
    :cond_c
    return-void
.end method


# virtual methods
.method public onNativeToJsMessageAvailable(Lorg/apache/cordova/i0;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl$CapacitorEvalBridgeMode;->cordova:Lorg/apache/cordova/m;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/apache/cordova/m;->getActivity()Lg/m;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, La2/i;

    .line 8
    .line 9
    const/4 v2, 0x6

    .line 10
    invoke-direct {v1, p0, v2, p1}, La2/i;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
