###### Class com.getcapacitor.JSValue (com.getcapacitor.JSValue)
.class public Lcom/getcapacitor/JSValue;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/getcapacitor/PluginCall;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2}, Lcom/getcapacitor/JSValue;->toValue(Lcom/getcapacitor/PluginCall;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/getcapacitor/JSValue;->value:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method

.method private toValue(Lcom/getcapacitor/PluginCall;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p2, v0}, Lcom/getcapacitor/PluginCall;->getArray(Ljava/lang/String;Lcom/getcapacitor/JSArray;)Lcom/getcapacitor/JSArray;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_8

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_8
    invoke-virtual {p1, p2, v0}, Lcom/getcapacitor/PluginCall;->getObject(Ljava/lang/String;Lcom/getcapacitor/JSObject;)Lcom/getcapacitor/JSObject;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_f

    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_f
    invoke-virtual {p1, p2, v0}, Lcom/getcapacitor/PluginCall;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_16

    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_16
    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->getData()Lcom/getcapacitor/JSObject;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/JSValue;->value:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public toJSArray()Lcom/getcapacitor/JSArray;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/JSValue;->value:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/getcapacitor/JSArray;

    .line 4
    .line 5
    if-eqz v1, :cond_9

    .line 6
    .line 7
    check-cast v0, Lcom/getcapacitor/JSArray;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_9
    new-instance v0, Lorg/json/JSONException;

    .line 11
    .line 12
    const-string v1, "JSValue could not be coerced to JSArray."

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public toJSObject()Lcom/getcapacitor/JSObject;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/JSValue;->value:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/getcapacitor/JSObject;

    .line 4
    .line 5
    if-eqz v1, :cond_9

    .line 6
    .line 7
    check-cast v0, Lcom/getcapacitor/JSObject;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_9
    new-instance v0, Lorg/json/JSONException;

    .line 11
    .line 12
    const-string v1, "JSValue could not be coerced to JSObject."

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/getcapacitor/JSValue;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
