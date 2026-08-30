###### Class com.getcapacitor.PluginCall (com.getcapacitor.PluginCall)
.class public Lcom/getcapacitor/PluginCall;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/getcapacitor/PluginCall$PluginCallDataTypeException;
    }
.end annotation


# static fields
.field public static final CALLBACK_ID_DANGLING:Ljava/lang/String; = "-1"


# instance fields
.field private final callbackId:Ljava/lang/String;

.field private final data:Lcom/getcapacitor/JSObject;

.field private isReleased:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private keepAlive:Z

.field private final methodName:Ljava/lang/String;

.field private final msgHandler:Lcom/getcapacitor/MessageHandler;

.field private final pluginId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/getcapacitor/MessageHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/getcapacitor/JSObject;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/getcapacitor/PluginCall;->keepAlive:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/getcapacitor/PluginCall;->isReleased:Z

    .line 8
    .line 9
    iput-object p1, p0, Lcom/getcapacitor/PluginCall;->msgHandler:Lcom/getcapacitor/MessageHandler;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/getcapacitor/PluginCall;->pluginId:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/getcapacitor/PluginCall;->callbackId:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p4, p0, Lcom/getcapacitor/PluginCall;->methodName:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p5, p0, Lcom/getcapacitor/PluginCall;->data:Lcom/getcapacitor/JSObject;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public errorCallback(Ljava/lang/String;)V
    .registers 5

    .line 1
    new-instance v0, Lcom/getcapacitor/PluginResult;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/getcapacitor/PluginResult;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_6
    const-string v2, "message"

    .line 8
    .line 9
    invoke-virtual {v0, v2, p1}, Lcom/getcapacitor/PluginResult;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/getcapacitor/PluginResult;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_c

    .line 10
    .line 11
    .line 12
    goto :goto_1e

    .line 13
    :catch_c
    move-exception p1

    .line 14
    const-string v2, "Plugin"

    .line 15
    .line 16
    filled-new-array {v2}, [Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {v2}, Lcom/getcapacitor/Logger;->tags([Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {v2, p1, v1}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    :goto_1e
    iget-object p1, p0, Lcom/getcapacitor/PluginCall;->msgHandler:Lcom/getcapacitor/MessageHandler;

    .line 32
    .line 33
    invoke-virtual {p1, p0, v1, v0}, Lcom/getcapacitor/MessageHandler;->sendResponseMessage(Lcom/getcapacitor/PluginCall;Lcom/getcapacitor/PluginResult;Lcom/getcapacitor/PluginResult;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public getArray(Ljava/lang/String;)Lcom/getcapacitor/JSArray;
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/getcapacitor/PluginCall;->getArray(Ljava/lang/String;Lcom/getcapacitor/JSArray;)Lcom/getcapacitor/JSArray;

    move-result-object p1

    return-object p1
.end method

.method public getArray(Ljava/lang/String;Lcom/getcapacitor/JSArray;)Lcom/getcapacitor/JSArray;
    .registers 6

    .line 2
    iget-object v0, p0, Lcom/getcapacitor/PluginCall;->data:Lcom/getcapacitor/JSObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_2f

    .line 3
    :cond_9
    instance-of v0, p1, Lorg/json/JSONArray;

    if-eqz v0, :cond_2f

    .line 4
    :try_start_d
    check-cast p1, Lorg/json/JSONArray;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 6
    :goto_15
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 7
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 8
    :cond_25
    new-instance p1, Lcom/getcapacitor/JSArray;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/getcapacitor/JSArray;-><init>(Ljava/lang/Object;)V
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_2e} :catch_2f

    return-object p1

    :catch_2f
    :cond_2f
    :goto_2f
    return-object p2
.end method

.method public getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/getcapacitor/PluginCall;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/getcapacitor/PluginCall;->data:Lcom/getcapacitor/JSObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_10

    .line 3
    :cond_9
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_10

    .line 4
    check-cast p1, Ljava/lang/Boolean;

    return-object p1

    :cond_10
    :goto_10
    return-object p2
.end method

.method public getCallbackId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/PluginCall;->callbackId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getData()Lcom/getcapacitor/JSObject;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/PluginCall;->data:Lcom/getcapacitor/JSObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDouble(Ljava/lang/String;)Ljava/lang/Double;
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/getcapacitor/PluginCall;->getDouble(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public getDouble(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/getcapacitor/PluginCall;->data:Lcom/getcapacitor/JSObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_2e

    .line 3
    :cond_9
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_10

    .line 4
    check-cast p1, Ljava/lang/Double;

    return-object p1

    .line 5
    :cond_10
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_1f

    .line 6
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1f
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2e

    .line 8
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_2e
    :goto_2e
    return-object p2
.end method

.method public getFloat(Ljava/lang/String;)Ljava/lang/Float;
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/getcapacitor/PluginCall;->getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/getcapacitor/PluginCall;->data:Lcom/getcapacitor/JSObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_2e

    .line 3
    :cond_9
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_10

    .line 4
    check-cast p1, Ljava/lang/Float;

    return-object p1

    .line 5
    :cond_10
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1f

    .line 6
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1f
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2e

    .line 8
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_2e
    :goto_2e
    return-object p2
.end method

.method public getInt(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/getcapacitor/PluginCall;->getInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/getcapacitor/PluginCall;->data:Lcom/getcapacitor/JSObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_10

    .line 3
    :cond_9
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_10

    .line 4
    check-cast p1, Ljava/lang/Integer;

    return-object p1

    :cond_10
    :goto_10
    return-object p2
.end method

.method public getLong(Ljava/lang/String;)Ljava/lang/Long;
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/getcapacitor/PluginCall;->getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/getcapacitor/PluginCall;->data:Lcom/getcapacitor/JSObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_10

    .line 3
    :cond_9
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_10

    .line 4
    check-cast p1, Ljava/lang/Long;

    return-object p1

    :cond_10
    :goto_10
    return-object p2
.end method

.method public getMethodName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/PluginCall;->methodName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getObject(Ljava/lang/String;)Lcom/getcapacitor/JSObject;
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/getcapacitor/PluginCall;->getObject(Ljava/lang/String;Lcom/getcapacitor/JSObject;)Lcom/getcapacitor/JSObject;

    move-result-object p1

    return-object p1
.end method

.method public getObject(Ljava/lang/String;Lcom/getcapacitor/JSObject;)Lcom/getcapacitor/JSObject;
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/getcapacitor/PluginCall;->data:Lcom/getcapacitor/JSObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_14

    .line 3
    :cond_9
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_14

    .line 4
    :try_start_d
    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/getcapacitor/JSObject;->fromJSONObject(Lorg/json/JSONObject;)Lcom/getcapacitor/JSObject;

    move-result-object p1
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_13} :catch_14

    return-object p1

    :catch_14
    :cond_14
    :goto_14
    return-object p2
.end method

.method public getPluginId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/PluginCall;->pluginId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/getcapacitor/PluginCall;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/getcapacitor/PluginCall;->data:Lcom/getcapacitor/JSObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_10

    .line 3
    :cond_9
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 4
    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_10
    :goto_10
    return-object p2
.end method

.method public hasOption(Ljava/lang/String;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/PluginCall;->data:Lcom/getcapacitor/JSObject;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public isKeptAlive()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/getcapacitor/PluginCall;->keepAlive:Z

    .line 2
    .line 3
    return v0
.end method

.method public isReleased()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/getcapacitor/PluginCall;->isReleased:Z

    .line 2
    .line 3
    return v0
.end method

.method public isSaved()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/getcapacitor/PluginCall;->isKeptAlive()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public reject(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Lcom/getcapacitor/JSObject;)V

    return-void
.end method

.method public reject(Ljava/lang/String;Lcom/getcapacitor/JSObject;)V
    .registers 4

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Lcom/getcapacitor/JSObject;)V

    return-void
.end method

.method public reject(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, p1, v0, p2, v0}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Lcom/getcapacitor/JSObject;)V

    return-void
.end method

.method public reject(Ljava/lang/String;Ljava/lang/Exception;Lcom/getcapacitor/JSObject;)V
    .registers 5

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Lcom/getcapacitor/JSObject;)V

    return-void
.end method

.method public reject(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Lcom/getcapacitor/JSObject;)V

    return-void
.end method

.method public reject(Ljava/lang/String;Ljava/lang/String;Lcom/getcapacitor/JSObject;)V
    .registers 5

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Lcom/getcapacitor/JSObject;)V

    return-void
.end method

.method public reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 5

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Lcom/getcapacitor/JSObject;)V

    return-void
.end method

.method public reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Lcom/getcapacitor/JSObject;)V
    .registers 8

    .line 1
    new-instance v0, Lcom/getcapacitor/PluginResult;

    invoke-direct {v0}, Lcom/getcapacitor/PluginResult;-><init>()V

    .line 2
    const-string v1, "Plugin"

    if-eqz p3, :cond_14

    .line 3
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/getcapacitor/Logger;->tags([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1, p3}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    :cond_14
    :try_start_14
    const-string p3, "message"

    invoke-virtual {v0, p3, p1}, Lcom/getcapacitor/PluginResult;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/getcapacitor/PluginResult;

    .line 5
    const-string p1, "code"

    invoke-virtual {v0, p1, p2}, Lcom/getcapacitor/PluginResult;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/getcapacitor/PluginResult;

    if-eqz p4, :cond_36

    .line 6
    const-string p1, "data"

    invoke-virtual {v0, p1, p4}, Lcom/getcapacitor/PluginResult;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/getcapacitor/PluginResult;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_25} :catch_26

    goto :goto_36

    :catch_26
    move-exception p1

    .line 7
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/getcapacitor/Logger;->tags([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    :cond_36
    :goto_36
    iget-object p1, p0, Lcom/getcapacitor/PluginCall;->msgHandler:Lcom/getcapacitor/MessageHandler;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2, v0}, Lcom/getcapacitor/MessageHandler;->sendResponseMessage(Lcom/getcapacitor/PluginCall;Lcom/getcapacitor/PluginResult;Lcom/getcapacitor/PluginResult;)V

    return-void
.end method

.method public release(Lcom/getcapacitor/Bridge;)V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/getcapacitor/PluginCall;->keepAlive:Z

    .line 3
    .line 4
    invoke-virtual {p1, p0}, Lcom/getcapacitor/Bridge;->releaseCall(Lcom/getcapacitor/PluginCall;)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/getcapacitor/PluginCall;->isReleased:Z

    .line 9
    .line 10
    return-void
.end method

.method public resolve()V
    .registers 3

    .line 3
    iget-object v0, p0, Lcom/getcapacitor/PluginCall;->msgHandler:Lcom/getcapacitor/MessageHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v1}, Lcom/getcapacitor/MessageHandler;->sendResponseMessage(Lcom/getcapacitor/PluginCall;Lcom/getcapacitor/PluginResult;Lcom/getcapacitor/PluginResult;)V

    return-void
