###### Class org.apache.cordova.d (org.apache.cordova.d)
.class public Lorg/apache/cordova/d;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lorg/apache/cordova/t;

.field public c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/cordova/t;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/cordova/d;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/apache/cordova/d;->b:Lorg/apache/cordova/t;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public error(I)V
    .registers 4

    .line 3
    new-instance v0, Lorg/apache/cordova/m0;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p1}, Lorg/apache/cordova/m0;-><init>(II)V

    invoke-virtual {p0, v0}, Lorg/apache/cordova/d;->sendPluginResult(Lorg/apache/cordova/m0;)V

    return-void
.end method

.method public error(Ljava/lang/String;)V
    .registers 4

    .line 2
    new-instance v0, Lorg/apache/cordova/m0;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p1}, Lorg/apache/cordova/m0;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/cordova/d;->sendPluginResult(Lorg/apache/cordova/m0;)V

    return-void
.end method

.method public error(Lorg/json/JSONObject;)V
    .registers 4

    .line 1
    new-instance v0, Lorg/apache/cordova/m0;

    const/16 v1, 0xa

    invoke-direct {v0, p1, v1}, Lorg/apache/cordova/m0;-><init>(Lorg/json/JSONObject;I)V

    invoke-virtual {p0, v0}, Lorg/apache/cordova/d;->sendPluginResult(Lorg/apache/cordova/m0;)V

    return-void
.end method

.method public getCallbackId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/d;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isChangingThreads()Z
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public isFinished()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/apache/cordova/d;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public sendPluginResult(Lorg/apache/cordova/m0;)V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Lorg/apache/cordova/d;->c:Z

    .line 3
    .line 4
    if-eqz v0, :cond_c

    .line 5
    .line 6
    invoke-virtual {p1}, Lorg/apache/cordova/m0;->a()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_a
    move-exception p1

    .line 12
    goto :goto_1b

    .line 13
    :cond_c
    iget-boolean v0, p1, Lorg/apache/cordova/m0;->c:Z

    .line 14
    .line 15
    xor-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    iput-boolean v0, p0, Lorg/apache/cordova/d;->c:Z

    .line 18
    .line 19
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_a

    .line 20
    iget-object v0, p0, Lorg/apache/cordova/d;->b:Lorg/apache/cordova/t;

    .line 21
    .line 22
    iget-object v1, p0, Lorg/apache/cordova/d;->a:Ljava/lang/String;

    .line 23
    .line 24
    invoke-interface {v0, p1, v1}, Lorg/apache/cordova/t;->sendPluginResult(Lorg/apache/cordova/m0;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :goto_1b
    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_a

    .line 29
    throw p1
.end method

.method public success()V
    .registers 3

    .line 6
    new-instance v0, Lorg/apache/cordova/m0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/apache/cordova/m0;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/apache/cordova/d;->sendPluginResult(Lorg/apache/cordova/m0;)V

    return-void
.end method

.method public success(I)V
    .registers 4

    .line 5
    new-instance v0, Lorg/apache/cordova/m0;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1}, Lorg/apache/cordova/m0;-><init>(II)V

    invoke-virtual {p0, v0}, Lorg/apache/cordova/d;->sendPluginResult(Lorg/apache/cordova/m0;)V

    return-void
.end method

.method public success(Ljava/lang/String;)V
    .registers 4

    .line 2
    new-instance v0, Lorg/apache/cordova/m0;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1}, Lorg/apache/cordova/m0;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/cordova/d;->sendPluginResult(Lorg/apache/cordova/m0;)V

    return-void
.end method

.method public success(Lorg/json/JSONArray;)V
    .registers 3

    .line 3
    new-instance v0, Lorg/apache/cordova/m0;

    invoke-direct {v0, p1}, Lorg/apache/cordova/m0;-><init>(Lorg/json/JSONArray;)V

    invoke-virtual {p0, v0}, Lorg/apache/cordova/d;->sendPluginResult(Lorg/apache/cordova/m0;)V

    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .registers 4

    .line 1
    new-instance v0, Lorg/apache/cordova/m0;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lorg/apache/cordova/m0;-><init>(Lorg/json/JSONObject;I)V

    invoke-virtual {p0, v0}, Lorg/apache/cordova/d;->sendPluginResult(Lorg/apache/cordova/m0;)V

    return-void
.end method

.method public success([B)V
    .registers 3

    .line 4
    new-instance v0, Lorg/apache/cordova/m0;

    invoke-direct {v0, p1}, Lorg/apache/cordova/m0;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/apache/cordova/d;->sendPluginResult(Lorg/apache/cordova/m0;)V

    return-void
.end method
