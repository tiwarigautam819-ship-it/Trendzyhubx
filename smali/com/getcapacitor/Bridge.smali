###### Class com.getcapacitor.Bridge (com.getcapacitor.Bridge)
.class public Lcom/getcapacitor/Bridge;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/getcapacitor/Bridge$Builder;
    }
.end annotation


# static fields
.field private static final BUNDLE_LAST_PLUGIN_CALL_METHOD_NAME_KEY:Ljava/lang/String; = "capacitorLastActivityPluginMethod"

.field private static final BUNDLE_LAST_PLUGIN_ID_KEY:Ljava/lang/String; = "capacitorLastActivityPluginId"

.field private static final BUNDLE_PLUGIN_CALL_BUNDLE_KEY:Ljava/lang/String; = "capacitorLastPluginCallBundle"

.field private static final BUNDLE_PLUGIN_CALL_OPTIONS_SAVED_KEY:Ljava/lang/String; = "capacitorLastPluginCallOptions"

.field public static final CAPACITOR_CONTENT_START:Ljava/lang/String; = "/_capacitor_content_"

.field public static final CAPACITOR_FILE_START:Ljava/lang/String; = "/_capacitor_file_"

.field public static final CAPACITOR_HTTPS_INTERCEPTOR_START:Ljava/lang/String; = "/_capacitor_https_interceptor_"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CAPACITOR_HTTPS_SCHEME:Ljava/lang/String; = "https"

.field public static final CAPACITOR_HTTP_INTERCEPTOR_START:Ljava/lang/String; = "/_capacitor_http_interceptor_"

.field public static final CAPACITOR_HTTP_INTERCEPTOR_URL_PARAM:Ljava/lang/String; = "u"

.field public static final CAPACITOR_HTTP_SCHEME:Ljava/lang/String; = "http"

.field public static final DEFAULT_ANDROID_WEBVIEW_VERSION:I = 0x3c

.field public static final DEFAULT_HUAWEI_WEBVIEW_VERSION:I = 0xa

.field public static final DEFAULT_WEB_ASSET_DIR:Ljava/lang/String; = "public"

.field private static final LAST_BINARY_VERSION_CODE:Ljava/lang/String; = "lastBinaryVersionCode"

.field private static final LAST_BINARY_VERSION_NAME:Ljava/lang/String; = "lastBinaryVersionName"

.field private static final MINIMUM_ANDROID_WEBVIEW_ERROR:Ljava/lang/String; = "System WebView is not supported"

.field public static final MINIMUM_ANDROID_WEBVIEW_VERSION:I = 0x37

.field public static final MINIMUM_HUAWEI_WEBVIEW_VERSION:I = 0xa

.field private static final PERMISSION_PREFS_NAME:Ljava/lang/String; = "PluginPermStates"


# instance fields
.field private allowedOriginRules:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private app:Lcom/getcapacitor/App;

.field private appAllowNavigationMask:Lcom/getcapacitor/util/HostMask;

.field private appUrl:Ljava/lang/String;

.field private appUrlConfig:Ljava/lang/String;

.field private authorities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private canInjectJS:Ljava/lang/Boolean;

.field private config:Lcom/getcapacitor/CapConfig;

.field private final context:Lg/m;

.field public final cordovaInterface:Lcom/getcapacitor/cordova/MockCordovaInterfaceImpl;

.field private cordovaWebView:Lorg/apache/cordova/t;

.field private final fragment:Landroidx/fragment/app/c0;

.field private final handlerThread:Landroid/os/HandlerThread;

.field private final initialPlugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/getcapacitor/Plugin;",
            ">;>;"
        }
    .end annotation
.end field

.field private intentUri:Landroid/net/Uri;

.field private localServer:Lcom/getcapacitor/WebViewLocalServer;

.field private localUrl:Ljava/lang/String;

.field private miscJSFileInjections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final msgHandler:Lcom/getcapacitor/MessageHandler;

.field private pluginCallForLastActivity:Lcom/getcapacitor/PluginCall;

.field private final pluginInstances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/getcapacitor/Plugin;",
            ">;"
        }
    .end annotation
.end field

.field private plugins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/getcapacitor/PluginHandle;",
            ">;"
        }
    .end annotation
.end field

.field private preferences:Lorg/apache/cordova/q;

.field private routeProcessor:Lcom/getcapacitor/RouteProcessor;

.field private savedCalls:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/getcapacitor/PluginCall;",
            ">;"
        }
    .end annotation
.end field

.field private savedPermissionCallIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private serverPath:Lcom/getcapacitor/ServerPath;

.field private taskHandler:Landroid/os/Handler;

.field private final webView:Landroid/webkit/WebView;

.field private webViewClient:Lcom/getcapacitor/BridgeWebViewClient;

.field private webViewListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/getcapacitor/WebViewListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg/m;Landroid/webkit/WebView;Ljava/util/List;Lcom/getcapacitor/cordova/MockCordovaInterfaceImpl;Lorg/apache/cordova/l0;Lorg/apache/cordova/q;Lcom/getcapacitor/CapConfig;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/m;",
            "Landroid/webkit/WebView;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/getcapacitor/Plugin;",
            ">;>;",
            "Lcom/getcapacitor/cordova/MockCordovaInterfaceImpl;",
            "Lorg/apache/cordova/l0;",
            "Lorg/apache/cordova/q;",
            "Lcom/getcapacitor/CapConfig;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/getcapacitor/Bridge;-><init>(Lg/m;Lcom/getcapacitor/ServerPath;Landroidx/fragment/app/c0;Landroid/webkit/WebView;Ljava/util/List;Ljava/util/List;Lcom/getcapacitor/cordova/MockCordovaInterfaceImpl;Lorg/apache/cordova/l0;Lorg/apache/cordova/q;Lcom/getcapacitor/CapConfig;)V

    return-void
.end method