.end method

.method public resolve(Lcom/getcapacitor/JSObject;)V
    .registers 4

    .line 1
    new-instance v0, Lcom/getcapacitor/PluginResult;

    invoke-direct {v0, p1}, Lcom/getcapacitor/PluginResult;-><init>(Lcom/getcapacitor/JSObject;)V

    .line 2
    iget-object p1, p0, Lcom/getcapacitor/PluginCall;->msgHandler:Lcom/getcapacitor/MessageHandler;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Lcom/getcapacitor/MessageHandler;->sendResponseMessage(Lcom/getcapacitor/PluginCall;Lcom/getcapacitor/PluginResult;Lcom/getcapacitor/PluginResult;)V

    return-void
.end method

.method public save()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/getcapacitor/PluginCall;->setKeepAlive(Ljava/lang/Boolean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setKeepAlive(Ljava/lang/Boolean;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput-boolean p1, p0, Lcom/getcapacitor/PluginCall;->keepAlive:Z

    .line 6
    .line 7
    return-void
.end method

.method public successCallback(Lcom/getcapacitor/PluginResult;)V
    .registers 4

    .line 1
    const-string v0, "-1"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/getcapacitor/PluginCall;->callbackId:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_b

    .line 10
    .line 11
    return-void

    .line 12
    :cond_b
    iget-object v0, p0, Lcom/getcapacitor/PluginCall;->msgHandler:Lcom/getcapacitor/MessageHandler;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, p0, p1, v1}, Lcom/getcapacitor/MessageHandler;->sendResponseMessage(Lcom/getcapacitor/PluginCall;Lcom/getcapacitor/PluginResult;Lcom/getcapacitor/PluginResult;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public unavailable()V
    .registers 2

    .line 1
    const-string v0, "not available"

    invoke-virtual {p0, v0}, Lcom/getcapacitor/PluginCall;->unavailable(Ljava/lang/String;)V

    return-void
.end method

.method public unavailable(Ljava/lang/String;)V
    .registers 4

    .line 2
    const-string v0, "UNAVAILABLE"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Lcom/getcapacitor/JSObject;)V

    return-void
.end method

.method public unimplemented()V
    .registers 2

    .line 1
    const-string v0, "not implemented"

    invoke-virtual {p0, v0}, Lcom/getcapacitor/PluginCall;->unimplemented(Ljava/lang/String;)V

    return-void
.end method

.method public unimplemented(Ljava/lang/String;)V
    .registers 4

    .line 2
    const-string v0, "UNIMPLEMENTED"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Lcom/getcapacitor/JSObject;)V

    return-void
.end method

###### Class com.getcapacitor.PluginCall.PluginCallDataTypeException (com.getcapacitor.PluginCall$PluginCallDataTypeException)
.class Lcom/getcapacitor/PluginCall$PluginCallDataTypeException;
.super Ljava/lang/Exception;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getcapacitor/PluginCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PluginCallDataTypeException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/getcapacitor/PluginCall;


# direct methods
.method public constructor <init>(Lcom/getcapacitor/PluginCall;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/getcapacitor/PluginCall$PluginCallDataTypeException;->this$0:Lcom/getcapacitor/PluginCall;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
