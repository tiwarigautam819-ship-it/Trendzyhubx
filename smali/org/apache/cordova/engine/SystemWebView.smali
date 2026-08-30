###### Class org.apache.cordova.engine.SystemWebView (org.apache.cordova.engine.SystemWebView)
.class public Lorg/apache/cordova/engine/SystemWebView;
.super Landroid/webkit/WebView;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public a:Lg8/e;

.field public b:Lg8/c;

.field public c:Lorg/apache/cordova/engine/SystemWebViewEngine;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/apache/cordova/engine/SystemWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebView;->c:Lorg/apache/cordova/engine/SystemWebViewEngine;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/apache/cordova/engine/SystemWebViewEngine;->e:Lorg/apache/cordova/u;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lorg/apache/cordova/u;->onDispatchKeyEvent(Landroid/view/KeyEvent;)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_f

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_f
    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method public getCordovaWebView()Lorg/apache/cordova/t;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebView;->c:Lorg/apache/cordova/engine/SystemWebViewEngine;

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/apache/cordova/engine/SystemWebViewEngine;->getCordovaWebView()Lorg/apache/cordova/t;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .registers 3

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lg8/c;

    .line 3
    .line 4
    iput-object v0, p0, Lorg/apache/cordova/engine/SystemWebView;->b:Lg8/c;

    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .registers 3

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lg8/e;

    .line 3
    .line 4
    iput-object v0, p0, Lorg/apache/cordova/engine/SystemWebView;->a:Lg8/e;

    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
