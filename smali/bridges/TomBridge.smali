###### Class bridges.TomBridge (bridges.TomBridge)
.class public Lbridges/TomBridge;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field private static final TAG:Ljava/lang/String; = "TomBridge"

.field private static final TYPE_ADJUST:I = 0x2

.field private static final TYPE_FIREBASE:I = 0x1

.field private static final TYPE_JPUSH:I = 0x3

.field public static final bridgeName:Ljava/lang/String; = "TomNativeBridge"


# instance fields
.field private adjustCallbackName:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private firebaseCallbackName:Ljava/lang/String;

.field private jpushCallbackName:Ljava/lang/String;

.field private final jpushTokenListener:LeventTrack/jpush/EngagelabInitManager$TokenListener;

.field private volatile lastAdjustToken:Ljava/lang/String;

.field private volatile lastFirebaseToken:Ljava/lang/String;

.field private volatile lastJPushToken:Ljava/lang/String;

.field private final tokenListener:Ln6/b;

.field private final webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lbridges/TomBridge;->adjustCallbackName:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lbridges/TomBridge;->firebaseCallbackName:Ljava/lang/String;

    .line 8
    .line 9
    iput-object v0, p0, Lbridges/TomBridge;->jpushCallbackName:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lbridges/TomBridge;->lastAdjustToken:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v0, p0, Lbridges/TomBridge;->lastFirebaseToken:Ljava/lang/String;

    .line 14
    .line 15
    iput-object v0, p0, Lbridges/TomBridge;->lastJPushToken:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v0, Ll1/b;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Ll1/b;-><init>(Lbridges/TomBridge;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lbridges/TomBridge;->tokenListener:Ln6/b;

    .line 23
    .line 24
    new-instance v1, Ll1/c;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Ll1/c;-><init>(Lbridges/TomBridge;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lbridges/TomBridge;->jpushTokenListener:LeventTrack/jpush/EngagelabInitManager$TokenListener;

    .line 30
    .line 31
    iput-object p1, p0, Lbridges/TomBridge;->context:Landroid/content/Context;

    .line 32
    .line 33
    iput-object p2, p0, Lbridges/TomBridge;->webView:Landroid/webkit/WebView;

    .line 34
    .line 35
    sget-object p1, Ln6/c;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    invoke-static {v1}, LeventTrack/jpush/EngagelabInitManager;->addTokenListener(LeventTrack/jpush/EngagelabInitManager$TokenListener;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public static synthetic a(Lbridges/TomBridge;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lbridges/TomBridge;->lambda$fetchFirebaseToken$1(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lbridges/TomBridge;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lbridges/TomBridge;->lambda$callJsFunction$4(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lbridges/TomBridge;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lbridges/TomBridge;->lambda$initJPush$2(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private callJsFunction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lbridges/TomBridge;->webView:Landroid/webkit/WebView;

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    return-void

    .line 6
    :cond_5
    invoke-static {p2}, Lbridges/TomBridge;->jsonQuote(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, "try{(window[\'"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, "\']||window."

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ")&&window[\'"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p1, "\']("

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p1, ");}catch(e){console && console.log && console.log(\'TomBridge:\'+ (e&&e.message||e));}"

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget-object p2, p0, Lbridges/TomBridge;->webView:Landroid/webkit/WebView;

    .line 54
    .line 55
    new-instance v0, La2/i;

    .line 56
    .line 57
    const/16 v1, 0xb

    .line 58
    .line 59
    invoke-direct {v0, p0, v1, p1}, La2/i;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public static synthetic d(Lbridges/TomBridge;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lbridges/TomBridge;->lambda$initFirebase$0(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lbridges/TomBridge;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lbridges/TomBridge;->lambda$fetchJPushToken$3(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic f(Lbridges/TomBridge;ILjava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lbridges/TomBridge;->sendTokenToH5(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static isEmpty(Ljava/lang/String;)Z
    .registers 1

    .line 1
    if-eqz p0, :cond_f

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_d

    .line 12
    .line 13
    goto :goto_f

    .line 14
    :cond_d
    const/4 p0, 0x0

    .line 15
    return p0

    .line 16
    :cond_f
    :goto_f
    const/4 p0, 0x1

    .line 17
    return p0
.end method

.method private static jsonQuote(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-nez p0, :cond_6

    .line 4
    .line 5
    move-object v1, v0

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    move-object v1, p0

    .line 8
    :goto_7
    :try_start_7
    invoke-static {v1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_c

    .line 12
    return-object p0

    .line 13
    :catchall_c
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v2, "\""

    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    if-nez p0, :cond_16

    .line 21
    .line 22
    goto :goto_1c

    .line 23
    :cond_16
    const-string v0, "\\\""

    .line 24
    .line 25
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :goto_1c
    invoke-static {v1, v0, v2}, Lq2/x;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method private synthetic lambda$callJsFunction$4(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lbridges/TomBridge;->webView:Landroid/webkit/WebView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private synthetic lambda$fetchFirebaseToken$1(Ljava/lang/String;)V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_7

    .line 3
    .line 4
    invoke-direct {p0, v0, p1}, Lbridges/TomBridge;->sendTokenToH5(ILjava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :cond_7
    const-string p1, ""

    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Lbridges/TomBridge;->sendErrorToH5(ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string p1, "TomBridge"

    .line 14
    .line 15
    const-string v0, "\u6ca1\u6709\u83b7\u53d6\u5230firebase\u7684token"

    .line 16
    .line 17
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private synthetic lambda$fetchJPushToken$3(Ljava/lang/String;)V
    .registers 3

    .line 1
    const/4 v0, 0x3

    .line 2
    if-eqz p1, :cond_7

    .line 3
    .line 4
    invoke-direct {p0, v0, p1}, Lbridges/TomBridge;->sendTokenToH5(ILjava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :cond_7
    const-string p1, ""

    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Lbridges/TomBridge;->sendErrorToH5(ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private synthetic lambda$initFirebase$0(Ljava/lang/String;)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "token="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "TomBridge"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    if-eqz p1, :cond_1a

    .line 22
    .line 23
    invoke-direct {p0, v0, p1}, Lbridges/TomBridge;->sendTokenToH5(ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1a
    const-string p1, ""

    .line 28
    .line 29
    invoke-direct {p0, v0, p1}, Lbridges/TomBridge;->sendErrorToH5(ILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string p1, "\u6ca1\u6709\u83b7\u53d6\u5230firebase\u7684token"

    .line 33
    .line 34
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method private synthetic lambda$initJPush$2(Ljava/lang/String;)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "JPush regId="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "TomBridge"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x3

    .line 21
    if-eqz p1, :cond_1a

    .line 22
    .line 23
    invoke-direct {p0, v0, p1}, Lbridges/TomBridge;->sendTokenToH5(ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1a
    const-string p1, ""

    .line 28
    .line 29
    invoke-direct {p0, v0, p1}, Lbridges/TomBridge;->sendErrorToH5(ILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private static optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_14

    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_14

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_14

    .line 15
    .line 16
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_14
    return-object v0
.end method

.method private static parseKvJson(Ljava/lang/String;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lbridges/TomBridge;->isEmpty(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_8
    :try_start_8
    new-instance v0, Lorg/json/JSONObject;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lbridges/TomBridge;->parseKvJsonObject(Lorg/json/JSONObject;)Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    move-result-object p0
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_11} :catch_12

    .line 18
    return-object p0

    .line 19
    :catch_12
    move-exception p0

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v2, "parseKvJson error: "

    .line 23
    .line 24
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v2, "TomBridge"

    .line 39
    .line 40
    invoke-static {v2, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    .line 42
    .line 43
    return-object v1
.end method

.method private static parseKvJsonObject(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_4

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_4
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_25

    .line 19
    .line 20
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p0, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    if-eqz v3, :cond_d

    .line 31
    .line 32
    if-eqz v4, :cond_d

    .line 33
    .line 34
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    goto :goto_d

    .line 38
    :cond_25
    return-object v1
.end method

.method private sendErrorToH5(ILjava/lang/String;)V
    .registers 4

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p1, v0, :cond_6

    .line 3
    .line 4
    iget-object p1, p0, Lbridges/TomBridge;->adjustCallbackName:Ljava/lang/String;

    .line 5
    .line 6
    goto :goto_e

    .line 7
    :cond_6
    const/4 v0, 0x3

    .line 8
    if-ne p1, v0, :cond_c

    .line 9
    .line 10
    iget-object p1, p0, Lbridges/TomBridge;->jpushCallbackName:Ljava/lang/String;

    .line 11
    .line 12
    goto :goto_e

    .line 13
    :cond_c
    iget-object p1, p0, Lbridges/TomBridge;->firebaseCallbackName:Ljava/lang/String;

    .line 14
    .line 15
    :goto_e
    invoke-static {p1}, Lbridges/TomBridge;->isEmpty(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_17

    .line 20
    .line 21
    invoke-direct {p0, p1, p2}, Lbridges/TomBridge;->callJsFunction(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_17
    return-void
.end method

.method private sendTokenToH5(ILjava/lang/String;)V
    .registers 6

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ne p1, v0, :cond_7

    .line 4
    .line 5
    const-string v0, "[ADJUST]"

    .line 6
    .line 7
    goto :goto_e

    .line 8
    :cond_7
    if-ne p1, v1, :cond_c

    .line 9
    .line 10
    const-string v0, "[FIREBASE]"

    .line 11
    .line 12
    goto :goto_e

    .line 13
    :cond_c
    const-string v0, "[JPUSH]"

    .line 14
    .line 15
    :goto_e
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v0, " token="

    .line 24
    .line 25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v2, "TomBridge"

    .line 36
    .line 37
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    if-ne p1, v1, :cond_2e

    .line 41
    .line 42
    iput-object p2, p0, Lbridges/TomBridge;->lastFirebaseToken:Ljava/lang/String;

    .line 43
    .line 44
    iget-object p1, p0, Lbridges/TomBridge;->firebaseCallbackName:Ljava/lang/String;

    .line 45
    .line 46
    goto :goto_3a

    .line 47
    :cond_2e
    const/4 v0, 0x3

    .line 48
    if-ne p1, v0, :cond_36

    .line 49
    .line 50
    iput-object p2, p0, Lbridges/TomBridge;->lastJPushToken:Ljava/lang/String;

    .line 51
    .line 52
    iget-object p1, p0, Lbridges/TomBridge;->jpushCallbackName:Ljava/lang/String;

    .line 53
    .line 54
    goto :goto_3a

    .line 55
    :cond_36
    iput-object p2, p0, Lbridges/TomBridge;->lastAdjustToken:Ljava/lang/String;

    .line 56
    .line 57
    iget-object p1, p0, Lbridges/TomBridge;->adjustCallbackName:Ljava/lang/String;

    .line 58
    .line 59
    :goto_3a
    invoke-static {p1}, Lbridges/TomBridge;->isEmpty(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_41

    .line 64
    .line 65
    return-void

    .line 66
    :cond_41
    invoke-direct {p0, p1, p2}, Lbridges/TomBridge;->callJsFunction(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method


# virtual methods
.method public detach()V
    .registers 3

    .line 1
    iget-object v0, p0, Lbridges/TomBridge;->tokenListener:Ln6/b;

    .line 2
    .line 3
    if-eqz v0, :cond_a

    .line 4
    .line 5
    sget-object v1, Ln6/c;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    goto :goto_c

    .line 11
    :cond_a
    sget-object v0, Ln6/c;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    .line 13
    :goto_c
    iget-object v0, p0, Lbridges/TomBridge;->jpushTokenListener:LeventTrack/jpush/EngagelabInitManager$TokenListener;

    .line 14
    .line 15
    invoke-static {v0}, LeventTrack/jpush/EngagelabInitManager;->removeTokenListener(LeventTrack/jpush/EngagelabInitManager$TokenListener;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public fetchFirebaseToken()V
    .registers 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Ll1/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Ll1/a;-><init>(Lbridges/TomBridge;I)V

    .line 5
    .line 6
    .line 7
    sget-object v1, Ln6/c;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    .line 9
    const-string v1, "FirebaseInit"

    .line 10
    .line 11
    const-string v2, "fetchToken: requesting FCM token..."

    .line 12
    .line 13
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->c()Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    new-instance v2, Lp4/j;

    .line 24
    .line 25
    invoke-direct {v2}, Lp4/j;-><init>()V

    .line 26
    .line 27
    .line 28
    iget-object v3, v1, Lcom/google/firebase/messaging/FirebaseMessaging;->f:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 29
    .line 30
    new-instance v4, La2/i;

    .line 31
    .line 32
    const/16 v5, 0x8

    .line 33
    .line 34
    invoke-direct {v4, v1, v5, v2}, La2/i;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 38
    .line 39
    .line 40
    new-instance v1, Lcom/google/firebase/messaging/j0;

    .line 41
    .line 42
    const/16 v3, 0xa

    .line 43
    .line 44
    invoke-direct {v1, v3, v0}, Lcom/google/firebase/messaging/j0;-><init>(ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, v2, Lp4/j;->a:Lp4/q;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lp4/q;->h(Lp4/d;)Lp4/q;

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public fetchJPushToken()V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lbridges/TomBridge;->context:Landroid/content/Context;

    .line 2
    .line 3
    new-instance v1, Ll1/a;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, p0, v2}, Ll1/a;-><init>(Lbridges/TomBridge;I)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, LeventTrack/jpush/EngagelabInitManager;->fetchToken(Landroid/content/Context;LeventTrack/jpush/EngagelabInitManager$TokenCallback;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public getAdjustId()Ljava/lang/String;
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lbridges/TomBridge;->lastAdjustToken:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_13

    .line 4
    .line 5
    iget-object v0, p0, Lbridges/TomBridge;->lastAdjustToken:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_13

    .line 16
    .line 17
    iget-object v0, p0, Lbridges/TomBridge;->lastAdjustToken:Ljava/lang/String;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_13
    iget-object v0, p0, Lbridges/TomBridge;->context:Landroid/content/Context;

    .line 21
    .line 22
    sget-boolean v1, Lm6/g;->a:Z

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    if-nez v1, :cond_23

    .line 26
    .line 27
    if-eqz v0, :cond_1e

    .line 28
    .line 29
    move-object v1, v0

    .line 30
    goto :goto_20

    .line 31
    :cond_1e
    :try_start_1e
    sget-object v1, Lm6/g;->f:Landroid/content/Context;

    .line 32
    .line 33
    :goto_20
    invoke-static {v1, v2, v2}, Lm6/g;->a(Landroid/content/Context;Ljava/lang/String;Lm6/e;)V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_23

    .line 34
    .line 35
    .line 36
    :catchall_23
    :cond_23
    invoke-static {}, Lm6/d;->b()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_2c

    .line 41
    .line 42
    sget-object v0, Lm6/g;->b:Ljava/lang/String;

    .line 43
    .line 44
    goto :goto_91

    .line 45
    :cond_2c
    :try_start_2c
    invoke-static {}, Lm6/d;->b()Z

    .line 46
    .line 47
    .line 48
    move-result v1
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_5c

    .line 49
    if-nez v1, :cond_33

    .line 50
    .line 51
    goto :goto_46

    .line 52
    :cond_33
    :try_start_33
    sget-object v1, Lm6/d;->a:Ljava/lang/Class;

    .line 53
    .line 54
    const-string v3, "getAdid"

    .line 55
    .line 56
    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    if-nez v1, :cond_42

    .line 65
    .line 66
    goto :goto_46

    .line 67
    :cond_42
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2
    :try_end_46
    .catchall {:try_start_33 .. :try_end_46} :catchall_46

    .line 71
    :catchall_46
    :goto_46
    if-eqz v2, :cond_5c

    .line 72
    .line 73
    :try_start_48
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-nez v1, :cond_5c

    .line 82
    .line 83
    sput-object v2, Lm6/g;->b:Ljava/lang/String;
    :try_end_54
    .catchall {:try_start_48 .. :try_end_54} :catchall_5c

    .line 84
    .line 85
    :try_start_54
    sget-object v1, Lm6/g;->d:Ljava/util/concurrent/CountDownLatch;

    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_59
    .catchall {:try_start_54 .. :try_end_59} :catchall_59

    .line 88
    .line 89
    .line 90
    :catchall_59
    :try_start_59
    sget-object v0, Lm6/g;->b:Ljava/lang/String;
    :try_end_5b
    .catchall {:try_start_59 .. :try_end_5b} :catchall_5c

    .line 91
    .line 92
    goto :goto_91

    .line 93
    :catchall_5c
    :cond_5c
    sget-boolean v1, Lm6/g;->e:Z

    .line 94
    .line 95
    if-nez v1, :cond_80

    .line 96
    .line 97
    const-class v1, Lm6/g;

    .line 98
    .line 99
    monitor-enter v1

    .line 100
    :try_start_63
    sget-boolean v2, Lm6/g;->e:Z

    .line 101
    .line 102
    if-nez v2, :cond_7c

    .line 103
    .line 104
    const/4 v2, 0x1

    .line 105
    sput-boolean v2, Lm6/g;->e:Z
    :try_end_6a
    .catchall {:try_start_63 .. :try_end_6a} :catchall_7a

    .line 106
    .line 107
    if-eqz v0, :cond_6d

    .line 108
    .line 109
    goto :goto_6f

    .line 110
    :cond_6d
    :try_start_6d
    sget-boolean v0, Lm6/g;->a:Z

    .line 111
    .line 112
    :goto_6f
    new-instance v0, Lcom/getcapacitor/n;

    .line 113
    .line 114
    const/16 v2, 0xd

    .line 115
    .line 116
    invoke-direct {v0, v2}, Lcom/getcapacitor/n;-><init>(I)V

    .line 117
    .line 118
    .line 119
    invoke-static {v0}, Lm6/d;->d(Lm6/f;)V
    :try_end_79
    .catchall {:try_start_6d .. :try_end_79} :catchall_7c

    .line 120
    .line 121
    .line 122
    goto :goto_7c

    .line 123
    :catchall_7a
    move-exception v0

    .line 124
    goto :goto_7e

    .line 125
    :catchall_7c
    :cond_7c
    :goto_7c
    :try_start_7c
    monitor-exit v1

    .line 126
    goto :goto_80

    .line 127
    :goto_7e
    monitor-exit v1
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_7a

    .line 128
    throw v0

    .line 129
    :cond_80
    :goto_80
    :try_start_80
    sget-object v0, Lm6/g;->d:Ljava/util/concurrent/CountDownLatch;

    .line 130
    .line 131
    const-wide/16 v1, 0x0

    .line 132
    .line 133
    const-wide/16 v3, 0x5dc

    .line 134
    .line 135
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 136
    .line 137
    .line 138
    move-result-wide v1

    .line 139
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 140
    .line 141
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_8f
    .catchall {:try_start_80 .. :try_end_8f} :catchall_8f

    .line 142
    .line 143
    .line 144
    :catchall_8f
    sget-object v0, Lm6/g;->b:Ljava/lang/String;

    .line 145
    .line 146
    :goto_91
    if-eqz v0, :cond_94

    .line 147
    .line 148
    goto :goto_96

    .line 149
    :cond_94
    const-string v0, ""

    .line 150
    .line 151
    :goto_96
    return-object v0
.end method

.method public hasNotificationPermission()Z
    .registers 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_5e

    .line 5
    .line 6
    const/16 v3, 0x21

    .line 7
    .line 8
    if-lt v2, v3, :cond_52

    .line 9
    .line 10
    :try_start_9
    iget-object v2, p0, Lbridges/TomBridge;->context:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iget-object v3, p0, Lbridges/TomBridge;->context:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    const/16 v4, 0x1000

    .line 23
    .line 24
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 29
    .line 30
    if-eqz v2, :cond_52

    .line 31
    .line 32
    array-length v3, v2

    .line 33
    move v4, v1

    .line 34
    :goto_21
    if-ge v4, v3, :cond_52

    .line 35
    .line 36
    aget-object v5, v2, v4

    .line 37
    .line 38
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v5
    :try_end_29
    .catchall {:try_start_9 .. :try_end_29} :catchall_37

    .line 42
    if-eqz v5, :cond_34

    .line 43
    .line 44
    :try_start_2b
    iget-object v2, p0, Lbridges/TomBridge;->context:Landroid/content/Context;

    .line 45
    .line 46
    invoke-static {v2, v0}, Lz/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_52

    .line 51
    .line 52
    return v1

    .line 53
    :cond_34
    add-int/lit8 v4, v4, 0x1

    .line 54
    .line 55
    goto :goto_21

    .line 56
    :catchall_37
    move-exception v0

    .line 57
    const-string v2, "TomBridge"

    .line 58
    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v4, "\u9519\u8bef\u4fe1\u606f"

    .line 65
    .line 66
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    :cond_52
    iget-object v0, p0, Lbridges/TomBridge;->context:Landroid/content/Context;

    .line 84
    .line 85
    new-instance v2, Ly/u;

    .line 86
    .line 87
    invoke-direct {v2, v0}, Ly/u;-><init>(Landroid/content/Context;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Ly/u;->a()Z

    .line 91
    .line 92
    .line 93
    move-result v0
    :try_end_5d
    .catchall {:try_start_2b .. :try_end_5d} :catchall_5e

    .line 94
    return v0

    .line 95
    :catchall_5e
    return v1
.end method

.method public initAdjust(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lbridges/TomBridge;->initAdjust(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public initAdjust(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received adjust config: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\uff0c callback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TomBridge"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iput-object p1, p0, Lbridges/TomBridge;->adjustCallbackName:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lbridges/TomBridge;->lastAdjustToken:Ljava/lang/String;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lbridges/TomBridge;->lastAdjustToken:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    .line 5
    iget-object v0, p0, Lbridges/TomBridge;->lastAdjustToken:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lbridges/TomBridge;->callJsFunction(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_32
    iget-object p1, p0, Lbridges/TomBridge;->context:Landroid/content/Context;

    new-instance v0, Lo5/c;

    const/16 v1, 0x11

    invoke-direct {v0, v1, p0}, Lo5/c;-><init>(ILjava/lang/Object;)V

    invoke-static {p1, p2, v0}, Lm6/g;->a(Landroid/content/Context;Ljava/lang/String;Lm6/e;)V

    return-void
.end method

.method public initFirebase(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "initFirebase: cfg="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " cb="

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "TomBridge"

    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iput-object p2, p0, Lbridges/TomBridge;->firebaseCallbackName:Ljava/lang/String;

    .line 29
    .line 30
    iget-object p2, p0, Lbridges/TomBridge;->context:Landroid/content/Context;

    .line 31
    .line 32
    new-instance v0, Ll1/a;

    .line 33
    .line 34
    const/4 v1, 0x2

    .line 35
    invoke-direct {v0, p0, v1}, Ll1/a;-><init>(Lbridges/TomBridge;I)V

    .line 36
    .line 37
    .line 38
    invoke-static {p2, p1, v0}, Ln6/c;->a(Landroid/content/Context;Ljava/lang/String;Ln6/a;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public initJPush(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "initJPush: cfg="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " cb="

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "TomBridge"

    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iput-object p2, p0, Lbridges/TomBridge;->jpushCallbackName:Ljava/lang/String;

    .line 29
    .line 30
    iget-object p2, p0, Lbridges/TomBridge;->context:Landroid/content/Context;

    .line 31
    .line 32
    new-instance v0, Ll1/a;

    .line 33
    .line 34
    const/4 v1, 0x3

    .line 35
    invoke-direct {v0, p0, v1}, Ll1/a;-><init>(Lbridges/TomBridge;I)V

    .line 36
    .line 37
    .line 38
    invoke-static {p2, p1, v0}, LeventTrack/jpush/EngagelabInitManager;->initializeFromJson(Landroid/content/Context;Ljava/lang/String;LeventTrack/jpush/EngagelabInitManager$TokenCallback;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public isAppInstalled(Ljava/lang/String;)Z
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    iget-object v1, p0, Lbridges/TomBridge;->context:Landroid/content/Context;

    .line 3
    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_a} :catch_c

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :catch_c
    return v0
.end method

.method public openApp(Ljava/lang/String;)Z
    .registers 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "market://details?id="

    .line 2
    .line 3
    const/high16 v1, 0x10000000

    .line 4
    .line 5
    :try_start_4
    iget-object v2, p0, Lbridges/TomBridge;->context:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eqz v2, :cond_3a

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    iget-object v3, p0, Lbridges/TomBridge;->context:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_18} :catch_1a

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    return p1

    .line 27
    :catch_1a
    move-exception v2

    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v4, "openApp failed: "

    .line 31
    .line 32
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v4, " - "

    .line 39
    .line 40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    const-string v3, "TomBridge"

    .line 55
    .line 56
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    :cond_3a
    :try_start_3a
    new-instance v2, Landroid/content/Intent;

    .line 60
    .line 61
    const-string v3, "android.intent.action.VIEW"

    .line 62
    .line 63
    new-instance v4, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lbridges/TomBridge;->context:Landroid/content/Context;

    .line 86
    .line 87
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_59} :catch_5a

    .line 88
    .line 89
    .line 90
    goto :goto_6b

    .line 91
    :catch_5a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string v1, "https://play.google.com/store/apps/details?id="

    .line 94
    .line 95
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p0, p1}, Lbridges/TomBridge;->openUrl(Ljava/lang/String;)Z

    .line 106
    .line 107
    .line 108
    :goto_6b
    const/4 p1, 0x0

    .line 109
    return p1
.end method

.method public openUrl(Ljava/lang/String;)Z
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.intent.action.VIEW"

    .line 4
    .line 5
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 10
    .line 11
    .line 12
    const/high16 v1, 0x10000000

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lbridges/TomBridge;->context:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_17

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    return p1

    .line 24
    :catch_17
    move-exception v0

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v2, "openUrl failed: "

    .line 28
    .line 29
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p1, " - "

    .line 36
    .line 37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string v0, "TomBridge"

    .line 52
    .line 53
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    const/4 p1, 0x0

    .line 57
    return p1
.end method

.method public requestPostNotificationPermissionIfNeeded()V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x21

    .line 4
    .line 5
    if-lt v0, v1, :cond_21

    .line 6
    .line 7
    iget-object v0, p0, Lbridges/TomBridge;->context:Landroid/content/Context;

    .line 8
    .line 9
    instance-of v1, v0, Landroid/app/Activity;

    .line 10
    .line 11
    if-eqz v1, :cond_21

    .line 12
    .line 13
    const-string v1, "android.permission.POST_NOTIFICATIONS"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lz/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_21

    .line 20
    .line 21
    iget-object v0, p0, Lbridges/TomBridge;->context:Landroid/content/Context;

    .line 22
    .line 23
    check-cast v0, Landroid/app/Activity;

    .line 24
    .line 25
    filled-new-array {v1}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/16 v2, 0x26bd

    .line 30
    .line 31
    invoke-static {v0, v1, v2}, Ly/b;->d(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 32
    .line 33
    .line 34
    :cond_21
    return-void
.end method

.method public setOrientationAuto()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lbridges/TomBridge;->context:Landroid/content/Context;

    .line 2
    .line 3
    instance-of v1, v0, Landroid/app/Activity;

    .line 4
    .line 5
    if-eqz v1, :cond_13

    .line 6
    .line 7
    check-cast v0, Landroid/app/Activity;

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 11
    .line 12
    .line 13
    const-string v0, "TomBridge"

    .line 14
    .line 15
    const-string v1, "\u5df2\u6062\u590d\u81ea\u52a8\u65cb\u8f6c"

    .line 16
    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    :cond_13
    return-void
.end method

.method public setOrientationLandscape()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lbridges/TomBridge;->context:Landroid/content/Context;

    .line 2
    .line 3
    instance-of v1, v0, Landroid/app/Activity;

    .line 4
    .line 5
    if-eqz v1, :cond_13

    .line 6
    .line 7
    check-cast v0, Landroid/app/Activity;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 11
    .line 12
    .line 13
    const-string v0, "TomBridge"

    .line 14
    .line 15
    const-string v1, "\u5df2\u5207\u6362\u4e3a\u6a2a\u5c4f"

    .line 16
    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    :cond_13
    return-void
.end method

.method public setOrientationPortrait()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lbridges/TomBridge;->context:Landroid/content/Context;

    .line 2
    .line 3
    instance-of v1, v0, Landroid/app/Activity;

    .line 4
    .line 5
    if-eqz v1, :cond_13

    .line 6
    .line 7
    check-cast v0, Landroid/app/Activity;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 11
    .line 12
    .line 13
    const-string v0, "TomBridge"

    .line 14
    .line 15
    const-string v1, "\u5df2\u5207\u6362\u4e3a\u7ad6\u5c4f"

    .line 16
    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    :cond_13
    return-void
.end method

.method public trackAdjustEvent(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lbridges/TomBridge;->trackAdjustEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public trackAdjustEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2
    invoke-static {p2}, Lbridges/TomBridge;->parseKvJson(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    .line 3
    iget-object v0, p0, Lbridges/TomBridge;->context:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lm6/g;->e(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public trackAdjustEventAdvanced(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Lbridges/TomBridge;->isEmpty(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_e

    .line 6
    .line 7
    new-instance p1, Lorg/json/JSONObject;

    .line 8
    .line 9
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 10
    .line 11
    .line 12
    goto :goto_14

    .line 13
    :catch_c
    move-exception p1

    .line 14
    goto :goto_2a

    .line 15
    :cond_e
    new-instance v0, Lorg/json/JSONObject;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    move-object p1, v0

    .line 21
    :goto_14
    const-string v0, "eventToken"

    .line 22
    .line 23
    invoke-static {p1, v0}, Lbridges/TomBridge;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "callbackParams"

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p1}, Lbridges/TomBridge;->parseKvJsonObject(Lorg/json/JSONObject;)Ljava/util/Map;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object v1, p0, Lbridges/TomBridge;->context:Landroid/content/Context;

    .line 38
    .line 39
    invoke-static {v1, v0, p1}, Lm6/g;->e(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_29} :catch_c

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :goto_2a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v1, "trackAdjustEventAdvanced payload parse error: "

    .line 46
    .line 47
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const-string v1, "TomBridge"

    .line 62
    .line 63
    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    .line 65
    .line 66
    return-void
.end method
