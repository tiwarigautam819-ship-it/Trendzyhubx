###### Class com.getcapacitor.plugin.CapacitorCookies (com.getcapacitor.plugin.CapacitorCookies)
.class public Lcom/getcapacitor/plugin/CapacitorCookies;
.super Lcom/getcapacitor/Plugin;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation runtime Lcom/getcapacitor/annotation/CapacitorPlugin;
.end annotation


# instance fields
.field cookieManager:Lcom/getcapacitor/plugin/CapacitorCookieManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/getcapacitor/Plugin;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/getcapacitor/PluginCall;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/getcapacitor/plugin/CapacitorCookies;->lambda$getCookies$0(Lcom/getcapacitor/PluginCall;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$getCookies$0(Lcom/getcapacitor/PluginCall;Ljava/lang/String;)V
    .registers 13

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v0, ";"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance v0, Lcom/getcapacitor/JSObject;

    .line 18
    .line 19
    invoke-direct {v0}, Lcom/getcapacitor/JSObject;-><init>()V

    .line 20
    .line 21
    .line 22
    array-length v2, p1

    .line 23
    const/4 v3, 0x0

    .line 24
    move v4, v3

    .line 25
    :goto_18
    if-ge v4, v2, :cond_5c

    .line 26
    .line 27
    aget-object v5, p1, v4

    .line 28
    .line 29
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    if-lez v6, :cond_59

    .line 34
    .line 35
    const-string v6, "="

    .line 36
    .line 37
    const/4 v7, 0x2

    .line 38
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    array-length v6, v5

    .line 43
    if-ne v6, v7, :cond_59

    .line 44
    .line 45
    aget-object v6, v5, v3

    .line 46
    .line 47
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    aget-object v7, v5, v1

    .line 52
    .line 53
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    :try_start_38
    aget-object v8, v5, v3

    .line 58
    .line 59
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 64
    .line 65
    invoke-virtual {v9}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v10

    .line 69
    invoke-static {v8, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    aget-object v5, v5, v1

    .line 74
    .line 75
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-virtual {v9}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    invoke-static {v5, v8}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v7
    :try_end_56
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_38 .. :try_end_56} :catch_56

    .line 87
    :catch_56
    invoke-virtual {v0, v6, v7}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/getcapacitor/JSObject;

    .line 88
    .line 89
    .line 90
    :cond_59
    add-int/lit8 v4, v4, 0x1

    .line 91
    .line 92
    goto :goto_18

    .line 93
    :cond_5c
    invoke-virtual {p0, v0}, Lcom/getcapacitor/PluginCall;->resolve(Lcom/getcapacitor/JSObject;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method


# virtual methods
.method public clearAllCookies(Lcom/getcapacitor/PluginCall;)V
    .registers 3
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/plugin/CapacitorCookies;->cookieManager:Lcom/getcapacitor/plugin/CapacitorCookieManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/getcapacitor/plugin/CapacitorCookieManager;->removeAllCookies()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->resolve()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public clearCookies(Lcom/getcapacitor/PluginCall;)V
    .registers 9
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/getcapacitor/PluginCall;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/getcapacitor/plugin/CapacitorCookies;->cookieManager:Lcom/getcapacitor/plugin/CapacitorCookieManager;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lcom/getcapacitor/plugin/CapacitorCookieManager;->getCookies(Ljava/lang/String;)[Ljava/net/HttpCookie;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    array-length v2, v1

    .line 14
    const/4 v3, 0x0

    .line 15
    :goto_e
    if-ge v3, v2, :cond_2f

    .line 16
    .line 17
    aget-object v4, v1, v3

    .line 18
    .line 19
    iget-object v5, p0, Lcom/getcapacitor/plugin/CapacitorCookies;->cookieManager:Lcom/getcapacitor/plugin/CapacitorCookieManager;

    .line 20
    .line 21
    new-instance v6, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v4, "=; Expires=Wed, 31 Dec 2000 23:59:59 GMT"

    .line 34
    .line 35
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v5, v0, v4}, Lcom/getcapacitor/plugin/CapacitorCookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    add-int/lit8 v3, v3, 0x1

    .line 46
    .line 47
    goto :goto_e

    .line 48
    :cond_2f
    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->resolve()V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public deleteCookie(Lcom/getcapacitor/PluginCall;)V
    .registers 6
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/getcapacitor/PluginCall;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_d

    .line 8
    .line 9
    const-string v1, "Must provide key"

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_d
    const-string v1, "url"

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Lcom/getcapacitor/PluginCall;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v2, p0, Lcom/getcapacitor/plugin/CapacitorCookies;->cookieManager:Lcom/getcapacitor/plugin/CapacitorCookieManager;

    .line 21
    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, "=; Expires=Wed, 31 Dec 2000 23:59:59 GMT"

    .line 31
    .line 32
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v2, v1, v0}, Lcom/getcapacitor/plugin/CapacitorCookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->resolve()V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public getCookies(Lcom/getcapacitor/PluginCall;)V
    .registers 4
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Plugin;->bridge:Lcom/getcapacitor/Bridge;

    .line 2
    .line 3
    new-instance v1, Lcom/getcapacitor/plugin/a;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/getcapacitor/plugin/a;-><init>(Lcom/getcapacitor/PluginCall;)V

    .line 6
    .line 7
    .line 8
    const-string p1, "document.cookie"

    .line 9
    .line 10
    invoke-virtual {v0, p1, v1}, Lcom/getcapacitor/Bridge;->eval(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public handleOnDestroy()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/getcapacitor/Plugin;->handleOnDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/getcapacitor/plugin/CapacitorCookies;->cookieManager:Lcom/getcapacitor/plugin/CapacitorCookieManager;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/getcapacitor/plugin/CapacitorCookieManager;->removeSessionCookies()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public isEnabled()Z
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/getcapacitor/Plugin;->getBridge()Lcom/getcapacitor/Bridge;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/getcapacitor/Bridge;->getConfig()Lcom/getcapacitor/CapConfig;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "CapacitorCookies"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/getcapacitor/CapConfig;->getPluginConfiguration(Ljava/lang/String;)Lcom/getcapacitor/PluginConfig;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "enabled"

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/getcapacitor/PluginConfig;->getBoolean(Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    return v0
.end method

.method public load()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Plugin;->bridge:Lcom/getcapacitor/Bridge;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/getcapacitor/Bridge;->getWebView()Landroid/webkit/WebView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "CapacitorCookiesAndroidInterface"

    .line 8
    .line 9
    invoke-virtual {v0, p0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/getcapacitor/plugin/CapacitorCookieManager;

    .line 13
    .line 14
    sget-object v1, Ljava/net/CookiePolicy;->ACCEPT_ALL:Ljava/net/CookiePolicy;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/getcapacitor/Plugin;->bridge:Lcom/getcapacitor/Bridge;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-direct {v0, v3, v1, v2}, Lcom/getcapacitor/plugin/CapacitorCookieManager;-><init>(Ljava/net/CookieStore;Ljava/net/CookiePolicy;Lcom/getcapacitor/Bridge;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/getcapacitor/plugin/CapacitorCookies;->cookieManager:Lcom/getcapacitor/plugin/CapacitorCookieManager;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/getcapacitor/plugin/CapacitorCookieManager;->removeSessionCookies()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/getcapacitor/plugin/CapacitorCookies;->cookieManager:Lcom/getcapacitor/plugin/CapacitorCookieManager;

    .line 28
    .line 29
    invoke-static {v0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    .line 30
    .line 31
    .line 32
    invoke-super {p0}, Lcom/getcapacitor/Plugin;->load()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public setCookie(Lcom/getcapacitor/PluginCall;)V
    .registers 9
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 2
    const-string v0, "key"

    invoke-virtual {p1, v0}, Lcom/getcapacitor/PluginCall;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_d

    .line 3
    const-string v0, "Must provide key"

    invoke-virtual {p1, v0}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;)V

    .line 4
    :cond_d
    const-string v0, "value"

    invoke-virtual {p1, v0}, Lcom/getcapacitor/PluginCall;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1a

    .line 5
    const-string v0, "Must provide value"

    invoke-virtual {p1, v0}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;)V

    .line 6
    :cond_1a
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lcom/getcapacitor/PluginCall;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7
    const-string v0, "expires"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/getcapacitor/PluginCall;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 8
    const-string v0, "path"

    const-string v1, "/"

    invoke-virtual {p1, v0, v1}, Lcom/getcapacitor/PluginCall;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 9
    iget-object v1, p0, Lcom/getcapacitor/plugin/CapacitorCookies;->cookieManager:Lcom/getcapacitor/plugin/CapacitorCookieManager;

    invoke-virtual/range {v1 .. v6}, Lcom/getcapacitor/plugin/CapacitorCookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->resolve()V

    return-void
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/plugin/CapacitorCookies;->cookieManager:Lcom/getcapacitor/plugin/CapacitorCookieManager;

    invoke-virtual {v0, p1, p2}, Lcom/getcapacitor/plugin/CapacitorCookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class com.getcapacitor.plugin.a (com.getcapacitor.plugin.a)
.class public final synthetic Lcom/getcapacitor/plugin/a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic a:Lcom/getcapacitor/PluginCall;


# direct methods
.method public synthetic constructor <init>(Lcom/getcapacitor/PluginCall;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/getcapacitor/plugin/a;->a:Lcom/getcapacitor/PluginCall;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/plugin/a;->a:Lcom/getcapacitor/PluginCall;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/getcapacitor/plugin/CapacitorCookies;->c(Lcom/getcapacitor/PluginCall;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
