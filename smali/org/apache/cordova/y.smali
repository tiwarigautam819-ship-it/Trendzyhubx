###### Class org.apache.cordova.y (org.apache.cordova.y)
.class public final Lorg/apache/cordova/y;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lorg/apache/cordova/z;


# direct methods
.method public constructor <init>(Lorg/apache/cordova/z;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/cordova/y;->a:Lorg/apache/cordova/z;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/y;->a:Lorg/apache/cordova/z;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/apache/cordova/z;->a:Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;

    .line 4
    .line 5
    iget-object v0, v0, Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;->a:Lorg/apache/cordova/CordovaWebViewImpl;

    .line 6
    .line 7
    iget-object v0, v0, Lorg/apache/cordova/CordovaWebViewImpl;->a:Lorg/apache/cordova/l0;

    .line 8
    .line 9
    const-string v1, "spinner"

    .line 10
    .line 11
    const-string v2, "stop"

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/l0;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-void
.end method
