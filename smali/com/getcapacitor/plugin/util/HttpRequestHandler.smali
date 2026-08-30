###### Class com.getcapacitor.plugin.util.HttpRequestHandler (com.getcapacitor.plugin.util.HttpRequestHandler)
.class public Lcom/getcapacitor/plugin/util/HttpRequestHandler;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;,
        Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;,
        Lcom/getcapacitor/plugin/util/HttpRequestHandler$ProgressEmitter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static buildResponse(Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;)Lcom/getcapacitor/JSObject;
    .registers 2

    .line 1
    sget-object v0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;->DEFAULT:Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;

    invoke-static {p0, v0}, Lcom/getcapacitor/plugin/util/HttpRequestHandler;->buildResponse(Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;)Lcom/getcapacitor/JSObject;

    move-result-object p0

    return-object p0
.end method

.method public static buildResponse(Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;)Lcom/getcapacitor/JSObject;
    .registers 5

    .line 2
    invoke-virtual {p0}, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->getResponseCode()I

    move-result v0

    .line 3
    new-instance v1, Lcom/getcapacitor/JSObject;

    invoke-direct {v1}, Lcom/getcapacitor/JSObject;-><init>()V

    .line 4
    const-string v2, "status"

    invoke-virtual {v1, v2, v0}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;I)Lcom/getcapacitor/JSObject;

    .line 5
    const-string v0, "headers"

    invoke-static {p0}, Lcom/getcapacitor/plugin/util/HttpRequestHandler;->buildResponseHeaders(Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;)Lcom/getcapacitor/JSObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/getcapacitor/JSObject;

    .line 6
    const-string v0, "url"

    invoke-virtual {p0}, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/getcapacitor/JSObject;

    .line 7
    const-string v0, "data"

    invoke-static {p0, p1}, Lcom/getcapacitor/plugin/util/HttpRequestHandler;->readData(Lcom/getcapacitor/plugin/util/ICapacitorHttpUrlConnection;Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/getcapacitor/JSObject;

    .line 8
    invoke-virtual {p0}, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_35

    .line 9
    const-string p0, "error"

    const/4 p1, 0x1

    invoke-virtual {v1, p0, p1}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Z)Lcom/getcapacitor/JSObject;

    :cond_35
    return-object v1
.end method

.method public static buildResponseHeaders(Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;)Lcom/getcapacitor/JSObject;
    .registers 5

    .line 1
    new-instance v0, Lcom/getcapacitor/JSObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/getcapacitor/JSObject;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->getHeaderFields()Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_33

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/util/Map$Entry;

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Ljava/lang/Iterable;

    .line 35
    .line 36
    const-string v3, ", "

    .line 37
    .line 38
    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v0, v1, v2}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/getcapacitor/JSObject;

    .line 49
    .line 50
    .line 51
    goto :goto_11

    .line 52
    :cond_33
    return-object v0
.end method