.method private constructor <init>(Lg/m;Lcom/getcapacitor/ServerPath;Landroidx/fragment/app/c0;Landroid/webkit/WebView;Ljava/util/List;Ljava/util/List;Lcom/getcapacitor/cordova/MockCordovaInterfaceImpl;Lorg/apache/cordova/l0;Lorg/apache/cordova/q;Lcom/getcapacitor/CapConfig;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/m;",
            "Lcom/getcapacitor/ServerPath;",
            "Landroidx/fragment/app/c0;",
            "Landroid/webkit/WebView;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/getcapacitor/Plugin;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/getcapacitor/Plugin;",
            ">;",
            "Lcom/getcapacitor/cordova/MockCordovaInterfaceImpl;",
            "Lorg/apache/cordova/l0;",
            "Lorg/apache/cordova/q;",
            "Lcom/getcapacitor/CapConfig;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/getcapacitor/Bridge;->allowedOriginRules:Ljava/util/Set;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/getcapacitor/Bridge;->authorities:Ljava/util/ArrayList;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/getcapacitor/Bridge;->miscJSFileInjections:Ljava/util/ArrayList;

    .line 7
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/getcapacitor/Bridge;->canInjectJS:Ljava/lang/Boolean;

    .line 8
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CapacitorPlugins"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/getcapacitor/Bridge;->handlerThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Lcom/getcapacitor/Bridge;->taskHandler:Landroid/os/Handler;

    .line 10
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/getcapacitor/Bridge;->plugins:Ljava/util/Map;

    .line 11
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/getcapacitor/Bridge;->savedCalls:Ljava/util/Map;

    .line 12
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/getcapacitor/Bridge;->savedPermissionCallIds:Ljava/util/Map;

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/getcapacitor/Bridge;->webViewListeners:Ljava/util/List;

    .line 14
    new-instance v1, Lcom/getcapacitor/App;

    invoke-direct {v1}, Lcom/getcapacitor/App;-><init>()V

    iput-object v1, p0, Lcom/getcapacitor/Bridge;->app:Lcom/getcapacitor/App;

    .line 15
    iput-object p2, p0, Lcom/getcapacitor/Bridge;->serverPath:Lcom/getcapacitor/ServerPath;

    .line 16
    iput-object p1, p0, Lcom/getcapacitor/Bridge;->context:Lg/m;

    .line 17
    iput-object p3, p0, Lcom/getcapacitor/Bridge;->fragment:Landroidx/fragment/app/c0;

    .line 18
    iput-object p4, p0, Lcom/getcapacitor/Bridge;->webView:Landroid/webkit/WebView;

    .line 19
    new-instance p2, Lcom/getcapacitor/BridgeWebViewClient;

    invoke-direct {p2, p0}, Lcom/getcapacitor/BridgeWebViewClient;-><init>(Lcom/getcapacitor/Bridge;)V

    iput-object p2, p0, Lcom/getcapacitor/Bridge;->webViewClient:Lcom/getcapacitor/BridgeWebViewClient;

    .line 20
    iput-object p5, p0, Lcom/getcapacitor/Bridge;->initialPlugins:Ljava/util/List;

    .line 21
    iput-object p6, p0, Lcom/getcapacitor/Bridge;->pluginInstances:Ljava/util/List;

    .line 22
    iput-object p7, p0, Lcom/getcapacitor/Bridge;->cordovaInterface:Lcom/getcapacitor/cordova/MockCordovaInterfaceImpl;

    .line 23
    iput-object p9, p0, Lcom/getcapacitor/Bridge;->preferences:Lorg/apache/cordova/q;

    .line 24
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 25
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/getcapacitor/Bridge;->taskHandler:Landroid/os/Handler;

    if-eqz p10, :cond_73

    goto :goto_7b

    .line 26
    :cond_73
    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->getActivity()Lg/m;

    move-result-object p2

    invoke-static {p2}, Lcom/getcapacitor/CapConfig;->loadDefault(Landroid/content/Context;)Lcom/getcapacitor/CapConfig;

    move-result-object p10

    :goto_7b
    iput-object p10, p0, Lcom/getcapacitor/Bridge;->config:Lcom/getcapacitor/CapConfig;

    .line 27
    invoke-static {p10}, Lcom/getcapacitor/Logger;->init(Lcom/getcapacitor/CapConfig;)V

    .line 28
    invoke-direct {p0}, Lcom/getcapacitor/Bridge;->initWebView()V

    .line 29
    invoke-direct {p0}, Lcom/getcapacitor/Bridge;->setAllowedOriginRules()V

    .line 30
    new-instance p2, Lcom/getcapacitor/MessageHandler;

    invoke-direct {p2, p0, p4, p8}, Lcom/getcapacitor/MessageHandler;-><init>(Lcom/getcapacitor/Bridge;Landroid/webkit/WebView;Lorg/apache/cordova/l0;)V

    iput-object p2, p0, Lcom/getcapacitor/Bridge;->msgHandler:Lcom/getcapacitor/MessageHandler;

    .line 31
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/getcapacitor/Bridge;->intentUri:Landroid/net/Uri;

    .line 33
    invoke-direct {p0}, Lcom/getcapacitor/Bridge;->registerAllPlugins()V

    .line 34
    invoke-direct {p0}, Lcom/getcapacitor/Bridge;->loadWebView()V

    return-void
.end method

.method public synthetic constructor <init>(Lg/m;Lcom/getcapacitor/ServerPath;Landroidx/fragment/app/c0;Landroid/webkit/WebView;Ljava/util/List;Ljava/util/List;Lcom/getcapacitor/cordova/MockCordovaInterfaceImpl;Lorg/apache/cordova/l0;Lorg/apache/cordova/q;Lcom/getcapacitor/CapConfig;I)V
    .registers 12

    .line 1
    invoke-direct/range {p0 .. p10}, Lcom/getcapacitor/Bridge;-><init>(Lg/m;Lcom/getcapacitor/ServerPath;Landroidx/fragment/app/c0;Landroid/webkit/WebView;Ljava/util/List;Ljava/util/List;Lcom/getcapacitor/cordova/MockCordovaInterfaceImpl;Lorg/apache/cordova/l0;Lorg/apache/cordova/q;Lcom/getcapacitor/CapConfig;)V

    return-void
.end method

.method public static synthetic a(Lcom/getcapacitor/Bridge;Lcom/getcapacitor/PluginHandle;Ljava/lang/String;Lcom/getcapacitor/PluginCall;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/getcapacitor/Bridge;->lambda$callPluginMethod$0(Lcom/getcapacitor/PluginHandle;Ljava/lang/String;Lcom/getcapacitor/PluginCall;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/getcapacitor/Bridge;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/getcapacitor/Bridge;->lambda$setServerBasePath$4()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/getcapacitor/Bridge;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/getcapacitor/Bridge;->lambda$setServerAssetPath$5()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lcom/getcapacitor/Bridge;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/getcapacitor/Bridge;->lambda$reload$6()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lcom/getcapacitor/Bridge;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/getcapacitor/Bridge;->lambda$eval$1(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private extractWebViewMajorVersion(Landroid/content/pm/PackageManager;Ljava/lang/String;)I
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    invoke-static {p1, p2}, Lcom/getcapacitor/util/InternalUtils;->getPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 7
    .line 8
    const-string v1, "\\."

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    aget-object p1, p1, v0

    .line 15
    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result p1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_14

    .line 20
    return p1

    .line 21
    :catch_14
    move-exception p1

    .line 22
    const/4 v1, 0x2

    .line 23
    new-array v1, v1, [Ljava/lang/Object;

    .line 24
    .line 25
    aput-object p2, v1, v0

    .line 26
    .line 27
    const/4 p2, 0x1

    .line 28
    aput-object p1, v1, p2

    .line 29
    .line 30
    const-string p1, "Unable to get package info for \'%s\' with err \'%s\'"

    .line 31
    .line 32
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p1}, Lcom/getcapacitor/Logger;->warn(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return v0
.end method

.method public static synthetic f(Ljava/lang/String;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/getcapacitor/Bridge;->lambda$triggerJSEvent$2(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g(Ljava/lang/String;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/getcapacitor/Bridge;->lambda$triggerJSEvent$3(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private getJSInjector()Lcom/getcapacitor/JSInjector;
    .registers 14

    .line 1
    const-string v0, "window.WEBVIEW_SERVER_URL = \'"

    .line 2
    .line 3
    :try_start_2
    iget-object v1, p0, Lcom/getcapacitor/Bridge;->context:Lg/m;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/getcapacitor/Bridge;->config:Lcom/getcapacitor/CapConfig;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/getcapacitor/CapConfig;->isLoggingEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->isDevMode()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-static {v1, v2, v3}, Lcom/getcapacitor/JSExport;->getGlobalJS(Landroid/content/Context;ZZ)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    iget-object v1, p0, Lcom/getcapacitor/Bridge;->context:Lg/m;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/getcapacitor/JSExport;->getBridgeJS(Landroid/content/Context;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    iget-object v1, p0, Lcom/getcapacitor/Bridge;->plugins:Ljava/util/Map;

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v1}, Lcom/getcapacitor/JSExport;->getPluginJS(Ljava/util/Collection;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    iget-object v1, p0, Lcom/getcapacitor/Bridge;->context:Lg/m;

    .line 36
    .line 37
    invoke-static {v1}, Lcom/getcapacitor/JSExport;->getCordovaJS(Landroid/content/Context;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v8

    .line 41
    iget-object v1, p0, Lcom/getcapacitor/Bridge;->context:Lg/m;

    .line 42
    .line 43
    invoke-static {v1}, Lcom/getcapacitor/JSExport;->getCordovaPluginJS(Landroid/content/Context;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v9

    .line 47
    iget-object v1, p0, Lcom/getcapacitor/Bridge;->context:Lg/m;

    .line 48
    .line 49
    invoke-static {v1}, Lcom/getcapacitor/JSExport;->getCordovaPluginsFileJS(Landroid/content/Context;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v10

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->localUrl:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v0, "\';"

    .line 64
    .line 65
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v11

    .line 72
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->miscJSFileInjections:Ljava/util/ArrayList;

    .line 73
    .line 74
    iget-object v1, p0, Lcom/getcapacitor/Bridge;->context:Lg/m;

    .line 75
    .line 76
    invoke-static {v0, v1}, Lcom/getcapacitor/JSExport;->getMiscFileJS(Ljava/util/ArrayList;Landroid/content/Context;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v12

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .line 84
    .line 85
    iput-object v0, p0, Lcom/getcapacitor/Bridge;->miscJSFileInjections:Ljava/util/ArrayList;

    .line 86
    .line 87
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 88
    .line 89
    iput-object v0, p0, Lcom/getcapacitor/Bridge;->canInjectJS:Ljava/lang/Boolean;

    .line 90
    .line 91
    new-instance v4, Lcom/getcapacitor/JSInjector;

    .line 92
    .line 93
    invoke-direct/range {v4 .. v12}, Lcom/getcapacitor/JSInjector;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5f} :catch_60

    .line 94
    .line 95
    .line 96
    return-object v4

    .line 97
    :catch_60
    move-exception v0

    .line 98
    const-string v1, "Unable to export Capacitor JS. App will not function!"

    .line 99
    .line 100
    invoke-static {v1, v0}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    .line 102
    .line 103
    const/4 v0, 0x0

    .line 104
    return-object v0
.end method

.method private getLegacyPluginName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/getcapacitor/Plugin;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/getcapacitor/NativePlugin;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/getcapacitor/NativePlugin;

    .line 8
    .line 9
    if-nez p1, :cond_11

    .line 10
    .line 11
    const-string p1, "Plugin doesn\'t have the @CapacitorPlugin annotation. Please add it"

    .line 12
    .line 13
    invoke-static {p1}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    return-object p1

    .line 18
    :cond_11
    invoke-interface {p1}, Lcom/getcapacitor/NativePlugin;->name()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method private initWebView()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->webView:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/getcapacitor/Bridge;->config:Lcom/getcapacitor/CapConfig;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/getcapacitor/CapConfig;->isMixedContentAllowed()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_22

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 33
    .line 34
    .line 35
    :cond_22
    iget-object v1, p0, Lcom/getcapacitor/Bridge;->config:Lcom/getcapacitor/CapConfig;

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/getcapacitor/CapConfig;->getAppendedUserAgentString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-eqz v1, :cond_45

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v3, " "

    .line 56
    .line 57
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_45
    iget-object v1, p0, Lcom/getcapacitor/Bridge;->config:Lcom/getcapacitor/CapConfig;

    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/getcapacitor/CapConfig;->getOverriddenUserAgentString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    if-eqz v1, :cond_50

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :cond_50
    iget-object v1, p0, Lcom/getcapacitor/Bridge;->config:Lcom/getcapacitor/CapConfig;

    .line 82
    .line 83
    invoke-virtual {v1}, Lcom/getcapacitor/CapConfig;->getBackgroundColor()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    if-eqz v1, :cond_67

    .line 88
    .line 89
    :try_start_58
    iget-object v3, p0, Lcom/getcapacitor/Bridge;->webView:Landroid/webkit/WebView;

    .line 90
    .line 91
    invoke-static {v1}, Lcom/getcapacitor/util/WebColor;->parseColor(Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    invoke-virtual {v3, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V
    :try_end_61
    .catch Ljava/lang/IllegalArgumentException; {:try_start_58 .. :try_end_61} :catch_62

    .line 96
    .line 97
    .line 98
    goto :goto_67

    .line 99
    :catch_62
    const-string v1, "WebView background color not applied"

    .line 100
    .line 101
    invoke-static {v1}, Lcom/getcapacitor/Logger;->debug(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :cond_67
    :goto_67
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 105
    .line 106
    .line 107
    iget-object v1, p0, Lcom/getcapacitor/Bridge;->config:Lcom/getcapacitor/CapConfig;

    .line 108
    .line 109
    invoke-virtual {v1}, Lcom/getcapacitor/CapConfig;->isZoomableWebView()Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->config:Lcom/getcapacitor/CapConfig;

    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/getcapacitor/CapConfig;->isInitialFocus()Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-eqz v0, :cond_80

    .line 123
    .line 124
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->webView:Landroid/webkit/WebView;

    .line 125
    .line 126
    invoke-virtual {v0}, Landroid/view/View;->requestFocusFromTouch()Z

    .line 127
    .line 128
    .line 129
    :cond_80
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->config:Lcom/getcapacitor/CapConfig;

    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/getcapacitor/CapConfig;->isWebContentsDebuggingEnabled()Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    invoke-static {v0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->getServerUrl()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    iput-object v0, p0, Lcom/getcapacitor/Bridge;->appUrlConfig:Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->getHost()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/getcapacitor/Bridge;->authorities:Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->getScheme()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    const-string v3, "://"

    .line 166
    .line 167
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    iput-object v0, p0, Lcom/getcapacitor/Bridge;->localUrl:Ljava/lang/String;

    .line 178
    .line 179
    iget-object v2, p0, Lcom/getcapacitor/Bridge;->appUrlConfig:Ljava/lang/String;

    .line 180
    .line 181
    if-eqz v2, :cond_e4

    .line 182
    .line 183
    :try_start_b6
    new-instance v0, Ljava/net/URL;

    .line 184
    .line 185
    iget-object v1, p0, Lcom/getcapacitor/Bridge;->appUrlConfig:Ljava/lang/String;

    .line 186
    .line 187
    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    iget-object v1, p0, Lcom/getcapacitor/Bridge;->authorities:Ljava/util/ArrayList;

    .line 191
    .line 192
    invoke-virtual {v0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_c6} :catch_cd

    .line 197
    .line 198
    .line 199
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->appUrlConfig:Ljava/lang/String;

    .line 200
    .line 201
    iput-object v0, p0, Lcom/getcapacitor/Bridge;->localUrl:Ljava/lang/String;

    .line 202
    .line 203
    iput-object v0, p0, Lcom/getcapacitor/Bridge;->appUrl:Ljava/lang/String;

    .line 204
    .line 205
    goto :goto_105

    .line 206
    :catch_cd
    move-exception v0

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    const-string v2, "Provided server url is invalid: "

    .line 210
    .line 211
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-static {v0}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    return-void

    .line 229
    :cond_e4
    iput-object v0, p0, Lcom/getcapacitor/Bridge;->appUrl:Ljava/lang/String;

    .line 230
    .line 231
    const-string v0, "http"

    .line 232
    .line 233
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    if-nez v0, :cond_105

    .line 238
    .line 239
    const-string v0, "https"

    .line 240
    .line 241
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    if-nez v0, :cond_105

    .line 246
    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    .line 251
    .line 252
    iget-object v1, p0, Lcom/getcapacitor/Bridge;->appUrl:Ljava/lang/String;

    .line 253
    .line 254
    const-string v2, "/"

    .line 255
    .line 256
    invoke-static {v0, v1, v2}, Lq2/x;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    iput-object v0, p0, Lcom/getcapacitor/Bridge;->appUrl:Ljava/lang/String;

    .line 261
    .line 262
    :cond_105
    :goto_105
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->config:Lcom/getcapacitor/CapConfig;

    .line 263
    .line 264
    invoke-virtual {v0}, Lcom/getcapacitor/CapConfig;->getStartPath()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    if-eqz v0, :cond_124

    .line 269
    .line 270
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 275
    .line 276
    .line 277
    move-result v1

    .line 278
    if-nez v1, :cond_124

    .line 279
    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    .line 281
    .line 282
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    .line 284
    .line 285
    iget-object v2, p0, Lcom/getcapacitor/Bridge;->appUrl:Ljava/lang/String;

    .line 286
    .line 287
    invoke-static {v1, v2, v0}, Lq2/x;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    iput-object v0, p0, Lcom/getcapacitor/Bridge;->appUrl:Ljava/lang/String;

    .line 292
    .line 293
    :cond_124
    return-void
.end method

.method private isNewBinary()Z
    .registers 11

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "CapWebViewSettings"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "lastBinaryVersionCode"

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    const-string v6, "lastBinaryVersionName"

    .line 22
    .line 23
    invoke-interface {v1, v6, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    :try_start_1a
    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v8

    .line 43
    invoke-static {v7, v8}, Lcom/getcapacitor/util/InternalUtils;->getPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 48
    .line 49
    const/16 v9, 0x1c

    .line 50
    .line 51
    if-lt v8, v9, :cond_39

    .line 52
    .line 53
    invoke-static {v7}, La0/a;->b(Landroid/content/pm/PackageInfo;)J

    .line 54
    .line 55
    .line 56
    move-result-wide v8

    .line 57
    goto :goto_3c

    .line 58
    :cond_39
    iget v8, v7, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 59
    .line 60
    int-to-long v8, v8

    .line 61
    :goto_3c
    long-to-int v8, v8

    .line 62
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v8
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_41} :catch_46

    .line 66
    :try_start_41
    iget-object v7, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_43} :catch_44

    .line 67
    .line 68
    goto :goto_4e

    .line 69
    :catch_44
    move-exception v7

    .line 70
    goto :goto_48

    .line 71
    :catch_46
    move-exception v7

    .line 72
    move-object v8, v0

    .line 73
    :goto_48
    const-string v9, "Unable to get package info"

    .line 74
    .line 75
    invoke-static {v9, v7}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    move-object v7, v0

    .line 79
    :goto_4e
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-eqz v5, :cond_5c

    .line 84
    .line 85
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-nez v4, :cond_5b

    .line 90
    .line 91
    goto :goto_5c

    .line 92
    :cond_5b
    return v3

    .line 93
    :cond_5c
    :goto_5c
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-interface {v1, v2, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 98
    .line 99
    .line 100
    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 101
    .line 102
    .line 103
    const-string v2, "serverBasePath"

    .line 104
    .line 105
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 106
    .line 107
    .line 108
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 109
    .line 110
    .line 111
    const/4 v0, 0x1

    .line 112
    return v0
.end method

.method private synthetic lambda$callPluginMethod$0(Lcom/getcapacitor/PluginHandle;Ljava/lang/String;Lcom/getcapacitor/PluginCall;)V
    .registers 4

    .line 1
    :try_start_0
    invoke-virtual {p1, p2, p3}, Lcom/getcapacitor/PluginHandle;->invoke(Ljava/lang/String;Lcom/getcapacitor/PluginCall;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Lcom/getcapacitor/PluginCall;->isKeptAlive()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_13

    .line 9
    .line 10
    invoke-virtual {p0, p3}, Lcom/getcapacitor/Bridge;->saveCall(Lcom/getcapacitor/PluginCall;)V
    :try_end_c
    .catch Lcom/getcapacitor/PluginLoadException; {:try_start_0 .. :try_end_c} :catch_11
    .catch Lcom/getcapacitor/InvalidPluginMethodException; {:try_start_0 .. :try_end_c} :catch_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catch_d
    move-exception p1

    .line 15
    goto :goto_14

    .line 16
    :catch_f
    move-exception p1

    .line 17
    goto :goto_1f

    .line 18
    :catch_11
    move-exception p1

    .line 19
    goto :goto_1f

    .line 20
    :cond_13
    return-void

    .line 21
    :goto_14
    const-string p2, "Serious error executing plugin"

    .line 22
    .line 23
    invoke-static {p2, p1}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    new-instance p2, Ljava/lang/RuntimeException;

    .line 27
    .line 28
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    throw p2

    .line 32
    :goto_1f
    const-string p2, "Unable to execute plugin method"

    .line 33
    .line 34
    invoke-static {p2, p1}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method private synthetic lambda$eval$1(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->webView:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$reload$6()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->webView:Landroid/webkit/WebView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/getcapacitor/Bridge;->appUrl:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic lambda$setServerAssetPath$5()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->webView:Landroid/webkit/WebView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/getcapacitor/Bridge;->appUrl:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic lambda$setServerBasePath$4()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->webView:Landroid/webkit/WebView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/getcapacitor/Bridge;->appUrl:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static synthetic lambda$triggerJSEvent$2(Ljava/lang/String;)V
    .registers 1

    .line 1
    return-void
.end method

.method private static synthetic lambda$triggerJSEvent$3(Ljava/lang/String;)V
    .registers 1

    .line 1
    return-void
.end method

.method private loadWebView()V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->config:Lcom/getcapacitor/CapConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/getcapacitor/CapConfig;->isHTML5Mode()Z

    .line 4
    .line 5
    .line 6
    move-result v6

    .line 7
    invoke-direct {p0}, Lcom/getcapacitor/Bridge;->getJSInjector()Lcom/getcapacitor/JSInjector;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "DOCUMENT_START_SCRIPT"

    .line 12
    .line 13
    invoke-static {v1}, Ly1/g;->r(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v7, 0x0

    .line 18
    if-eqz v1, :cond_45

    .line 19
    .line 20
    iget-object v1, p0, Lcom/getcapacitor/Bridge;->appUrl:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1, v7}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1, v7}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    :try_start_31
    iget-object v2, p0, Lcom/getcapacitor/Bridge;->webView:Landroid/webkit/WebView;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/getcapacitor/JSInjector;->getScriptString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-static {v2, v3, v1}, Lj1/d;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Set;)V
    :try_end_3e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_31 .. :try_end_3e} :catch_40

    .line 61
    .line 62
    .line 63
    move-object v4, v7

    .line 64
    goto :goto_46

    .line 65
    :catch_40
    const-string v1, "Invalid url, using fallback"

    .line 66
    .line 67
    invoke-static {v1}, Lcom/getcapacitor/Logger;->warn(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_45
    move-object v4, v0

    .line 71
    :goto_46
    new-instance v1, Lcom/getcapacitor/WebViewLocalServer;

    .line 72
    .line 73
    iget-object v2, p0, Lcom/getcapacitor/Bridge;->context:Lg/m;

    .line 74
    .line 75
    iget-object v5, p0, Lcom/getcapacitor/Bridge;->authorities:Ljava/util/ArrayList;

    .line 76
    .line 77
    move-object v3, p0

    .line 78
    invoke-direct/range {v1 .. v6}, Lcom/getcapacitor/WebViewLocalServer;-><init>(Landroid/content/Context;Lcom/getcapacitor/Bridge;Lcom/getcapacitor/JSInjector;Ljava/util/ArrayList;Z)V

    .line 79
    .line 80
    .line 81
    iput-object v1, v3, Lcom/getcapacitor/Bridge;->localServer:Lcom/getcapacitor/WebViewLocalServer;

    .line 82
    .line 83
    const-string v0, "public"

    .line 84
    .line 85
    invoke-virtual {v1, v0}, Lcom/getcapacitor/WebViewLocalServer;->hostAssets(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string v1, "Loading app at "

    .line 91
    .line 92
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget-object v1, v3, Lcom/getcapacitor/Bridge;->appUrl:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-static {v0}, Lcom/getcapacitor/Logger;->debug(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-object v0, v3, Lcom/getcapacitor/Bridge;->webView:Landroid/webkit/WebView;

    .line 108
    .line 109
    new-instance v1, Lcom/getcapacitor/BridgeWebChromeClient;

    .line 110
    .line 111
    invoke-direct {v1, p0}, Lcom/getcapacitor/BridgeWebChromeClient;-><init>(Lcom/getcapacitor/Bridge;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 115
    .line 116
    .line 117
    iget-object v0, v3, Lcom/getcapacitor/Bridge;->webView:Landroid/webkit/WebView;

    .line 118
    .line 119
    iget-object v1, v3, Lcom/getcapacitor/Bridge;->webViewClient:Lcom/getcapacitor/BridgeWebViewClient;

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 122
    .line 123
    .line 124
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 125
    .line 126
    const/16 v1, 0x18

    .line 127
    .line 128
    if-lt v0, v1, :cond_95

    .line 129
    .line 130
    iget-object v0, v3, Lcom/getcapacitor/Bridge;->config:Lcom/getcapacitor/CapConfig;

    .line 131
    .line 132
    invoke-virtual {v0}, Lcom/getcapacitor/CapConfig;->isResolveServiceWorkerRequests()Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_95

    .line 137
    .line 138
    invoke-static {}, Lcom/getcapacitor/a;->i()Landroid/webkit/ServiceWorkerController;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    new-instance v1, Lcom/getcapacitor/Bridge$1;

    .line 143
    .line 144
    invoke-direct {v1, p0}, Lcom/getcapacitor/Bridge$1;-><init>(Lcom/getcapacitor/Bridge;)V

    .line 145
    .line 146
    .line 147
    invoke-static {v0, v1}, Lcom/getcapacitor/a;->t(Landroid/webkit/ServiceWorkerController;Landroid/webkit/ServiceWorkerClient;)V

    .line 148
    .line 149
    .line 150
    :cond_95
    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->isDeployDisabled()Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-nez v0, :cond_c8

    .line 155
    .line 156
    invoke-direct {p0}, Lcom/getcapacitor/Bridge;->isNewBinary()Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-nez v0, :cond_c8

    .line 161
    .line 162
    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->getContext()Landroid/content/Context;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    const-string v1, "CapWebViewSettings"

    .line 167
    .line 168
    const/4 v2, 0x0

    .line 169
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    const-string v1, "serverBasePath"

    .line 174
    .line 175
    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    if-eqz v0, :cond_c8

    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-nez v1, :cond_c8

    .line 186
    .line 187
    new-instance v1, Ljava/io/File;

    .line 188
    .line 189
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    if-eqz v1, :cond_c8

    .line 197
    .line 198
    invoke-virtual {p0, v0}, Lcom/getcapacitor/Bridge;->setServerBasePath(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    :cond_c8
    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->isMinimumWebViewInstalled()Z

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-nez v0, :cond_df

    .line 206
    .line 207
    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->getErrorUrl()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    if-eqz v0, :cond_da

    .line 212
    .line 213
    iget-object v1, v3, Lcom/getcapacitor/Bridge;->webView:Landroid/webkit/WebView;

    .line 214
    .line 215
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    return-void

    .line 219
    :cond_da
    const-string v0, "System WebView is not supported"

    .line 220
    .line 221
    invoke-static {v0}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    :cond_df
    iget-object v0, v3, Lcom/getcapacitor/Bridge;->serverPath:Lcom/getcapacitor/ServerPath;

    .line 225
    .line 226
    if-eqz v0, :cond_ff

    .line 227
    .line 228
    invoke-virtual {v0}, Lcom/getcapacitor/ServerPath;->getType()Lcom/getcapacitor/ServerPath$PathType;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    sget-object v1, Lcom/getcapacitor/ServerPath$PathType;->ASSET_PATH:Lcom/getcapacitor/ServerPath$PathType;

    .line 233
    .line 234
    if-ne v0, v1, :cond_f5

    .line 235
    .line 236
    iget-object v0, v3, Lcom/getcapacitor/Bridge;->serverPath:Lcom/getcapacitor/ServerPath;

    .line 237
    .line 238
    invoke-virtual {v0}, Lcom/getcapacitor/ServerPath;->getPath()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-virtual {p0, v0}, Lcom/getcapacitor/Bridge;->setServerAssetPath(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    goto :goto_106

    .line 246
    :cond_f5
    iget-object v0, v3, Lcom/getcapacitor/Bridge;->serverPath:Lcom/getcapacitor/ServerPath;

    .line 247
    .line 248
    invoke-virtual {v0}, Lcom/getcapacitor/ServerPath;->getPath()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-virtual {p0, v0}, Lcom/getcapacitor/Bridge;->setServerBasePath(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    goto :goto_106

    .line 256
    :cond_ff
    iget-object v0, v3, Lcom/getcapacitor/Bridge;->webView:Landroid/webkit/WebView;

    .line 257
    .line 258
    iget-object v1, v3, Lcom/getcapacitor/Bridge;->appUrl:Ljava/lang/String;

    .line 259
    .line 260
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    :goto_106
    return-void
.end method

.method private logInvalidPluginException(Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/getcapacitor/Plugin;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "NativePlugin "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p1, " is invalid. Ensure the @CapacitorPlugin annotation exists on the plugin class and the class extends Plugin"

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
    invoke-static {p1}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private logPluginLoadException(Ljava/lang/Class;Ljava/lang/Exception;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/getcapacitor/Plugin;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "NativePlugin "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p1, " failed to load"

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
    invoke-static {p1, p2}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private pluginId(Ljava/lang/Class;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/getcapacitor/Plugin;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/getcapacitor/Bridge;->pluginName(Ljava/lang/Class;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez v0, :cond_c

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return-object p1

    .line 13
    :cond_c
    const-string v1, ""

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_15

    .line 20
    .line 21
    goto :goto_16

    .line 22
    :cond_15
    move-object v0, p1

    .line 23
    :goto_16
    const-string p1, "Registering plugin instance: "

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1}, Lcom/getcapacitor/Logger;->debug(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-object v0
.end method

.method private pluginName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/getcapacitor/Plugin;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/getcapacitor/annotation/CapacitorPlugin;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/getcapacitor/annotation/CapacitorPlugin;

    .line 8
    .line 9
    if-nez v0, :cond_f

    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/getcapacitor/Bridge;->getLegacyPluginName(Ljava/lang/Class;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_f
    invoke-interface {v0}, Lcom/getcapacitor/annotation/CapacitorPlugin;->name()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method private registerAllPlugins()V
    .registers 3

    .line 1
    const-class v0, Lcom/getcapacitor/plugin/CapacitorCookies;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/getcapacitor/Bridge;->registerPlugin(Ljava/lang/Class;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Lcom/getcapacitor/plugin/WebView;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/getcapacitor/Bridge;->registerPlugin(Ljava/lang/Class;)V

    .line 9
    .line 10
    .line 11
    const-class v0, Lcom/getcapacitor/plugin/CapacitorHttp;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/getcapacitor/Bridge;->registerPlugin(Ljava/lang/Class;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->initialPlugins:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_25

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Ljava/lang/Class;

    .line 33
    .line 34
    invoke-virtual {p0, v1}, Lcom/getcapacitor/Bridge;->registerPlugin(Ljava/lang/Class;)V

    .line 35
    .line 36
    .line 37
    goto :goto_15

    .line 38
    :cond_25
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->pluginInstances:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_3b

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Lcom/getcapacitor/Plugin;

    .line 55
    .line 56
    invoke-virtual {p0, v1}, Lcom/getcapacitor/Bridge;->registerPluginInstance(Lcom/getcapacitor/Plugin;)V

    .line 57
    .line 58
    .line 59
    goto :goto_2b

    .line 60
    :cond_3b
    return-void
.end method

.method private setAllowedOriginRules()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->config:Lcom/getcapacitor/CapConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/getcapacitor/CapConfig;->getAllowNavigation()[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->getHost()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->getScheme()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object v3, p0, Lcom/getcapacitor/Bridge;->allowedOriginRules:Ljava/util/Set;

    .line 16
    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, "://"

    .line 26
    .line 27
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->getServerUrl()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-eqz v1, :cond_36

    .line 45
    .line 46
    iget-object v1, p0, Lcom/getcapacitor/Bridge;->allowedOriginRules:Ljava/util/Set;

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->getServerUrl()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    :cond_36
    if-eqz v0, :cond_63

    .line 56
    .line 57
    array-length v1, v0

    .line 58
    const/4 v2, 0x0

    .line 59
    :goto_3a
    if-ge v2, v1, :cond_5a

    .line 60
    .line 61
    aget-object v3, v0, v2

    .line 62
    .line 63
    const-string v4, "http"

    .line 64
    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-nez v4, :cond_52

    .line 70
    .line 71
    iget-object v4, p0, Lcom/getcapacitor/Bridge;->allowedOriginRules:Ljava/util/Set;

    .line 72
    .line 73
    const-string v5, "https://"

    .line 74
    .line 75
    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    goto :goto_57

    .line 83
    :cond_52
    iget-object v4, p0, Lcom/getcapacitor/Bridge;->allowedOriginRules:Ljava/util/Set;

    .line 84
    .line 85
    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    :goto_57
    add-int/lit8 v2, v2, 0x1

    .line 89
    .line 90
    goto :goto_3a

    .line 91
    :cond_5a
    iget-object v1, p0, Lcom/getcapacitor/Bridge;->authorities:Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 98
    .line 99
    .line 100
    :cond_63
    invoke-static {v0}, Lcom/getcapacitor/util/HostMask$Parser;->parse([Ljava/lang/String;)Lcom/getcapacitor/util/HostMask;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iput-object v0, p0, Lcom/getcapacitor/Bridge;->appAllowNavigationMask:Lcom/getcapacitor/util/HostMask;

    .line 105
    .line 106
    return-void
.end method


# virtual methods
.method public addWebViewListener(Lcom/getcapacitor/WebViewListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->webViewListeners:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public callPluginMethod(Ljava/lang/String;Ljava/lang/String;Lcom/getcapacitor/PluginCall;)V
    .registers 12

    .line 1
    const-string v0, "callback: "

    .line 2
    .line 3
    const-string v1, "unable to find plugin : "

    .line 4
    .line 5
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/getcapacitor/Bridge;->getPlugin(Ljava/lang/String;)Lcom/getcapacitor/PluginHandle;

    .line 6
    .line 7
    .line 8
    move-result-object v4
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8} :catch_7d

    .line 9
    if-nez v4, :cond_2e

    .line 10
    .line 11
    :try_start_a
    new-instance p2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-static {p2}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance p2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p3, p1}, Lcom/getcapacitor/PluginCall;->errorCallback(Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_28} :catch_29

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catch_29
    move-exception v0

    .line 43
    move-object p1, v0

    .line 44
    move-object v3, p0

    .line 45
    move-object v6, p3

    .line 46
    goto :goto_81

    .line 47
    :cond_2e
    :try_start_2e
    invoke-static {}, Lcom/getcapacitor/Logger;->shouldLog()Z

    .line 48
    .line 49
    .line 50
    move-result p1
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_32} :catch_7d

    .line 51
    if-eqz p1, :cond_6b

    .line 52
    .line 53
    :try_start_34
    new-instance p1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3}, Lcom/getcapacitor/PluginCall;->getCallbackId()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v0, ", pluginId: "

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4}, Lcom/getcapacitor/PluginHandle;->getId()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v0, ", methodName: "

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v0, ", methodData: "

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p3}, Lcom/getcapacitor/PluginCall;->getData()Lcom/getcapacitor/JSObject;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-static {p1}, Lcom/getcapacitor/Logger;->verbose(Ljava/lang/String;)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_6b} :catch_29

    .line 106
    .line 107
    .line 108
    :cond_6b
    :try_start_6b
    new-instance v2, Lcom/getcapacitor/b;
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6d} :catch_7d

    .line 109
    .line 110
    const/4 v7, 0x0

    .line 111
    move-object v3, p0

    .line 112
    move-object v5, p2

    .line 113
    move-object v6, p3

    .line 114
    :try_start_71
    invoke-direct/range {v2 .. v7}, Lcom/getcapacitor/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 115
    .line 116
    .line 117
    iget-object p1, v3, Lcom/getcapacitor/Bridge;->taskHandler:Landroid/os/Handler;

    .line 118
    .line 119
    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_79} :catch_7a

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :catch_7a
    move-exception v0

    .line 124
    :goto_7b
    move-object p1, v0

    .line 125
    goto :goto_81

    .line 126
    :catch_7d
    move-exception v0

    .line 127
    move-object v3, p0

    .line 128
    move-object v6, p3

    .line 129
    goto :goto_7b

    .line 130
    :goto_81
    const-string p2, "callPluginMethod"

    .line 131
    .line 132
    filled-new-array {p2}, [Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    invoke-static {p2}, Lcom/getcapacitor/Logger;->tags([Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    new-instance p3, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    const-string v0, "error : "

    .line 143
    .line 144
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p3

    .line 154
    const/4 v0, 0x0

    .line 155
    invoke-static {p2, p3, v0}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-virtual {v6, p1}, Lcom/getcapacitor/PluginCall;->errorCallback(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    return-void
.end method

.method public eval(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .registers 5
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
    iget-object v1, p0, Lcom/getcapacitor/Bridge;->context:Lg/m;

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
    new-instance v1, Lcom/getcapacitor/c;

    .line 13
    .line 14
    invoke-direct {v1, p0, p1, p2}, Lcom/getcapacitor/c;-><init>(Lcom/getcapacitor/Bridge;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->taskHandler:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public executeOnMainThread(Ljava/lang/Runnable;)V
    .registers 4

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/getcapacitor/Bridge;->context:Lg/m;

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
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public getActivity()Lg/m;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->context:Lg/m;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAllowedOriginRules()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->allowedOriginRules:Ljava/util/Set;

    .line 2
    .line 3
    return-object v0
.end method

.method public getApp()Lcom/getcapacitor/App;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->app:Lcom/getcapacitor/App;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAppAllowNavigationMask()Lcom/getcapacitor/util/HostMask;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->appAllowNavigationMask:Lcom/getcapacitor/util/HostMask;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAppUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->appUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getConfig()Lcom/getcapacitor/CapConfig;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->config:Lcom/getcapacitor/CapConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->context:Lg/m;

    .line 2
    .line 3
    return-object v0
.end method

.method public getErrorUrl()Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->config:Lcom/getcapacitor/CapConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/getcapacitor/CapConfig;->getErrorPath()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_43

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_43

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->getHost()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->getScheme()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, "://"

    .line 36
    .line 37
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v1, "/"

    .line 56
    .line 57
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    return-object v0

    .line 68
    :cond_43
    const/4 v0, 0x0

    .line 69
    return-object v0
.end method

.method public getFragment()Landroidx/fragment/app/c0;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->fragment:Landroidx/fragment/app/c0;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->config:Lcom/getcapacitor/CapConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/getcapacitor/CapConfig;->getHostname()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getIntentUri()Landroid/net/Uri;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->intentUri:Landroid/net/Uri;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLocalServer()Lcom/getcapacitor/WebViewLocalServer;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->localServer:Lcom/getcapacitor/WebViewLocalServer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLocalUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->localUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPermissionCall(Ljava/lang/String;)Lcom/getcapacitor/PluginCall;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->savedPermissionCallIds:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/util/LinkedList;

    .line 8
    .line 9
    if-eqz p1, :cond_11

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Ljava/lang/String;

    .line 16
    .line 17
    goto :goto_12

    .line 18
    :cond_11
    const/4 p1, 0x0

    .line 19
    :goto_12
    invoke-virtual {p0, p1}, Lcom/getcapacitor/Bridge;->getSavedCall(Ljava/lang/String;)Lcom/getcapacitor/PluginCall;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method public getPermissionStates(Lcom/getcapacitor/Plugin;)Ljava/util/Map;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/getcapacitor/Plugin;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/getcapacitor/PermissionState;",
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
    invoke-virtual {p1}, Lcom/getcapacitor/Plugin;->getPluginHandle()Lcom/getcapacitor/PluginHandle;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/getcapacitor/PluginHandle;->getPluginAnnotation()Lcom/getcapacitor/annotation/CapacitorPlugin;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-interface {p1}, Lcom/getcapacitor/annotation/CapacitorPlugin;->permissions()[Lcom/getcapacitor/annotation/Permission;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    array-length v1, p1

    .line 19
    const/4 v2, 0x0

    .line 20
    move v3, v2

    .line 21
    :goto_14
    if-ge v3, v1, :cond_a1

    .line 22
    .line 23
    aget-object v4, p1, v3

    .line 24
    .line 25
    invoke-interface {v4}, Lcom/getcapacitor/annotation/Permission;->strings()[Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    array-length v5, v5

    .line 30
    if-eqz v5, :cond_86

    .line 31
    .line 32
    invoke-interface {v4}, Lcom/getcapacitor/annotation/Permission;->strings()[Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    array-length v5, v5

    .line 37
    const/4 v6, 0x1

    .line 38
    if-ne v5, v6, :cond_34

    .line 39
    .line 40
    invoke-interface {v4}, Lcom/getcapacitor/annotation/Permission;->strings()[Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    aget-object v5, v5, v2

    .line 45
    .line 46
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_34

    .line 51
    .line 52
    goto :goto_86

    .line 53
    :cond_34
    invoke-interface {v4}, Lcom/getcapacitor/annotation/Permission;->strings()[Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    array-length v6, v5

    .line 58
    move v7, v2

    .line 59
    :goto_3a
    if-ge v7, v6, :cond_9d

    .line 60
    .line 61
    aget-object v8, v5, v7

    .line 62
    .line 63
    invoke-interface {v4}, Lcom/getcapacitor/annotation/Permission;->alias()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v9

    .line 67
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result v9

    .line 71
    if-eqz v9, :cond_4a

    .line 72
    .line 73
    move-object v9, v8

    .line 74
    goto :goto_4e

    .line 75
    :cond_4a
    invoke-interface {v4}, Lcom/getcapacitor/annotation/Permission;->alias()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v9

    .line 79
    :goto_4e
    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->getContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object v10

    .line 83
    invoke-static {v10, v8}, Lz/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v10

    .line 87
    if-nez v10, :cond_5b

    .line 88
    .line 89
    sget-object v8, Lcom/getcapacitor/PermissionState;->GRANTED:Lcom/getcapacitor/PermissionState;

    .line 90
    .line 91
    goto :goto_74

    .line 92
    :cond_5b
    sget-object v10, Lcom/getcapacitor/PermissionState;->PROMPT:Lcom/getcapacitor/PermissionState;

    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->getContext()Landroid/content/Context;

    .line 95
    .line 96
    .line 97
    move-result-object v11

    .line 98
    const-string v12, "PluginPermStates"

    .line 99
    .line 100
    invoke-virtual {v11, v12, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 101
    .line 102
    .line 103
    move-result-object v11

    .line 104
    const/4 v12, 0x0

    .line 105
    invoke-interface {v11, v8, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    if-eqz v8, :cond_73

    .line 110
    .line 111
    invoke-static {v8}, Lcom/getcapacitor/PermissionState;->byState(Ljava/lang/String;)Lcom/getcapacitor/PermissionState;

    .line 112
    .line 113
    .line 114
    move-result-object v8

    .line 115
    goto :goto_74

    .line 116
    :cond_73
    move-object v8, v10

    .line 117
    :goto_74
    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v10

    .line 121
    check-cast v10, Lcom/getcapacitor/PermissionState;

    .line 122
    .line 123
    if-eqz v10, :cond_80

    .line 124
    .line 125
    sget-object v11, Lcom/getcapacitor/PermissionState;->GRANTED:Lcom/getcapacitor/PermissionState;

    .line 126
    .line 127
    if-ne v10, v11, :cond_83

    .line 128
    .line 129
    :cond_80
    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    :cond_83
    add-int/lit8 v7, v7, 0x1

    .line 133
    .line 134
    goto :goto_3a

    .line 135
    :cond_86
    :goto_86
    invoke-interface {v4}, Lcom/getcapacitor/annotation/Permission;->alias()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    if-nez v5, :cond_9d

    .line 144
    .line 145
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    check-cast v5, Lcom/getcapacitor/PermissionState;

    .line 150
    .line 151
    if-nez v5, :cond_9d

    .line 152
    .line 153
    sget-object v5, Lcom/getcapacitor/PermissionState;->GRANTED:Lcom/getcapacitor/PermissionState;

    .line 154
    .line 155
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    :cond_9d
    add-int/lit8 v3, v3, 0x1

    .line 159
    .line 160
    goto/16 :goto_14

    .line 161
    .line 162
    :cond_a1
    return-object v0
.end method

.method public getPlugin(Ljava/lang/String;)Lcom/getcapacitor/PluginHandle;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->plugins:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/getcapacitor/PluginHandle;

    .line 8
    .line 9
    return-object p1
.end method

.method public getPluginCallForLastActivity()Lcom/getcapacitor/PluginCall;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->pluginCallForLastActivity:Lcom/getcapacitor/PluginCall;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/getcapacitor/Bridge;->pluginCallForLastActivity:Lcom/getcapacitor/PluginCall;

    .line 5
    .line 6
    return-object v0
.end method

.method public getPluginWithRequestCode(I)Lcom/getcapacitor/PluginHandle;
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->plugins:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_49

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/getcapacitor/PluginHandle;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/getcapacitor/PluginHandle;->getPluginAnnotation()Lcom/getcapacitor/annotation/CapacitorPlugin;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/4 v3, 0x0

    .line 28
    if-nez v2, :cond_3a

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/getcapacitor/PluginHandle;->getLegacyPluginAnnotation()Lcom/getcapacitor/NativePlugin;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    if-nez v2, :cond_24

    .line 35
    .line 36
    goto :goto_a

    .line 37
    :cond_24
    invoke-interface {v2}, Lcom/getcapacitor/NativePlugin;->permissionRequestCode()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-ne v4, p1, :cond_2b

    .line 42
    .line 43
    goto :goto_45

    .line 44
    :cond_2b
    invoke-interface {v2}, Lcom/getcapacitor/NativePlugin;->requestCodes()[I

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    array-length v4, v2

    .line 49
    :goto_30
    if-ge v3, v4, :cond_a

    .line 50
    .line 51
    aget v5, v2, v3

    .line 52
    .line 53
    if-ne v5, p1, :cond_37

    .line 54
    .line 55
    goto :goto_45

    .line 56
    :cond_37
    add-int/lit8 v3, v3, 0x1

    .line 57
    .line 58
    goto :goto_30

    .line 59
    :cond_3a
    invoke-interface {v2}, Lcom/getcapacitor/annotation/CapacitorPlugin;->requestCodes()[I

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    array-length v4, v2

    .line 64
    :goto_3f
    if-ge v3, v4, :cond_a

    .line 65
    .line 66
    aget v5, v2, v3

    .line 67
    .line 68
    if-ne v5, p1, :cond_46

    .line 69
    .line 70
    :goto_45
    return-object v1

    .line 71
    :cond_46
    add-int/lit8 v3, v3, 0x1

    .line 72
    .line 73
    goto :goto_3f

    .line 74
    :cond_49
    const/4 p1, 0x0

    .line 75
    return-object p1
.end method

.method public getRouteProcessor()Lcom/getcapacitor/RouteProcessor;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->routeProcessor:Lcom/getcapacitor/RouteProcessor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSavedCall(Ljava/lang/String;)Lcom/getcapacitor/PluginCall;
    .registers 3

    .line 1
    if-nez p1, :cond_4

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_4
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->savedCalls:Ljava/util/Map;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/getcapacitor/PluginCall;

    .line 12
    .line 13
    return-object p1
.end method

.method public getScheme()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->config:Lcom/getcapacitor/CapConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/getcapacitor/CapConfig;->getAndroidScheme()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getServerBasePath()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->localServer:Lcom/getcapacitor/WebViewLocalServer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/getcapacitor/WebViewLocalServer;->getBasePath()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getServerPath()Lcom/getcapacitor/ServerPath;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->serverPath:Lcom/getcapacitor/ServerPath;

    .line 2
    .line 3
    return-object v0
.end method

.method public getServerUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->config:Lcom/getcapacitor/CapConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/getcapacitor/CapConfig;->getServerUrl()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->webView:Landroid/webkit/WebView;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWebViewClient()Lcom/getcapacitor/BridgeWebViewClient;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->webViewClient:Lcom/getcapacitor/BridgeWebViewClient;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWebViewListeners()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/getcapacitor/WebViewListener;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->webViewListeners:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public handleAppUrlLoadError(Ljava/lang/Exception;)V
    .registers 4

    .line 1
    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    .line 2
    .line 3
    if-eqz v0, :cond_1c

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "Unable to load app. Ensure the server is running at "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/getcapacitor/Bridge;->appUrl:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ", or modify the appUrl setting in capacitor.config.json (make sure to npx cap copy after to commit changes)."

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0, p1}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    :cond_1c
    return-void
.end method

.method public injectScriptBeforeLoad(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->canInjectJS:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_d

    .line 8
    .line 9
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->miscJSFileInjections:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    :cond_d
    return-void
.end method

.method public isDeployDisabled()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->preferences:Lorg/apache/cordova/q;

    .line 2
    .line 3
    const-string v1, "DisableDeploy"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/q;->a(Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public isDevMode()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->getActivity()Lg/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 10
    .line 11
    and-int/lit8 v0, v0, 0x2

    .line 12
    .line 13
    if-eqz v0, :cond_10

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    :cond_10
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method public isMinimumWebViewInstalled()Z
    .registers 8

    .line 1
    const-string v0, "\\."

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/16 v3, 0x1a

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    const/4 v5, 0x0

    .line 17
    if-lt v2, v3, :cond_4e

    .line 18
    .line 19
    invoke-static {}, Lcom/getcapacitor/plugin/util/a;->h()Landroid/content/pm/PackageInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "(\\d+)"

    .line 24
    .line 25
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_c9

    .line 40
    .line 41
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 50
    .line 51
    const-string v2, "com.huawei.webview"

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_44

    .line 58
    .line 59
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->config:Lcom/getcapacitor/CapConfig;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/getcapacitor/CapConfig;->getMinHuaweiWebViewVersion()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-lt v1, v0, :cond_c9

    .line 66
    .line 67
    goto/16 :goto_c8

    .line 68
    .line 69
    :cond_44
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->config:Lcom/getcapacitor/CapConfig;

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/getcapacitor/CapConfig;->getMinWebViewVersion()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-lt v1, v0, :cond_c9

    .line 76
    .line 77
    goto/16 :goto_c8

    .line 78
    .line 79
    :cond_4e
    :try_start_4e
    const-string v3, "com.google.android.webview"

    .line 80
    .line 81
    const/16 v6, 0x18

    .line 82
    .line 83
    if-lt v2, v6, :cond_59

    .line 84
    .line 85
    const-string v3, "com.android.chrome"

    .line 86
    .line 87
    goto :goto_59

    .line 88
    :catch_57
    move-exception v2

    .line 89
    goto :goto_72

    .line 90
    :cond_59
    :goto_59
    invoke-static {v1, v3}, Lcom/getcapacitor/util/InternalUtils;->getPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    aget-object v2, v2, v5

    .line 101
    .line 102
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    iget-object v3, p0, Lcom/getcapacitor/Bridge;->config:Lcom/getcapacitor/CapConfig;

    .line 107
    .line 108
    invoke-virtual {v3}, Lcom/getcapacitor/CapConfig;->getMinWebViewVersion()I

    .line 109
    .line 110
    .line 111
    move-result v0
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_6f} :catch_57

    .line 112
    if-lt v2, v0, :cond_c9

    .line 113
    .line 114
    goto :goto_c8

    .line 115
    :goto_72
    new-instance v3, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string v6, "Unable to get package info for \'com.google.android.webview\'"

    .line 118
    .line 119
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-static {v2}, Lcom/getcapacitor/Logger;->warn(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    :try_start_87
    const-string v2, "com.android.webview"

    .line 137
    .line 138
    invoke-static {v1, v2}, Lcom/getcapacitor/util/InternalUtils;->getPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    aget-object v0, v0, v5

    .line 149
    .line 150
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    iget-object v2, p0, Lcom/getcapacitor/Bridge;->config:Lcom/getcapacitor/CapConfig;

    .line 155
    .line 156
    invoke-virtual {v2}, Lcom/getcapacitor/CapConfig;->getMinWebViewVersion()I

    .line 157
    .line 158
    .line 159
    move-result v1
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_9f} :catch_a4

    .line 160
    if-lt v0, v1, :cond_a2

    .line 161
    .line 162
    goto :goto_a3

    .line 163
    :cond_a2
    move v4, v5

    .line 164
    :goto_a3
    return v4

    .line 165
    :catch_a4
    move-exception v0

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    const-string v3, "Unable to get package info for \'com.android.webview\'"

    .line 169
    .line 170
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-static {v0}, Lcom/getcapacitor/Logger;->warn(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    const-string v0, "com.amazon.webview.chromium"

    .line 188
    .line 189
    invoke-direct {p0, v1, v0}, Lcom/getcapacitor/Bridge;->extractWebViewMajorVersion(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    iget-object v1, p0, Lcom/getcapacitor/Bridge;->config:Lcom/getcapacitor/CapConfig;

    .line 194
    .line 195
    invoke-virtual {v1}, Lcom/getcapacitor/CapConfig;->getMinWebViewVersion()I

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    if-lt v0, v1, :cond_c9

    .line 200
    .line 201
    :goto_c8
    return v4

    .line 202
    :cond_c9
    return v5
.end method

.method public launchIntent(Landroid/net/Uri;)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->plugins:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2d

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/Map$Entry;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/getcapacitor/PluginHandle;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/getcapacitor/PluginHandle;->getInstance()Lcom/getcapacitor/Plugin;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_a

    .line 34
    .line 35
    invoke-virtual {v1, p1}, Lcom/getcapacitor/Plugin;->shouldOverrideLoad(Landroid/net/Uri;)Ljava/lang/Boolean;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_a

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    return p1

    .line 46
    :cond_2d
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "data"

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    const/4 v1, 0x0

    .line 57
    if-nez v0, :cond_85

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-string v2, "blob"

    .line 64
    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_47

    .line 70
    .line 71
    goto :goto_85

    .line 72
    :cond_47
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->appUrl:Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-eqz v2, :cond_69

    .line 91
    .line 92
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-nez v0, :cond_85

    .line 105
    .line 106
    :cond_69
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->appAllowNavigationMask:Lcom/getcapacitor/util/HostMask;

    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-interface {v0, v2}, Lcom/getcapacitor/util/HostMask;->matches(Ljava/lang/String;)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-nez v0, :cond_85

    .line 117
    .line 118
    :try_start_75
    new-instance v0, Landroid/content/Intent;

    .line 119
    .line 120
    const-string v1, "android.intent.action.VIEW"

    .line 121
    .line 122
    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->getContext()Landroid/content/Context;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_83
    .catch Landroid/content/ActivityNotFoundException; {:try_start_75 .. :try_end_83} :catch_83

    .line 130
    .line 131
    .line 132
    :catch_83
    const/4 p1, 0x1

    .line 133
    return p1

    .line 134
    :cond_85
    :goto_85
    return v1
.end method

.method public logToJs(Ljava/lang/String;)V
    .registers 3

    .line 2
    const-string v0, "log"

    invoke-virtual {p0, p1, v0}, Lcom/getcapacitor/Bridge;->logToJs(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public logToJs(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.Capacitor.logJs(\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\", \""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/getcapacitor/Bridge;->eval(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .registers 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/getcapacitor/Bridge;->getPluginWithRequestCode(I)Lcom/getcapacitor/PluginHandle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_30

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/getcapacitor/PluginHandle;->getInstance()Lcom/getcapacitor/Plugin;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-nez v1, :cond_d

    .line 12
    .line 13
    goto :goto_30

    .line 14
    :cond_d
    invoke-virtual {v0}, Lcom/getcapacitor/PluginHandle;->getInstance()Lcom/getcapacitor/Plugin;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lcom/getcapacitor/Plugin;->getSavedCall()Lcom/getcapacitor/PluginCall;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-nez v1, :cond_24

    .line 23
    .line 24
    iget-object v1, p0, Lcom/getcapacitor/Bridge;->pluginCallForLastActivity:Lcom/getcapacitor/PluginCall;

    .line 25
    .line 26
    if-eqz v1, :cond_24

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/getcapacitor/PluginHandle;->getInstance()Lcom/getcapacitor/Plugin;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object v2, p0, Lcom/getcapacitor/Bridge;->pluginCallForLastActivity:Lcom/getcapacitor/PluginCall;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Lcom/getcapacitor/Plugin;->saveCall(Lcom/getcapacitor/PluginCall;)V

    .line 35
    .line 36
    .line 37
    :cond_24
    invoke-virtual {v0}, Lcom/getcapacitor/PluginHandle;->getInstance()Lcom/getcapacitor/Plugin;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0, p1, p2, p3}, Lcom/getcapacitor/Plugin;->handleOnActivityResult(IILandroid/content/Intent;)V

    .line 42
    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    iput-object p1, p0, Lcom/getcapacitor/Bridge;->pluginCallForLastActivity:Lcom/getcapacitor/PluginCall;

    .line 46
    .line 47
    const/4 p1, 0x1

    .line 48
    return p1

    .line 49
    :cond_30
    :goto_30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v1, "Unable to find a Capacitor plugin to handle requestCode, trying Cordova plugins "

    .line 52
    .line 53
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v0}, Lcom/getcapacitor/Logger;->debug(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->cordovaInterface:Lcom/getcapacitor/cordova/MockCordovaInterfaceImpl;

    .line 67
    .line 68
    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/cordova/CordovaInterfaceImpl;->onActivityResult(IILandroid/content/Intent;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    return p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->plugins:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1e

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/getcapacitor/PluginHandle;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/getcapacitor/PluginHandle;->getInstance()Lcom/getcapacitor/Plugin;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1, p1}, Lcom/getcapacitor/Plugin;->handleOnConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 28
    .line 29
    .line 30
    goto :goto_a

    .line 31
    :cond_1e
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->plugins:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1e

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/getcapacitor/PluginHandle;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/getcapacitor/PluginHandle;->getInstance()Lcom/getcapacitor/Plugin;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lcom/getcapacitor/Plugin;->handleOnDestroy()V

    .line 28
    .line 29
    .line 30
    goto :goto_a

    .line 31
    :cond_1e
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->handlerThread:Landroid/os/HandlerThread;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->cordovaWebView:Lorg/apache/cordova/t;

    .line 37
    .line 38
    if-eqz v0, :cond_2a

    .line 39
    .line 40
    invoke-interface {v0}, Lorg/apache/cordova/t;->handleDestroy()V

    .line 41
    .line 42
    .line 43
    :cond_2a
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->webView:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->webView:Landroid/webkit/WebView;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->plugins:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1e

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/getcapacitor/PluginHandle;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/getcapacitor/PluginHandle;->getInstance()Lcom/getcapacitor/Plugin;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1, p1}, Lcom/getcapacitor/Plugin;->handleOnNewIntent(Landroid/content/Intent;)V

    .line 28
    .line 29
    .line 30
    goto :goto_a

    .line 31
    :cond_1e
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->cordovaWebView:Lorg/apache/cordova/t;

    .line 32
    .line 33
    if-eqz v0, :cond_25

    .line 34
    .line 35
    invoke-interface {v0, p1}, Lorg/apache/cordova/t;->onNewIntent(Landroid/content/Intent;)V

    .line 36
    .line 37
    .line 38
    :cond_25
    return-void
.end method

.method public onPause()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->plugins:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1e

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/getcapacitor/PluginHandle;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/getcapacitor/PluginHandle;->getInstance()Lcom/getcapacitor/Plugin;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lcom/getcapacitor/Plugin;->handleOnPause()V

    .line 28
    .line 29
    .line 30
    goto :goto_a

    .line 31
    :cond_1e
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->cordovaWebView:Lorg/apache/cordova/t;

    .line 32
    .line 33
    if-eqz v0, :cond_39

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->shouldKeepRunning()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_33

    .line 40
    .line 41
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->cordovaInterface:Lcom/getcapacitor/cordova/MockCordovaInterfaceImpl;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/getcapacitor/cordova/MockCordovaInterfaceImpl;->getActivityResultCallback()Lorg/apache/cordova/o;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_31

    .line 48
    .line 49
    goto :goto_33

    .line 50
    :cond_31
    const/4 v0, 0x0

    .line 51
    goto :goto_34

    .line 52
    :cond_33
    :goto_33
    const/4 v0, 0x1

    .line 53
    :goto_34
    iget-object v1, p0, Lcom/getcapacitor/Bridge;->cordovaWebView:Lorg/apache/cordova/t;

    .line 54
    .line 55
    invoke-interface {v1, v0}, Lorg/apache/cordova/t;->handlePause(Z)V

    .line 56
    .line 57
    .line 58
    :cond_39
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
    .registers 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/getcapacitor/Bridge;->getPluginWithRequestCode(I)Lcom/getcapacitor/PluginHandle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_36

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "Unable to find a Capacitor plugin to handle permission requestCode, trying Cordova plugins "

    .line 11
    .line 12
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/getcapacitor/Logger;->debug(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :try_start_18
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->cordovaInterface:Lcom/getcapacitor/cordova/MockCordovaInterfaceImpl;

    .line 26
    .line 27
    invoke-virtual {v0, p1, p2, p3}, Lcom/getcapacitor/cordova/MockCordovaInterfaceImpl;->handlePermissionResult(I[Ljava/lang/String;[I)Z

    .line 28
    .line 29
    .line 30
    move-result p1
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_1e} :catch_1f

    .line 31
    return p1

    .line 32
    :catch_1f
    move-exception p1

    .line 33
    new-instance p2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string p3, "Error on Cordova plugin permissions request "

    .line 36
    .line 37
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {p1}, Lcom/getcapacitor/Logger;->debug(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return v1

    .line 55
    :cond_36
    invoke-virtual {v0}, Lcom/getcapacitor/PluginHandle;->getPluginAnnotation()Lcom/getcapacitor/annotation/CapacitorPlugin;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    if-nez v2, :cond_45

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/getcapacitor/PluginHandle;->getInstance()Lcom/getcapacitor/Plugin;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0, p1, p2, p3}, Lcom/getcapacitor/Plugin;->handleRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 66
    .line 67
    .line 68
    const/4 p1, 0x1

    .line 69
    return p1

    .line 70
    :cond_45
    return v1
.end method

.method public onRestart()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->plugins:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1e

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/getcapacitor/PluginHandle;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/getcapacitor/PluginHandle;->getInstance()Lcom/getcapacitor/Plugin;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lcom/getcapacitor/Plugin;->handleOnRestart()V

    .line 28
    .line 29
    .line 30
    goto :goto_a

    .line 31
    :cond_1e
    return-void
.end method

.method public onResume()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->plugins:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1e

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/getcapacitor/PluginHandle;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/getcapacitor/PluginHandle;->getInstance()Lcom/getcapacitor/Plugin;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lcom/getcapacitor/Plugin;->handleOnResume()V

    .line 28
    .line 29
    .line 30
    goto :goto_a

    .line 31
    :cond_1e
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->cordovaWebView:Lorg/apache/cordova/t;

    .line 32
    .line 33
    if-eqz v0, :cond_29

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->shouldKeepRunning()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-interface {v0, v1}, Lorg/apache/cordova/t;->handleResume(Z)V

    .line 40
    .line 41
    .line 42
    :cond_29
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->plugins:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1e

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/getcapacitor/PluginHandle;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/getcapacitor/PluginHandle;->getInstance()Lcom/getcapacitor/Plugin;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lcom/getcapacitor/Plugin;->handleOnStart()V

    .line 28
    .line 29
    .line 30
    goto :goto_a

    .line 31
    :cond_1e
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->cordovaWebView:Lorg/apache/cordova/t;

    .line 32
    .line 33
    if-eqz v0, :cond_25

    .line 34
    .line 35
    invoke-interface {v0}, Lorg/apache/cordova/t;->handleStart()V

    .line 36
    .line 37
    .line 38
    :cond_25
    return-void
.end method

.method public onStop()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->plugins:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1e

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/getcapacitor/PluginHandle;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/getcapacitor/PluginHandle;->getInstance()Lcom/getcapacitor/Plugin;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lcom/getcapacitor/Plugin;->handleOnStop()V

    .line 28
    .line 29
    .line 30
    goto :goto_a

    .line 31
    :cond_1e
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->cordovaWebView:Lorg/apache/cordova/t;

    .line 32
    .line 33
    if-eqz v0, :cond_25

    .line 34
    .line 35
    invoke-interface {v0}, Lorg/apache/cordova/t;->handleStop()V

    .line 36
    .line 37
    .line 38
    :cond_25
    return-void
.end method

.method public registerForActivityResult(Le/a;Ld/b;)Ld/c;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Le/a;",
            "Ld/b;",
            ")",
            "Ld/c;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->fragment:Landroidx/fragment/app/c0;

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/c0;->D(Le/a;Ld/b;)Ld/c;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_9
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->context:Lg/m;

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2}, Lb/p;->registerForActivityResult(Le/a;Ld/b;)Ld/c;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public registerPlugin(Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/getcapacitor/Plugin;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/getcapacitor/Bridge;->pluginId(Ljava/lang/Class;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_7

    .line 6
    .line 7
    goto :goto_1a

    .line 8
    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/getcapacitor/Bridge;->plugins:Ljava/util/Map;

    .line 9
    .line 10
    new-instance v2, Lcom/getcapacitor/PluginHandle;

    .line 11
    .line 12
    invoke-direct {v2, p0, p1}, Lcom/getcapacitor/PluginHandle;-><init>(Lcom/getcapacitor/Bridge;Ljava/lang/Class;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Lcom/getcapacitor/InvalidPluginException; {:try_start_7 .. :try_end_11} :catch_17
    .catch Lcom/getcapacitor/PluginLoadException; {:try_start_7 .. :try_end_11} :catch_12

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catch_12
    move-exception v0

    .line 20
    invoke-direct {p0, p1, v0}, Lcom/getcapacitor/Bridge;->logPluginLoadException(Ljava/lang/Class;Ljava/lang/Exception;)V

    .line 21
    .line 22
    .line 23
    goto :goto_1a

    .line 24
    :catch_17
    invoke-direct {p0, p1}, Lcom/getcapacitor/Bridge;->logInvalidPluginException(Ljava/lang/Class;)V

    .line 25
    .line 26
    .line 27
    :goto_1a
    return-void
.end method

.method public registerPluginInstance(Lcom/getcapacitor/Plugin;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/getcapacitor/Bridge;->pluginId(Ljava/lang/Class;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-nez v1, :cond_b

    .line 10
    .line 11
    return-void

    .line 12
    :cond_b
    :try_start_b
    iget-object v2, p0, Lcom/getcapacitor/Bridge;->plugins:Ljava/util/Map;

    .line 13
    .line 14
    new-instance v3, Lcom/getcapacitor/PluginHandle;

    .line 15
    .line 16
    invoke-direct {v3, p0, p1}, Lcom/getcapacitor/PluginHandle;-><init>(Lcom/getcapacitor/Bridge;Lcom/getcapacitor/Plugin;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Lcom/getcapacitor/InvalidPluginException; {:try_start_b .. :try_end_15} :catch_16

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catch_16
    invoke-direct {p0, v0}, Lcom/getcapacitor/Bridge;->logInvalidPluginException(Ljava/lang/Class;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public registerPluginInstances([Lcom/getcapacitor/Plugin;)V
    .registers 5

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_2
    if-ge v1, v0, :cond_c

    .line 4
    .line 5
    aget-object v2, p1, v1

    .line 6
    .line 7
    invoke-virtual {p0, v2}, Lcom/getcapacitor/Bridge;->registerPluginInstance(Lcom/getcapacitor/Plugin;)V

    .line 8
    .line 9
    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_c
    return-void
.end method

.method public registerPlugins([Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "+",
            "Lcom/getcapacitor/Plugin;",
            ">;)V"
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_2
    if-ge v1, v0, :cond_c

    .line 4
    .line 5
    aget-object v2, p1, v1

    .line 6
    .line 7
    invoke-virtual {p0, v2}, Lcom/getcapacitor/Bridge;->registerPlugin(Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_c
    return-void
.end method

.method public releaseCall(Lcom/getcapacitor/PluginCall;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->getCallbackId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/getcapacitor/Bridge;->releaseCall(Ljava/lang/String;)V

    return-void
.end method

.method public releaseCall(Ljava/lang/String;)V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->savedCalls:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public reload()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->webView:Landroid/webkit/WebView;

    .line 2
    .line 3
    new-instance v1, Lcom/getcapacitor/e;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, p0, v2}, Lcom/getcapacitor/e;-><init>(Lcom/getcapacitor/Bridge;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public removeWebViewListener(Lcom/getcapacitor/WebViewListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->webViewListeners:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public reset()V
    .registers 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/getcapacitor/Bridge;->savedCalls:Ljava/util/Map;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->plugins:Ljava/util/Map;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_25

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/getcapacitor/PluginHandle;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/getcapacitor/PluginHandle;->getInstance()Lcom/getcapacitor/Plugin;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lcom/getcapacitor/Plugin;->removeAllListeners()V

    .line 35
    .line 36
    .line 37
    goto :goto_11

    .line 38
    :cond_25
    return-void
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .registers 9

    .line 1
    const-string v0, "capacitorLastActivityPluginId"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v3

    .line 7
    const-string v0, "capacitorLastActivityPluginMethod"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v5

    .line 13
    const-string v0, "capacitorLastPluginCallOptions"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v3, :cond_48

    .line 20
    .line 21
    if-eqz v0, :cond_2d

    .line 22
    .line 23
    :try_start_16
    new-instance v6, Lcom/getcapacitor/JSObject;

    .line 24
    .line 25
    invoke-direct {v6, v0}, Lcom/getcapacitor/JSObject;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Lcom/getcapacitor/PluginCall;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/getcapacitor/Bridge;->msgHandler:Lcom/getcapacitor/MessageHandler;

    .line 31
    .line 32
    const-string v4, "-1"

    .line 33
    .line 34
    invoke-direct/range {v1 .. v6}, Lcom/getcapacitor/PluginCall;-><init>(Lcom/getcapacitor/MessageHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/getcapacitor/JSObject;)V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lcom/getcapacitor/Bridge;->pluginCallForLastActivity:Lcom/getcapacitor/PluginCall;
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_26} :catch_27

    .line 38
    .line 39
    goto :goto_2d

    .line 40
    :catch_27
    move-exception v0

    .line 41
    const-string v1, "Unable to restore plugin call, unable to parse persisted JSON object"

    .line 42
    .line 43
    invoke-static {v1, v0}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    :cond_2d
    :goto_2d
    const-string v0, "capacitorLastPluginCallBundle"

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p0, v3}, Lcom/getcapacitor/Bridge;->getPlugin(Ljava/lang/String;)Lcom/getcapacitor/PluginHandle;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    if-eqz p1, :cond_43

    .line 57
    .line 58
    if-eqz v0, :cond_43

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/getcapacitor/PluginHandle;->getInstance()Lcom/getcapacitor/Plugin;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0, p1}, Lcom/getcapacitor/Plugin;->restoreState(Landroid/os/Bundle;)V

    .line 65
    .line 66
    .line 67
    goto :goto_48

    .line 68
    :cond_43
    const-string p1, "Unable to restore last plugin call"

    .line 69
    .line 70
    invoke-static {p1}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :cond_48
    :goto_48
    return-void
.end method

.method public saveCall(Lcom/getcapacitor/PluginCall;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->savedCalls:Ljava/util/Map;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->getCallbackId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .registers 6

    .line 1
    const-string v0, "Saving instance state!"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/getcapacitor/Logger;->debug(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->pluginCallForLastActivity:Lcom/getcapacitor/PluginCall;

    .line 7
    .line 8
    if-eqz v0, :cond_68

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/getcapacitor/PluginCall;->getPluginId()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {p0, v1}, Lcom/getcapacitor/Bridge;->getPlugin(Ljava/lang/String;)Lcom/getcapacitor/PluginHandle;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_68

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/getcapacitor/PluginHandle;->getInstance()Lcom/getcapacitor/Plugin;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lcom/getcapacitor/Plugin;->saveInstanceState()Landroid/os/Bundle;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_42

    .line 29
    .line 30
    const-string v2, "capacitorLastActivityPluginId"

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/getcapacitor/PluginCall;->getPluginId()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {p1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v2, "capacitorLastActivityPluginMethod"

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/getcapacitor/PluginCall;->getMethodName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {p1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/getcapacitor/PluginCall;->getData()Lcom/getcapacitor/JSObject;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v2, "capacitorLastPluginCallOptions"

    .line 57
    .line 58
    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string v0, "capacitorLastPluginCallBundle"

    .line 62
    .line 63
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_42
    new-instance p1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v1, "Couldn\'t save last "

    .line 70
    .line 71
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/getcapacitor/PluginCall;->getPluginId()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v1, "\'s Plugin "

    .line 82
    .line 83
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/getcapacitor/PluginCall;->getMethodName()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v0, " call"

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-static {p1}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :cond_68
    return-void
.end method

.method public savePermissionCall(Lcom/getcapacitor/PluginCall;)V
    .registers 5

    .line 1
    if-eqz p1, :cond_32

    .line 2
    .line 3
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->savedPermissionCallIds:Ljava/util/Map;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->getPluginId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1c

    .line 14
    .line 15
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->savedPermissionCallIds:Ljava/util/Map;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->getPluginId()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Ljava/util/LinkedList;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    :cond_1c
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->savedPermissionCallIds:Ljava/util/Map;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->getPluginId()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Ljava/util/LinkedList;

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->getCallbackId()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lcom/getcapacitor/Bridge;->saveCall(Lcom/getcapacitor/PluginCall;)V

    .line 49
    .line 50
    .line 51
    :cond_32
    return-void
.end method

.method public setCordovaWebView(Lorg/apache/cordova/t;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/getcapacitor/Bridge;->cordovaWebView:Lorg/apache/cordova/t;

    .line 2
    .line 3
    return-void
.end method

.method public setPluginCallForLastActivity(Lcom/getcapacitor/PluginCall;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/getcapacitor/Bridge;->pluginCallForLastActivity:Lcom/getcapacitor/PluginCall;

    .line 2
    .line 3
    return-void
.end method

.method public setRouteProcessor(Lcom/getcapacitor/RouteProcessor;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/getcapacitor/Bridge;->routeProcessor:Lcom/getcapacitor/RouteProcessor;

    .line 2
    .line 3
    return-void
.end method

.method public setServerAssetPath(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->localServer:Lcom/getcapacitor/WebViewLocalServer;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/getcapacitor/WebViewLocalServer;->hostAssets(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/getcapacitor/Bridge;->webView:Landroid/webkit/WebView;

    .line 7
    .line 8
    new-instance v0, Lcom/getcapacitor/e;

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-direct {v0, p0, v1}, Lcom/getcapacitor/e;-><init>(Lcom/getcapacitor/Bridge;I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setServerBasePath(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->localServer:Lcom/getcapacitor/WebViewLocalServer;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/getcapacitor/WebViewLocalServer;->hostFiles(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/getcapacitor/Bridge;->webView:Landroid/webkit/WebView;

    .line 7
    .line 8
    new-instance v0, Lcom/getcapacitor/e;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, p0, v1}, Lcom/getcapacitor/e;-><init>(Lcom/getcapacitor/Bridge;I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setWebViewClient(Lcom/getcapacitor/BridgeWebViewClient;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/getcapacitor/Bridge;->webViewClient:Lcom/getcapacitor/BridgeWebViewClient;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->webView:Landroid/webkit/WebView;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setWebViewListeners(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/getcapacitor/WebViewListener;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/getcapacitor/Bridge;->webViewListeners:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public shouldKeepRunning()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Bridge;->preferences:Lorg/apache/cordova/q;

    .line 2
    .line 3
    const-string v1, "KeepRunning"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/q;->a(Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public startActivityForPluginWithResult(Lcom/getcapacitor/PluginCall;Landroid/content/Intent;I)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-string v0, "Starting activity for result"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/getcapacitor/Logger;->debug(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/getcapacitor/Bridge;->pluginCallForLastActivity:Lcom/getcapacitor/PluginCall;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->getActivity()Lg/m;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1, p2, p3}, Lb/p;->startActivityForResult(Landroid/content/Intent;I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public triggerDocumentJSEvent(Ljava/lang/String;)V
    .registers 3

    .line 1
    const-string v0, "document"

    invoke-virtual {p0, p1, v0}, Lcom/getcapacitor/Bridge;->triggerJSEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public triggerDocumentJSEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 2
    const-string v0, "document"

    invoke-virtual {p0, p1, v0, p2}, Lcom/getcapacitor/Bridge;->triggerJSEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public triggerJSEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.Capacitor.triggerEvent(\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\", \""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/getcapacitor/d;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/getcapacitor/d;-><init>(I)V

    invoke-virtual {p0, p1, p2}, Lcom/getcapacitor/Bridge;->eval(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public triggerJSEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.Capacitor.triggerEvent(\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\", \""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    .line 3
    invoke-static {v0, p3, p1}, Lq2/x;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance p2, Lcom/getcapacitor/d;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Lcom/getcapacitor/d;-><init>(I)V

    invoke-virtual {p0, p1, p2}, Lcom/getcapacitor/Bridge;->eval(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public triggerWindowJSEvent(Ljava/lang/String;)V
    .registers 3

    .line 1
    const-string v0, "window"

    invoke-virtual {p0, p1, v0}, Lcom/getcapacitor/Bridge;->triggerJSEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public triggerWindowJSEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 2
    const-string v0, "window"

    invoke-virtual {p0, p1, v0, p2}, Lcom/getcapacitor/Bridge;->triggerJSEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public validatePermissions(Lcom/getcapacitor/Plugin;Lcom/getcapacitor/PluginCall;Ljava/util/Map;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/getcapacitor/Plugin;",
            "Lcom/getcapacitor/PluginCall;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "PluginPermStates"

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x1

    .line 25
    if-eqz v2, :cond_b1

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/util/Map$Entry;

    .line 32
    .line 33
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Ljava/lang/String;

    .line 38
    .line 39
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Ljava/lang/Boolean;

    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_44

    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    invoke-interface {p1, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    if-eqz v2, :cond_13

    .line 57
    .line 58
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-interface {v2, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 63
    .line 64
    .line 65
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 66
    .line 67
    .line 68
    goto :goto_13

    .line 69
    :cond_44
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->getActivity()Lg/m;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 78
    .line 79
    const/16 v7, 0x21

    .line 80
    .line 81
    if-ge v6, v7, :cond_5c

    .line 82
    .line 83
    const-string v7, "android.permission.POST_NOTIFICATIONS"

    .line 84
    .line 85
    invoke-static {v7, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    if-eqz v7, :cond_5c

    .line 90
    .line 91
    move v3, v1

    .line 92
    goto :goto_97

    .line 93
    :cond_5c
    const/16 v7, 0x20

    .line 94
    .line 95
    if-lt v6, v7, :cond_65

    .line 96
    .line 97
    invoke-virtual {v5, v4}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    goto :goto_97

    .line 102
    :cond_65
    const/16 v7, 0x1f

    .line 103
    .line 104
    if-ne v6, v7, :cond_93

    .line 105
    .line 106
    :try_start_69
    invoke-virtual {v5}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    const-class v7, Landroid/content/pm/PackageManager;

    .line 115
    .line 116
    const-string v8, "shouldShowRequestPermissionRationale"

    .line 117
    .line 118
    new-array v9, v3, [Ljava/lang/Class;

    .line 119
    .line 120
    const-class v10, Ljava/lang/String;

    .line 121
    .line 122
    aput-object v10, v9, v1

    .line 123
    .line 124
    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    new-array v3, v3, [Ljava/lang/Object;

    .line 129
    .line 130
    aput-object v4, v3, v1

    .line 131
    .line 132
    invoke-virtual {v7, v6, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    check-cast v3, Ljava/lang/Boolean;

    .line 137
    .line 138
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 139
    .line 140
    .line 141
    move-result v3
    :try_end_8d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_69 .. :try_end_8d} :catch_8e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_69 .. :try_end_8d} :catch_8e
    .catch Ljava/lang/IllegalAccessException; {:try_start_69 .. :try_end_8d} :catch_8e

    .line 142
    goto :goto_97

    .line 143
    :catch_8e
    invoke-virtual {v5, v4}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    goto :goto_97

    .line 148
    :cond_93
    invoke-virtual {v5, v4}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    :goto_97
    if-eqz v3, :cond_a3

    .line 153
    .line 154
    sget-object v3, Lcom/getcapacitor/PermissionState;->PROMPT_WITH_RATIONALE:Lcom/getcapacitor/PermissionState;

    .line 155
    .line 156
    invoke-virtual {v3}, Lcom/getcapacitor/PermissionState;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 161
    .line 162
    .line 163
    goto :goto_ac

    .line 164
    :cond_a3
    sget-object v3, Lcom/getcapacitor/PermissionState;->DENIED:Lcom/getcapacitor/PermissionState;

    .line 165
    .line 166
    invoke-virtual {v3}, Lcom/getcapacitor/PermissionState;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 171
    .line 172
    .line 173
    :goto_ac
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 174
    .line 175
    .line 176
    goto/16 :goto_13

    .line 177
    .line 178
    :cond_b1
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    new-array p3, v1, [Ljava/lang/String;

    .line 183
    .line 184
    invoke-interface {p1, p3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    check-cast p1, [Ljava/lang/String;

    .line 189
    .line 190
    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->getContext()Landroid/content/Context;

    .line 191
    .line 192
    .line 193
    move-result-object p3

    .line 194
    invoke-static {p3, p1}, Lcom/getcapacitor/util/PermissionHelper;->hasDefinedPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    .line 195
    .line 196
    .line 197
    move-result p3

    .line 198
    if-nez p3, :cond_fb

    .line 199
    .line 200
    new-instance p3, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    const-string v0, "Missing the following permissions in AndroidManifest.xml:\n"

    .line 203
    .line 204
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0}, Lcom/getcapacitor/Bridge;->getContext()Landroid/content/Context;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-static {v0, p1}, Lcom/getcapacitor/util/PermissionHelper;->getUndefinedPermissions(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    array-length v0, p1

    .line 216
    move v2, v1

    .line 217
    :goto_d8
    if-ge v2, v0, :cond_f3

    .line 218
    .line 219
    aget-object v3, p1, v2

    .line 220
    .line 221
    new-instance v4, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    const-string v3, "\n"

    .line 230
    .line 231
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    add-int/lit8 v2, v2, 0x1

    .line 242
    .line 243
    goto :goto_d8

    .line 244
    :cond_f3
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    invoke-virtual {p2, p1}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    return v1

    .line 252
    :cond_fb
    return v3
.end method

###### Class com.getcapacitor.Bridge.AnonymousClass1 (com.getcapacitor.Bridge$1)
.class Lcom/getcapacitor/Bridge$1;
.super Landroid/webkit/ServiceWorkerClient;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/getcapacitor/Bridge;->loadWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/getcapacitor/Bridge;


# direct methods
.method public constructor <init>(Lcom/getcapacitor/Bridge;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/getcapacitor/Bridge$1;->this$0:Lcom/getcapacitor/Bridge;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/ServiceWorkerClient;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public shouldInterceptRequest(Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Bridge$1;->this$0:Lcom/getcapacitor/Bridge;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/getcapacitor/Bridge;->getLocalServer()Lcom/getcapacitor/WebViewLocalServer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/getcapacitor/WebViewLocalServer;->shouldInterceptRequest(Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

###### Class com.getcapacitor.Bridge.Builder (com.getcapacitor.Bridge$Builder)
.class public Lcom/getcapacitor/Bridge$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getcapacitor/Bridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private activity:Lg/m;

.field private config:Lcom/getcapacitor/CapConfig;

.field private fragment:Landroidx/fragment/app/c0;

.field private instanceState:Landroid/os/Bundle;

.field private pluginInstances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/getcapacitor/Plugin;",
            ">;"
        }
    .end annotation
.end field

.field private plugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/getcapacitor/Plugin;",
            ">;>;"
        }
    .end annotation
.end field

.field private routeProcessor:Lcom/getcapacitor/RouteProcessor;

.field private serverPath:Lcom/getcapacitor/ServerPath;

.field private final webViewListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/getcapacitor/WebViewListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/c0;)V
    .registers 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/getcapacitor/Bridge$Builder;->instanceState:Landroid/os/Bundle;

    .line 10
    iput-object v0, p0, Lcom/getcapacitor/Bridge$Builder;->config:Lcom/getcapacitor/CapConfig;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/getcapacitor/Bridge$Builder;->plugins:Ljava/util/List;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/getcapacitor/Bridge$Builder;->pluginInstances:Ljava/util/List;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/getcapacitor/Bridge$Builder;->webViewListeners:Ljava/util/List;

    .line 14
    invoke-virtual {p1}, Landroidx/fragment/app/c0;->c()Landroidx/fragment/app/h0;

    move-result-object v0

    check-cast v0, Lg/m;

    iput-object v0, p0, Lcom/getcapacitor/Bridge$Builder;->activity:Lg/m;

    .line 15
    iput-object p1, p0, Lcom/getcapacitor/Bridge$Builder;->fragment:Landroidx/fragment/app/c0;

    return-void
.end method

.method public constructor <init>(Lg/m;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/getcapacitor/Bridge$Builder;->instanceState:Landroid/os/Bundle;

    .line 3
    iput-object v0, p0, Lcom/getcapacitor/Bridge$Builder;->config:Lcom/getcapacitor/CapConfig;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/getcapacitor/Bridge$Builder;->plugins:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/getcapacitor/Bridge$Builder;->pluginInstances:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/getcapacitor/Bridge$Builder;->webViewListeners:Ljava/util/List;

    .line 7
    iput-object p1, p0, Lcom/getcapacitor/Bridge$Builder;->activity:Lg/m;

    return-void
.end method


# virtual methods
.method public addPlugin(Ljava/lang/Class;)Lcom/getcapacitor/Bridge$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/getcapacitor/Plugin;",
            ">;)",
            "Lcom/getcapacitor/Bridge$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Bridge$Builder;->plugins:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addPluginInstance(Lcom/getcapacitor/Plugin;)Lcom/getcapacitor/Bridge$Builder;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Bridge$Builder;->pluginInstances:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addPluginInstances(Ljava/util/List;)Lcom/getcapacitor/Bridge$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/getcapacitor/Plugin;",
            ">;)",
            "Lcom/getcapacitor/Bridge$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Bridge$Builder;->pluginInstances:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addPlugins(Ljava/util/List;)Lcom/getcapacitor/Bridge$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/getcapacitor/Plugin;",
            ">;>;)",
            "Lcom/getcapacitor/Bridge$Builder;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_14

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Class;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/getcapacitor/Bridge$Builder;->addPlugin(Ljava/lang/Class;)Lcom/getcapacitor/Bridge$Builder;

    .line 18
    .line 19
    .line 20
    goto :goto_4

    .line 21
    :cond_14
    return-object p0
.end method

.method public addWebViewListener(Lcom/getcapacitor/WebViewListener;)Lcom/getcapacitor/Bridge$Builder;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Bridge$Builder;->webViewListeners:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addWebViewListeners(Ljava/util/List;)Lcom/getcapacitor/Bridge$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/getcapacitor/WebViewListener;",
            ">;)",
            "Lcom/getcapacitor/Bridge$Builder;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_14

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/getcapacitor/WebViewListener;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/getcapacitor/Bridge$Builder;->addWebViewListener(Lcom/getcapacitor/WebViewListener;)Lcom/getcapacitor/Bridge$Builder;

    .line 18
    .line 19
    .line 20
    goto :goto_4

    .line 21
    :cond_14
    return-object p0
.end method

.method public create()Lcom/getcapacitor/Bridge;
    .registers 15

    .line 1
    new-instance v0, Lorg/apache/cordova/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/cordova/f;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/getcapacitor/Bridge$Builder;->activity:Lg/m;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lorg/apache/cordova/f;->c(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/getcapacitor/Bridge$Builder;->activity:Lg/m;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    iget-object v11, v0, Lorg/apache/cordova/f;->a:Lorg/apache/cordova/q;

    .line 25
    .line 26
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    new-instance v9, Lcom/getcapacitor/cordova/MockCordovaInterfaceImpl;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/getcapacitor/Bridge$Builder;->activity:Lg/m;

    .line 32
    .line 33
    invoke-direct {v9, v1}, Lcom/getcapacitor/cordova/MockCordovaInterfaceImpl;-><init>(Lg/m;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/getcapacitor/Bridge$Builder;->instanceState:Landroid/os/Bundle;

    .line 37
    .line 38
    if-eqz v1, :cond_2a

    .line 39
    .line 40
    invoke-virtual {v9, v1}, Lorg/apache/cordova/CordovaInterfaceImpl;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 41
    .line 42
    .line 43
    :cond_2a
    iget-object v1, p0, Lcom/getcapacitor/Bridge$Builder;->fragment:Landroidx/fragment/app/c0;

    .line 44
    .line 45
    if-eqz v1, :cond_3a

    .line 46
    .line 47
    iget-object v1, v1, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 48
    .line 49
    sget v2, Lcom/getcapacitor/android/R$id;->webview:I

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    :goto_36
    check-cast v1, Landroid/webkit/WebView;

    .line 56
    .line 57
    move-object v6, v1

    .line 58
    goto :goto_43

    .line 59
    :cond_3a
    iget-object v1, p0, Lcom/getcapacitor/Bridge$Builder;->activity:Lg/m;

    .line 60
    .line 61
    sget v2, Lcom/getcapacitor/android/R$id;->webview:I

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Lg/m;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    goto :goto_36

    .line 68
    :goto_43
    new-instance v1, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;

    .line 69
    .line 70
    iget-object v2, p0, Lcom/getcapacitor/Bridge$Builder;->activity:Lg/m;

    .line 71
    .line 72
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-direct {v1, v2}, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;-><init>(Landroid/content/Context;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, v0, Lorg/apache/cordova/f;->b:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {v1, v9, v0, v11, v6}, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->init(Lorg/apache/cordova/m;Ljava/util/List;Lorg/apache/cordova/q;Landroid/webkit/WebView;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->getPluginManager()Lorg/apache/cordova/l0;

    .line 85
    .line 86
    .line 87
    move-result-object v10

    .line 88
    invoke-virtual {v9, v10}, Lorg/apache/cordova/CordovaInterfaceImpl;->onCordovaInit(Lorg/apache/cordova/l0;)V

    .line 89
    .line 90
    .line 91
    new-instance v2, Lcom/getcapacitor/Bridge;

    .line 92
    .line 93
    iget-object v3, p0, Lcom/getcapacitor/Bridge$Builder;->activity:Lg/m;

    .line 94
    .line 95
    iget-object v4, p0, Lcom/getcapacitor/Bridge$Builder;->serverPath:Lcom/getcapacitor/ServerPath;

    .line 96
    .line 97
    iget-object v5, p0, Lcom/getcapacitor/Bridge$Builder;->fragment:Landroidx/fragment/app/c0;

    .line 98
    .line 99
    iget-object v7, p0, Lcom/getcapacitor/Bridge$Builder;->plugins:Ljava/util/List;

    .line 100
    .line 101
    iget-object v8, p0, Lcom/getcapacitor/Bridge$Builder;->pluginInstances:Ljava/util/List;

    .line 102
    .line 103
    iget-object v12, p0, Lcom/getcapacitor/Bridge$Builder;->config:Lcom/getcapacitor/CapConfig;

    .line 104
    .line 105
    const/4 v13, 0x0

    .line 106
    invoke-direct/range {v2 .. v13}, Lcom/getcapacitor/Bridge;-><init>(Lg/m;Lcom/getcapacitor/ServerPath;Landroidx/fragment/app/c0;Landroid/webkit/WebView;Ljava/util/List;Ljava/util/List;Lcom/getcapacitor/cordova/MockCordovaInterfaceImpl;Lorg/apache/cordova/l0;Lorg/apache/cordova/q;Lcom/getcapacitor/CapConfig;I)V

    .line 107
    .line 108
    .line 109
    instance-of v0, v6, Lcom/getcapacitor/CapacitorWebView;

    .line 110
    .line 111
    if-eqz v0, :cond_78

    .line 112
    .line 113
    check-cast v6, Lcom/getcapacitor/CapacitorWebView;

    .line 114
    .line 115
    invoke-virtual {v6, v2}, Lcom/getcapacitor/CapacitorWebView;->setBridge(Lcom/getcapacitor/Bridge;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v6, v2}, Lcom/getcapacitor/CapacitorWebView;->edgeToEdgeHandler(Lcom/getcapacitor/Bridge;)V

    .line 119
    .line 120
    .line 121
    :cond_78
    invoke-virtual {v2, v1}, Lcom/getcapacitor/Bridge;->setCordovaWebView(Lorg/apache/cordova/t;)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/getcapacitor/Bridge$Builder;->webViewListeners:Ljava/util/List;

    .line 125
    .line 126
    invoke-virtual {v2, v0}, Lcom/getcapacitor/Bridge;->setWebViewListeners(Ljava/util/List;)V

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lcom/getcapacitor/Bridge$Builder;->routeProcessor:Lcom/getcapacitor/RouteProcessor;

    .line 130
    .line 131
    invoke-virtual {v2, v0}, Lcom/getcapacitor/Bridge;->setRouteProcessor(Lcom/getcapacitor/RouteProcessor;)V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lcom/getcapacitor/Bridge$Builder;->instanceState:Landroid/os/Bundle;

    .line 135
    .line 136
    if-eqz v0, :cond_8c

    .line 137
    .line 138
    invoke-virtual {v2, v0}, Lcom/getcapacitor/Bridge;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 139
    .line 140
    .line 141
    :cond_8c
    return-object v2
.end method

.method public setConfig(Lcom/getcapacitor/CapConfig;)Lcom/getcapacitor/Bridge$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/getcapacitor/Bridge$Builder;->config:Lcom/getcapacitor/CapConfig;

    .line 2
    .line 3
    return-object p0
.end method

.method public setInstanceState(Landroid/os/Bundle;)Lcom/getcapacitor/Bridge$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/getcapacitor/Bridge$Builder;->instanceState:Landroid/os/Bundle;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPlugins(Ljava/util/List;)Lcom/getcapacitor/Bridge$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/getcapacitor/Plugin;",
            ">;>;)",
            "Lcom/getcapacitor/Bridge$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/getcapacitor/Bridge$Builder;->plugins:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public setRouteProcessor(Lcom/getcapacitor/RouteProcessor;)Lcom/getcapacitor/Bridge$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/getcapacitor/Bridge$Builder;->routeProcessor:Lcom/getcapacitor/RouteProcessor;

    .line 2
    .line 3
    return-object p0
.end method

.method public setServerPath(Lcom/getcapacitor/ServerPath;)Lcom/getcapacitor/Bridge$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/getcapacitor/Bridge$Builder;->serverPath:Lcom/getcapacitor/ServerPath;

    .line 2
    .line 3
    return-object p0
.end method

###### Class com.getcapacitor.c (com.getcapacitor.c)
.class public final synthetic Lcom/getcapacitor/c;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/getcapacitor/Bridge;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/webkit/ValueCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/getcapacitor/Bridge;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/getcapacitor/c;->a:Lcom/getcapacitor/Bridge;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/getcapacitor/c;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/getcapacitor/c;->c:Landroid/webkit/ValueCallback;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/c;->b:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/getcapacitor/c;->c:Landroid/webkit/ValueCallback;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/getcapacitor/c;->a:Lcom/getcapacitor/Bridge;

    .line 6
    .line 7
    invoke-static {v2, v0, v1}, Lcom/getcapacitor/Bridge;->e(Lcom/getcapacitor/Bridge;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
