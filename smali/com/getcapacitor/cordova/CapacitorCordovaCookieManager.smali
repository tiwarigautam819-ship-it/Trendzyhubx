###### Class com.getcapacitor.cordova.CapacitorCordovaCookieManager (com.getcapacitor.cordova.CapacitorCordovaCookieManager)
.class Lcom/getcapacitor/cordova/CapacitorCordovaCookieManager;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lorg/apache/cordova/d0;


# instance fields
.field private final cookieManager:Landroid/webkit/CookieManager;

.field protected final webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/getcapacitor/cordova/CapacitorCordovaCookieManager;->webView:Landroid/webkit/WebView;

    .line 5
    .line 6
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/getcapacitor/cordova/CapacitorCordovaCookieManager;->cookieManager:Landroid/webkit/CookieManager;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, p1, v1}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public clearCookies()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/cordova/CapacitorCordovaCookieManager;->cookieManager:Landroid/webkit/CookieManager;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public flush()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/cordova/CapacitorCordovaCookieManager;->cookieManager:Landroid/webkit/CookieManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getCookie(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/cordova/CapacitorCordovaCookieManager;->cookieManager:Landroid/webkit/CookieManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/cordova/CapacitorCordovaCookieManager;->cookieManager:Landroid/webkit/CookieManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setCookiesEnabled(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/cordova/CapacitorCordovaCookieManager;->cookieManager:Landroid/webkit/CookieManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
