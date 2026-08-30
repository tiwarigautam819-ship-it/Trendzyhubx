###### Class com.getcapacitor.CapConfig (com.getcapacitor.CapConfig)
.class public Lcom/getcapacitor/CapConfig;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/getcapacitor/CapConfig$Builder;
    }
.end annotation


# static fields
.field private static final LOG_BEHAVIOR_DEBUG:Ljava/lang/String; = "debug"

.field private static final LOG_BEHAVIOR_NONE:Ljava/lang/String; = "none"

.field private static final LOG_BEHAVIOR_PRODUCTION:Ljava/lang/String; = "production"


# instance fields
.field private adjustMarginsForEdgeToEdge:Ljava/lang/String;

.field private allowMixedContent:Z

.field private allowNavigation:[Ljava/lang/String;

.field private androidScheme:Ljava/lang/String;

.field private appendedUserAgentString:Ljava/lang/String;

.field private backgroundColor:Ljava/lang/String;

.field private captureInput:Z

.field private configJSON:Lorg/json/JSONObject;

.field private errorPath:Ljava/lang/String;

.field private hostname:Ljava/lang/String;

.field private html5mode:Z

.field private initialFocus:Z

.field private loggingEnabled:Z

.field private minHuaweiWebViewVersion:I

.field private minWebViewVersion:I

.field private overriddenUserAgentString:Ljava/lang/String;

.field private pluginsConfiguration:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/getcapacitor/PluginConfig;",
            ">;"
        }
    .end annotation
.end field

.field private resolveServiceWorkerRequests:Z

.field private serverUrl:Ljava/lang/String;

.field private startPath:Ljava/lang/String;

.field private useLegacyBridge:Z

.field private webContentsDebuggingEnabled:Z

.field private zoomableWebView:Z


