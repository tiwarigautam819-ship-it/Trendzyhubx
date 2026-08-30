###### Class com.getcapacitor.WebViewLocalServer (com.getcapacitor.WebViewLocalServer)
.class public Lcom/getcapacitor/WebViewLocalServer;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/getcapacitor/WebViewLocalServer$PathHandler;,
        Lcom/getcapacitor/WebViewLocalServer$LollipopLazyInputStream;,
        Lcom/getcapacitor/WebViewLocalServer$LazyInputStream;
    }
.end annotation


# static fields
.field private static final capacitorContentStart:Ljava/lang/String; = "/_capacitor_content_"

.field private static final capacitorFileStart:Ljava/lang/String; = "/_capacitor_file_"


# instance fields
.field private final authorities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private basePath:Ljava/lang/String;

.field private final bridge:Lcom/getcapacitor/Bridge;

.field private final html5mode:Z

.field private isAsset:Z

.field private final jsInjector:Lcom/getcapacitor/JSInjector;

.field private final protocolHandler:Lcom/getcapacitor/AndroidProtocolHandler;

.field private final uriMatcher:Lcom/getcapacitor/UriMatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/getcapacitor/Bridge;Lcom/getcapacitor/JSInjector;Ljava/util/ArrayList;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/getcapacitor/Bridge;",
            "Lcom/getcapacitor/JSInjector;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/getcapacitor/UriMatcher;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Lcom/getcapacitor/UriMatcher;-><init>(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/getcapacitor/WebViewLocalServer;->uriMatcher:Lcom/getcapacitor/UriMatcher;

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/getcapacitor/WebViewLocalServer;->html5mode:Z

    .line 13
    .line 14
    new-instance p5, Lcom/getcapacitor/AndroidProtocolHandler;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {p5, p1}, Lcom/getcapacitor/AndroidProtocolHandler;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    iput-object p5, p0, Lcom/getcapacitor/WebViewLocalServer;->protocolHandler:Lcom/getcapacitor/AndroidProtocolHandler;

    .line 24
    .line 25
    iput-object p4, p0, Lcom/getcapacitor/WebViewLocalServer;->authorities:Ljava/util/ArrayList;

    .line 26
    .line 27
    iput-object p2, p0, Lcom/getcapacitor/WebViewLocalServer;->bridge:Lcom/getcapacitor/Bridge;

    .line 28
    .line 29
    iput-object p3, p0, Lcom/getcapacitor/WebViewLocalServer;->jsInjector:Lcom/getcapacitor/JSInjector;

    .line 30
    .line 31
    return-void
.end method

