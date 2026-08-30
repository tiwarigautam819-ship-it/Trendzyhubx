###### Class com.getcapacitor.PluginResult (com.getcapacitor.PluginResult)
.class public Lcom/getcapacitor/PluginResult;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field private final json:Lcom/getcapacitor/JSObject;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/getcapacitor/JSObject;

    invoke-direct {v0}, Lcom/getcapacitor/JSObject;-><init>()V

    invoke-direct {p0, v0}, Lcom/getcapacitor/PluginResult;-><init>(Lcom/getcapacitor/JSObject;)V

    return-void
.end method

.method public constructor <init>(Lcom/getcapacitor/JSObject;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/getcapacitor/PluginResult;->json:Lcom/getcapacitor/JSObject;

    return-void
.end method


# virtual methods
.method public getWrappedResult()Lcom/getcapacitor/JSObject;
    .registers 5

    .line 1
    new-instance v0, Lcom/getcapacitor/JSObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/getcapacitor/JSObject;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/getcapacitor/PluginResult;->json:Lcom/getcapacitor/JSObject;

    .line 7
    .line 8
    const-string v2, "pluginId"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Lcom/getcapacitor/JSObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v2, v1}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/getcapacitor/JSObject;

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/getcapacitor/PluginResult;->json:Lcom/getcapacitor/JSObject;

    .line 18
    .line 19
    const-string v2, "methodName"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Lcom/getcapacitor/JSObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v2, v1}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/getcapacitor/JSObject;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/getcapacitor/PluginResult;->json:Lcom/getcapacitor/JSObject;

    .line 29
    .line 30
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 31
    .line 32
    const-string v3, "success"

    .line 33
    .line 34
    invoke-virtual {v1, v3, v2}, Lcom/getcapacitor/JSObject;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v3, v1}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/getcapacitor/JSObject;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/getcapacitor/PluginResult;->json:Lcom/getcapacitor/JSObject;

    .line 42
    .line 43
    const-string v2, "data"

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Lcom/getcapacitor/JSObject;->getJSObject(Ljava/lang/String;)Lcom/getcapacitor/JSObject;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v2, v1}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/getcapacitor/JSObject;

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lcom/getcapacitor/PluginResult;->json:Lcom/getcapacitor/JSObject;

    .line 53
    .line 54
    const-string v2, "error"

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Lcom/getcapacitor/JSObject;->getJSObject(Ljava/lang/String;)Lcom/getcapacitor/JSObject;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v2, v1}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/getcapacitor/JSObject;

    .line 61
    .line 62
    .line 63
    return-object v0
.end method

.method public jsonPut(Ljava/lang/String;Ljava/lang/Object;)Lcom/getcapacitor/PluginResult;
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/getcapacitor/PluginResult;->json:Lcom/getcapacitor/JSObject;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/getcapacitor/JSObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 4
    .line 5
    .line 6
    return-object p0

    .line 7
    :catch_6
    move-exception p1

    .line 8
    const-string p2, "Plugin"

    .line 9
    .line 10
    filled-new-array {p2}, [Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-static {p2}, Lcom/getcapacitor/Logger;->tags([Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    const-string v0, ""

    .line 19
    .line 20
    invoke-static {p2, v0, p1}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    return-object p0
.end method

.method public put(Ljava/lang/String;D)Lcom/getcapacitor/PluginResult;
    .registers 4

    .line 2
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/getcapacitor/PluginResult;->jsonPut(Ljava/lang/String;Ljava/lang/Object;)Lcom/getcapacitor/PluginResult;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;I)Lcom/getcapacitor/PluginResult;
    .registers 3

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/getcapacitor/PluginResult;->jsonPut(Ljava/lang/String;Ljava/lang/Object;)Lcom/getcapacitor/PluginResult;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;J)Lcom/getcapacitor/PluginResult;
    .registers 4

    .line 4
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/getcapacitor/PluginResult;->jsonPut(Ljava/lang/String;Ljava/lang/Object;)Lcom/getcapacitor/PluginResult;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Lcom/getcapacitor/PluginResult;)Lcom/getcapacitor/PluginResult;
    .registers 3

    .line 10
    iget-object p2, p2, Lcom/getcapacitor/PluginResult;->json:Lcom/getcapacitor/JSObject;

    invoke-virtual {p0, p1, p2}, Lcom/getcapacitor/PluginResult;->jsonPut(Ljava/lang/String;Ljava/lang/Object;)Lcom/getcapacitor/PluginResult;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Lcom/getcapacitor/PluginResult;
    .registers 3

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/getcapacitor/PluginResult;->jsonPut(Ljava/lang/String;Ljava/lang/Object;)Lcom/getcapacitor/PluginResult;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Ljava/util/Date;)Lcom/getcapacitor/PluginResult;
    .registers 6

    .line 5
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 6
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm\'Z\'"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 8
    invoke-virtual {v1, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/getcapacitor/PluginResult;->jsonPut(Ljava/lang/String;Ljava/lang/Object;)Lcom/getcapacitor/PluginResult;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Z)Lcom/getcapacitor/PluginResult;
    .registers 3

    .line 1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/getcapacitor/PluginResult;->jsonPut(Ljava/lang/String;Ljava/lang/Object;)Lcom/getcapacitor/PluginResult;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/PluginResult;->json:Lcom/getcapacitor/JSObject;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