# direct methods
.method private constructor <init>()V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/getcapacitor/CapConfig;->html5mode:Z

    .line 4
    const-string v1, "localhost"

    iput-object v1, p0, Lcom/getcapacitor/CapConfig;->hostname:Ljava/lang/String;

    .line 5
    const-string v1, "https"

    iput-object v1, p0, Lcom/getcapacitor/CapConfig;->androidScheme:Ljava/lang/String;

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lcom/getcapacitor/CapConfig;->allowMixedContent:Z

    .line 7
    iput-boolean v1, p0, Lcom/getcapacitor/CapConfig;->captureInput:Z

    .line 8
    iput-boolean v1, p0, Lcom/getcapacitor/CapConfig;->webContentsDebuggingEnabled:Z

    .line 9
    iput-boolean v0, p0, Lcom/getcapacitor/CapConfig;->loggingEnabled:Z

    .line 10
    iput-boolean v0, p0, Lcom/getcapacitor/CapConfig;->initialFocus:Z

    .line 11
    iput-boolean v1, p0, Lcom/getcapacitor/CapConfig;->useLegacyBridge:Z

    const/16 v2, 0x3c

    .line 12
    iput v2, p0, Lcom/getcapacitor/CapConfig;->minWebViewVersion:I

    const/16 v2, 0xa

    .line 13
    iput v2, p0, Lcom/getcapacitor/CapConfig;->minHuaweiWebViewVersion:I

    .line 14
    iput-boolean v1, p0, Lcom/getcapacitor/CapConfig;->zoomableWebView:Z

    .line 15
    iput-boolean v0, p0, Lcom/getcapacitor/CapConfig;->resolveServiceWorkerRequests:Z

    .line 16
    const-string v0, "disable"

    iput-object v0, p0, Lcom/getcapacitor/CapConfig;->adjustMarginsForEdgeToEdge:Ljava/lang/String;

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/getcapacitor/CapConfig;->pluginsConfiguration:Ljava/util/Map;

    .line 18
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Lorg/json/JSONObject;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/getcapacitor/CapConfig;->html5mode:Z

    .line 21
    const-string v1, "localhost"

    iput-object v1, p0, Lcom/getcapacitor/CapConfig;->hostname:Ljava/lang/String;

    .line 22
    const-string v1, "https"

    iput-object v1, p0, Lcom/getcapacitor/CapConfig;->androidScheme:Ljava/lang/String;

    const/4 v1, 0x0

    .line 23
    iput-boolean v1, p0, Lcom/getcapacitor/CapConfig;->allowMixedContent:Z

    .line 24
    iput-boolean v1, p0, Lcom/getcapacitor/CapConfig;->captureInput:Z

    .line 25
    iput-boolean v1, p0, Lcom/getcapacitor/CapConfig;->webContentsDebuggingEnabled:Z

    .line 26
    iput-boolean v0, p0, Lcom/getcapacitor/CapConfig;->loggingEnabled:Z

    .line 27
    iput-boolean v0, p0, Lcom/getcapacitor/CapConfig;->initialFocus:Z

    .line 28
    iput-boolean v1, p0, Lcom/getcapacitor/CapConfig;->useLegacyBridge:Z

    const/16 v2, 0x3c

    .line 29
    iput v2, p0, Lcom/getcapacitor/CapConfig;->minWebViewVersion:I

    const/16 v2, 0xa

    .line 30
    iput v2, p0, Lcom/getcapacitor/CapConfig;->minHuaweiWebViewVersion:I

    .line 31
    iput-boolean v1, p0, Lcom/getcapacitor/CapConfig;->zoomableWebView:Z

    .line 32
    iput-boolean v0, p0, Lcom/getcapacitor/CapConfig;->resolveServiceWorkerRequests:Z

    .line 33
    const-string v0, "disable"

    iput-object v0, p0, Lcom/getcapacitor/CapConfig;->adjustMarginsForEdgeToEdge:Ljava/lang/String;

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/getcapacitor/CapConfig;->pluginsConfiguration:Ljava/util/Map;

    .line 35
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    if-eqz p2, :cond_3a

    .line 36
    iput-object p2, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    goto :goto_3d

    .line 37
    :cond_3a
    invoke-direct {p0, p1, v0}, Lcom/getcapacitor/CapConfig;->loadConfigFromAssets(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    .line 38
    :goto_3d
    invoke-direct {p0, v0}, Lcom/getcapacitor/CapConfig;->deserializeConfig(Landroid/content/Context;)V

    return-void
.end method

.method private constructor <init>(Lcom/getcapacitor/CapConfig$Builder;)V
    .registers 5

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/getcapacitor/CapConfig;->html5mode:Z

    .line 41
    const-string v1, "localhost"

    iput-object v1, p0, Lcom/getcapacitor/CapConfig;->hostname:Ljava/lang/String;

    .line 42
    const-string v1, "https"

    iput-object v1, p0, Lcom/getcapacitor/CapConfig;->androidScheme:Ljava/lang/String;

    const/4 v1, 0x0

    .line 43
    iput-boolean v1, p0, Lcom/getcapacitor/CapConfig;->allowMixedContent:Z

    .line 44
    iput-boolean v1, p0, Lcom/getcapacitor/CapConfig;->captureInput:Z

    .line 45
    iput-boolean v1, p0, Lcom/getcapacitor/CapConfig;->webContentsDebuggingEnabled:Z

    .line 46
    iput-boolean v0, p0, Lcom/getcapacitor/CapConfig;->loggingEnabled:Z

    .line 47
    iput-boolean v0, p0, Lcom/getcapacitor/CapConfig;->initialFocus:Z

    .line 48
    iput-boolean v1, p0, Lcom/getcapacitor/CapConfig;->useLegacyBridge:Z

    const/16 v2, 0x3c

    .line 49
    iput v2, p0, Lcom/getcapacitor/CapConfig;->minWebViewVersion:I

    const/16 v2, 0xa

    .line 50
    iput v2, p0, Lcom/getcapacitor/CapConfig;->minHuaweiWebViewVersion:I

    .line 51
    iput-boolean v1, p0, Lcom/getcapacitor/CapConfig;->zoomableWebView:Z

    .line 52
    iput-boolean v0, p0, Lcom/getcapacitor/CapConfig;->resolveServiceWorkerRequests:Z

    .line 53
    const-string v0, "disable"

    iput-object v0, p0, Lcom/getcapacitor/CapConfig;->adjustMarginsForEdgeToEdge:Ljava/lang/String;

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/getcapacitor/CapConfig;->pluginsConfiguration:Ljava/util/Map;

    .line 55
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    .line 56
    invoke-static {p1}, Lcom/getcapacitor/CapConfig$Builder;->j(Lcom/getcapacitor/CapConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/getcapacitor/CapConfig;->html5mode:Z

    .line 57
    invoke-static {p1}, Lcom/getcapacitor/CapConfig$Builder;->r(Lcom/getcapacitor/CapConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/getcapacitor/CapConfig;->serverUrl:Ljava/lang/String;

    .line 58
    invoke-static {p1}, Lcom/getcapacitor/CapConfig$Builder;->i(Lcom/getcapacitor/CapConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/getcapacitor/CapConfig;->hostname:Ljava/lang/String;

    .line 59
    invoke-static {p1}, Lcom/getcapacitor/CapConfig$Builder;->d(Lcom/getcapacitor/CapConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/getcapacitor/CapConfig;->validateScheme(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 60
    invoke-static {p1}, Lcom/getcapacitor/CapConfig$Builder;->d(Lcom/getcapacitor/CapConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/getcapacitor/CapConfig;->androidScheme:Ljava/lang/String;

    .line 61
    :cond_57
    invoke-static {p1}, Lcom/getcapacitor/CapConfig$Builder;->c(Lcom/getcapacitor/CapConfig$Builder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/getcapacitor/CapConfig;->allowNavigation:[Ljava/lang/String;

    .line 62
    invoke-static {p1}, Lcom/getcapacitor/CapConfig$Builder;->o(Lcom/getcapacitor/CapConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/getcapacitor/CapConfig;->overriddenUserAgentString:Ljava/lang/String;

    .line 63
    invoke-static {p1}, Lcom/getcapacitor/CapConfig$Builder;->e(Lcom/getcapacitor/CapConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/getcapacitor/CapConfig;->appendedUserAgentString:Ljava/lang/String;

    .line 64
    invoke-static {p1}, Lcom/getcapacitor/CapConfig$Builder;->f(Lcom/getcapacitor/CapConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/getcapacitor/CapConfig;->backgroundColor:Ljava/lang/String;

    .line 65
    invoke-static {p1}, Lcom/getcapacitor/CapConfig$Builder;->b(Lcom/getcapacitor/CapConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/getcapacitor/CapConfig;->allowMixedContent:Z

    .line 66
    invoke-static {p1}, Lcom/getcapacitor/CapConfig$Builder;->g(Lcom/getcapacitor/CapConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/getcapacitor/CapConfig;->captureInput:Z

    .line 67
    invoke-static {p1}, Lcom/getcapacitor/CapConfig$Builder;->u(Lcom/getcapacitor/CapConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/getcapacitor/CapConfig;->webContentsDebuggingEnabled:Z

    .line 68
    invoke-static {p1}, Lcom/getcapacitor/CapConfig$Builder;->l(Lcom/getcapacitor/CapConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/getcapacitor/CapConfig;->loggingEnabled:Z

    .line 69
    invoke-static {p1}, Lcom/getcapacitor/CapConfig$Builder;->k(Lcom/getcapacitor/CapConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/getcapacitor/CapConfig;->initialFocus:Z

    .line 70
    invoke-static {p1}, Lcom/getcapacitor/CapConfig$Builder;->t(Lcom/getcapacitor/CapConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/getcapacitor/CapConfig;->useLegacyBridge:Z

    .line 71
    invoke-static {p1}, Lcom/getcapacitor/CapConfig$Builder;->n(Lcom/getcapacitor/CapConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/getcapacitor/CapConfig;->minWebViewVersion:I

    .line 72
    invoke-static {p1}, Lcom/getcapacitor/CapConfig$Builder;->m(Lcom/getcapacitor/CapConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/getcapacitor/CapConfig;->minHuaweiWebViewVersion:I

    .line 73
    invoke-static {p1}, Lcom/getcapacitor/CapConfig$Builder;->h(Lcom/getcapacitor/CapConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/getcapacitor/CapConfig;->errorPath:Ljava/lang/String;

    .line 74
    invoke-static {p1}, Lcom/getcapacitor/CapConfig$Builder;->v(Lcom/getcapacitor/CapConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/getcapacitor/CapConfig;->zoomableWebView:Z

    .line 75
    invoke-static {p1}, Lcom/getcapacitor/CapConfig$Builder;->q(Lcom/getcapacitor/CapConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/getcapacitor/CapConfig;->resolveServiceWorkerRequests:Z

    .line 76
    invoke-static {p1}, Lcom/getcapacitor/CapConfig$Builder;->a(Lcom/getcapacitor/CapConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/getcapacitor/CapConfig;->adjustMarginsForEdgeToEdge:Ljava/lang/String;

    .line 77
    invoke-static {p1}, Lcom/getcapacitor/CapConfig$Builder;->s(Lcom/getcapacitor/CapConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/getcapacitor/CapConfig;->startPath:Ljava/lang/String;

    .line 78
    invoke-static {p1}, Lcom/getcapacitor/CapConfig$Builder;->p(Lcom/getcapacitor/CapConfig$Builder;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/getcapacitor/CapConfig;->pluginsConfiguration:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/getcapacitor/CapConfig$Builder;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/getcapacitor/CapConfig;-><init>(Lcom/getcapacitor/CapConfig$Builder;)V

    return-void
.end method

.method public static bridge synthetic a(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/getcapacitor/CapConfig;->deserializePluginsConfig(Lorg/json/JSONObject;)Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private deserializeConfig(Landroid/content/Context;)V
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_10

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 10
    .line 11
    and-int/lit8 p1, p1, 0x2

    .line 12
    .line 13
    if-eqz p1, :cond_10

    .line 14
    .line 15
    move p1, v1

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    move p1, v0

    .line 18
    :goto_11
    iget-object v2, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    .line 19
    .line 20
    const-string v3, "server.html5mode"

    .line 21
    .line 22
    iget-boolean v4, p0, Lcom/getcapacitor/CapConfig;->html5mode:Z

    .line 23
    .line 24
    invoke-static {v2, v3, v4}, Lcom/getcapacitor/util/JSONUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    iput-boolean v2, p0, Lcom/getcapacitor/CapConfig;->html5mode:Z

    .line 29
    .line 30
    iget-object v2, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    .line 31
    .line 32
    const-string v3, "server.url"

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    invoke-static {v2, v3, v4}, Lcom/getcapacitor/util/JSONUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    iput-object v2, p0, Lcom/getcapacitor/CapConfig;->serverUrl:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v2, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    .line 42
    .line 43
    const-string v3, "server.hostname"

    .line 44
    .line 45
    iget-object v5, p0, Lcom/getcapacitor/CapConfig;->hostname:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v2, v3, v5}, Lcom/getcapacitor/util/JSONUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    iput-object v2, p0, Lcom/getcapacitor/CapConfig;->hostname:Ljava/lang/String;

    .line 52
    .line 53
    iget-object v2, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    .line 54
    .line 55
    const-string v3, "server.errorPath"

    .line 56
    .line 57
    invoke-static {v2, v3, v4}, Lcom/getcapacitor/util/JSONUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    iput-object v2, p0, Lcom/getcapacitor/CapConfig;->errorPath:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v2, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    .line 64
    .line 65
    const-string v3, "server.appStartPath"

    .line 66
    .line 67
    invoke-static {v2, v3, v4}, Lcom/getcapacitor/util/JSONUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    iput-object v2, p0, Lcom/getcapacitor/CapConfig;->startPath:Ljava/lang/String;

    .line 72
    .line 73
    iget-object v2, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    .line 74
    .line 75
    const-string v3, "server.androidScheme"

    .line 76
    .line 77
    iget-object v5, p0, Lcom/getcapacitor/CapConfig;->androidScheme:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {v2, v3, v5}, Lcom/getcapacitor/util/JSONUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-direct {p0, v2}, Lcom/getcapacitor/CapConfig;->validateScheme(Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-eqz v3, :cond_5a

    .line 88
    .line 89
    iput-object v2, p0, Lcom/getcapacitor/CapConfig;->androidScheme:Ljava/lang/String;

    .line 90
    .line 91
    :cond_5a
    iget-object v2, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    .line 92
    .line 93
    const-string v3, "server.allowNavigation"

    .line 94
    .line 95
    invoke-static {v2, v3, v4}, Lcom/getcapacitor/util/JSONUtils;->getArray(Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    iput-object v2, p0, Lcom/getcapacitor/CapConfig;->allowNavigation:[Ljava/lang/String;

    .line 100
    .line 101
    iget-object v2, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    .line 102
    .line 103
    const-string v3, "overrideUserAgent"

    .line 104
    .line 105
    invoke-static {v2, v3, v4}, Lcom/getcapacitor/util/JSONUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    const-string v5, "android.overrideUserAgent"

    .line 110
    .line 111
    invoke-static {v2, v5, v3}, Lcom/getcapacitor/util/JSONUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    iput-object v2, p0, Lcom/getcapacitor/CapConfig;->overriddenUserAgentString:Ljava/lang/String;

    .line 116
    .line 117
    iget-object v2, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    .line 118
    .line 119
    const-string v3, "appendUserAgent"

    .line 120
    .line 121
    invoke-static {v2, v3, v4}, Lcom/getcapacitor/util/JSONUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    const-string v5, "android.appendUserAgent"

    .line 126
    .line 127
    invoke-static {v2, v5, v3}, Lcom/getcapacitor/util/JSONUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    iput-object v2, p0, Lcom/getcapacitor/CapConfig;->appendedUserAgentString:Ljava/lang/String;

    .line 132
    .line 133
    iget-object v2, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    .line 134
    .line 135
    const-string v3, "backgroundColor"

    .line 136
    .line 137
    invoke-static {v2, v3, v4}, Lcom/getcapacitor/util/JSONUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    const-string v4, "android.backgroundColor"

    .line 142
    .line 143
    invoke-static {v2, v4, v3}, Lcom/getcapacitor/util/JSONUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    iput-object v2, p0, Lcom/getcapacitor/CapConfig;->backgroundColor:Ljava/lang/String;

    .line 148
    .line 149
    iget-object v2, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    .line 150
    .line 151
    const-string v3, "allowMixedContent"

    .line 152
    .line 153
    iget-boolean v4, p0, Lcom/getcapacitor/CapConfig;->allowMixedContent:Z

    .line 154
    .line 155
    invoke-static {v2, v3, v4}, Lcom/getcapacitor/util/JSONUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    const-string v4, "android.allowMixedContent"

    .line 160
    .line 161
    invoke-static {v2, v4, v3}, Lcom/getcapacitor/util/JSONUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    iput-boolean v2, p0, Lcom/getcapacitor/CapConfig;->allowMixedContent:Z

    .line 166
    .line 167
    iget-object v2, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    .line 168
    .line 169
    const-string v3, "android.minWebViewVersion"

    .line 170
    .line 171
    const/16 v4, 0x3c

    .line 172
    .line 173
    invoke-static {v2, v3, v4}, Lcom/getcapacitor/util/JSONUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    iput v2, p0, Lcom/getcapacitor/CapConfig;->minWebViewVersion:I

    .line 178
    .line 179
    iget-object v2, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    .line 180
    .line 181
    const-string v3, "android.minHuaweiWebViewVersion"

    .line 182
    .line 183
    const/16 v4, 0xa

    .line 184
    .line 185
    invoke-static {v2, v3, v4}, Lcom/getcapacitor/util/JSONUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    iput v2, p0, Lcom/getcapacitor/CapConfig;->minHuaweiWebViewVersion:I

    .line 190
    .line 191
    iget-object v2, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    .line 192
    .line 193
    const-string v3, "android.captureInput"

    .line 194
    .line 195
    iget-boolean v4, p0, Lcom/getcapacitor/CapConfig;->captureInput:Z

    .line 196
    .line 197
    invoke-static {v2, v3, v4}, Lcom/getcapacitor/util/JSONUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    iput-boolean v2, p0, Lcom/getcapacitor/CapConfig;->captureInput:Z

    .line 202
    .line 203
    iget-object v2, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    .line 204
    .line 205
    const-string v3, "android.useLegacyBridge"

    .line 206
    .line 207
    iget-boolean v4, p0, Lcom/getcapacitor/CapConfig;->useLegacyBridge:Z

    .line 208
    .line 209
    invoke-static {v2, v3, v4}, Lcom/getcapacitor/util/JSONUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    iput-boolean v2, p0, Lcom/getcapacitor/CapConfig;->useLegacyBridge:Z

    .line 214
    .line 215
    iget-object v2, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    .line 216
    .line 217
    const-string v3, "android.webContentsDebuggingEnabled"

    .line 218
    .line 219
    invoke-static {v2, v3, p1}, Lcom/getcapacitor/util/JSONUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 220
    .line 221
    .line 222
    move-result v2

    .line 223
    iput-boolean v2, p0, Lcom/getcapacitor/CapConfig;->webContentsDebuggingEnabled:Z

    .line 224
    .line 225
    iget-object v2, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    .line 226
    .line 227
    const-string v3, "zoomEnabled"

    .line 228
    .line 229
    invoke-static {v2, v3, v0}, Lcom/getcapacitor/util/JSONUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    const-string v4, "android.zoomEnabled"

    .line 234
    .line 235
    invoke-static {v2, v4, v3}, Lcom/getcapacitor/util/JSONUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    iput-boolean v2, p0, Lcom/getcapacitor/CapConfig;->zoomableWebView:Z

    .line 240
    .line 241
    iget-object v2, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    .line 242
    .line 243
    const-string v3, "android.resolveServiceWorkerRequests"

    .line 244
    .line 245
    invoke-static {v2, v3, v1}, Lcom/getcapacitor/util/JSONUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 246
    .line 247
    .line 248
    move-result v2

    .line 249
    iput-boolean v2, p0, Lcom/getcapacitor/CapConfig;->resolveServiceWorkerRequests:Z

    .line 250
    .line 251
    iget-object v2, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    .line 252
    .line 253
    const-string v3, "android.adjustMarginsForEdgeToEdge"

    .line 254
    .line 255
    const-string v4, "disable"

    .line 256
    .line 257
    invoke-static {v2, v3, v4}, Lcom/getcapacitor/util/JSONUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    iput-object v2, p0, Lcom/getcapacitor/CapConfig;->adjustMarginsForEdgeToEdge:Ljava/lang/String;

    .line 262
    .line 263
    iget-object v2, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    .line 264
    .line 265
    const-string v3, "loggingBehavior"

    .line 266
    .line 267
    const-string v4, "debug"

    .line 268
    .line 269
    invoke-static {v2, v3, v4}, Lcom/getcapacitor/util/JSONUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    const-string v4, "android.loggingBehavior"

    .line 274
    .line 275
    invoke-static {v2, v4, v3}, Lcom/getcapacitor/util/JSONUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 280
    .line 281
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 286
    .line 287
    .line 288
    const-string v3, "none"

    .line 289
    .line 290
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-result v3

    .line 294
    if-nez v3, :cond_135

    .line 295
    .line 296
    const-string v0, "production"

    .line 297
    .line 298
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    move-result v0

    .line 302
    if-nez v0, :cond_132

    .line 303
    .line 304
    iput-boolean p1, p0, Lcom/getcapacitor/CapConfig;->loggingEnabled:Z

    .line 305
    .line 306
    goto :goto_137

    .line 307
    :cond_132
    iput-boolean v1, p0, Lcom/getcapacitor/CapConfig;->loggingEnabled:Z

    .line 308
    .line 309
    goto :goto_137

    .line 310
    :cond_135
    iput-boolean v0, p0, Lcom/getcapacitor/CapConfig;->loggingEnabled:Z

    .line 311
    .line 312
    :goto_137
    iget-object p1, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    .line 313
    .line 314
    const-string v0, "initialFocus"

    .line 315
    .line 316
    iget-boolean v1, p0, Lcom/getcapacitor/CapConfig;->initialFocus:Z

    .line 317
    .line 318
    invoke-static {p1, v0, v1}, Lcom/getcapacitor/util/JSONUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 319
    .line 320
    .line 321
    move-result v0

    .line 322
    const-string v1, "android.initialFocus"

    .line 323
    .line 324
    invoke-static {p1, v1, v0}, Lcom/getcapacitor/util/JSONUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 325
    .line 326
    .line 327
    move-result p1

    .line 328
    iput-boolean p1, p0, Lcom/getcapacitor/CapConfig;->initialFocus:Z

    .line 329
    .line 330
    iget-object p1, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    .line 331
    .line 332
    const-string v0, "plugins"

    .line 333
    .line 334
    invoke-static {p1, v0}, Lcom/getcapacitor/util/JSONUtils;->getObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 335
    .line 336
    .line 337
    move-result-object p1

    .line 338
    invoke-static {p1}, Lcom/getcapacitor/CapConfig;->deserializePluginsConfig(Lorg/json/JSONObject;)Ljava/util/Map;

    .line 339
    .line 340
    .line 341
    move-result-object p1

    .line 342
    iput-object p1, p0, Lcom/getcapacitor/CapConfig;->pluginsConfiguration:Ljava/util/Map;

    .line 343
    .line 344
    return-void
.end method

.method private static deserializePluginsConfig(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/getcapacitor/PluginConfig;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    if-nez p0, :cond_8

    .line 7
    .line 8
    goto :goto_2a

    .line 9
    :cond_8
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_2a

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Ljava/lang/String;

    .line 24
    .line 25
    :try_start_18
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    new-instance v4, Lcom/getcapacitor/PluginConfig;

    .line 30
    .line 31
    invoke-direct {v4, v3}, Lcom/getcapacitor/PluginConfig;-><init>(Lorg/json/JSONObject;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_24} :catch_25

    .line 35
    .line 36
    .line 37
    goto :goto_c

    .line 38
    :catch_25
    move-exception v2

    .line 39
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    .line 41
    .line 42
    goto :goto_c

    .line 43
    :cond_2a
    :goto_2a
    return-object v0
.end method

.method private loadConfigFromAssets(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .registers 5

    .line 1
    if-nez p2, :cond_5

    .line 2
    .line 3
    const-string p2, ""

    .line 4
    .line 5
    goto :goto_19

    .line 6
    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    add-int/lit8 v0, v0, -0x1

    .line 11
    .line 12
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/16 v1, 0x2f

    .line 17
    .line 18
    if-eq v0, v1, :cond_19

    .line 19
    .line 20
    const-string v0, "/"

    .line 21
    .line 22
    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    :cond_19
    :goto_19
    :try_start_19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p2, "capacitor.config.json"

    .line 35
    .line 36
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-static {p1, p2}, Lcom/getcapacitor/FileUtils;->readFileFromAssets(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    new-instance p2, Lorg/json/JSONObject;

    .line 48
    .line 49
    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iput-object p2, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_35} :catch_38
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_35} :catch_36

    .line 53
    .line 54
    return-void

    .line 55
    :catch_36
    move-exception p1

    .line 56
    goto :goto_3a

    .line 57
    :catch_38
    move-exception p1

    .line 58
    goto :goto_40

    .line 59
    :goto_3a
    const-string p2, "Unable to parse capacitor.config.json. Make sure it\'s valid json"

    .line 60
    .line 61
    invoke-static {p2, p1}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    goto :goto_45

    .line 65
    :goto_40
    const-string p2, "Unable to load capacitor.config.json. Run npx cap copy first"

    .line 66
    .line 67
    invoke-static {p2, p1}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    :goto_45
    return-void
.end method

.method private loadConfigFromFile(Ljava/lang/String;)V
    .registers 4

    .line 1
    if-nez p1, :cond_5

    .line 2
    .line 3
    const-string p1, ""

    .line 4
    .line 5
    goto :goto_19

    .line 6
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    add-int/lit8 v0, v0, -0x1

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/16 v1, 0x2f

    .line 17
    .line 18
    if-eq v0, v1, :cond_19

    .line 19
    .line 20
    const-string v0, "/"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :cond_19
    :goto_19
    :try_start_19
    new-instance v0, Ljava/io/File;

    .line 27
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p1, "capacitor.config.json"

    .line 37
    .line 38
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lcom/getcapacitor/FileUtils;->readFileFromDisk(Ljava/io/File;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    new-instance v0, Lorg/json/JSONObject;

    .line 53
    .line 54
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;
    :try_end_3a
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_3a} :catch_3d
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_3a} :catch_3b

    .line 58
    .line 59
    return-void

    .line 60
    :catch_3b
    move-exception p1

    .line 61
    goto :goto_3f

    .line 62
    :catch_3d
    move-exception p1

    .line 63
    goto :goto_45

    .line 64
    :goto_3f
    const-string v0, "Unable to load capacitor.config.json."

    .line 65
    .line 66
    invoke-static {v0, p1}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    goto :goto_4a

    .line 70
    :goto_45
    const-string v0, "Unable to parse capacitor.config.json. Make sure it\'s valid json"

    .line 71
    .line 72
    invoke-static {v0, p1}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    :goto_4a
    return-void
.end method

.method public static loadDefault(Landroid/content/Context;)Lcom/getcapacitor/CapConfig;
    .registers 4

    .line 1
    new-instance v0, Lcom/getcapacitor/CapConfig;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/getcapacitor/CapConfig;-><init>()V

    .line 4
    .line 5
    .line 6
    if-nez p0, :cond_d

    .line 7
    .line 8
    const-string p0, "Capacitor Config could not be created from file. Context must not be null."

    .line 9
    .line 10
    invoke-static {p0}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_d
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-direct {v0, v1, v2}, Lcom/getcapacitor/CapConfig;->loadConfigFromAssets(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/getcapacitor/CapConfig;->deserializeConfig(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public static loadFromAssets(Landroid/content/Context;Ljava/lang/String;)Lcom/getcapacitor/CapConfig;
    .registers 4

    .line 1
    new-instance v0, Lcom/getcapacitor/CapConfig;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/getcapacitor/CapConfig;-><init>()V

    .line 4
    .line 5
    .line 6
    if-nez p0, :cond_d

    .line 7
    .line 8
    const-string p0, "Capacitor Config could not be created from file. Context must not be null."

    .line 9
    .line 10
    invoke-static {p0}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_d
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1, p1}, Lcom/getcapacitor/CapConfig;->loadConfigFromAssets(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/getcapacitor/CapConfig;->deserializeConfig(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method public static loadFromFile(Landroid/content/Context;Ljava/lang/String;)Lcom/getcapacitor/CapConfig;
    .registers 3

    .line 1
    new-instance v0, Lcom/getcapacitor/CapConfig;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/getcapacitor/CapConfig;-><init>()V

    .line 4
    .line 5
    .line 6
    if-nez p0, :cond_d

    .line 7
    .line 8
    const-string p0, "Capacitor Config could not be created from file. Context must not be null."

    .line 9
    .line 10
    invoke-static {p0}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_d
    invoke-direct {v0, p1}, Lcom/getcapacitor/CapConfig;->loadConfigFromFile(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/getcapacitor/CapConfig;->deserializeConfig(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method private validateScheme(Ljava/lang/String;)Z
    .registers 10

    .line 1
    const-string v6, "blob"

    .line 2
    .line 3
    const-string v7, "data"

    .line 4
    .line 5
    const-string v0, "file"

    .line 6
    .line 7
    const-string v1, "ftp"

    .line 8
    .line 9
    const-string v2, "ftps"

    .line 10
    .line 11
    const-string v3, "ws"

    .line 12
    .line 13
    const-string v4, "wss"

    .line 14
    .line 15
    const-string v5, "about"

    .line 16
    .line 17
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_34

    .line 30
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p1, " is not an allowed scheme.  Defaulting to https."

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p1}, Lcom/getcapacitor/Logger;->warn(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    return p1

    .line 53
    :cond_34
    const-string v0, "http"

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_5a

    .line 60
    .line 61
    const-string v0, "https"

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_5a

    .line 68
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v1, "Using a non-standard scheme: "

    .line 72
    .line 73
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string p1, " for Android. This is known to cause issues as of Android Webview 117."

    .line 80
    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-static {p1}, Lcom/getcapacitor/Logger;->warn(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :cond_5a
    const/4 p1, 0x1

    .line 92
    return p1
.end method


# virtual methods
.method public adjustMarginsForEdgeToEdge()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/CapConfig;->adjustMarginsForEdgeToEdge:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAllowNavigation()[Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/CapConfig;->allowNavigation:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAndroidScheme()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/CapConfig;->androidScheme:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAppendedUserAgentString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/CapConfig;->appendedUserAgentString:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getArray(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/getcapacitor/util/JSONUtils;->getArray(Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    invoke-static {v0, p1, p2}, Lcom/getcapacitor/util/JSONUtils;->getArray(Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getBackgroundColor()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/CapConfig;->backgroundColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/getcapacitor/util/JSONUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getErrorPath()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/CapConfig;->errorPath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHostname()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/CapConfig;->hostname:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/getcapacitor/util/JSONUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getMinHuaweiWebViewVersion()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/getcapacitor/CapConfig;->minHuaweiWebViewVersion:I

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    if-ge v0, v1, :cond_c

    .line 6
    .line 7
    const-string v0, "Specified minimum Huawei webview version is too low, defaulting to 10"

    .line 8
    .line 9
    invoke-static {v0}, Lcom/getcapacitor/Logger;->warn(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return v1

    .line 13
    :cond_c
    return v0
.end method

.method public getMinWebViewVersion()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/getcapacitor/CapConfig;->minWebViewVersion:I

    .line 2
    .line 3
    const/16 v1, 0x37

    .line 4
    .line 5
    if-ge v0, v1, :cond_c

    .line 6
    .line 7
    const-string v0, "Specified minimum webview version is too low, defaulting to 55"

    .line 8
    .line 9
    invoke-static {v0}, Lcom/getcapacitor/Logger;->warn(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return v1

    .line 13
    :cond_c
    return v0
.end method

.method public getObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 4
    .line 5
    .line 6
    move-result-object p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    .line 7
    return-object p1

    .line 8
    :catch_7
    const/4 p1, 0x0

    .line 9
    return-object p1
.end method

.method public getOverriddenUserAgentString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/CapConfig;->overriddenUserAgentString:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPluginConfiguration(Ljava/lang/String;)Lcom/getcapacitor/PluginConfig;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/CapConfig;->pluginsConfiguration:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/getcapacitor/PluginConfig;

    .line 8
    .line 9
    if-nez p1, :cond_14

    .line 10
    .line 11
    new-instance p1, Lcom/getcapacitor/PluginConfig;

    .line 12
    .line 13
    new-instance v0, Lorg/json/JSONObject;

    .line 14
    .line 15
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-direct {p1, v0}, Lcom/getcapacitor/PluginConfig;-><init>(Lorg/json/JSONObject;)V

    .line 19
    .line 20
    .line 21
    :cond_14
    return-object p1
.end method

.method public getServerUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/CapConfig;->serverUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStartPath()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/CapConfig;->startPath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/getcapacitor/util/JSONUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/getcapacitor/CapConfig;->configJSON:Lorg/json/JSONObject;

    invoke-static {v0, p1, p2}, Lcom/getcapacitor/util/JSONUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isHTML5Mode()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/getcapacitor/CapConfig;->html5mode:Z

    .line 2
    .line 3
    return v0
.end method

.method public isInitialFocus()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/getcapacitor/CapConfig;->initialFocus:Z

    .line 2
    .line 3
    return v0
.end method

.method public isInputCaptured()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/getcapacitor/CapConfig;->captureInput:Z

    .line 2
    .line 3
    return v0
.end method

.method public isLoggingEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/getcapacitor/CapConfig;->loggingEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public isMixedContentAllowed()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/getcapacitor/CapConfig;->allowMixedContent:Z

    .line 2
    .line 3
    return v0
.end method

.method public isResolveServiceWorkerRequests()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/getcapacitor/CapConfig;->resolveServiceWorkerRequests:Z

    .line 2
    .line 3
    return v0
.end method

.method public isUsingLegacyBridge()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/getcapacitor/CapConfig;->useLegacyBridge:Z

    .line 2
    .line 3
    return v0
.end method

.method public isWebContentsDebuggingEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/getcapacitor/CapConfig;->webContentsDebuggingEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public isZoomableWebView()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/getcapacitor/CapConfig;->zoomableWebView:Z

    .line 2
    .line 3
    return v0
.end method

###### Class com.getcapacitor.CapConfig.Builder (com.getcapacitor.CapConfig$Builder)
.class public Lcom/getcapacitor/CapConfig$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getcapacitor/CapConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private adjustMarginsForEdgeToEdge:Ljava/lang/String;

.field private allowMixedContent:Z

.field private allowNavigation:[Ljava/lang/String;

.field private androidScheme:Ljava/lang/String;

.field private appendedUserAgentString:Ljava/lang/String;

.field private backgroundColor:Ljava/lang/String;

.field private captureInput:Z

.field private context:Landroid/content/Context;

.field private errorPath:Ljava/lang/String;

.field private hostname:Ljava/lang/String;

.field private html5mode:Z

.field private initialFocus:Z

.field private loggingEnabled:Z

.field private minHuaweiWebViewVersion:I

.field private minWebViewVersion:I

.field private overriddenUserAgentString:Ljava/lang/String;

.field private pluginsConfiguration:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/getcapacitor/PluginConfig;",
            ">;"
        }
    .end annotation
.end field

.field private resolveServiceWorkerRequests:Z

.field private serverUrl:Ljava/lang/String;

.field private startPath:Ljava/lang/String;

.field private useLegacyBridge:Z

.field private webContentsDebuggingEnabled:Ljava/lang/Boolean;

.field private zoomableWebView:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/getcapacitor/CapConfig$Builder;->html5mode:Z

    .line 6
    .line 7
    const-string v1, "localhost"

    .line 8
    .line 9
    iput-object v1, p0, Lcom/getcapacitor/CapConfig$Builder;->hostname:Ljava/lang/String;

    .line 10
    .line 11
    const-string v1, "https"

    .line 12
    .line 13
    iput-object v1, p0, Lcom/getcapacitor/CapConfig$Builder;->androidScheme:Ljava/lang/String;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput-boolean v1, p0, Lcom/getcapacitor/CapConfig$Builder;->allowMixedContent:Z

    .line 17
    .line 18
    iput-boolean v1, p0, Lcom/getcapacitor/CapConfig$Builder;->captureInput:Z

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    iput-object v2, p0, Lcom/getcapacitor/CapConfig$Builder;->webContentsDebuggingEnabled:Ljava/lang/Boolean;

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/getcapacitor/CapConfig$Builder;->loggingEnabled:Z

    .line 24
    .line 25
    iput-boolean v1, p0, Lcom/getcapacitor/CapConfig$Builder;->initialFocus:Z

    .line 26
    .line 27
    iput-boolean v1, p0, Lcom/getcapacitor/CapConfig$Builder;->useLegacyBridge:Z

    .line 28
    .line 29
    const/16 v3, 0x3c

    .line 30
    .line 31
    iput v3, p0, Lcom/getcapacitor/CapConfig$Builder;->minWebViewVersion:I

    .line 32
    .line 33
    const/16 v3, 0xa

    .line 34
    .line 35
    iput v3, p0, Lcom/getcapacitor/CapConfig$Builder;->minHuaweiWebViewVersion:I

    .line 36
    .line 37
    iput-boolean v1, p0, Lcom/getcapacitor/CapConfig$Builder;->zoomableWebView:Z

    .line 38
    .line 39
    iput-boolean v0, p0, Lcom/getcapacitor/CapConfig$Builder;->resolveServiceWorkerRequests:Z

    .line 40
    .line 41
    const-string v0, "disable"

    .line 42
    .line 43
    iput-object v0, p0, Lcom/getcapacitor/CapConfig$Builder;->adjustMarginsForEdgeToEdge:Ljava/lang/String;

    .line 44
    .line 45
    iput-object v2, p0, Lcom/getcapacitor/CapConfig$Builder;->startPath:Ljava/lang/String;

    .line 46
    .line 47
    new-instance v0, Ljava/util/HashMap;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lcom/getcapacitor/CapConfig$Builder;->pluginsConfiguration:Ljava/util/Map;

    .line 53
    .line 54
    iput-object p1, p0, Lcom/getcapacitor/CapConfig$Builder;->context:Landroid/content/Context;

    .line 55
    .line 56
    return-void
.end method

.method public static bridge synthetic a(Lcom/getcapacitor/CapConfig$Builder;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/getcapacitor/CapConfig$Builder;->adjustMarginsForEdgeToEdge:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic b(Lcom/getcapacitor/CapConfig$Builder;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/getcapacitor/CapConfig$Builder;->allowMixedContent:Z

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic c(Lcom/getcapacitor/CapConfig$Builder;)[Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/getcapacitor/CapConfig$Builder;->allowNavigation:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic d(Lcom/getcapacitor/CapConfig$Builder;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/getcapacitor/CapConfig$Builder;->androidScheme:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic e(Lcom/getcapacitor/CapConfig$Builder;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/getcapacitor/CapConfig$Builder;->appendedUserAgentString:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic f(Lcom/getcapacitor/CapConfig$Builder;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/getcapacitor/CapConfig$Builder;->backgroundColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic g(Lcom/getcapacitor/CapConfig$Builder;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/getcapacitor/CapConfig$Builder;->captureInput:Z

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic h(Lcom/getcapacitor/CapConfig$Builder;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/getcapacitor/CapConfig$Builder;->errorPath:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic i(Lcom/getcapacitor/CapConfig$Builder;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/getcapacitor/CapConfig$Builder;->hostname:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic j(Lcom/getcapacitor/CapConfig$Builder;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/getcapacitor/CapConfig$Builder;->html5mode:Z

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic k(Lcom/getcapacitor/CapConfig$Builder;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/getcapacitor/CapConfig$Builder;->initialFocus:Z

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic l(Lcom/getcapacitor/CapConfig$Builder;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/getcapacitor/CapConfig$Builder;->loggingEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic m(Lcom/getcapacitor/CapConfig$Builder;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/getcapacitor/CapConfig$Builder;->minHuaweiWebViewVersion:I

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic n(Lcom/getcapacitor/CapConfig$Builder;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/getcapacitor/CapConfig$Builder;->minWebViewVersion:I

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic o(Lcom/getcapacitor/CapConfig$Builder;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/getcapacitor/CapConfig$Builder;->overriddenUserAgentString:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic p(Lcom/getcapacitor/CapConfig$Builder;)Ljava/util/Map;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/getcapacitor/CapConfig$Builder;->pluginsConfiguration:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic q(Lcom/getcapacitor/CapConfig$Builder;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/getcapacitor/CapConfig$Builder;->resolveServiceWorkerRequests:Z

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic r(Lcom/getcapacitor/CapConfig$Builder;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/getcapacitor/CapConfig$Builder;->serverUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic s(Lcom/getcapacitor/CapConfig$Builder;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/getcapacitor/CapConfig$Builder;->startPath:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic t(Lcom/getcapacitor/CapConfig$Builder;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/getcapacitor/CapConfig$Builder;->useLegacyBridge:Z

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic u(Lcom/getcapacitor/CapConfig$Builder;)Ljava/lang/Boolean;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/getcapacitor/CapConfig$Builder;->webContentsDebuggingEnabled:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic v(Lcom/getcapacitor/CapConfig$Builder;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/getcapacitor/CapConfig$Builder;->zoomableWebView:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public create()Lcom/getcapacitor/CapConfig;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/CapConfig$Builder;->webContentsDebuggingEnabled:Ljava/lang/Boolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_1a

    .line 5
    .line 6
    iget-object v0, p0, Lcom/getcapacitor/CapConfig$Builder;->context:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 13
    .line 14
    and-int/lit8 v0, v0, 0x2

    .line 15
    .line 16
    if-eqz v0, :cond_13

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    move v0, v1

    .line 21
    :goto_14
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/getcapacitor/CapConfig$Builder;->webContentsDebuggingEnabled:Ljava/lang/Boolean;

    .line 26
    .line 27
    :cond_1a
    new-instance v0, Lcom/getcapacitor/CapConfig;

    .line 28
    .line 29
    invoke-direct {v0, p0, v1}, Lcom/getcapacitor/CapConfig;-><init>(Lcom/getcapacitor/CapConfig$Builder;I)V

    .line 30
    .line 31
    .line 32
    return-object v0
.end method

.method public setAllowMixedContent(Z)Lcom/getcapacitor/CapConfig$Builder;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/getcapacitor/CapConfig$Builder;->allowMixedContent:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setAllowNavigation([Ljava/lang/String;)Lcom/getcapacitor/CapConfig$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/getcapacitor/CapConfig$Builder;->allowNavigation:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setAndroidScheme(Ljava/lang/String;)Lcom/getcapacitor/CapConfig$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/getcapacitor/CapConfig$Builder;->androidScheme:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setAppendedUserAgentString(Ljava/lang/String;)Lcom/getcapacitor/CapConfig$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/getcapacitor/CapConfig$Builder;->appendedUserAgentString:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setBackgroundColor(Ljava/lang/String;)Lcom/getcapacitor/CapConfig$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/getcapacitor/CapConfig$Builder;->backgroundColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setCaptureInput(Z)Lcom/getcapacitor/CapConfig$Builder;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/getcapacitor/CapConfig$Builder;->captureInput:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setErrorPath(Ljava/lang/String;)Lcom/getcapacitor/CapConfig$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/getcapacitor/CapConfig$Builder;->errorPath:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setHTML5mode(Z)Lcom/getcapacitor/CapConfig$Builder;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/getcapacitor/CapConfig$Builder;->html5mode:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setHostname(Ljava/lang/String;)Lcom/getcapacitor/CapConfig$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/getcapacitor/CapConfig$Builder;->hostname:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setInitialFocus(Z)Lcom/getcapacitor/CapConfig$Builder;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/getcapacitor/CapConfig$Builder;->initialFocus:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setLoggingEnabled(Z)Lcom/getcapacitor/CapConfig$Builder;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/getcapacitor/CapConfig$Builder;->loggingEnabled:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setOverriddenUserAgentString(Ljava/lang/String;)Lcom/getcapacitor/CapConfig$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/getcapacitor/CapConfig$Builder;->overriddenUserAgentString:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPluginsConfiguration(Lorg/json/JSONObject;)Lcom/getcapacitor/CapConfig$Builder;
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/getcapacitor/CapConfig;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/getcapacitor/CapConfig$Builder;->pluginsConfiguration:Ljava/util/Map;

    .line 6
    .line 7
    return-object p0
.end method

.method public setResolveServiceWorkerRequests(Z)Lcom/getcapacitor/CapConfig$Builder;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/getcapacitor/CapConfig$Builder;->resolveServiceWorkerRequests:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setServerUrl(Ljava/lang/String;)Lcom/getcapacitor/CapConfig$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/getcapacitor/CapConfig$Builder;->serverUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setStartPath(Ljava/lang/String;)Lcom/getcapacitor/CapConfig$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/getcapacitor/CapConfig$Builder;->startPath:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setUseLegacyBridge(Z)Lcom/getcapacitor/CapConfig$Builder;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/getcapacitor/CapConfig$Builder;->useLegacyBridge:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setWebContentsDebuggingEnabled(Z)Lcom/getcapacitor/CapConfig$Builder;
    .registers 2

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/getcapacitor/CapConfig$Builder;->webContentsDebuggingEnabled:Ljava/lang/Boolean;

    .line 6
    .line 7
    return-object p0
.end method

.method public setZoomableWebView(Z)Lcom/getcapacitor/CapConfig$Builder;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/getcapacitor/CapConfig$Builder;->zoomableWebView:Z

    .line 2
    .line 3
    return-object p0
.end method
