###### Class org.apache.cordova.o (org.apache.cordova.o)
.class public abstract Lorg/apache/cordova/o;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public a:Ljava/lang/String;

.field public cordova:Lorg/apache/cordova/m;

.field public webView:Lorg/apache/cordova/t;


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/d;)Z
    .registers 5

    .line 2
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1, v0, p3}, Lorg/apache/cordova/o;->execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/d;)Z

    move-result p1

    return p1
.end method

.method public execute(Ljava/lang/String;Lorg/apache/cordova/g;Lorg/apache/cordova/d;)Z
    .registers 4

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/d;)Z
    .registers 4

    .line 4
    new-instance p2, Lorg/apache/cordova/g;

    .line 5
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/cordova/o;->execute(Ljava/lang/String;Lorg/apache/cordova/g;Lorg/apache/cordova/d;)Z

    move-result p1

    return p1
.end method

.method public getPathHandler()Lorg/apache/cordova/p;
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/o;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public handleOpenForRead(Landroid/net/Uri;)Lorg/apache/cordova/r;
    .registers 5

    .line 1
    new-instance v0, Ljava/io/FileNotFoundException;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Plugin can\'t handle uri: "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw v0
.end method

.method public hasPermisssion()Z
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public initialize(Lorg/apache/cordova/m;Lorg/apache/cordova/t;)V
    .registers 3

    .line 1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 1
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 1
    return-void
.end method

.method public onMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 2

    .line 1
    return-void
.end method

.method public onOverrideUrlLoading(Ljava/lang/String;)Z
    .registers 2

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public onPause(Z)V
    .registers 2

    .line 1
    return-void
.end method

.method public onReceivedClientCertRequest(Lorg/apache/cordova/t;Lorg/apache/cordova/c0;)Z
    .registers 3

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public onReceivedHttpAuthRequest(Lorg/apache/cordova/t;Lorg/apache/cordova/e0;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public onRequestPermissionResult(I[Ljava/lang/String;[I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4

    .line 1
    return-void
.end method

.method public onReset()V
    .registers 1

    .line 1
    return-void
.end method

.method public onRestoreStateForActivityResult(Landroid/os/Bundle;Lorg/apache/cordova/d;)V
    .registers 3

    .line 1
    return-void
.end method

.method public onResume(Z)V
    .registers 2

    .line 1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public onStart()V
    .registers 1

    .line 1
    return-void
.end method

.method public onStop()V
    .registers 1

    .line 1
    return-void
.end method

.method public pluginInitialize()V
    .registers 1

    .line 1
    return-void
.end method

.method public final privateInitialize(Ljava/lang/String;Lorg/apache/cordova/m;Lorg/apache/cordova/t;Lorg/apache/cordova/q;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lorg/apache/cordova/o;->a:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/apache/cordova/o;->cordova:Lorg/apache/cordova/m;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/apache/cordova/o;->webView:Lorg/apache/cordova/t;

    .line 6
    .line 7
    invoke-virtual {p0, p2, p3}, Lorg/apache/cordova/o;->initialize(Lorg/apache/cordova/m;Lorg/apache/cordova/t;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/apache/cordova/o;->pluginInitialize()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public remapUri(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 2

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public requestPermissions(I)V
    .registers 2

    .line 1
    return-void
.end method

.method public shouldAllowBridgeAccess(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/cordova/o;->shouldAllowNavigation(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public shouldAllowNavigation(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 2

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public shouldAllowRequest(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 2

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public shouldOpenExternalUrl(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 2

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method
