###### Class org.apache.cordova.z (org.apache.cordova.z)
.class public final Lorg/apache/cordova/z;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;


# direct methods
.method public constructor <init>(Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/cordova/z;->a:Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/z;->a:Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;->a:Lorg/apache/cordova/CordovaWebViewImpl;

    .line 4
    .line 5
    const-wide/16 v1, 0x7d0

    .line 6
    .line 7
    :try_start_6
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lorg/apache/cordova/CordovaWebViewImpl;->c:Lorg/apache/cordova/m;

    .line 11
    .line 12
    invoke-interface {v1}, Lorg/apache/cordova/m;->getActivity()Lg/m;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_1f

    .line 17
    .line 18
    iget-object v0, v0, Lorg/apache/cordova/CordovaWebViewImpl;->c:Lorg/apache/cordova/m;

    .line 19
    .line 20
    invoke-interface {v0}, Lorg/apache/cordova/m;->getActivity()Lg/m;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v1, Lorg/apache/cordova/y;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lorg/apache/cordova/y;-><init>(Lorg/apache/cordova/z;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_1f} :catch_1f

    .line 30
    .line 31
    .line 32
    :catch_1f
    :cond_1f
    return-void
.end method