.method public static isDomainExcludedFromSSL(Lcom/getcapacitor/Bridge;Ljava/net/URL;)Ljava/lang/Boolean;
    .registers 9

    .line 1
    :try_start_0
    const-string v0, "io.ionic.sslpinning.SSLPinning"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "isDomainExcluded"

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    new-array v3, v2, [Ljava/lang/Class;

    .line 11
    .line 12
    const-class v4, Lcom/getcapacitor/Bridge;

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    aput-object v4, v3, v5

    .line 16
    .line 17
    const-class v4, Ljava/net/URL;

    .line 18
    .line 19
    const/4 v6, 0x1

    .line 20
    aput-object v4, v3, v6

    .line 21
    .line 22
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    new-array v2, v2, [Ljava/lang/Object;

    .line 36
    .line 37
    aput-object p0, v2, v5

    .line 38
    .line 39
    aput-object p1, v2, v6

    .line 40
    .line 41
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    check-cast p0, Ljava/lang/Boolean;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_2f

    .line 46
    .line 47
    return-object p0

    .line 48
    :catch_2f
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 49
    .line 50
    return-object p0
.end method

.method public static varargs isOneOf(Ljava/lang/String;[Lcom/getcapacitor/plugin/util/MimeType;)Z
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_18

    .line 3
    .line 4
    array-length v1, p1

    .line 5
    move v2, v0

    .line 6
    :goto_5
    if-ge v2, v1, :cond_18

    .line 7
    .line 8
    aget-object v3, p1, v2

    .line 9
    .line 10
    invoke-virtual {v3}, Lcom/getcapacitor/plugin/util/MimeType;->getValue()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_15

    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_15
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    goto :goto_5

    .line 25
    :cond_18
    return v0
.end method

.method public static parseJSON(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_5
    const-string v0, "null"

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_14

    .line 17
    .line 18
    sget-object p0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_14
    const-string v0, "true"

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_23

    .line 32
    .line 33
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_23
    const-string v0, "false"

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_32

    .line 47
    .line 48
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 49
    .line 50
    return-object p0

    .line 51
    :cond_32
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-gtz v0, :cond_3f

    .line 60
    .line 61
    const-string p0, ""

    .line 62
    .line 63
    return-object p0

    .line 64
    :cond_3f
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const-string v1, "^\".*\"$"

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_5e

    .line 75
    .line 76
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    const/4 v2, 0x1

    .line 89
    sub-int/2addr v1, v2

    .line 90
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    return-object p0

    .line 95
    :cond_5e
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    const-string v1, "^-?\\d+$"

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_77

    .line 106
    .line 107
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    return-object p0

    .line 120
    :cond_77
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    const-string v1, "^-?\\d+(\\.\\d+)?$"

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-eqz v0, :cond_90

    .line 131
    .line 132
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 137
    .line 138
    .line 139
    move-result-wide v0

    .line 140
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 141
    .line 142
    .line 143
    move-result-object p0
    :try_end_8f
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_8f} :catch_9c

    .line 144
    return-object p0

    .line 145
    :cond_90
    :try_start_90
    new-instance v0, Lcom/getcapacitor/JSObject;

    .line 146
    .line 147
    invoke-direct {v0, p0}, Lcom/getcapacitor/JSObject;-><init>(Ljava/lang/String;)V
    :try_end_95
    .catch Lorg/json/JSONException; {:try_start_90 .. :try_end_95} :catch_96

    .line 148
    .line 149
    .line 150
    return-object v0

    .line 151
    :catch_96
    :try_start_96
    new-instance v0, Lcom/getcapacitor/JSArray;

    .line 152
    .line 153
    invoke-direct {v0, p0}, Lcom/getcapacitor/JSArray;-><init>(Ljava/lang/String;)V
    :try_end_9b
    .catch Lorg/json/JSONException; {:try_start_96 .. :try_end_9b} :catch_9c

    .line 154
    .line 155
    .line 156
    return-object v0

    .line 157
    :catch_9c
    return-object p0
.end method

.method public static readData(Lcom/getcapacitor/plugin/util/ICapacitorHttpUrlConnection;Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;)Ljava/lang/Object;
    .registers 6

    .line 1
    invoke-interface {p0}, Lcom/getcapacitor/plugin/util/ICapacitorHttpUrlConnection;->getErrorStream()Ljava/io/InputStream;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "Content-Type"

    .line 6
    .line 7
    invoke-interface {p0, v1}, Lcom/getcapacitor/plugin/util/ICapacitorHttpUrlConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x2

    .line 13
    if-eqz v0, :cond_2d

    .line 14
    .line 15
    new-array p0, v3, [Lcom/getcapacitor/plugin/util/MimeType;

    .line 16
    .line 17
    sget-object p1, Lcom/getcapacitor/plugin/util/MimeType;->APPLICATION_JSON:Lcom/getcapacitor/plugin/util/MimeType;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    aput-object p1, p0, v3

    .line 21
    .line 22
    sget-object p1, Lcom/getcapacitor/plugin/util/MimeType;->APPLICATION_VND_API_JSON:Lcom/getcapacitor/plugin/util/MimeType;

    .line 23
    .line 24
    aput-object p1, p0, v2

    .line 25
    .line 26
    invoke-static {v1, p0}, Lcom/getcapacitor/plugin/util/HttpRequestHandler;->isOneOf(Ljava/lang/String;[Lcom/getcapacitor/plugin/util/MimeType;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-eqz p0, :cond_28

    .line 31
    .line 32
    invoke-static {v0}, Lcom/getcapacitor/plugin/util/HttpRequestHandler;->readStreamAsString(Ljava/io/InputStream;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {p0}, Lcom/getcapacitor/plugin/util/HttpRequestHandler;->parseJSON(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_28
    invoke-static {v0}, Lcom/getcapacitor/plugin/util/HttpRequestHandler;->readStreamAsString(Ljava/io/InputStream;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    :cond_2d
    if-eqz v1, :cond_48

    .line 47
    .line 48
    sget-object v0, Lcom/getcapacitor/plugin/util/MimeType;->APPLICATION_JSON:Lcom/getcapacitor/plugin/util/MimeType;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/getcapacitor/plugin/util/MimeType;->getValue()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_48

    .line 59
    .line 60
    invoke-interface {p0}, Lcom/getcapacitor/plugin/util/ICapacitorHttpUrlConnection;->getInputStream()Ljava/io/InputStream;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-static {p0}, Lcom/getcapacitor/plugin/util/HttpRequestHandler;->readStreamAsString(Ljava/io/InputStream;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-static {p0}, Lcom/getcapacitor/plugin/util/HttpRequestHandler;->parseJSON(Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    return-object p0

    .line 73
    :cond_48
    invoke-interface {p0}, Lcom/getcapacitor/plugin/util/ICapacitorHttpUrlConnection;->getInputStream()Ljava/io/InputStream;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    sget-object v0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$1;->$SwitchMap$com$getcapacitor$plugin$util$HttpRequestHandler$ResponseType:[I

    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    aget p1, v0, p1

    .line 84
    .line 85
    if-eq p1, v2, :cond_69

    .line 86
    .line 87
    if-eq p1, v3, :cond_69

    .line 88
    .line 89
    const/4 v0, 0x3

    .line 90
    if-eq p1, v0, :cond_60

    .line 91
    .line 92
    invoke-static {p0}, Lcom/getcapacitor/plugin/util/HttpRequestHandler;->readStreamAsString(Ljava/io/InputStream;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    return-object p0

    .line 97
    :cond_60
    invoke-static {p0}, Lcom/getcapacitor/plugin/util/HttpRequestHandler;->readStreamAsString(Ljava/io/InputStream;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-static {p0}, Lcom/getcapacitor/plugin/util/HttpRequestHandler;->parseJSON(Ljava/lang/String;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    return-object p0

    .line 106
    :cond_69
    invoke-static {p0}, Lcom/getcapacitor/plugin/util/HttpRequestHandler;->readStreamAsBase64(Ljava/io/InputStream;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    return-object p0
.end method

.method public static readStreamAsBase64(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x400

    .line 7
    .line 8
    :try_start_7
    new-array v1, v1, [B

    .line 9
    .line 10
    :goto_9
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, -0x1

    .line 15
    const/4 v4, 0x0

    .line 16
    if-eq v2, v3, :cond_17

    .line 17
    .line 18
    invoke-virtual {v0, v1, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 19
    .line 20
    .line 21
    goto :goto_9

    .line 22
    :catchall_15
    move-exception p0

    .line 23
    goto :goto_24

    .line 24
    :cond_17
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    array-length v1, p0

    .line 29
    invoke-static {p0, v4, v1, v4}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_15

    .line 33
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 34
    .line 35
    .line 36
    return-object p0

    .line 37
    :goto_24
    :try_start_24
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_28

    .line 38
    .line 39
    .line 40
    goto :goto_2c

    .line 41
    :catchall_28
    move-exception v0

    .line 42
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    :goto_2c
    throw p0
.end method

.method public static readStreamAsString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/io/BufferedReader;

    .line 2
    .line 3
    new-instance v1, Ljava/io/InputStreamReader;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 9
    .line 10
    .line 11
    :try_start_a
    new-instance p0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :cond_13
    :goto_13
    if-eqz v1, :cond_2a

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-eqz v1, :cond_13

    .line 30
    .line 31
    const-string v2, "line.separator"

    .line 32
    .line 33
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    goto :goto_13

    .line 41
    :catchall_28
    move-exception p0

    .line 42
    goto :goto_32

    .line 43
    :cond_2a
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0
    :try_end_2e
    .catchall {:try_start_a .. :try_end_2e} :catchall_28

    .line 47
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 48
    .line 49
    .line 50
    return-object p0

    .line 51
    :goto_32
    :try_start_32
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    .line 52
    .line 53
    .line 54
    goto :goto_3a

    .line 55
    :catchall_36
    move-exception v0

    .line 56
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    :goto_3a
    throw p0
.end method

.method public static request(Lcom/getcapacitor/PluginCall;Ljava/lang/String;Lcom/getcapacitor/Bridge;)Lcom/getcapacitor/JSObject;
    .registers 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const-string v3, "url"

    .line 8
    .line 9
    const-string v4, ""

    .line 10
    .line 11
    invoke-virtual {v0, v3, v4}, Lcom/getcapacitor/PluginCall;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    new-instance v4, Lcom/getcapacitor/JSObject;

    .line 16
    .line 17
    invoke-direct {v4}, Lcom/getcapacitor/JSObject;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v5, "headers"

    .line 21
    .line 22
    invoke-virtual {v0, v5, v4}, Lcom/getcapacitor/PluginCall;->getObject(Ljava/lang/String;Lcom/getcapacitor/JSObject;)Lcom/getcapacitor/JSObject;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    new-instance v5, Lcom/getcapacitor/JSObject;

    .line 27
    .line 28
    invoke-direct {v5}, Lcom/getcapacitor/JSObject;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v6, "params"

    .line 32
    .line 33
    invoke-virtual {v0, v6, v5}, Lcom/getcapacitor/PluginCall;->getObject(Ljava/lang/String;Lcom/getcapacitor/JSObject;)Lcom/getcapacitor/JSObject;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    const-string v6, "connectTimeout"

    .line 38
    .line 39
    invoke-virtual {v0, v6}, Lcom/getcapacitor/PluginCall;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    const-string v7, "readTimeout"

    .line 44
    .line 45
    invoke-virtual {v0, v7}, Lcom/getcapacitor/PluginCall;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    const-string v8, "disableRedirects"

    .line 50
    .line 51
    invoke-virtual {v0, v8}, Lcom/getcapacitor/PluginCall;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    const-string v9, "shouldEncodeUrlParams"

    .line 56
    .line 57
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 58
    .line 59
    invoke-virtual {v0, v9, v10}, Lcom/getcapacitor/PluginCall;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    const-string v10, "responseType"

    .line 64
    .line 65
    invoke-virtual {v0, v10}, Lcom/getcapacitor/PluginCall;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v10

    .line 69
    invoke-static {v10}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;->parse(Ljava/lang/String;)Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;

    .line 70
    .line 71
    .line 72
    move-result-object v10

    .line 73
    const-string v11, "dataType"

    .line 74
    .line 75
    invoke-virtual {v0, v11}, Lcom/getcapacitor/PluginCall;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v11

    .line 79
    if-eqz v1, :cond_57

    .line 80
    .line 81
    :goto_50
    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 82
    .line 83
    invoke-virtual {v1, v12}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    goto :goto_60

    .line 88
    :cond_57
    const-string v1, "method"

    .line 89
    .line 90
    const-string v12, "GET"

    .line 91
    .line 92
    invoke-virtual {v0, v1, v12}, Lcom/getcapacitor/PluginCall;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    goto :goto_50

    .line 97
    :goto_60
    const-string v12, "DELETE"

    .line 98
    .line 99
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v12

    .line 103
    if-nez v12, :cond_83

    .line 104
    .line 105
    const-string v12, "PATCH"

    .line 106
    .line 107
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v12

    .line 111
    if-nez v12, :cond_83

    .line 112
    .line 113
    const-string v12, "POST"

    .line 114
    .line 115
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v12

    .line 119
    if-nez v12, :cond_83

    .line 120
    .line 121
    const-string v12, "PUT"

    .line 122
    .line 123
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v12

    .line 127
    if-eqz v12, :cond_81

    .line 128
    .line 129
    goto :goto_83

    .line 130
    :cond_81
    const/4 v12, 0x0

    .line 131
    goto :goto_84

    .line 132
    :cond_83
    :goto_83
    const/4 v12, 0x1

    .line 133
    :goto_84
    const-string v14, "x-cap-user-agent"

    .line 134
    .line 135
    invoke-virtual {v4, v14}, Lcom/getcapacitor/JSObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v15

    .line 139
    const-string v13, "User-Agent"

    .line 140
    .line 141
    if-eqz v15, :cond_91

    .line 142
    .line 143
    invoke-virtual {v4, v13, v15}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/getcapacitor/JSObject;

    .line 144
    .line 145
    .line 146
    :cond_91
    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 150
    .line 151
    .line 152
    move-result v14

    .line 153
    if-nez v14, :cond_ad

    .line 154
    .line 155
    const-string v14, "user-agent"

    .line 156
    .line 157
    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 158
    .line 159
    .line 160
    move-result v14

    .line 161
    if-nez v14, :cond_ad

    .line 162
    .line 163
    invoke-virtual {v2}, Lcom/getcapacitor/Bridge;->getConfig()Lcom/getcapacitor/CapConfig;

    .line 164
    .line 165
    .line 166
    move-result-object v14

    .line 167
    invoke-virtual {v14}, Lcom/getcapacitor/CapConfig;->getOverriddenUserAgentString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v14

    .line 171
    invoke-virtual {v4, v13, v14}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/getcapacitor/JSObject;

    .line 172
    .line 173
    .line 174
    :cond_ad
    new-instance v13, Ljava/net/URL;

    .line 175
    .line 176
    invoke-direct {v13, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    new-instance v3, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;

    .line 180
    .line 181
    invoke-direct {v3}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;-><init>()V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v3, v13}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->setUrl(Ljava/net/URL;)Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    invoke-virtual {v3, v1}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->setMethod(Ljava/lang/String;)Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-virtual {v1, v4}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->setHeaders(Lcom/getcapacitor/JSObject;)Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    invoke-virtual {v1, v5, v3}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->setUrlParams(Lcom/getcapacitor/JSObject;Z)Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {v1, v6}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->setConnectTimeout(Ljava/lang/Integer;)Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    invoke-virtual {v1, v7}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->setReadTimeout(Ljava/lang/Integer;)Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    invoke-virtual {v1, v8}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->setDisableRedirects(Ljava/lang/Boolean;)Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    invoke-virtual {v1}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->openConnection()Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    invoke-virtual {v1}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->build()Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    if-eqz v2, :cond_ee

    .line 225
    .line 226
    invoke-static {v2, v13}, Lcom/getcapacitor/plugin/util/HttpRequestHandler;->isDomainExcludedFromSSL(Lcom/getcapacitor/Bridge;Ljava/net/URL;)Ljava/lang/Boolean;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 231
    .line 232
    .line 233
    move-result v3

    .line 234
    if-nez v3, :cond_ee

    .line 235
    .line 236
    invoke-virtual {v1, v2}, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->setSSLSocketFactory(Lcom/getcapacitor/Bridge;)V

    .line 237
    .line 238
    .line 239
    :cond_ee
    if-eqz v12, :cond_104

    .line 240
    .line 241
    new-instance v2, Lcom/getcapacitor/JSValue;

    .line 242
    .line 243
    const-string v3, "data"

    .line 244
    .line 245
    invoke-direct {v2, v0, v3}, Lcom/getcapacitor/JSValue;-><init>(Lcom/getcapacitor/PluginCall;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v2}, Lcom/getcapacitor/JSValue;->getValue()Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v3

    .line 252
    if-eqz v3, :cond_104

    .line 253
    .line 254
    const/4 v3, 0x1

    .line 255
    invoke-virtual {v1, v3}, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->setDoOutput(Z)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v1, v0, v2, v11}, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->setRequestBody(Lcom/getcapacitor/PluginCall;Lcom/getcapacitor/JSValue;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    :cond_104
    invoke-virtual {v0}, Lcom/getcapacitor/PluginCall;->getData()Lcom/getcapacitor/JSObject;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    const-string v3, "activeCapacitorHttpUrlConnection"

    .line 266
    .line 267
    invoke-virtual {v2, v3, v1}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/getcapacitor/JSObject;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v1}, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->connect()V

    .line 271
    .line 272
    .line 273
    invoke-static {v1, v10}, Lcom/getcapacitor/plugin/util/HttpRequestHandler;->buildResponse(Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;)Lcom/getcapacitor/JSObject;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    invoke-virtual {v1}, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->disconnect()V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v0}, Lcom/getcapacitor/PluginCall;->getData()Lcom/getcapacitor/JSObject;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    return-object v2
.end method

###### Class com.getcapacitor.plugin.util.HttpRequestHandler.AnonymousClass1 (com.getcapacitor.plugin.util.HttpRequestHandler$1)
.class synthetic Lcom/getcapacitor/plugin/util/HttpRequestHandler$1;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getcapacitor/plugin/util/HttpRequestHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$getcapacitor$plugin$util$HttpRequestHandler$ResponseType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;->values()[Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    new-array v0, v0, [I

    .line 7
    .line 8
    sput-object v0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$1;->$SwitchMap$com$getcapacitor$plugin$util$HttpRequestHandler$ResponseType:[I

    .line 9
    .line 10
    :try_start_9
    sget-object v1, Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;->ARRAY_BUFFER:Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x1

    .line 17
    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    .line 18
    .line 19
    :catch_12
    :try_start_12
    sget-object v0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$1;->$SwitchMap$com$getcapacitor$plugin$util$HttpRequestHandler$ResponseType:[I

    .line 20
    .line 21
    sget-object v1, Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;->BLOB:Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x2

    .line 28
    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    .line 29
    .line 30
    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$1;->$SwitchMap$com$getcapacitor$plugin$util$HttpRequestHandler$ResponseType:[I

    .line 31
    .line 32
    sget-object v1, Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;->JSON:Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    const/4 v2, 0x3

    .line 39
    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    .line 40
    .line 41
    :catch_28
    :try_start_28
    sget-object v0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$1;->$SwitchMap$com$getcapacitor$plugin$util$HttpRequestHandler$ResponseType:[I

    .line 42
    .line 43
    sget-object v1, Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;->DOCUMENT:Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    const/4 v2, 0x4

    .line 50
    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    .line 51
    .line 52
    :catch_33
    :try_start_33
    sget-object v0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$1;->$SwitchMap$com$getcapacitor$plugin$util$HttpRequestHandler$ResponseType:[I

    .line 53
    .line 54
    sget-object v1, Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;->TEXT:Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    const/4 v2, 0x5

    .line 61
    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    .line 62
    .line 63
    :catch_3e
    return-void
.end method

###### Class com.getcapacitor.plugin.util.HttpRequestHandler.HttpURLConnectionBuilder (com.getcapacitor.plugin.util.HttpRequestHandler$HttpURLConnectionBuilder)
.class public Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getcapacitor/plugin/util/HttpRequestHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpURLConnectionBuilder"
.end annotation


# instance fields
.field public connectTimeout:Ljava/lang/Integer;

.field public connection:Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;

.field public disableRedirects:Ljava/lang/Boolean;

.field public headers:Lcom/getcapacitor/JSObject;

.field public method:Ljava/lang/String;

.field public readTimeout:Ljava/lang/Integer;

.field public url:Ljava/net/URL;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static addUrlParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    .line 1
    const-string v0, "UTF-8"

    .line 2
    .line 3
    if-eqz p3, :cond_18

    .line 4
    .line 5
    :try_start_4
    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p2
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_c} :catch_d

    .line 13
    goto :goto_18

    .line 14
    :catch_d
    move-exception p0

    .line 15
    new-instance p1, Ljava/lang/RuntimeException;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_18
    :goto_18
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p1, "="

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public build()Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->connection:Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;

    .line 2
    .line 3
    return-object v0
.end method

.method public openConnection()Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;
    .registers 3

    .line 1
    new-instance v0, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->url:Ljava/net/URL;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Ljava/net/HttpURLConnection;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;-><init>(Ljava/net/HttpURLConnection;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->connection:Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->setAllowUserInteraction(Z)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->connection:Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->method:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->connectTimeout:Ljava/lang/Integer;

    .line 28
    .line 29
    if-eqz v0, :cond_27

    .line 30
    .line 31
    iget-object v1, p0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->connection:Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-virtual {v1, v0}, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->setConnectTimeout(I)V

    .line 38
    .line 39
    .line 40
    :cond_27
    iget-object v0, p0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->readTimeout:Ljava/lang/Integer;

    .line 41
    .line 42
    if-eqz v0, :cond_34

    .line 43
    .line 44
    iget-object v1, p0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->connection:Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    invoke-virtual {v1, v0}, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->setReadTimeout(I)V

    .line 51
    .line 52
    .line 53
    :cond_34
    iget-object v0, p0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->disableRedirects:Ljava/lang/Boolean;

    .line 54
    .line 55
    if-eqz v0, :cond_41

    .line 56
    .line 57
    iget-object v1, p0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->connection:Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    invoke-virtual {v1, v0}, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->setDisableRedirects(Z)V

    .line 64
    .line 65
    .line 66
    :cond_41
    iget-object v0, p0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->connection:Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;

    .line 67
    .line 68
    iget-object v1, p0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->headers:Lcom/getcapacitor/JSObject;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->setRequestHeaders(Lcom/getcapacitor/JSObject;)V

    .line 71
    .line 72
    .line 73
    return-object p0
.end method

.method public setConnectTimeout(Ljava/lang/Integer;)Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->connectTimeout:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public setDisableRedirects(Ljava/lang/Boolean;)Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->disableRedirects:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public setHeaders(Lcom/getcapacitor/JSObject;)Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->headers:Lcom/getcapacitor/JSObject;

    .line 2
    .line 3
    return-object p0
.end method

.method public setMethod(Ljava/lang/String;)Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->method:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setReadTimeout(Ljava/lang/Integer;)Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->readTimeout:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public setUrl(Ljava/net/URL;)Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->url:Ljava/net/URL;

    .line 2
    .line 3
    return-object p0
.end method

.method public setUrlParams(Lcom/getcapacitor/JSObject;)Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->setUrlParams(Lcom/getcapacitor/JSObject;Z)Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setUrlParams(Lcom/getcapacitor/JSObject;Z)Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;
    .registers 12

    .line 2
    const-string v0, "&"

    iget-object v1, p0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v1

    .line 3
    const-string v2, ""

    if-nez v1, :cond_d

    move-object v1, v2

    .line 4
    :cond_d
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_18

    return-object p0

    .line 6
    :cond_18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 8
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 9
    :try_start_29
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const/4 v7, 0x0

    .line 11
    :goto_33
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_4e

    .line 12
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v1, v8, p2}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->addUrlParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 13
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-eq v7, v8, :cond_4b

    .line 14
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4b
    add-int/lit8 v7, v7, 0x1

    goto :goto_33

    .line 15
    :cond_4e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_57

    .line 16
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    :cond_57
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    :try_end_5a
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_5a} :catch_5b

    goto :goto_1d

    .line 18
    :catch_5b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_64

    .line 19
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    :cond_64
    invoke-virtual {p1, v1}, Lcom/getcapacitor/JSObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v1, v5, p2}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->addUrlParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1d

    .line 21
    :cond_6c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 22
    iget-object p2, p0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->url:Ljava/net/URL;

    invoke-virtual {p2}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object p2

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    invoke-virtual {p2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {p2}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {p2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a2

    const-string v1, "?"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_a3

    :cond_a2
    move-object p1, v2

    :goto_a3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p2}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b0

    invoke-virtual {p2}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v2

    :cond_b0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 29
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->url:Ljava/net/URL;

    return-object p0
.end method

###### Class com.getcapacitor.plugin.util.HttpRequestHandler.ProgressEmitter (com.getcapacitor.plugin.util.HttpRequestHandler$ProgressEmitter)
.class public interface abstract Lcom/getcapacitor/plugin/util/HttpRequestHandler$ProgressEmitter;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getcapacitor/plugin/util/HttpRequestHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProgressEmitter"
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract emit(Ljava/lang/Integer;Ljava/lang/Integer;)V
.end method

###### Class com.getcapacitor.plugin.util.HttpRequestHandler.ResponseType (com.getcapacitor.plugin.util.HttpRequestHandler$ResponseType)
.class public final enum Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;
.super Ljava/lang/Enum;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getcapacitor/plugin/util/HttpRequestHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResponseType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;

.field public static final enum ARRAY_BUFFER:Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;

.field public static final enum BLOB:Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;

.field static final DEFAULT:Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;

.field public static final enum DOCUMENT:Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;

.field public static final enum JSON:Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;

.field public static final enum TEXT:Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;
    .registers 3

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;

    .line 3
    .line 4
    sget-object v1, Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;->ARRAY_BUFFER:Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;->BLOB:Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;->DOCUMENT:Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;->JSON:Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    sget-object v1, Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;->TEXT:Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    aput-object v1, v0, v2

    .line 28
    .line 29
    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "arraybuffer"

    .line 5
    .line 6
    const-string v3, "ARRAY_BUFFER"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;->ARRAY_BUFFER:Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;

    .line 12
    .line 13
    new-instance v0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "blob"

    .line 17
    .line 18
    const-string v3, "BLOB"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;->BLOB:Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;

    .line 24
    .line 25
    new-instance v0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-string v2, "document"

    .line 29
    .line 30
    const-string v3, "DOCUMENT"

    .line 31
    .line 32
    invoke-direct {v0, v3, v1, v2}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;->DOCUMENT:Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;

    .line 36
    .line 37
    new-instance v0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    const-string v2, "json"

    .line 41
    .line 42
    const-string v3, "JSON"

    .line 43
    .line 44
    invoke-direct {v0, v3, v1, v2}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;->JSON:Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;

    .line 48
    .line 49
    new-instance v0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;

    .line 50
    .line 51
    const/4 v1, 0x4

    .line 52
    const-string v2, "text"

    .line 53
    .line 54
    const-string v3, "TEXT"

    .line 55
    .line 56
    invoke-direct {v0, v3, v1, v2}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;->TEXT:Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;

    .line 60
    .line 61
    invoke-static {}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;->$values()[Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    sput-object v1, Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;->$VALUES:[Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;

    .line 66
    .line 67
    sput-object v0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;->DEFAULT:Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;

    .line 68
    .line 69
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;->name:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;
    .registers 6

    .line 1
    invoke-static {}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;->values()[Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_6
    if-ge v2, v1, :cond_16

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    iget-object v4, v3, Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;->name:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_13

    .line 18
    .line 19
    return-object v3

    .line 20
    :cond_13
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_6

    .line 23
    :cond_16
    sget-object p0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;->DEFAULT:Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;

    .line 24
    .line 25
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;
    .registers 2

    .line 1
    const-class v0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;
    .registers 1

    .line 1
    sget-object v0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;->$VALUES:[Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/getcapacitor/plugin/util/HttpRequestHandler$ResponseType;

    .line 8
    .line 9
    return-object v0
.end method
