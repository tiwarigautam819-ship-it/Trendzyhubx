###### Class com.getcapacitor.plugin.CapacitorHttp (com.getcapacitor.plugin.CapacitorHttp)
.class public Lcom/getcapacitor/plugin/CapacitorHttp;
.super Lcom/getcapacitor/Plugin;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation runtime Lcom/getcapacitor/annotation/CapacitorPlugin;
    permissions = {
        .subannotation Lcom/getcapacitor/annotation/Permission;
            alias = "HttpWrite"
            strings = {
                "android.permission.WRITE_EXTERNAL_STORAGE"
            }
        .end subannotation,
        .subannotation Lcom/getcapacitor/annotation/Permission;
            alias = "HttpRead"
            strings = {
                "android.permission.READ_EXTERNAL_STORAGE"
            }
        .end subannotation
    }
.end annotation


# instance fields
.field private final activeRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Runnable;",
            "Lcom/getcapacitor/PluginCall;",
            ">;"
        }
    .end annotation
.end field

.field private final executor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/getcapacitor/Plugin;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/getcapacitor/plugin/CapacitorHttp;->activeRequests:Ljava/util/Map;

    .line 10
    .line 11
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/getcapacitor/plugin/CapacitorHttp;->executor:Ljava/util/concurrent/ExecutorService;

    .line 16
    .line 17
    return-void
.end method

