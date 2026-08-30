###### Class org.apache.cordova.NativeToJsMessageQueue$LoadUrlBridgeMode (org.apache.cordova.NativeToJsMessageQueue$LoadUrlBridgeMode)
.class public Lorg/apache/cordova/NativeToJsMessageQueue$LoadUrlBridgeMode;
.super Lorg/apache/cordova/f0;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Lorg/apache/cordova/v;

.field public final b:Lorg/apache/cordova/m;


# direct methods
.method public constructor <init>(Lorg/apache/cordova/v;Lorg/apache/cordova/m;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/cordova/NativeToJsMessageQueue$LoadUrlBridgeMode;->a:Lorg/apache/cordova/v;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/apache/cordova/NativeToJsMessageQueue$LoadUrlBridgeMode;->b:Lorg/apache/cordova/m;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onNativeToJsMessageAvailable(Lorg/apache/cordova/i0;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/NativeToJsMessageQueue$LoadUrlBridgeMode;->b:Lorg/apache/cordova/m;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/apache/cordova/m;->getActivity()Lg/m;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ls4/b;

    .line 8
    .line 9
    const/4 v2, 0x5

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-direct {v1, p0, p1, v2, v3}, Ls4/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