.method public static bridge synthetic a(Lcom/getcapacitor/WebViewLocalServer;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/getcapacitor/WebViewLocalServer;->basePath:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic b(Lcom/getcapacitor/WebViewLocalServer;)Lcom/getcapacitor/Bridge;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/getcapacitor/WebViewLocalServer;->bridge:Lcom/getcapacitor/Bridge;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic c(Lcom/getcapacitor/WebViewLocalServer;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/getcapacitor/WebViewLocalServer;->isAsset:Z

    .line 2
    .line 3
    return p0
.end method

.method private createHostingDetails()V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/WebViewLocalServer;->basePath:Ljava/lang/String;

    .line 2
    .line 3
    const/16 v1, 0x2a

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, -0x1

    .line 10
    if-ne v1, v2, :cond_42

    .line 11
    .line 12
    new-instance v1, Lcom/getcapacitor/WebViewLocalServer$1;

    .line 13
    .line 14
    invoke-direct {v1, p0, v0}, Lcom/getcapacitor/WebViewLocalServer$1;-><init>(Lcom/getcapacitor/WebViewLocalServer;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/getcapacitor/WebViewLocalServer;->authorities:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x0

    .line 24
    :cond_17
    :goto_17
    if-ge v3, v2, :cond_41

    .line 25
    .line 26
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    add-int/lit8 v3, v3, 0x1

    .line 31
    .line 32
    check-cast v4, Ljava/lang/String;

    .line 33
    .line 34
    const-string v5, "http"

    .line 35
    .line 36
    invoke-direct {p0, v5, v1, v4}, Lcom/getcapacitor/WebViewLocalServer;->registerUriForScheme(Ljava/lang/String;Lcom/getcapacitor/WebViewLocalServer$PathHandler;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v6, "https"

    .line 40
    .line 41
    invoke-direct {p0, v6, v1, v4}, Lcom/getcapacitor/WebViewLocalServer;->registerUriForScheme(Ljava/lang/String;Lcom/getcapacitor/WebViewLocalServer$PathHandler;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v7, p0, Lcom/getcapacitor/WebViewLocalServer;->bridge:Lcom/getcapacitor/Bridge;

    .line 45
    .line 46
    invoke-virtual {v7}, Lcom/getcapacitor/Bridge;->getScheme()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-nez v5, :cond_17

    .line 55
    .line 56
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-nez v5, :cond_17

    .line 61
    .line 62
    invoke-direct {p0, v7, v1, v4}, Lcom/getcapacitor/WebViewLocalServer;->registerUriForScheme(Ljava/lang/String;Lcom/getcapacitor/WebViewLocalServer$PathHandler;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    goto :goto_17

    .line 66
    :cond_41
    return-void

    .line 67
    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 68
    .line 69
    const-string v1, "assetPath cannot contain the \'*\' character."

    .line 70
    .line 71
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw v0
.end method

.method public static bridge synthetic d(Lcom/getcapacitor/WebViewLocalServer;)Lcom/getcapacitor/AndroidProtocolHandler;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/getcapacitor/WebViewLocalServer;->protocolHandler:Lcom/getcapacitor/AndroidProtocolHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic e(Lcom/getcapacitor/WebViewLocalServer;Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/getcapacitor/WebViewLocalServer;->isAsset:Z

    .line 2
    .line 3
    return-void
.end method

.method private getMimeType(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;
    .registers 6

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_43

    .line 5
    const-string v1, ".js"

    .line 6
    .line 7
    if-eqz v0, :cond_1e

    .line 8
    .line 9
    :try_start_8
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_1e

    .line 14
    .line 15
    const-string v2, "image/x-icon"

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1e

    .line 22
    .line 23
    const-string v2, "We shouldn\'t be here"

    .line 24
    .line 25
    invoke-static {v2}, Lcom/getcapacitor/Logger;->debug(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    goto :goto_1e

    .line 29
    :catch_1c
    move-exception p2

    .line 30
    goto :goto_45

    .line 31
    :cond_1e
    :goto_1e
    if-nez v0, :cond_42

    .line 32
    .line 33
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_3f

    .line 38
    .line 39
    const-string v1, ".mjs"

    .line 40
    .line 41
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2f

    .line 46
    .line 47
    goto :goto_3f

    .line 48
    :cond_2f
    const-string v1, ".wasm"

    .line 49
    .line 50
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_3a

    .line 55
    .line 56
    const-string p1, "application/wasm"

    .line 57
    .line 58
    return-object p1

    .line 59
    :cond_3a
    invoke-static {p2}, Ljava/net/URLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    return-object p1

    .line 64
    :cond_3f
    :goto_3f
    const-string p1, "application/javascript"
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_41} :catch_1c

    .line 65
    .line 66
    return-object p1

    .line 67
    :cond_42
    return-object v0

    .line 68
    :catch_43
    move-exception p2

    .line 69
    const/4 v0, 0x0

    .line 70
    :goto_45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v2, "Unable to get mime type"

    .line 73
    .line 74
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-static {p1, p2}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    return-object v0
.end method

.method private getReasonPhraseFromResponseCode(I)Ljava/lang/String;
    .registers 3

    .line 1
    const/16 v0, 0x64

    .line 2
    .line 3
    if-eq p1, v0, :cond_76

    .line 4
    .line 5
    const/16 v0, 0x65

    .line 6
    .line 7
    if-eq p1, v0, :cond_73

    .line 8
    .line 9
    const/16 v0, 0x190

    .line 10
    .line 11
    if-eq p1, v0, :cond_70

    .line 12
    .line 13
    const/16 v0, 0x191

    .line 14
    .line 15
    if-eq p1, v0, :cond_6d

    .line 16
    .line 17
    packed-switch p1, :pswitch_data_7a

    .line 18
    .line 19
    .line 20
    packed-switch p1, :pswitch_data_8c

    .line 21
    .line 22
    .line 23
    packed-switch p1, :pswitch_data_9a

    .line 24
    .line 25
    .line 26
    packed-switch p1, :pswitch_data_ae

    .line 27
    .line 28
    .line 29
    const-string p1, "Unknown"

    .line 30
    .line 31
    return-object p1

    .line 32
    :pswitch_1f
    const-string p1, "HTTP Version Not Supported"

    .line 33
    .line 34
    return-object p1

    .line 35
    :pswitch_22
    const-string p1, "Gateway Timeout"

    .line 36
    .line 37
    return-object p1

    .line 38
    :pswitch_25
    const-string p1, "Service Unavailable"

    .line 39
    .line 40
    return-object p1

    .line 41
    :pswitch_28
    const-string p1, "Bad Gateway"

    .line 42
    .line 43
    return-object p1

    .line 44
    :pswitch_2b
    const-string p1, "Not Implemented"

    .line 45
    .line 46
    return-object p1

    .line 47
    :pswitch_2e
    const-string p1, "Internal Server Error"

    .line 48
    .line 49
    return-object p1

    .line 50
    :pswitch_31
    const-string p1, "Gone"

    .line 51
    .line 52
    return-object p1

    .line 53
    :pswitch_34
    const-string p1, "Conflict"

    .line 54
    .line 55
    return-object p1

    .line 56
    :pswitch_37
    const-string p1, "Request Timeout"

    .line 57
    .line 58
    return-object p1

    .line 59
    :pswitch_3a
    const-string p1, "Proxy Authentication Required"

    .line 60
    .line 61
    return-object p1

    .line 62
    :pswitch_3d
    const-string p1, "Not Acceptable"

    .line 63
    .line 64
    return-object p1

    .line 65
    :pswitch_40
    const-string p1, "Method Not Allowed"

    .line 66
    .line 67
    return-object p1

    .line 68
    :pswitch_43
    const-string p1, "Not Found"

    .line 69
    .line 70
    return-object p1

    .line 71
    :pswitch_46
    const-string p1, "Forbidden"

    .line 72
    .line 73
    return-object p1

    .line 74
    :pswitch_49
    const-string p1, "Not Modified"

    .line 75
    .line 76
    return-object p1

    .line 77
    :pswitch_4c
    const-string p1, "See Other"

    .line 78
    .line 79
    return-object p1

    .line 80
    :pswitch_4f
    const-string p1, "Found"

    .line 81
    .line 82
    return-object p1

    .line 83
    :pswitch_52
    const-string p1, "Moved Permanently"

    .line 84
    .line 85
    return-object p1

    .line 86
    :pswitch_55
    const-string p1, "Multiple Choices"

    .line 87
    .line 88
    return-object p1

    .line 89
    :pswitch_58
    const-string p1, "Partial Content"

    .line 90
    .line 91
    return-object p1

    .line 92
    :pswitch_5b
    const-string p1, "Reset Content"

    .line 93
    .line 94
    return-object p1

    .line 95
    :pswitch_5e
    const-string p1, "No Content"

    .line 96
    .line 97
    return-object p1

    .line 98
    :pswitch_61
    const-string p1, "Non-Authoritative Information"

    .line 99
    .line 100
    return-object p1

    .line 101
    :pswitch_64
    const-string p1, "Accepted"

    .line 102
    .line 103
    return-object p1

    .line 104
    :pswitch_67
    const-string p1, "Created"

    .line 105
    .line 106
    return-object p1

    .line 107
    :pswitch_6a
    const-string p1, "OK"

    .line 108
    .line 109
    return-object p1

    .line 110
    :cond_6d
    const-string p1, "Unauthorized"

    .line 111
    .line 112
    return-object p1

    .line 113
    :cond_70
    const-string p1, "Bad Request"

    .line 114
    .line 115
    return-object p1

    .line 116
    :cond_73
    const-string p1, "Switching Protocols"

    .line 117
    .line 118
    return-object p1

    .line 119
    :cond_76
    const-string p1, "Continue"

    .line 120
    .line 121
    return-object p1

    .line 122
    nop

    .line 123
    :pswitch_data_7a
    .packed-switch 0xc8
        :pswitch_6a
        :pswitch_67
        :pswitch_64
        :pswitch_61
        :pswitch_5e
        :pswitch_5b
        :pswitch_58
    .end packed-switch

    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    :pswitch_data_8c
    .packed-switch 0x12c
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
    .end packed-switch

    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    :pswitch_data_9a
    .packed-switch 0x193
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_31
    .end packed-switch

    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    :pswitch_data_ae
    .packed-switch 0x1f4
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
    .end packed-switch
.end method

.method private getStatusCode(Ljava/io/InputStream;I)I
    .registers 4

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    .line 2
    .line 3
    .line 4
    move-result p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_b

    .line 5
    const/4 v0, -0x1

    .line 6
    if-ne p1, v0, :cond_a

    .line 7
    .line 8
    const/16 p1, 0x194

    .line 9
    .line 10
    return p1

    .line 11
    :cond_a
    return p2

    .line 12
    :catch_b
    const/16 p1, 0x1f4

    .line 13
    .line 14
    return p1
.end method

.method private handleCapacitorHttpRequest(Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .registers 11

    .line 1
    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "u"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Ljava/net/URL;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/getcapacitor/JSObject;

    .line 17
    .line 18
    invoke-direct {v0}, Lcom/getcapacitor/JSObject;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_3c

    .line 38
    .line 39
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Ljava/util/Map$Entry;

    .line 44
    .line 45
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Ljava/lang/String;

    .line 50
    .line 51
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v0, v4, v3}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/getcapacitor/JSObject;

    .line 58
    .line 59
    .line 60
    goto :goto_20

    .line 61
    :cond_3c
    const-string v2, "x-cap-user-agent"

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Lcom/getcapacitor/JSObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    if-eqz v3, :cond_49

    .line 68
    .line 69
    const-string v4, "User-Agent"

    .line 70
    .line 71
    invoke-virtual {v0, v4, v3}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/getcapacitor/JSObject;

    .line 72
    .line 73
    .line 74
    :cond_49
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    new-instance v2, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;

    .line 78
    .line 79
    invoke-direct {v2}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v1}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->setUrl(Ljava/net/URL;)Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getMethod()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v2, v3}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->setMethod(Ljava/lang/String;)Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v2, v0}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->setHeaders(Lcom/getcapacitor/JSObject;)Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->openConnection()Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->build()Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    iget-object v2, p0, Lcom/getcapacitor/WebViewLocalServer;->bridge:Lcom/getcapacitor/Bridge;

    .line 107
    .line 108
    invoke-static {v2, v1}, Lcom/getcapacitor/plugin/util/HttpRequestHandler;->isDomainExcludedFromSSL(Lcom/getcapacitor/Bridge;Ljava/net/URL;)Ljava/lang/Boolean;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-nez v1, :cond_7a

    .line 117
    .line 118
    iget-object v1, p0, Lcom/getcapacitor/WebViewLocalServer;->bridge:Lcom/getcapacitor/Bridge;

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->setSSLSocketFactory(Lcom/getcapacitor/Bridge;)V

    .line 121
    .line 122
    .line 123
    :cond_7a
    invoke-virtual {v0}, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->connect()V

    .line 124
    .line 125
    .line 126
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 127
    .line 128
    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->getHeaderFields()Ljava/util/Map;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    const/4 v2, 0x0

    .line 144
    move-object v4, v2

    .line 145
    :goto_90
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    if-eqz v3, :cond_10d

    .line 150
    .line 151
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    check-cast v3, Ljava/util/Map$Entry;

    .line 156
    .line 157
    new-instance v5, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    .line 162
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    check-cast v6, Ljava/util/List;

    .line 167
    .line 168
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 169
    .line 170
    .line 171
    move-result-object v6

    .line 172
    :goto_ab
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 173
    .line 174
    .line 175
    move-result v8

    .line 176
    if-eqz v8, :cond_c0

    .line 177
    .line 178
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v8

    .line 182
    check-cast v8, Ljava/lang/String;

    .line 183
    .line 184
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const-string v8, ", "

    .line 188
    .line 189
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    goto :goto_ab

    .line 193
    :cond_c0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    .line 194
    .line 195
    .line 196
    move-result v6

    .line 197
    add-int/lit8 v6, v6, -0x2

    .line 198
    .line 199
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 200
    .line 201
    .line 202
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v6

    .line 206
    check-cast v6, Ljava/lang/String;

    .line 207
    .line 208
    const-string v8, "Content-Type"

    .line 209
    .line 210
    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 211
    .line 212
    .line 213
    move-result v6

    .line 214
    if-eqz v6, :cond_ff

    .line 215
    .line 216
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    const-string v3, ";"

    .line 221
    .line 222
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    const/4 v3, 0x0

    .line 227
    aget-object v3, v2, v3

    .line 228
    .line 229
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    array-length v5, v2

    .line 234
    const/4 v6, 0x1

    .line 235
    if-le v5, v6, :cond_fd

    .line 236
    .line 237
    aget-object v2, v2, v6

    .line 238
    .line 239
    const-string v5, "="

    .line 240
    .line 241
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    array-length v5, v2

    .line 246
    if-le v5, v6, :cond_fd

    .line 247
    .line 248
    aget-object v2, v2, v6

    .line 249
    .line 250
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v4

    .line 254
    :cond_fd
    move-object v2, v3

    .line 255
    goto :goto_90

    .line 256
    :cond_ff
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    check-cast v3, Ljava/lang/String;

    .line 261
    .line 262
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v5

    .line 266
    invoke-interface {v7, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    goto :goto_90

    .line 270
    :cond_10d
    invoke-virtual {v0}, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->getErrorStream()Ljava/io/InputStream;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    if-nez v1, :cond_117

    .line 275
    .line 276
    invoke-virtual {v0}, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->getInputStream()Ljava/io/InputStream;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    :cond_117
    move-object v8, v1

    .line 281
    if-nez v2, :cond_126

    .line 282
    .line 283
    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    invoke-direct {p0, p1, v8}, Lcom/getcapacitor/WebViewLocalServer;->getMimeType(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    :cond_126
    move-object v3, v2

    .line 296
    invoke-virtual {v0}, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->getResponseCode()I

    .line 297
    .line 298
    .line 299
    move-result v5

    .line 300
    invoke-direct {p0, v5}, Lcom/getcapacitor/WebViewLocalServer;->getReasonPhraseFromResponseCode(I)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v6

    .line 304
    new-instance v2, Landroid/webkit/WebResourceResponse;

    .line 305
    .line 306
    invoke-direct/range {v2 .. v8}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    .line 307
    .line 308
    .line 309
    return-object v2
.end method

.method private handleLocalRequest(Landroid/webkit/WebResourceRequest;Lcom/getcapacitor/WebViewLocalServer$PathHandler;)Landroid/webkit/WebResourceResponse;
    .registers 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    const-string v0, "/index.html"

    .line 8
    .line 9
    const-string v4, "-"

    .line 10
    .line 11
    const-string v5, "bytes "

    .line 12
    .line 13
    invoke-interface {v2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    invoke-interface {v2}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    const-string v8, "Range"

    .line 26
    .line 27
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    const-string v9, "/"

    .line 32
    .line 33
    if-eqz v7, :cond_93

    .line 34
    .line 35
    new-instance v0, Lcom/getcapacitor/WebViewLocalServer$LollipopLazyInputStream;

    .line 36
    .line 37
    invoke-direct {v0, v3, v2}, Lcom/getcapacitor/WebViewLocalServer$LollipopLazyInputStream;-><init>(Lcom/getcapacitor/WebViewLocalServer$PathHandler;Landroid/webkit/WebResourceRequest;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {v1, v6, v0}, Lcom/getcapacitor/WebViewLocalServer;->getMimeType(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v11

    .line 44
    invoke-virtual {v3}, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->getResponseHeaders()Ljava/util/Map;

    .line 45
    .line 46
    .line 47
    move-result-object v15

    .line 48
    :try_start_2f
    invoke-virtual {v0}, Lcom/getcapacitor/WebViewLocalServer$LazyInputStream;->available()I

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    invoke-interface {v2}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Ljava/lang/String;

    .line 61
    .line 62
    const-string v7, "="

    .line 63
    .line 64
    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    const/4 v7, 0x1

    .line 69
    aget-object v2, v2, v7

    .line 70
    .line 71
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    const/4 v8, 0x0

    .line 76
    aget-object v8, v2, v8

    .line 77
    .line 78
    add-int/lit8 v10, v6, -0x1

    .line 79
    .line 80
    array-length v12, v2

    .line 81
    if-le v12, v7, :cond_58

    .line 82
    .line 83
    aget-object v2, v2, v7

    .line 84
    .line 85
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    move-result v10

    .line 89
    :cond_58
    const-string v2, "Accept-Ranges"

    .line 90
    .line 91
    const-string v7, "bytes"

    .line 92
    .line 93
    invoke-interface {v15, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    const-string v2, "Content-Range"

    .line 97
    .line 98
    new-instance v7, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-interface {v15, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_7c} :catch_80

    .line 123
    .line 124
    .line 125
    const/16 v2, 0xce

    .line 126
    .line 127
    :goto_7e
    move v13, v2

    .line 128
    goto :goto_83

    .line 129
    :catch_80
    const/16 v2, 0x194

    .line 130
    .line 131
    goto :goto_7e

    .line 132
    :goto_83
    new-instance v10, Landroid/webkit/WebResourceResponse;

    .line 133
    .line 134
    invoke-virtual {v3}, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->getEncoding()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v12

    .line 138
    invoke-virtual {v3}, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->getReasonPhrase()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v14

    .line 142
    move-object/from16 v16, v0

    .line 143
    .line 144
    invoke-direct/range {v10 .. v16}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    .line 145
    .line 146
    .line 147
    return-object v10

    .line 148
    :cond_93
    invoke-interface {v2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    invoke-direct {v1, v4}, Lcom/getcapacitor/WebViewLocalServer;->isLocalFile(Landroid/net/Uri;)Z

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    if-nez v4, :cond_1ae

    .line 157
    .line 158
    invoke-interface {v2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    invoke-direct {v1, v4}, Lcom/getcapacitor/WebViewLocalServer;->isErrorUrl(Landroid/net/Uri;)Z

    .line 163
    .line 164
    .line 165
    move-result v4

    .line 166
    if-eqz v4, :cond_a9

    .line 167
    .line 168
    goto/16 :goto_1ae

    .line 169
    .line 170
    :cond_a9
    const-string v4, "/cordova.js"

    .line 171
    .line 172
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v4

    .line 176
    if-eqz v4, :cond_cb

    .line 177
    .line 178
    new-instance v10, Landroid/webkit/WebResourceResponse;

    .line 179
    .line 180
    invoke-virtual {v3}, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->getEncoding()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v12

    .line 184
    invoke-virtual {v3}, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->getStatusCode()I

    .line 185
    .line 186
    .line 187
    move-result v13

    .line 188
    invoke-virtual {v3}, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->getReasonPhrase()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v14

    .line 192
    invoke-virtual {v3}, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->getResponseHeaders()Ljava/util/Map;

    .line 193
    .line 194
    .line 195
    move-result-object v15

    .line 196
    const/16 v16, 0x0

    .line 197
    .line 198
    const-string v11, "application/javascript"

    .line 199
    .line 200
    invoke-direct/range {v10 .. v16}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    .line 201
    .line 202
    .line 203
    return-object v10

    .line 204
    :cond_cb
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v4

    .line 208
    const/4 v5, 0x0

    .line 209
    if-nez v4, :cond_140

    .line 210
    .line 211
    invoke-interface {v2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    const-string v7, "."

    .line 220
    .line 221
    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 222
    .line 223
    .line 224
    move-result v4

    .line 225
    if-nez v4, :cond_e7

    .line 226
    .line 227
    iget-boolean v4, v1, Lcom/getcapacitor/WebViewLocalServer;->html5mode:Z

    .line 228
    .line 229
    if-eqz v4, :cond_e7

    .line 230
    .line 231
    goto :goto_140

    .line 232
    :cond_e7
    const-string v0, "/favicon.ico"

    .line 233
    .line 234
    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    if-eqz v0, :cond_fd

    .line 239
    .line 240
    :try_start_ef
    new-instance v0, Landroid/webkit/WebResourceResponse;

    .line 241
    .line 242
    const-string v4, "image/png"

    .line 243
    .line 244
    invoke-direct {v0, v4, v5, v5}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_f6} :catch_f7

    .line 245
    .line 246
    .line 247
    return-object v0

    .line 248
    :catch_f7
    move-exception v0

    .line 249
    const-string v4, "favicon handling failed"

    .line 250
    .line 251
    invoke-static {v4, v0}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 252
    .line 253
    .line 254
    :cond_fd
    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 255
    .line 256
    .line 257
    move-result v0

    .line 258
    if-ltz v0, :cond_13f

    .line 259
    .line 260
    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 261
    .line 262
    .line 263
    move-result v0

    .line 264
    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    new-instance v4, Lcom/getcapacitor/WebViewLocalServer$LollipopLazyInputStream;

    .line 269
    .line 270
    invoke-direct {v4, v3, v2}, Lcom/getcapacitor/WebViewLocalServer$LollipopLazyInputStream;-><init>(Lcom/getcapacitor/WebViewLocalServer$PathHandler;Landroid/webkit/WebResourceRequest;)V

    .line 271
    .line 272
    .line 273
    const-string v2, ".html"

    .line 274
    .line 275
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    if-eqz v0, :cond_120

    .line 280
    .line 281
    iget-object v0, v1, Lcom/getcapacitor/WebViewLocalServer;->jsInjector:Lcom/getcapacitor/JSInjector;

    .line 282
    .line 283
    if-eqz v0, :cond_120

    .line 284
    .line 285
    invoke-virtual {v0, v4}, Lcom/getcapacitor/JSInjector;->getInjectedStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 286
    .line 287
    .line 288
    move-result-object v4

    .line 289
    :cond_120
    move-object v13, v4

    .line 290
    invoke-direct {v1, v6, v13}, Lcom/getcapacitor/WebViewLocalServer;->getMimeType(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v8

    .line 294
    invoke-virtual {v3}, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->getStatusCode()I

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    invoke-direct {v1, v13, v0}, Lcom/getcapacitor/WebViewLocalServer;->getStatusCode(Ljava/io/InputStream;I)I

    .line 299
    .line 300
    .line 301
    move-result v10

    .line 302
    new-instance v7, Landroid/webkit/WebResourceResponse;

    .line 303
    .line 304
    invoke-virtual {v3}, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->getEncoding()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v9

    .line 308
    invoke-virtual {v3}, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->getReasonPhrase()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v11

    .line 312
    invoke-virtual {v3}, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->getResponseHeaders()Ljava/util/Map;

    .line 313
    .line 314
    .line 315
    move-result-object v12

    .line 316
    invoke-direct/range {v7 .. v13}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    .line 317
    .line 318
    .line 319
    return-object v7

    .line 320
    :cond_13f
    return-object v5

    .line 321
    :cond_140
    :goto_140
    :try_start_140
    new-instance v2, Ljava/lang/StringBuilder;

    .line 322
    .line 323
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 324
    .line 325
    .line 326
    iget-object v4, v1, Lcom/getcapacitor/WebViewLocalServer;->basePath:Ljava/lang/String;

    .line 327
    .line 328
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v2

    .line 338
    iget-object v4, v1, Lcom/getcapacitor/WebViewLocalServer;->bridge:Lcom/getcapacitor/Bridge;

    .line 339
    .line 340
    invoke-virtual {v4}, Lcom/getcapacitor/Bridge;->getRouteProcessor()Lcom/getcapacitor/RouteProcessor;

    .line 341
    .line 342
    .line 343
    move-result-object v4

    .line 344
    if-eqz v4, :cond_172

    .line 345
    .line 346
    iget-object v2, v1, Lcom/getcapacitor/WebViewLocalServer;->bridge:Lcom/getcapacitor/Bridge;

    .line 347
    .line 348
    invoke-virtual {v2}, Lcom/getcapacitor/Bridge;->getRouteProcessor()Lcom/getcapacitor/RouteProcessor;

    .line 349
    .line 350
    .line 351
    move-result-object v2

    .line 352
    iget-object v4, v1, Lcom/getcapacitor/WebViewLocalServer;->basePath:Ljava/lang/String;

    .line 353
    .line 354
    invoke-interface {v2, v4, v0}, Lcom/getcapacitor/RouteProcessor;->process(Ljava/lang/String;Ljava/lang/String;)Lcom/getcapacitor/ProcessedRoute;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    invoke-virtual {v0}, Lcom/getcapacitor/ProcessedRoute;->getPath()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v2

    .line 362
    invoke-virtual {v0}, Lcom/getcapacitor/ProcessedRoute;->isAsset()Z

    .line 363
    .line 364
    .line 365
    move-result v0

    .line 366
    iput-boolean v0, v1, Lcom/getcapacitor/WebViewLocalServer;->isAsset:Z

    .line 367
    .line 368
    goto :goto_172

    .line 369
    :catch_170
    move-exception v0

    .line 370
    goto :goto_1a8

    .line 371
    :cond_172
    :goto_172
    iget-boolean v0, v1, Lcom/getcapacitor/WebViewLocalServer;->isAsset:Z

    .line 372
    .line 373
    if-eqz v0, :cond_17d

    .line 374
    .line 375
    iget-object v0, v1, Lcom/getcapacitor/WebViewLocalServer;->protocolHandler:Lcom/getcapacitor/AndroidProtocolHandler;

    .line 376
    .line 377
    invoke-virtual {v0, v2}, Lcom/getcapacitor/AndroidProtocolHandler;->openAsset(Ljava/lang/String;)Ljava/io/InputStream;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    goto :goto_183

    .line 382
    :cond_17d
    iget-object v0, v1, Lcom/getcapacitor/WebViewLocalServer;->protocolHandler:Lcom/getcapacitor/AndroidProtocolHandler;

    .line 383
    .line 384
    invoke-virtual {v0, v2}, Lcom/getcapacitor/AndroidProtocolHandler;->openFile(Ljava/lang/String;)Ljava/io/InputStream;

    .line 385
    .line 386
    .line 387
    move-result-object v0
    :try_end_183
    .catch Ljava/io/IOException; {:try_start_140 .. :try_end_183} :catch_170

    .line 388
    :goto_183
    iget-object v2, v1, Lcom/getcapacitor/WebViewLocalServer;->jsInjector:Lcom/getcapacitor/JSInjector;

    .line 389
    .line 390
    if-eqz v2, :cond_18b

    .line 391
    .line 392
    invoke-virtual {v2, v0}, Lcom/getcapacitor/JSInjector;->getInjectedStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    :cond_18b
    move-object v8, v0

    .line 397
    invoke-virtual {v3}, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->getStatusCode()I

    .line 398
    .line 399
    .line 400
    move-result v0

    .line 401
    invoke-direct {v1, v8, v0}, Lcom/getcapacitor/WebViewLocalServer;->getStatusCode(Ljava/io/InputStream;I)I

    .line 402
    .line 403
    .line 404
    move-result v5

    .line 405
    new-instance v2, Landroid/webkit/WebResourceResponse;

    .line 406
    .line 407
    invoke-virtual {v3}, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->getEncoding()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v4

    .line 411
    invoke-virtual {v3}, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->getReasonPhrase()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v6

    .line 415
    invoke-virtual {v3}, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->getResponseHeaders()Ljava/util/Map;

    .line 416
    .line 417
    .line 418
    move-result-object v7

    .line 419
    const-string v3, "text/html"

    .line 420
    .line 421
    invoke-direct/range {v2 .. v8}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    .line 422
    .line 423
    .line 424
    return-object v2

    .line 425
    :goto_1a8
    const-string v2, "Unable to open index.html"

    .line 426
    .line 427
    invoke-static {v2, v0}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 428
    .line 429
    .line 430
    return-object v5

    .line 431
    :cond_1ae
    :goto_1ae
    new-instance v12, Lcom/getcapacitor/WebViewLocalServer$LollipopLazyInputStream;

    .line 432
    .line 433
    invoke-direct {v12, v3, v2}, Lcom/getcapacitor/WebViewLocalServer$LollipopLazyInputStream;-><init>(Lcom/getcapacitor/WebViewLocalServer$PathHandler;Landroid/webkit/WebResourceRequest;)V

    .line 434
    .line 435
    .line 436
    invoke-interface {v2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    invoke-direct {v1, v0, v12}, Lcom/getcapacitor/WebViewLocalServer;->getMimeType(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v7

    .line 448
    invoke-virtual {v3}, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->getStatusCode()I

    .line 449
    .line 450
    .line 451
    move-result v0

    .line 452
    invoke-direct {v1, v12, v0}, Lcom/getcapacitor/WebViewLocalServer;->getStatusCode(Ljava/io/InputStream;I)I

    .line 453
    .line 454
    .line 455
    move-result v9

    .line 456
    new-instance v6, Landroid/webkit/WebResourceResponse;

    .line 457
    .line 458
    invoke-virtual {v3}, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->getEncoding()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v8

    .line 462
    invoke-virtual {v3}, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->getReasonPhrase()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v10

    .line 466
    invoke-virtual {v3}, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->getResponseHeaders()Ljava/util/Map;

    .line 467
    .line 468
    .line 469
    move-result-object v11

    .line 470
    invoke-direct/range {v6 .. v12}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    .line 471
    .line 472
    .line 473
    return-object v6
.end method

.method private handleProxyRequest(Landroid/webkit/WebResourceRequest;Lcom/getcapacitor/WebViewLocalServer$PathHandler;)Landroid/webkit/WebResourceResponse;
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/WebViewLocalServer;->jsInjector:Lcom/getcapacitor/JSInjector;

    .line 2
    .line 3
    if-eqz v0, :cond_11d

    .line 4
    .line 5
    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getMethod()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "GET"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_11d

    .line 16
    .line 17
    :try_start_10
    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    :cond_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_11d

    .line 42
    .line 43
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Ljava/util/Map$Entry;

    .line 48
    .line 49
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    check-cast v5, Ljava/lang/String;

    .line 54
    .line 55
    const-string v6, "Accept"

    .line 56
    .line 57
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-eqz v5, :cond_24

    .line 62
    .line 63
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    check-cast v4, Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    const-string v5, "text/html"

    .line 74
    .line 75
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-eqz v4, :cond_24

    .line 80
    .line 81
    new-instance v3, Ljava/net/URL;

    .line 82
    .line 83
    invoke-direct {v3, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    check-cast v3, Ljava/net/HttpURLConnection;

    .line 91
    .line 92
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    :goto_63
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    if-eqz v4, :cond_83

    .line 105
    .line 106
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    check-cast v4, Ljava/util/Map$Entry;

    .line 111
    .line 112
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    check-cast v5, Ljava/lang/String;

    .line 117
    .line 118
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    check-cast v4, Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v3, v5, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    goto :goto_63

    .line 128
    :catch_7f
    move-exception v0

    .line 129
    move-object p1, v0

    .line 130
    goto/16 :goto_118

    .line 131
    .line 132
    :cond_83
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-virtual {v2, v1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    if-eqz v2, :cond_92

    .line 141
    .line 142
    const-string v4, "Cookie"

    .line 143
    .line 144
    invoke-virtual {v3, v4, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    :cond_92
    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    const/16 v0, 0x7530

    .line 151
    .line 152
    invoke-virtual {v3, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 156
    .line 157
    .line 158
    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {v0}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    if-eqz v0, :cond_d0

    .line 167
    .line 168
    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-virtual {p1}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 177
    .line 178
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    const/4 v0, 0x2

    .line 183
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    const-string v0, "Authorization"

    .line 188
    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .line 193
    .line 194
    const-string v4, "Basic "

    .line 195
    .line 196
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-virtual {v3, v0, p1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    :cond_d0
    invoke-virtual {v3}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    const-string v0, "Set-Cookie"

    .line 214
    .line 215
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    check-cast p1, Ljava/util/List;

    .line 220
    .line 221
    if-eqz p1, :cond_f6

    .line 222
    .line 223
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    :goto_e2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    if-eqz v0, :cond_f6

    .line 232
    .line 233
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    check-cast v0, Ljava/lang/String;

    .line 238
    .line 239
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    invoke-virtual {v2, v1, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    goto :goto_e2

    .line 247
    :cond_f6
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    iget-object v0, p0, Lcom/getcapacitor/WebViewLocalServer;->jsInjector:Lcom/getcapacitor/JSInjector;

    .line 252
    .line 253
    invoke-virtual {v0, p1}, Lcom/getcapacitor/JSInjector;->getInjectedStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 254
    .line 255
    .line 256
    move-result-object v7

    .line 257
    new-instance v1, Landroid/webkit/WebResourceResponse;

    .line 258
    .line 259
    const-string v2, "text/html"

    .line 260
    .line 261
    invoke-virtual {p2}, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->getEncoding()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    invoke-virtual {p2}, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->getStatusCode()I

    .line 266
    .line 267
    .line 268
    move-result v4

    .line 269
    invoke-virtual {p2}, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->getReasonPhrase()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v5

    .line 273
    invoke-virtual {p2}, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->getResponseHeaders()Ljava/util/Map;

    .line 274
    .line 275
    .line 276
    move-result-object v6

    .line 277
    invoke-direct/range {v1 .. v7}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_117} :catch_7f

    .line 278
    .line 279
    .line 280
    return-object v1

    .line 281
    :goto_118
    iget-object p2, p0, Lcom/getcapacitor/WebViewLocalServer;->bridge:Lcom/getcapacitor/Bridge;

    .line 282
    .line 283
    invoke-virtual {p2, p1}, Lcom/getcapacitor/Bridge;->handleAppUrlLoadError(Ljava/lang/Exception;)V

    .line 284
    .line 285
    .line 286
    :cond_11d
    const/4 p1, 0x0

    .line 287
    return-object p1
.end method

.method private isAllowedUrl(Landroid/net/Uri;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/WebViewLocalServer;->bridge:Lcom/getcapacitor/Bridge;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/getcapacitor/Bridge;->getServerUrl()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_1b

    .line 8
    .line 9
    iget-object v0, p0, Lcom/getcapacitor/WebViewLocalServer;->bridge:Lcom/getcapacitor/Bridge;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/getcapacitor/Bridge;->getAppAllowNavigationMask()Lcom/getcapacitor/util/HostMask;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {v0, p1}, Lcom/getcapacitor/util/HostMask;->matches(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_19

    .line 24
    .line 25
    goto :goto_1b

    .line 26
    :cond_19
    const/4 p1, 0x0

    .line 27
    return p1

    .line 28
    :cond_1b
    :goto_1b
    const/4 p1, 0x1

    .line 29
    return p1
.end method

.method private isErrorUrl(Landroid/net/Uri;)Z
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/getcapacitor/WebViewLocalServer;->bridge:Lcom/getcapacitor/Bridge;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/getcapacitor/Bridge;->getErrorUrl()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method private isLocalFile(Landroid/net/Uri;)Z
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "/_capacitor_content_"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_17

    .line 12
    .line 13
    const-string v0, "/_capacitor_file_"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_15

    .line 20
    .line 21
    goto :goto_17

    .line 22
    :cond_15
    const/4 p1, 0x0

    .line 23
    return p1

    .line 24
    :cond_17
    :goto_17
    const/4 p1, 0x1

    .line 25
    return p1
.end method

.method private isMainUrl(Landroid/net/Uri;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/WebViewLocalServer;->bridge:Lcom/getcapacitor/Bridge;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/getcapacitor/Bridge;->getServerUrl()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_1a

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v0, p0, Lcom/getcapacitor/WebViewLocalServer;->bridge:Lcom/getcapacitor/Bridge;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/getcapacitor/Bridge;->getHost()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1a

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    return p1

    .line 27
    :cond_1a
    const/4 p1, 0x0

    .line 28
    return p1
.end method

.method private static parseAndVerifyUrl(Ljava/lang/String;)Landroid/net/Uri;
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_4

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_4
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-nez v1, :cond_14

    .line 10
    .line 11
    const-string v1, "Malformed URL: "

    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_14
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-eqz v2, :cond_22

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_21

    .line 32
    .line 33
    goto :goto_22

    .line 34
    :cond_21
    return-object v1

    .line 35
    :cond_22
    :goto_22
    const-string v1, "URL does not have a path: "

    .line 36
    .line 37
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {p0}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-object v0
.end method

.method private registerUriForScheme(Ljava/lang/String;Lcom/getcapacitor/WebViewLocalServer$PathHandler;Ljava/lang/String;)V
    .registers 5

    .line 1
    new-instance v0, Landroid/net/Uri$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 10
    .line 11
    .line 12
    const-string p1, ""

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string p3, "/"

    .line 22
    .line 23
    invoke-static {p1, p3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    invoke-virtual {p0, p3, p2}, Lcom/getcapacitor/WebViewLocalServer;->register(Landroid/net/Uri;Lcom/getcapacitor/WebViewLocalServer$PathHandler;)V

    .line 28
    .line 29
    .line 30
    const-string p3, "**"

    .line 31
    .line 32
    invoke-static {p1, p3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/getcapacitor/WebViewLocalServer;->register(Landroid/net/Uri;Lcom/getcapacitor/WebViewLocalServer$PathHandler;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public getBasePath()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/WebViewLocalServer;->basePath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getJavaScriptInjectedStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/WebViewLocalServer;->jsInjector:Lcom/getcapacitor/JSInjector;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/getcapacitor/JSInjector;->getInjectedStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :cond_8
    return-object p1
.end method

.method public hostAssets(Ljava/lang/String;)V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/getcapacitor/WebViewLocalServer;->isAsset:Z

    .line 3
    .line 4
    iput-object p1, p0, Lcom/getcapacitor/WebViewLocalServer;->basePath:Ljava/lang/String;

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/getcapacitor/WebViewLocalServer;->createHostingDetails()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public hostFiles(Ljava/lang/String;)V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/getcapacitor/WebViewLocalServer;->isAsset:Z

    .line 3
    .line 4
    iput-object p1, p0, Lcom/getcapacitor/WebViewLocalServer;->basePath:Ljava/lang/String;

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/getcapacitor/WebViewLocalServer;->createHostingDetails()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public register(Landroid/net/Uri;Lcom/getcapacitor/WebViewLocalServer$PathHandler;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/WebViewLocalServer;->uriMatcher:Lcom/getcapacitor/UriMatcher;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/getcapacitor/WebViewLocalServer;->uriMatcher:Lcom/getcapacitor/UriMatcher;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {v1, v2, v3, p1, p2}, Lcom/getcapacitor/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :catchall_16
    move-exception p1

    .line 24
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    .line 25
    throw p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .registers 7

    .line 1
    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_36

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v3, "/_capacitor_http_interceptor_"

    .line 17
    .line 18
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_36

    .line 23
    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v3, "Handling CapacitorHttp request: "

    .line 27
    .line 28
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0}, Lcom/getcapacitor/Logger;->debug(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :try_start_28
    invoke-direct {p0, p1}, Lcom/getcapacitor/WebViewLocalServer;->handleCapacitorHttpRequest(Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    .line 42
    .line 43
    .line 44
    move-result-object p1
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2c} :catch_2d

    .line 45
    return-object p1

    .line 46
    :catch_2d
    move-exception p1

    .line 47
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {p1}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-object v2

    .line 55
    :cond_36
    iget-object v1, p0, Lcom/getcapacitor/WebViewLocalServer;->uriMatcher:Lcom/getcapacitor/UriMatcher;

    .line 56
    .line 57
    monitor-enter v1

    .line 58
    :try_start_39
    iget-object v3, p0, Lcom/getcapacitor/WebViewLocalServer;->uriMatcher:Lcom/getcapacitor/UriMatcher;

    .line 59
    .line 60
    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v3, v4}, Lcom/getcapacitor/UriMatcher;->match(Landroid/net/Uri;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    check-cast v3, Lcom/getcapacitor/WebViewLocalServer$PathHandler;

    .line 69
    .line 70
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_39 .. :try_end_46} :catchall_85

    .line 71
    if-nez v3, :cond_49

    .line 72
    .line 73
    return-object v2

    .line 74
    :cond_49
    invoke-direct {p0, v0}, Lcom/getcapacitor/WebViewLocalServer;->isLocalFile(Landroid/net/Uri;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_67

    .line 79
    .line 80
    invoke-direct {p0, v0}, Lcom/getcapacitor/WebViewLocalServer;->isMainUrl(Landroid/net/Uri;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-nez v1, :cond_67

    .line 85
    .line 86
    invoke-direct {p0, v0}, Lcom/getcapacitor/WebViewLocalServer;->isAllowedUrl(Landroid/net/Uri;)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-eqz v1, :cond_67

    .line 91
    .line 92
    invoke-direct {p0, v0}, Lcom/getcapacitor/WebViewLocalServer;->isErrorUrl(Landroid/net/Uri;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_62

    .line 97
    .line 98
    goto :goto_67

    .line 99
    :cond_62
    invoke-direct {p0, p1, v3}, Lcom/getcapacitor/WebViewLocalServer;->handleProxyRequest(Landroid/webkit/WebResourceRequest;Lcom/getcapacitor/WebViewLocalServer$PathHandler;)Landroid/webkit/WebResourceResponse;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    return-object p1

    .line 104
    :cond_67
    :goto_67
    new-instance v0, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string v1, "Handling local request: "

    .line 107
    .line 108
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-static {v0}, Lcom/getcapacitor/Logger;->debug(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-direct {p0, p1, v3}, Lcom/getcapacitor/WebViewLocalServer;->handleLocalRequest(Landroid/webkit/WebResourceRequest;Lcom/getcapacitor/WebViewLocalServer$PathHandler;)Landroid/webkit/WebResourceResponse;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    return-object p1

    .line 134
    :catchall_85
    move-exception p1

    .line 135
    :try_start_86
    monitor-exit v1
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    .line 136
    throw p1
.end method

###### Class com.getcapacitor.WebViewLocalServer.AnonymousClass1 (com.getcapacitor.WebViewLocalServer$1)
.class Lcom/getcapacitor/WebViewLocalServer$1;
.super Lcom/getcapacitor/WebViewLocalServer$PathHandler;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/getcapacitor/WebViewLocalServer;->createHostingDetails()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/getcapacitor/WebViewLocalServer;

.field final synthetic val$assetPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/getcapacitor/WebViewLocalServer;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/getcapacitor/WebViewLocalServer$1;->this$0:Lcom/getcapacitor/WebViewLocalServer;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/getcapacitor/WebViewLocalServer$1;->val$assetPath:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/getcapacitor/WebViewLocalServer$PathHandler;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public handle(Landroid/net/Uri;)Ljava/io/InputStream;
    .registers 8

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/getcapacitor/WebViewLocalServer$1;->this$0:Lcom/getcapacitor/WebViewLocalServer;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/getcapacitor/WebViewLocalServer;->b(Lcom/getcapacitor/WebViewLocalServer;)Lcom/getcapacitor/Bridge;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/getcapacitor/Bridge;->getRouteProcessor()Lcom/getcapacitor/RouteProcessor;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_35

    .line 16
    .line 17
    iget-object v2, p0, Lcom/getcapacitor/WebViewLocalServer$1;->this$0:Lcom/getcapacitor/WebViewLocalServer;

    .line 18
    .line 19
    invoke-static {v2}, Lcom/getcapacitor/WebViewLocalServer;->b(Lcom/getcapacitor/WebViewLocalServer;)Lcom/getcapacitor/Bridge;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Lcom/getcapacitor/Bridge;->getRouteProcessor()Lcom/getcapacitor/RouteProcessor;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const-string v3, ""

    .line 28
    .line 29
    invoke-interface {v2, v3, v0}, Lcom/getcapacitor/RouteProcessor;->process(Ljava/lang/String;Ljava/lang/String;)Lcom/getcapacitor/ProcessedRoute;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/getcapacitor/ProcessedRoute;->getPath()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iget-object v3, p0, Lcom/getcapacitor/WebViewLocalServer$1;->this$0:Lcom/getcapacitor/WebViewLocalServer;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/getcapacitor/ProcessedRoute;->isAsset()Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    invoke-static {v3, v4}, Lcom/getcapacitor/WebViewLocalServer;->e(Lcom/getcapacitor/WebViewLocalServer;Z)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/getcapacitor/ProcessedRoute;->isIgnoreAssetPath()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    move-object v5, v2

    .line 51
    move v2, v0

    .line 52
    move-object v0, v5

    .line 53
    goto :goto_36

    .line 54
    :cond_35
    const/4 v2, 0x0

    .line 55
    :goto_36
    :try_start_36
    const-string v3, "/_capacitor_content_"

    .line 56
    .line 57
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_49

    .line 62
    .line 63
    iget-object v0, p0, Lcom/getcapacitor/WebViewLocalServer$1;->this$0:Lcom/getcapacitor/WebViewLocalServer;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/getcapacitor/WebViewLocalServer;->d(Lcom/getcapacitor/WebViewLocalServer;)Lcom/getcapacitor/AndroidProtocolHandler;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0, p1}, Lcom/getcapacitor/AndroidProtocolHandler;->openContentUrl(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    return-object p1

    .line 74
    :cond_49
    const-string v3, "/_capacitor_file_"

    .line 75
    .line 76
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-eqz v3, :cond_5c

    .line 81
    .line 82
    iget-object v1, p0, Lcom/getcapacitor/WebViewLocalServer$1;->this$0:Lcom/getcapacitor/WebViewLocalServer;

    .line 83
    .line 84
    invoke-static {v1}, Lcom/getcapacitor/WebViewLocalServer;->d(Lcom/getcapacitor/WebViewLocalServer;)Lcom/getcapacitor/AndroidProtocolHandler;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v1, v0}, Lcom/getcapacitor/AndroidProtocolHandler;->openFile(Ljava/lang/String;)Ljava/io/InputStream;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    return-object p1

    .line 93
    :cond_5c
    iget-object v3, p0, Lcom/getcapacitor/WebViewLocalServer$1;->this$0:Lcom/getcapacitor/WebViewLocalServer;

    .line 94
    .line 95
    invoke-static {v3}, Lcom/getcapacitor/WebViewLocalServer;->c(Lcom/getcapacitor/WebViewLocalServer;)Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-nez v3, :cond_8a

    .line 100
    .line 101
    if-nez v1, :cond_7f

    .line 102
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    iget-object v1, p0, Lcom/getcapacitor/WebViewLocalServer$1;->this$0:Lcom/getcapacitor/WebViewLocalServer;

    .line 109
    .line 110
    invoke-static {v1}, Lcom/getcapacitor/WebViewLocalServer;->a(Lcom/getcapacitor/WebViewLocalServer;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    :cond_7f
    iget-object v1, p0, Lcom/getcapacitor/WebViewLocalServer$1;->this$0:Lcom/getcapacitor/WebViewLocalServer;

    .line 129
    .line 130
    invoke-static {v1}, Lcom/getcapacitor/WebViewLocalServer;->d(Lcom/getcapacitor/WebViewLocalServer;)Lcom/getcapacitor/AndroidProtocolHandler;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v1, v0}, Lcom/getcapacitor/AndroidProtocolHandler;->openFile(Ljava/lang/String;)Ljava/io/InputStream;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    return-object p1

    .line 139
    :cond_8a
    if-eqz v2, :cond_97

    .line 140
    .line 141
    iget-object v1, p0, Lcom/getcapacitor/WebViewLocalServer$1;->this$0:Lcom/getcapacitor/WebViewLocalServer;

    .line 142
    .line 143
    invoke-static {v1}, Lcom/getcapacitor/WebViewLocalServer;->d(Lcom/getcapacitor/WebViewLocalServer;)Lcom/getcapacitor/AndroidProtocolHandler;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-virtual {v1, v0}, Lcom/getcapacitor/AndroidProtocolHandler;->openAsset(Ljava/lang/String;)Ljava/io/InputStream;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    return-object p1

    .line 152
    :cond_97
    iget-object v1, p0, Lcom/getcapacitor/WebViewLocalServer$1;->this$0:Lcom/getcapacitor/WebViewLocalServer;

    .line 153
    .line 154
    invoke-static {v1}, Lcom/getcapacitor/WebViewLocalServer;->d(Lcom/getcapacitor/WebViewLocalServer;)Lcom/getcapacitor/AndroidProtocolHandler;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .line 162
    .line 163
    iget-object v3, p0, Lcom/getcapacitor/WebViewLocalServer$1;->val$assetPath:Ljava/lang/String;

    .line 164
    .line 165
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {v1, v0}, Lcom/getcapacitor/AndroidProtocolHandler;->openAsset(Ljava/lang/String;)Ljava/io/InputStream;

    .line 176
    .line 177
    .line 178
    move-result-object p1
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_b2} :catch_b3

    .line 179
    return-object p1

    .line 180
    :catch_b3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    const-string v1, "Unable to open asset URL: "

    .line 183
    .line 184
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    invoke-static {p1}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    const/4 p1, 0x0

    .line 198
    return-object p1
.end method

###### Class com.getcapacitor.WebViewLocalServer.LazyInputStream (com.getcapacitor.WebViewLocalServer$LazyInputStream)
.class abstract Lcom/getcapacitor/WebViewLocalServer$LazyInputStream;
.super Ljava/io/InputStream;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getcapacitor/WebViewLocalServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LazyInputStream"
.end annotation


# instance fields
.field protected final handler:Lcom/getcapacitor/WebViewLocalServer$PathHandler;

.field private is:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lcom/getcapacitor/WebViewLocalServer$PathHandler;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/getcapacitor/WebViewLocalServer$LazyInputStream;->is:Ljava/io/InputStream;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/getcapacitor/WebViewLocalServer$LazyInputStream;->handler:Lcom/getcapacitor/WebViewLocalServer$PathHandler;

    .line 8
    .line 9
    return-void
.end method

.method private getInputStream()Ljava/io/InputStream;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/WebViewLocalServer$LazyInputStream;->is:Ljava/io/InputStream;

    .line 2
    .line 3
    if-nez v0, :cond_a

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/getcapacitor/WebViewLocalServer$LazyInputStream;->handle()Ljava/io/InputStream;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/getcapacitor/WebViewLocalServer$LazyInputStream;->is:Ljava/io/InputStream;

    .line 10
    .line 11
    :cond_a
    iget-object v0, p0, Lcom/getcapacitor/WebViewLocalServer$LazyInputStream;->is:Ljava/io/InputStream;

    .line 12
    .line 13
    return-object v0
.end method


# virtual methods
.method public available()I
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/getcapacitor/WebViewLocalServer$LazyInputStream;->getInputStream()Ljava/io/InputStream;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_b

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_b
    const/4 v0, -0x1

    .line 13
    return v0
.end method

.method public abstract handle()Ljava/io/InputStream;
.end method

.method public read()I
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/getcapacitor/WebViewLocalServer$LazyInputStream;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0

    :cond_b
    const/4 v0, -0x1

    return v0
.end method

.method public read([B)I
    .registers 3

    .line 3
    invoke-direct {p0}, Lcom/getcapacitor/WebViewLocalServer$LazyInputStream;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 4
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    return p1

    :cond_b
    const/4 p1, -0x1

    return p1
.end method

.method public read([BII)I
    .registers 5

    .line 5
    invoke-direct {p0}, Lcom/getcapacitor/WebViewLocalServer$LazyInputStream;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 6
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1

    :cond_b
    const/4 p1, -0x1

    return p1
.end method

.method public skip(J)J
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/getcapacitor/WebViewLocalServer$LazyInputStream;->getInputStream()Ljava/io/InputStream;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_b

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    .line 8
    .line 9
    .line 10
    move-result-wide p1

    .line 11
    return-wide p1

    .line 12
    :cond_b
    const-wide/16 p1, 0x0

    .line 13
    .line 14
    return-wide p1
.end method

###### Class com.getcapacitor.WebViewLocalServer.LollipopLazyInputStream (com.getcapacitor.WebViewLocalServer$LollipopLazyInputStream)
.class Lcom/getcapacitor/WebViewLocalServer$LollipopLazyInputStream;
.super Lcom/getcapacitor/WebViewLocalServer$LazyInputStream;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getcapacitor/WebViewLocalServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LollipopLazyInputStream"
.end annotation


# instance fields
.field private is:Ljava/io/InputStream;

.field private request:Landroid/webkit/WebResourceRequest;


# direct methods
.method public constructor <init>(Lcom/getcapacitor/WebViewLocalServer$PathHandler;Landroid/webkit/WebResourceRequest;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/getcapacitor/WebViewLocalServer$LazyInputStream;-><init>(Lcom/getcapacitor/WebViewLocalServer$PathHandler;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/getcapacitor/WebViewLocalServer$LollipopLazyInputStream;->request:Landroid/webkit/WebResourceRequest;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handle()Ljava/io/InputStream;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/WebViewLocalServer$LazyInputStream;->handler:Lcom/getcapacitor/WebViewLocalServer$PathHandler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/getcapacitor/WebViewLocalServer$LollipopLazyInputStream;->request:Landroid/webkit/WebResourceRequest;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->handle(Landroid/webkit/WebResourceRequest;)Ljava/io/InputStream;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

###### Class com.getcapacitor.WebViewLocalServer.PathHandler (com.getcapacitor.WebViewLocalServer$PathHandler)
.class public abstract Lcom/getcapacitor/WebViewLocalServer$PathHandler;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getcapacitor/WebViewLocalServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PathHandler"
.end annotation


# instance fields
.field private charset:Ljava/lang/String;

.field private encoding:Ljava/lang/String;

.field protected mimeType:Ljava/lang/String;

.field private reasonPhrase:Ljava/lang/String;

.field private responseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private statusCode:I


# direct methods
.method public constructor <init>()V
    .registers 7

    .line 1
    const-string v4, "OK"

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0xc8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/getcapacitor/WebViewLocalServer$PathHandler;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->encoding:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->charset:Ljava/lang/String;

    .line 5
    iput p3, p0, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->statusCode:I

    .line 6
    iput-object p4, p0, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->reasonPhrase:Ljava/lang/String;

    if-nez p5, :cond_12

    .line 7
    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    .line 8
    :cond_12
    const-string p1, "Cache-Control"

    const-string p2, "no-cache"

    invoke-interface {p5, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iput-object p5, p0, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->responseHeaders:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->charset:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->encoding:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->reasonPhrase:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->responseHeaders:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStatusCode()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->statusCode:I

    .line 2
    .line 3
    return v0
.end method

.method public abstract handle(Landroid/net/Uri;)Ljava/io/InputStream;
.end method

.method public handle(Landroid/webkit/WebResourceRequest;)Ljava/io/InputStream;
    .registers 2

    .line 1
    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/getcapacitor/WebViewLocalServer$PathHandler;->handle(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method