.method public static bridge synthetic c(Lcom/getcapacitor/plugin/CapacitorHttp;)Ljava/util/Map;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/getcapacitor/plugin/CapacitorHttp;->activeRequests:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method private http(Lcom/getcapacitor/PluginCall;Ljava/lang/String;)V
    .registers 4

    .line 1
    new-instance v0, Lcom/getcapacitor/plugin/CapacitorHttp$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/getcapacitor/plugin/CapacitorHttp$1;-><init>(Lcom/getcapacitor/plugin/CapacitorHttp;Lcom/getcapacitor/PluginCall;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/getcapacitor/plugin/CapacitorHttp;->executor:Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-nez p2, :cond_18

    .line 13
    .line 14
    iget-object p2, p0, Lcom/getcapacitor/plugin/CapacitorHttp;->activeRequests:Ljava/util/Map;

    .line 15
    .line 16
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/getcapacitor/plugin/CapacitorHttp;->executor:Ljava/util/concurrent/ExecutorService;

    .line 20
    .line 21
    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_18
    const-string p2, "Failed to execute request - Http Plugin was shutdown"

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public delete(Lcom/getcapacitor/PluginCall;)V
    .registers 3
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 1
    const-string v0, "DELETE"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/getcapacitor/plugin/CapacitorHttp;->http(Lcom/getcapacitor/PluginCall;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public get(Lcom/getcapacitor/PluginCall;)V
    .registers 3
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 1
    const-string v0, "GET"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/getcapacitor/plugin/CapacitorHttp;->http(Lcom/getcapacitor/PluginCall;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public handleOnDestroy()V
    .registers 5

    .line 1
    invoke-super {p0}, Lcom/getcapacitor/Plugin;->handleOnDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/getcapacitor/plugin/CapacitorHttp;->activeRequests:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_4d

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/util/Map$Entry;

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/lang/Runnable;

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lcom/getcapacitor/PluginCall;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/getcapacitor/PluginCall;->getData()Lcom/getcapacitor/JSObject;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const-string v3, "activeCapacitorHttpUrlConnection"

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_45

    .line 49
    .line 50
    :try_start_31
    invoke-virtual {v1}, Lcom/getcapacitor/PluginCall;->getData()Lcom/getcapacitor/JSObject;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;

    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->disconnect()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/getcapacitor/PluginCall;->getData()Lcom/getcapacitor/JSObject;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_45} :catch_45

    .line 68
    .line 69
    .line 70
    :catch_45
    :cond_45
    invoke-virtual {p0}, Lcom/getcapacitor/Plugin;->getBridge()Lcom/getcapacitor/Bridge;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v2, v1}, Lcom/getcapacitor/Bridge;->releaseCall(Lcom/getcapacitor/PluginCall;)V

    .line 75
    .line 76
    .line 77
    goto :goto_d

    .line 78
    :cond_4d
    iget-object v0, p0, Lcom/getcapacitor/plugin/CapacitorHttp;->activeRequests:Ljava/util/Map;

    .line 79
    .line 80
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/getcapacitor/plugin/CapacitorHttp;->executor:Ljava/util/concurrent/ExecutorService;

    .line 84
    .line 85
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 86
    .line 87
    .line 88
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
    const-string v1, "CapacitorHttp"

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
    .registers 3

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
    const-string v1, "CapacitorHttpAndroidInterface"

    .line 8
    .line 9
    invoke-virtual {v0, p0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-super {p0}, Lcom/getcapacitor/Plugin;->load()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public patch(Lcom/getcapacitor/PluginCall;)V
    .registers 3
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 1
    const-string v0, "PATCH"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/getcapacitor/plugin/CapacitorHttp;->http(Lcom/getcapacitor/PluginCall;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public post(Lcom/getcapacitor/PluginCall;)V
    .registers 3
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 1
    const-string v0, "POST"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/getcapacitor/plugin/CapacitorHttp;->http(Lcom/getcapacitor/PluginCall;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public put(Lcom/getcapacitor/PluginCall;)V
    .registers 3
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 1
    const-string v0, "PUT"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/getcapacitor/plugin/CapacitorHttp;->http(Lcom/getcapacitor/PluginCall;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public request(Lcom/getcapacitor/PluginCall;)V
    .registers 3
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/getcapacitor/plugin/CapacitorHttp;->http(Lcom/getcapacitor/PluginCall;Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

###### Class com.getcapacitor.plugin.CapacitorHttp.AnonymousClass1 (com.getcapacitor.plugin.CapacitorHttp$1)
.class Lcom/getcapacitor/plugin/CapacitorHttp$1;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/getcapacitor/plugin/CapacitorHttp;->http(Lcom/getcapacitor/PluginCall;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/getcapacitor/plugin/CapacitorHttp;

.field final synthetic val$call:Lcom/getcapacitor/PluginCall;

.field final synthetic val$httpMethod:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/getcapacitor/plugin/CapacitorHttp;Lcom/getcapacitor/PluginCall;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/getcapacitor/plugin/CapacitorHttp$1;->this$0:Lcom/getcapacitor/plugin/CapacitorHttp;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/getcapacitor/plugin/CapacitorHttp$1;->val$call:Lcom/getcapacitor/PluginCall;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/getcapacitor/plugin/CapacitorHttp$1;->val$httpMethod:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/getcapacitor/plugin/CapacitorHttp$1;->val$call:Lcom/getcapacitor/PluginCall;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/getcapacitor/plugin/CapacitorHttp$1;->val$httpMethod:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/getcapacitor/plugin/CapacitorHttp$1;->this$0:Lcom/getcapacitor/plugin/CapacitorHttp;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/getcapacitor/Plugin;->getBridge()Lcom/getcapacitor/Bridge;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {v0, v1, v2}, Lcom/getcapacitor/plugin/util/HttpRequestHandler;->request(Lcom/getcapacitor/PluginCall;Ljava/lang/String;Lcom/getcapacitor/Bridge;)Lcom/getcapacitor/JSObject;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/getcapacitor/plugin/CapacitorHttp$1;->val$call:Lcom/getcapacitor/PluginCall;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Lcom/getcapacitor/PluginCall;->resolve(Lcom/getcapacitor/JSObject;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_1f
    .catchall {:try_start_0 .. :try_end_13} :catchall_1d

    .line 18
    .line 19
    .line 20
    :goto_13
    iget-object v0, p0, Lcom/getcapacitor/plugin/CapacitorHttp$1;->this$0:Lcom/getcapacitor/plugin/CapacitorHttp;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/getcapacitor/plugin/CapacitorHttp;->c(Lcom/getcapacitor/plugin/CapacitorHttp;)Ljava/util/Map;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catchall_1d
    move-exception v0

    .line 31
    goto :goto_32

    .line 32
    :catch_1f
    move-exception v0

    .line 33
    :try_start_20
    iget-object v1, p0, Lcom/getcapacitor/plugin/CapacitorHttp$1;->val$call:Lcom/getcapacitor/PluginCall;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v1, v2, v3, v0}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_31
    .catchall {:try_start_20 .. :try_end_31} :catchall_1d

    .line 48
    .line 49
    .line 50
    goto :goto_13

    .line 51
    :goto_32
    iget-object v1, p0, Lcom/getcapacitor/plugin/CapacitorHttp$1;->this$0:Lcom/getcapacitor/plugin/CapacitorHttp;

    .line 52
    .line 53
    invoke-static {v1}, Lcom/getcapacitor/plugin/CapacitorHttp;->c(Lcom/getcapacitor/plugin/CapacitorHttp;)Ljava/util/Map;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    throw v0
.end method
