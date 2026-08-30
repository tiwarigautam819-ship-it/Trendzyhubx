###### Class com.getcapacitor.cordova.MockCordovaInterfaceImpl (com.getcapacitor.cordova.MockCordovaInterfaceImpl)
.class public Lcom/getcapacitor/cordova/MockCordovaInterfaceImpl;
.super Lorg/apache/cordova/CordovaInterfaceImpl;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# direct methods
.method public constructor <init>(Lg/m;)V
    .registers 3

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, p1, v0}, Lorg/apache/cordova/CordovaInterfaceImpl;-><init>(Lg/m;Ljava/util/concurrent/ExecutorService;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getActivityResultCallback()Lorg/apache/cordova/o;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->activityResultCallback:Lorg/apache/cordova/o;

    .line 2
    .line 3
    return-object v0
.end method

.method public handlePermissionResult(I[Ljava/lang/String;[I)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/CordovaInterfaceImpl;->permissionResultCallbacks:Lorg/apache/cordova/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/apache/cordova/e;->a(I)Landroid/util/Pair;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_19

    .line 8
    .line 9
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lorg/apache/cordova/o;

    .line 12
    .line 13
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p1, Ljava/lang/Integer;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/cordova/o;->onRequestPermissionResult(I[Ljava/lang/String;[I)V

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    return p1

    .line 26
    :cond_19
    const/4 p1, 0x0

    .line 27
    return p1
.end method
