###### Class org.apache.cordova.CordovaWebViewImpl (org.apache.cordova.CordovaWebViewImpl)
.class public Lorg/apache/cordova/CordovaWebViewImpl;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lorg/apache/cordova/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CordovaWebViewImpl"


# instance fields
.field public a:Lorg/apache/cordova/l0;

.field public final b:Lorg/apache/cordova/v;

.field public c:Lorg/apache/cordova/m;

.field public d:I

.field public e:Lorg/apache/cordova/s;

.field public f:Lorg/apache/cordova/q;

.field public g:Lorg/apache/cordova/CoreAndroid;

.field public h:Lorg/apache/cordova/i0;

.field public final i:Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;

.field public j:Z

.field public k:Ljava/lang/String;

.field public l:Lorg/apache/cordova/a0;

.field public m:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field public final n:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Lorg/apache/cordova/v;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->d:I

    .line 6
    .line 7
    new-instance v0, Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;-><init>(Lorg/apache/cordova/CordovaWebViewImpl;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->i:Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;

    .line 13
    .line 14
    new-instance v0, Ljava/util/HashSet;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->n:Ljava/util/HashSet;

    .line 20
    .line 21
    iput-object p1, p0, Lorg/apache/cordova/CordovaWebViewImpl;->b:Lorg/apache/cordova/v;

    .line 22
    .line 23
    return-void
.end method

.method public static createEngine(Landroid/content/Context;Lorg/apache/cordova/q;)Lorg/apache/cordova/v;
    .registers 8

    .line 1
    const-class v0, Lorg/apache/cordova/engine/SystemWebViewEngine;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "webview"

    .line 8
    .line 9
    invoke-virtual {p1, v1, v0}, Lorg/apache/cordova/q;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :try_start_c
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x2

    .line 18
    new-array v2, v1, [Ljava/lang/Class;

    .line 19
    .line 20
    const-class v3, Landroid/content/Context;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    aput-object v3, v2, v4

    .line 24
    .line 25
    const-class v3, Lorg/apache/cordova/q;

    .line 26
    .line 27
    const/4 v5, 0x1

    .line 28
    aput-object v3, v2, v5

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-array v1, v1, [Ljava/lang/Object;

    .line 35
    .line 36
    aput-object p0, v1, v4

    .line 37
    .line 38
    aput-object p1, v1, v5

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Lorg/apache/cordova/v;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2d} :catch_2e

    .line 45
    .line 46
    return-object p0

    .line 47
    :catch_2e
    move-exception p0

    .line 48
    new-instance p1, Ljava/lang/RuntimeException;

    .line 49
    .line 50
    const-string v0, "Failed to create webview. "

    .line 51
    .line 52
    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    throw p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->g:Lorg/apache/cordova/CoreAndroid;

    .line 2
    .line 3
    if-nez v0, :cond_10

    .line 4
    .line 5
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->a:Lorg/apache/cordova/l0;

    .line 6
    .line 7
    const-string v1, "CoreAndroid"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lorg/apache/cordova/l0;->c(Ljava/lang/String;)Lorg/apache/cordova/o;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lorg/apache/cordova/CoreAndroid;

    .line 14
    .line 15
    iput-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->g:Lorg/apache/cordova/CoreAndroid;

    .line 16
    .line 17
    :cond_10
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->g:Lorg/apache/cordova/CoreAndroid;

    .line 18
    .line 19
    if-nez v0, :cond_15

    .line 20
    .line 21
    return-void

    .line 22
    :cond_15
    invoke-virtual {v0, p1}, Lorg/apache/cordova/CoreAndroid;->fireJavascriptEvent(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public backHistory()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->b:Lorg/apache/cordova/v;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/apache/cordova/v;->goBack()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public canGoBack()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->b:Lorg/apache/cordova/v;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/apache/cordova/v;->canGoBack()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public clearCache()V
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->b:Lorg/apache/cordova/v;

    invoke-interface {v0}, Lorg/apache/cordova/v;->clearCache()V

    return-void
.end method

.method public clearCache(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    iget-object p1, p0, Lorg/apache/cordova/CordovaWebViewImpl;->b:Lorg/apache/cordova/v;

    invoke-interface {p1}, Lorg/apache/cordova/v;->clearCache()V

    return-void
.end method

.method public clearHistory()V
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->b:Lorg/apache/cordova/v;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/apache/cordova/v;->clearHistory()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->b:Lorg/apache/cordova/v;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/apache/cordova/v;->getView()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getCookieManager()Lorg/apache/cordova/d0;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->b:Lorg/apache/cordova/v;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/apache/cordova/v;->getCookieManager()Lorg/apache/cordova/d0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getEngine()Lorg/apache/cordova/v;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->b:Lorg/apache/cordova/v;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPluginManager()Lorg/apache/cordova/l0;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->a:Lorg/apache/cordova/l0;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPreferences()Lorg/apache/cordova/q;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->f:Lorg/apache/cordova/q;

    .line 2
    .line 3
    return-object v0
.end method

.method public getResourceApi()Lorg/apache/cordova/s;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->e:Lorg/apache/cordova/s;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->b:Lorg/apache/cordova/v;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/apache/cordova/v;->getUrl()Ljava/lang/String;

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
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->b:Lorg/apache/cordova/v;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/apache/cordova/v;->getView()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public handleDestroy()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaWebViewImpl;->isInitialized()Z

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
    iget v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->d:I

    .line 9
    .line 10
    add-int/lit8 v0, v0, 0x1

    .line 11
    .line 12
    iput v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->d:I

    .line 13
    .line 14
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->a:Lorg/apache/cordova/l0;

    .line 15
    .line 16
    invoke-virtual {v0}, Lorg/apache/cordova/l0;->e()V

    .line 17
    .line 18
    .line 19
    const-string v0, "about:blank"

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lorg/apache/cordova/CordovaWebViewImpl;->loadUrl(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->b:Lorg/apache/cordova/v;

    .line 25
    .line 26
    invoke-interface {v0}, Lorg/apache/cordova/v;->destroy()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaWebViewImpl;->hideCustomView()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public handlePause(Z)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaWebViewImpl;->isInitialized()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 6
    .line 7
    goto :goto_1b

    .line 8
    :cond_7
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->j:Z

    .line 10
    .line 11
    iget-object v1, p0, Lorg/apache/cordova/CordovaWebViewImpl;->a:Lorg/apache/cordova/l0;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Lorg/apache/cordova/l0;->g(Z)V

    .line 14
    .line 15
    .line 16
    const-string v1, "pause"

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/apache/cordova/CordovaWebViewImpl;->a(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    if-nez p1, :cond_1b

    .line 22
    .line 23
    iget-object p1, p0, Lorg/apache/cordova/CordovaWebViewImpl;->b:Lorg/apache/cordova/v;

    .line 24
    .line 25
    invoke-interface {p1, v0}, Lorg/apache/cordova/v;->setPaused(Z)V

    .line 26
    .line 27
    .line 28
    :cond_1b
    :goto_1b
    return-void
.end method

.method public handleResume(Z)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaWebViewImpl;->isInitialized()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 6
    .line 7
    goto :goto_1b

    .line 8
    :cond_7
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->b:Lorg/apache/cordova/v;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-interface {v0, v1}, Lorg/apache/cordova/v;->setPaused(Z)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->a:Lorg/apache/cordova/l0;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lorg/apache/cordova/l0;->h(Z)V

    .line 17
    .line 18
    .line 19
    iget-boolean p1, p0, Lorg/apache/cordova/CordovaWebViewImpl;->j:Z

    .line 20
    .line 21
    if-eqz p1, :cond_1b

    .line 22
    .line 23
    const-string p1, "resume"

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lorg/apache/cordova/CordovaWebViewImpl;->a(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_1b
    :goto_1b
    return-void
.end method

.method public handleStart()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaWebViewImpl;->isInitialized()Z

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
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->a:Lorg/apache/cordova/l0;

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
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaWebViewImpl;->isInitialized()Z

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
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->a:Lorg/apache/cordova/l0;

    .line 9
    .line 10
    invoke-virtual {v0}, Lorg/apache/cordova/l0;->j()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public hideCustomView()V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->l:Lorg/apache/cordova/a0;

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    return-void

    .line 6
    :cond_5
    const/16 v1, 0x8

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->b:Lorg/apache/cordova/v;

    .line 12
    .line 13
    invoke-interface {v0}, Lorg/apache/cordova/v;->getView()Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroid/view/ViewGroup;

    .line 22
    .line 23
    iget-object v2, p0, Lorg/apache/cordova/CordovaWebViewImpl;->l:Lorg/apache/cordova/a0;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    iput-object v1, p0, Lorg/apache/cordova/CordovaWebViewImpl;->l:Lorg/apache/cordova/a0;

    .line 30
    .line 31
    iget-object v1, p0, Lorg/apache/cordova/CordovaWebViewImpl;->m:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 32
    .line 33
    invoke-interface {v1}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 34
    .line 35
    .line 36
    invoke-interface {v0}, Lorg/apache/cordova/v;->getView()Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    invoke-interface {v0}, Lorg/apache/cordova/v;->getView()Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public init(Lorg/apache/cordova/m;)V
    .registers 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/apache/cordova/q;

    invoke-direct {v1}, Lorg/apache/cordova/q;-><init>()V

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/cordova/CordovaWebViewImpl;->init(Lorg/apache/cordova/m;Ljava/util/List;Lorg/apache/cordova/q;)V

    return-void
.end method

.method public init(Lorg/apache/cordova/m;Ljava/util/List;Lorg/apache/cordova/q;)V
    .registers 13
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

    .line 2
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->c:Lorg/apache/cordova/m;

    if-nez v0, :cond_7c

    .line 3
    iput-object p1, p0, Lorg/apache/cordova/CordovaWebViewImpl;->c:Lorg/apache/cordova/m;

    .line 4
    iput-object p3, p0, Lorg/apache/cordova/CordovaWebViewImpl;->f:Lorg/apache/cordova/q;

    .line 5
    new-instance v0, Lorg/apache/cordova/l0;

    iget-object v1, p0, Lorg/apache/cordova/CordovaWebViewImpl;->c:Lorg/apache/cordova/m;

    check-cast p2, Ljava/util/List;

    invoke-direct {v0, p0, v1, p2}, Lorg/apache/cordova/l0;-><init>(Lorg/apache/cordova/t;Lorg/apache/cordova/m;Ljava/util/List;)V

    iput-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->a:Lorg/apache/cordova/l0;

    .line 6
    new-instance p2, Lorg/apache/cordova/s;

    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->b:Lorg/apache/cordova/v;

    invoke-interface {v0}, Lorg/apache/cordova/v;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/cordova/CordovaWebViewImpl;->a:Lorg/apache/cordova/l0;

    invoke-direct {p2, v1, v2}, Lorg/apache/cordova/s;-><init>(Landroid/content/Context;Lorg/apache/cordova/l0;)V

    iput-object p2, p0, Lorg/apache/cordova/CordovaWebViewImpl;->e:Lorg/apache/cordova/s;

    .line 7
    new-instance p2, Lorg/apache/cordova/i0;

    invoke-direct {p2}, Lorg/apache/cordova/i0;-><init>()V

    iput-object p2, p0, Lorg/apache/cordova/CordovaWebViewImpl;->h:Lorg/apache/cordova/i0;

    .line 8
    new-instance v1, Lorg/apache/cordova/NativeToJsMessageQueue$NoOpBridgeMode;

    invoke-direct {v1}, Lorg/apache/cordova/NativeToJsMessageQueue$NoOpBridgeMode;-><init>()V

    .line 9
    iget-object p2, p2, Lorg/apache/cordova/i0;->c:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object p2, p0, Lorg/apache/cordova/CordovaWebViewImpl;->h:Lorg/apache/cordova/i0;

    new-instance v1, Lorg/apache/cordova/NativeToJsMessageQueue$LoadUrlBridgeMode;

    invoke-direct {v1, v0, p1}, Lorg/apache/cordova/NativeToJsMessageQueue$LoadUrlBridgeMode;-><init>(Lorg/apache/cordova/v;Lorg/apache/cordova/m;)V

    .line 11
    iget-object p2, p2, Lorg/apache/cordova/i0;->c:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    const-string p2, "DisallowOverscroll"

    const/4 v1, 0x0

    invoke-virtual {p3, p2, v1}, Lorg/apache/cordova/q;->a(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_54

    .line 14
    invoke-interface {v0}, Lorg/apache/cordova/v;->getView()Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Landroid/view/View;->setOverScrollMode(I)V

    .line 15
    :cond_54
    iget-object v6, p0, Lorg/apache/cordova/CordovaWebViewImpl;->e:Lorg/apache/cordova/s;

    iget-object v7, p0, Lorg/apache/cordova/CordovaWebViewImpl;->a:Lorg/apache/cordova/l0;

    iget-object v8, p0, Lorg/apache/cordova/CordovaWebViewImpl;->h:Lorg/apache/cordova/i0;

    iget-object v2, p0, Lorg/apache/cordova/CordovaWebViewImpl;->b:Lorg/apache/cordova/v;

    iget-object v5, p0, Lorg/apache/cordova/CordovaWebViewImpl;->i:Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;

    move-object v3, p0

    move-object v4, p1

    invoke-interface/range {v2 .. v8}, Lorg/apache/cordova/v;->init(Lorg/apache/cordova/t;Lorg/apache/cordova/m;Lorg/apache/cordova/u;Lorg/apache/cordova/s;Lorg/apache/cordova/l0;Lorg/apache/cordova/i0;)V

    .line 16
    iget-object p1, v3, Lorg/apache/cordova/CordovaWebViewImpl;->a:Lorg/apache/cordova/l0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    new-instance p2, Lorg/apache/cordova/j0;

    const-string p3, "CoreAndroid"

    const-string v0, "org.apache.cordova.CoreAndroid"

    invoke-direct {p2, p3, v0, v1}, Lorg/apache/cordova/j0;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 18
    iget-object p1, p1, Lorg/apache/cordova/l0;->b:Ljava/util/Map;

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object p1, v3, Lorg/apache/cordova/CordovaWebViewImpl;->a:Lorg/apache/cordova/l0;

    invoke-virtual {p1}, Lorg/apache/cordova/l0;->d()V

    return-void

    :cond_7c
    move-object v3, p0

    .line 20
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public isButtonPlumbedToJs(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->n:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public isCustomViewShowing()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->l:Lorg/apache/cordova/a0;

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

.method public isInitialized()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->c:Lorg/apache/cordova/m;

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
    invoke-virtual {p0, p1, v0}, Lorg/apache/cordova/CordovaWebViewImpl;->loadUrlIntoView(Ljava/lang/String;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public loadUrlIntoView(Ljava/lang/String;Z)V
    .registers 11

    .line 1
    const-string v0, "about:blank"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_11

    .line 9
    .line 10
    const-string v0, "javascript:"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_15

    .line 17
    .line 18
    :cond_11
    move-object v3, p0

    .line 19
    move-object v6, p1

    .line 20
    goto/16 :goto_7e

    .line 21
    .line 22
    :cond_15
    if-nez p2, :cond_1e

    .line 23
    .line 24
    iget-object p2, p0, Lorg/apache/cordova/CordovaWebViewImpl;->k:Ljava/lang/String;

    .line 25
    .line 26
    if-nez p2, :cond_1c

    .line 27
    .line 28
    goto :goto_1e

    .line 29
    :cond_1c
    :goto_1c
    move v7, v1

    .line 30
    goto :goto_20

    .line 31
    :cond_1e
    :goto_1e
    const/4 v1, 0x1

    .line 32
    goto :goto_1c

    .line 33
    :goto_20
    if-eqz v7, :cond_30

    .line 34
    .line 35
    iget-object p2, p0, Lorg/apache/cordova/CordovaWebViewImpl;->k:Ljava/lang/String;

    .line 36
    .line 37
    if-eqz p2, :cond_2e

    .line 38
    .line 39
    const/4 p2, 0x0

    .line 40
    iput-object p2, p0, Lorg/apache/cordova/CordovaWebViewImpl;->g:Lorg/apache/cordova/CoreAndroid;

    .line 41
    .line 42
    iget-object p2, p0, Lorg/apache/cordova/CordovaWebViewImpl;->a:Lorg/apache/cordova/l0;

    .line 43
    .line 44
    invoke-virtual {p2}, Lorg/apache/cordova/l0;->d()V

    .line 45
    .line 46
    .line 47
    :cond_2e
    iput-object p1, p0, Lorg/apache/cordova/CordovaWebViewImpl;->k:Ljava/lang/String;

    .line 48
    .line 49
    :cond_30
    iget p2, p0, Lorg/apache/cordova/CordovaWebViewImpl;->d:I

    .line 50
    .line 51
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->f:Lorg/apache/cordova/q;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 57
    .line 58
    const-string v2, "LoadUrlTimeoutValue"

    .line 59
    .line 60
    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iget-object v0, v0, Lorg/apache/cordova/q;->a:Ljava/util/HashMap;

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Ljava/lang/String;

    .line 71
    .line 72
    if-eqz v0, :cond_54

    .line 73
    .line 74
    invoke-static {v0}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 79
    .line 80
    .line 81
    move-result-wide v0

    .line 82
    long-to-int v0, v0

    .line 83
    :goto_52
    move v4, v0

    .line 84
    goto :goto_57

    .line 85
    :cond_54
    const/16 v0, 0x4e20

    .line 86
    .line 87
    goto :goto_52

    .line 88
    :goto_57
    new-instance v0, Ls4/b;

    .line 89
    .line 90
    const/4 v1, 0x3

    .line 91
    const/4 v2, 0x0

    .line 92
    invoke-direct {v0, p0, p1, v1, v2}, Ls4/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 93
    .line 94
    .line 95
    new-instance v5, Lorg/apache/cordova/w;

    .line 96
    .line 97
    invoke-direct {v5, p0, v4, p2, v0}, Lorg/apache/cordova/w;-><init>(Lorg/apache/cordova/CordovaWebViewImpl;IILs4/b;)V

    .line 98
    .line 99
    .line 100
    iget-object p2, p0, Lorg/apache/cordova/CordovaWebViewImpl;->c:Lorg/apache/cordova/m;

    .line 101
    .line 102
    invoke-interface {p2}, Lorg/apache/cordova/m;->getActivity()Lg/m;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    if-eqz p2, :cond_7c

    .line 107
    .line 108
    iget-object p2, p0, Lorg/apache/cordova/CordovaWebViewImpl;->c:Lorg/apache/cordova/m;

    .line 109
    .line 110
    invoke-interface {p2}, Lorg/apache/cordova/m;->getActivity()Lg/m;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    new-instance v2, Lorg/apache/cordova/x;

    .line 115
    .line 116
    move-object v3, p0

    .line 117
    move-object v6, p1

    .line 118
    invoke-direct/range {v2 .. v7}, Lorg/apache/cordova/x;-><init>(Lorg/apache/cordova/CordovaWebViewImpl;ILorg/apache/cordova/w;Ljava/lang/String;Z)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_7c
    move-object v3, p0

    .line 126
    return-void

    .line 127
    :goto_7e
    iget-object p1, v3, Lorg/apache/cordova/CordovaWebViewImpl;->b:Lorg/apache/cordova/v;

    .line 128
    .line 129
    invoke-interface {p1, v6, v1}, Lorg/apache/cordova/v;->loadUrl(Ljava/lang/String;Z)V

    .line 130
    .line 131
    .line 132
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->a:Lorg/apache/cordova/l0;

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
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->a:Lorg/apache/cordova/l0;

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
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->h:Lorg/apache/cordova/i0;

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
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->h:Lorg/apache/cordova/i0;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lorg/apache/cordova/i0;->a(Lorg/apache/cordova/m0;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setButtonPlumbedToJs(IZ)V
    .registers 4

    .line 1
    const/4 v0, 0x4

    .line 2
    if-eq p1, v0, :cond_1c

    .line 3
    .line 4
    const/16 v0, 0x52

    .line 5
    .line 6
    if-eq p1, v0, :cond_1c

    .line 7
    .line 8
    const/16 v0, 0x18

    .line 9
    .line 10
    if-eq p1, v0, :cond_1c

    .line 11
    .line 12
    const/16 v0, 0x19

    .line 13
    .line 14
    if-ne p1, v0, :cond_10

    .line 15
    .line 16
    goto :goto_1c

    .line 17
    :cond_10
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    const-string v0, "Unsupported keycode: "

    .line 20
    .line 21
    invoke-static {p1, v0}, La1/a;->i(ILjava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p2

    .line 29
    :cond_1c
    :goto_1c
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->n:Ljava/util/HashSet;

    .line 30
    .line 31
    if-eqz p2, :cond_28

    .line 32
    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public showCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->l:Lorg/apache/cordova/a0;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_8
    new-instance v0, Lorg/apache/cordova/a0;

    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaWebViewImpl;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p0, Lorg/apache/cordova/CordovaWebViewImpl;->b:Lorg/apache/cordova/v;

    .line 16
    .line 17
    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/a0;-><init>(Landroid/content/Context;Lorg/apache/cordova/v;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->l:Lorg/apache/cordova/a0;

    .line 24
    .line 25
    iput-object p2, p0, Lorg/apache/cordova/CordovaWebViewImpl;->m:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 26
    .line 27
    invoke-interface {v2}, Lorg/apache/cordova/v;->getView()Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Landroid/view/ViewGroup;

    .line 36
    .line 37
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 38
    .line 39
    const/16 v1, 0x11

    .line 40
    .line 41
    const/4 v3, -0x1

    .line 42
    invoke-direct {p2, v3, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {v2}, Lorg/apache/cordova/v;->getView()Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    const/16 v0, 0x8

    .line 53
    .line 54
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    const/4 p2, 0x0

    .line 58
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public showWebPage(Ljava/lang/String;ZZLjava/util/Map;)V
    .registers 12
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
    const-string v0, "CordovaWebViewImpl"

    .line 2
    .line 3
    const-string v1, "intent://"

    .line 4
    .line 5
    if-eqz p3, :cond_b

    .line 6
    .line 7
    iget-object v2, p0, Lorg/apache/cordova/CordovaWebViewImpl;->b:Lorg/apache/cordova/v;

    .line 8
    .line 9
    invoke-interface {v2}, Lorg/apache/cordova/v;->clearHistory()V

    .line 10
    .line 11
    .line 12
    :cond_b
    const/4 v2, 0x1

    .line 13
    if-nez p2, :cond_1a

    .line 14
    .line 15
    iget-object p2, p0, Lorg/apache/cordova/CordovaWebViewImpl;->a:Lorg/apache/cordova/l0;

    .line 16
    .line 17
    invoke-virtual {p2, p1}, Lorg/apache/cordova/l0;->l(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-eqz p2, :cond_ad

    .line 22
    .line 23
    invoke-virtual {p0, p1, v2}, Lorg/apache/cordova/CordovaWebViewImpl;->loadUrlIntoView(Ljava/lang/String;Z)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1a
    iget-object v3, p0, Lorg/apache/cordova/CordovaWebViewImpl;->a:Lorg/apache/cordova/l0;

    .line 28
    .line 29
    invoke-virtual {v3, p1}, Lorg/apache/cordova/l0;->n(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_28

    .line 38
    .line 39
    goto/16 :goto_ad

    .line 40
    .line 41
    :cond_28
    const/4 v3, 0x0

    .line 42
    :try_start_29
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_39

    .line 47
    .line 48
    invoke-static {p1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    :goto_33
    move-object v3, v2

    .line 53
    goto :goto_68

    .line 54
    :catch_35
    move-exception v2

    .line 55
    goto :goto_7a

    .line 56
    :catch_37
    move-exception p2

    .line 57
    goto :goto_9c

    .line 58
    :cond_39
    new-instance v2, Landroid/content/Intent;

    .line 59
    .line 60
    const-string v4, "android.intent.action.VIEW"

    .line 61
    .line 62
    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/net/URISyntaxException; {:try_start_29 .. :try_end_40} :catch_37
    .catch Landroid/content/ActivityNotFoundException; {:try_start_29 .. :try_end_40} :catch_35

    .line 63
    .line 64
    .line 65
    :try_start_40
    const-string v3, "android.intent.category.BROWSABLE"

    .line 66
    .line 67
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    const-string v4, "file"

    .line 75
    .line 76
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_64

    .line 85
    .line 86
    iget-object v4, p0, Lorg/apache/cordova/CordovaWebViewImpl;->e:Lorg/apache/cordova/s;

    .line 87
    .line 88
    invoke-virtual {v4, v3}, Lorg/apache/cordova/s;->a(Landroid/net/Uri;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    .line 94
    .line 95
    goto :goto_33

    .line 96
    :catch_5f
    move-exception v3

    .line 97
    move-object v6, v3

    .line 98
    move-object v3, v2

    .line 99
    move-object v2, v6

    .line 100
    goto :goto_7a

    .line 101
    :cond_64
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_67
    .catch Ljava/net/URISyntaxException; {:try_start_40 .. :try_end_67} :catch_37
    .catch Landroid/content/ActivityNotFoundException; {:try_start_40 .. :try_end_67} :catch_5f

    .line 102
    .line 103
    .line 104
    goto :goto_33

    .line 105
    :goto_68
    :try_start_68
    iget-object v2, p0, Lorg/apache/cordova/CordovaWebViewImpl;->c:Lorg/apache/cordova/m;

    .line 106
    .line 107
    invoke-interface {v2}, Lorg/apache/cordova/m;->getActivity()Lg/m;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    if-eqz v2, :cond_ad

    .line 112
    .line 113
    iget-object v2, p0, Lorg/apache/cordova/CordovaWebViewImpl;->c:Lorg/apache/cordova/m;

    .line 114
    .line 115
    invoke-interface {v2}, Lorg/apache/cordova/m;->getActivity()Lg/m;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_79
    .catch Ljava/net/URISyntaxException; {:try_start_68 .. :try_end_79} :catch_37
    .catch Landroid/content/ActivityNotFoundException; {:try_start_68 .. :try_end_79} :catch_35

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :goto_7a
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-eqz v1, :cond_92

    .line 128
    .line 129
    if-eqz v3, :cond_92

    .line 130
    .line 131
    const-string v1, "browser_fallback_url"

    .line 132
    .line 133
    invoke-virtual {v3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    if-eqz v4, :cond_92

    .line 138
    .line 139
    invoke-virtual {v3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/cordova/CordovaWebViewImpl;->showWebPage(Ljava/lang/String;ZZLjava/util/Map;)V

    .line 144
    .line 145
    .line 146
    goto :goto_ad

    .line 147
    :cond_92
    const-string p2, "Error loading url "

    .line 148
    .line 149
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-static {v0, p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    .line 155
    .line 156
    goto :goto_ad

    .line 157
    :goto_9c
    new-instance p3, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    const-string p4, "Error parsing url "

    .line 160
    .line 161
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    .line 173
    .line 174
    :cond_ad
    :goto_ad
    return-void
.end method

.method public stopLoading()V
    .registers 2

    .line 1
    iget v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->d:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->d:I

    .line 6
    .line 7
    return-void
.end method

###### Class org.apache.cordova.CordovaWebViewImpl.EngineClient (org.apache.cordova.CordovaWebViewImpl$EngineClient)
.class public Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lorg/apache/cordova/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/cordova/CordovaWebViewImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EngineClient"
.end annotation


# instance fields
.field public final synthetic a:Lorg/apache/cordova/CordovaWebViewImpl;


# direct methods
.method public constructor <init>(Lorg/apache/cordova/CordovaWebViewImpl;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;->a:Lorg/apache/cordova/CordovaWebViewImpl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public clearLoadTimeoutTimer()V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;->a:Lorg/apache/cordova/CordovaWebViewImpl;

    .line 2
    .line 3
    iget v1, v0, Lorg/apache/cordova/CordovaWebViewImpl;->d:I

    .line 4
    .line 5
    add-int/lit8 v1, v1, 0x1

    .line 6
    .line 7
    iput v1, v0, Lorg/apache/cordova/CordovaWebViewImpl;->d:I

    .line 8
    .line 9
    return-void
.end method

.method public onDispatchKeyEvent(Landroid/view/KeyEvent;)Ljava/lang/Boolean;
    .registers 11

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;->a:Lorg/apache/cordova/CordovaWebViewImpl;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/apache/cordova/CordovaWebViewImpl;->b:Lorg/apache/cordova/v;

    .line 4
    .line 5
    iget-object v2, v0, Lorg/apache/cordova/CordovaWebViewImpl;->n:Ljava/util/HashSet;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x1

    .line 12
    const/4 v5, 0x4

    .line 13
    if-ne v3, v5, :cond_10

    .line 14
    .line 15
    move v6, v4

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 v6, 0x0

    .line 18
    :goto_11
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 19
    .line 20
    .line 21
    move-result v7

    .line 22
    const/4 v8, 0x0

    .line 23
    if-nez v7, :cond_39

    .line 24
    .line 25
    if-eqz v6, :cond_21

    .line 26
    .line 27
    iget-object p1, v0, Lorg/apache/cordova/CordovaWebViewImpl;->l:Lorg/apache/cordova/a0;

    .line 28
    .line 29
    if-eqz p1, :cond_21

    .line 30
    .line 31
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 32
    .line 33
    return-object p1

    .line 34
    :cond_21
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_2e

    .line 43
    .line 44
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 45
    .line 46
    return-object p1

    .line 47
    :cond_2e
    if-eqz v6, :cond_8a

    .line 48
    .line 49
    invoke-interface {v1}, Lorg/apache/cordova/v;->canGoBack()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    return-object p1

    .line 58
    :cond_39
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-ne p1, v4, :cond_8a

    .line 63
    .line 64
    if-eqz v6, :cond_4b

    .line 65
    .line 66
    iget-object p1, v0, Lorg/apache/cordova/CordovaWebViewImpl;->l:Lorg/apache/cordova/a0;

    .line 67
    .line 68
    if-eqz p1, :cond_4b

    .line 69
    .line 70
    invoke-virtual {v0}, Lorg/apache/cordova/CordovaWebViewImpl;->hideCustomView()V

    .line 71
    .line 72
    .line 73
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 74
    .line 75
    return-object p1

    .line 76
    :cond_4b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_7f

    .line 85
    .line 86
    if-eq v3, v5, :cond_75

    .line 87
    .line 88
    const/16 p1, 0x52

    .line 89
    .line 90
    if-eq v3, p1, :cond_72

    .line 91
    .line 92
    const/16 p1, 0x54

    .line 93
    .line 94
    if-eq v3, p1, :cond_6f

    .line 95
    .line 96
    const/16 p1, 0x18

    .line 97
    .line 98
    if-eq v3, p1, :cond_6c

    .line 99
    .line 100
    const/16 p1, 0x19

    .line 101
    .line 102
    if-eq v3, p1, :cond_69

    .line 103
    .line 104
    move-object p1, v8

    .line 105
    goto :goto_77

    .line 106
    :cond_69
    const-string p1, "volumedownbutton"

    .line 107
    .line 108
    goto :goto_77

    .line 109
    :cond_6c
    const-string p1, "volumeupbutton"

    .line 110
    .line 111
    goto :goto_77

    .line 112
    :cond_6f
    const-string p1, "searchbutton"

    .line 113
    .line 114
    goto :goto_77

    .line 115
    :cond_72
    const-string p1, "menubutton"

    .line 116
    .line 117
    goto :goto_77

    .line 118
    :cond_75
    const-string p1, "backbutton"

    .line 119
    .line 120
    :goto_77
    if-eqz p1, :cond_8a

    .line 121
    .line 122
    invoke-virtual {v0, p1}, Lorg/apache/cordova/CordovaWebViewImpl;->a(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 126
    .line 127
    return-object p1

    .line 128
    :cond_7f
    if-eqz v6, :cond_8a

    .line 129
    .line 130
    invoke-interface {v1}, Lorg/apache/cordova/v;->goBack()Z

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    return-object p1

    .line 139
    :cond_8a
    return-object v8
.end method

.method public onNavigationAttempt(Ljava/lang/String;)Z
    .registers 8

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;->a:Lorg/apache/cordova/CordovaWebViewImpl;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/apache/cordova/CordovaWebViewImpl;->a:Lorg/apache/cordova/l0;

    .line 4
    .line 5
    iget-object v1, v0, Lorg/apache/cordova/l0;->b:Ljava/util/Map;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_7
    iget-object v2, v0, Lorg/apache/cordova/l0;->b:Ljava/util/Map;

    .line 9
    .line 10
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const/4 v4, 0x1

    .line 23
    if-eqz v3, :cond_34

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lorg/apache/cordova/j0;

    .line 30
    .line 31
    iget-object v5, v0, Lorg/apache/cordova/l0;->a:Ljava/util/Map;

    .line 32
    .line 33
    iget-object v3, v3, Lorg/apache/cordova/j0;->a:Ljava/lang/String;

    .line 34
    .line 35
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Lorg/apache/cordova/o;

    .line 40
    .line 41
    if-eqz v3, :cond_11

    .line 42
    .line 43
    invoke-virtual {v3, p1}, Lorg/apache/cordova/o;->onOverrideUrlLoading(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_11

    .line 48
    .line 49
    monitor-exit v1

    .line 50
    return v4

    .line 51
    :catchall_32
    move-exception p1

    .line 52
    goto :goto_56

    .line 53
    :cond_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_7 .. :try_end_35} :catchall_32

    .line 54
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;->a:Lorg/apache/cordova/CordovaWebViewImpl;

    .line 55
    .line 56
    iget-object v0, v0, Lorg/apache/cordova/CordovaWebViewImpl;->a:Lorg/apache/cordova/l0;

    .line 57
    .line 58
    invoke-virtual {v0, p1}, Lorg/apache/cordova/l0;->l(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    const/4 v1, 0x0

    .line 63
    if-eqz v0, :cond_41

    .line 64
    .line 65
    return v1

    .line 66
    :cond_41
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;->a:Lorg/apache/cordova/CordovaWebViewImpl;

    .line 67
    .line 68
    iget-object v0, v0, Lorg/apache/cordova/CordovaWebViewImpl;->a:Lorg/apache/cordova/l0;

    .line 69
    .line 70
    invoke-virtual {v0, p1}, Lorg/apache/cordova/l0;->n(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_55

    .line 79
    .line 80
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;->a:Lorg/apache/cordova/CordovaWebViewImpl;

    .line 81
    .line 82
    const/4 v2, 0x0

    .line 83
    invoke-virtual {v0, p1, v4, v1, v2}, Lorg/apache/cordova/CordovaWebViewImpl;->showWebPage(Ljava/lang/String;ZZLjava/util/Map;)V

    .line 84
    .line 85
    .line 86
    :cond_55
    return v4

    .line 87
    :goto_56
    :try_start_56
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_32

    .line 88
    throw p1
.end method

.method public onPageFinishedLoading(Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;->clearLoadTimeoutTimer()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;->a:Lorg/apache/cordova/CordovaWebViewImpl;

    .line 5
    .line 6
    iget-object v1, v0, Lorg/apache/cordova/CordovaWebViewImpl;->a:Lorg/apache/cordova/l0;

    .line 7
    .line 8
    const-string v2, "onPageFinished"

    .line 9
    .line 10
    invoke-virtual {v1, v2, p1}, Lorg/apache/cordova/l0;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    iget-object v1, v0, Lorg/apache/cordova/CordovaWebViewImpl;->b:Lorg/apache/cordova/v;

    .line 14
    .line 15
    invoke-interface {v1}, Lorg/apache/cordova/v;->getView()Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_25

    .line 24
    .line 25
    new-instance v1, Ljava/lang/Thread;

    .line 26
    .line 27
    new-instance v2, Lorg/apache/cordova/z;

    .line 28
    .line 29
    invoke-direct {v2, p0}, Lorg/apache/cordova/z;-><init>(Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 36
    .line 37
    .line 38
    :cond_25
    const-string v1, "about:blank"

    .line 39
    .line 40
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_35

    .line 45
    .line 46
    iget-object p1, v0, Lorg/apache/cordova/CordovaWebViewImpl;->a:Lorg/apache/cordova/l0;

    .line 47
    .line 48
    const-string v0, "exit"

    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    invoke-virtual {p1, v0, v1}, Lorg/apache/cordova/l0;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    :cond_35
    return-void
.end method

.method public onPageStarted(Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;->a:Lorg/apache/cordova/CordovaWebViewImpl;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/apache/cordova/CordovaWebViewImpl;->n:Ljava/util/HashSet;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;->a:Lorg/apache/cordova/CordovaWebViewImpl;

    .line 9
    .line 10
    iget-object v0, v0, Lorg/apache/cordova/CordovaWebViewImpl;->a:Lorg/apache/cordova/l0;

    .line 11
    .line 12
    iget-object v1, v0, Lorg/apache/cordova/l0;->a:Ljava/util/Map;

    .line 13
    .line 14
    monitor-enter v1

    .line 15
    :try_start_e
    iget-object v0, v0, Lorg/apache/cordova/l0;->a:Ljava/util/Map;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2c

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lorg/apache/cordova/o;

    .line 36
    .line 37
    if-eqz v2, :cond_18

    .line 38
    .line 39
    invoke-virtual {v2}, Lorg/apache/cordova/o;->onReset()V

    .line 40
    .line 41
    .line 42
    goto :goto_18

    .line 43
    :catchall_2a
    move-exception p1

    .line 44
    goto :goto_37

    .line 45
    :cond_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_e .. :try_end_2d} :catchall_2a

    .line 46
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;->a:Lorg/apache/cordova/CordovaWebViewImpl;

    .line 47
    .line 48
    iget-object v0, v0, Lorg/apache/cordova/CordovaWebViewImpl;->a:Lorg/apache/cordova/l0;

    .line 49
    .line 50
    const-string v1, "onPageStarted"

    .line 51
    .line 52
    invoke-virtual {v0, v1, p1}, Lorg/apache/cordova/l0;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :goto_37
    :try_start_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_2a

    .line 57
    throw p1
.end method

.method public onReceivedError(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;->clearLoadTimeoutTimer()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/json/JSONObject;

    .line 5
    .line 6
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 7
    .line 8
    .line 9
    :try_start_8
    const-string v1, "errorCode"

    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    const-string p1, "description"

    .line 15
    .line 16
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    .line 18
    .line 19
    const-string p1, "url"

    .line 20
    .line 21
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_17} :catch_18

    .line 22
    .line 23
    .line 24
    goto :goto_1c

    .line 25
    :catch_18
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    .line 28
    .line 29
    :goto_1c
    iget-object p1, p0, Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;->a:Lorg/apache/cordova/CordovaWebViewImpl;

    .line 30
    .line 31
    iget-object p1, p1, Lorg/apache/cordova/CordovaWebViewImpl;->a:Lorg/apache/cordova/l0;

    .line 32
    .line 33
    const-string p2, "onReceivedError"

    .line 34
    .line 35
    invoke-virtual {p1, p2, v0}, Lorg/apache/cordova/l0;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    return-void
.end method

###### Class org.apache.cordova.NativeToJsMessageQueue$NoOpBridgeMode (org.apache.cordova.NativeToJsMessageQueue$NoOpBridgeMode)
.class public Lorg/apache/cordova/NativeToJsMessageQueue$NoOpBridgeMode;
.super Lorg/apache/cordova/f0;
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


# virtual methods
.method public onNativeToJsMessageAvailable(Lorg/apache/cordova/i0;)V
    .registers 2

    .line 1
    return-void
.end method
