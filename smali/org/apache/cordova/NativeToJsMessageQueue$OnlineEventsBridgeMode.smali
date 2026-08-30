###### Class org.apache.cordova.NativeToJsMessageQueue$OnlineEventsBridgeMode (org.apache.cordova.NativeToJsMessageQueue$OnlineEventsBridgeMode)
.class public Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode;
.super Lorg/apache/cordova/f0;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Lorg/apache/cordova/h0;

.field public b:Z

.field public c:Z


# direct methods
.method public constructor <init>(Lorg/apache/cordova/h0;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode;->a:Lorg/apache/cordova/h0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public notifyOfFlush(Lorg/apache/cordova/i0;Z)V
    .registers 3

    .line 1
    if-eqz p2, :cond_c

    .line 2
    .line 3
    iget-boolean p1, p0, Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode;->c:Z

    .line 4
    .line 5
    if-nez p1, :cond_c

    .line 6
    .line 7
    iget-boolean p1, p0, Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode;->b:Z

    .line 8
    .line 9
    xor-int/lit8 p1, p1, 0x1

    .line 10
    .line 11
    iput-boolean p1, p0, Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode;->b:Z

    .line 12
    .line 13
    :cond_c
    return-void
.end method

.method public onNativeToJsMessageAvailable(Lorg/apache/cordova/i0;)V
    .registers 5

    .line 1
    new-instance v0, Ls4/b;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, p0, p1, v1, v2}, Ls4/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode;->a:Lorg/apache/cordova/h0;

    .line 9
    .line 10
    check-cast p1, Lk1/h;

    .line 11
    .line 12
    iget-object p1, p1, Lk1/h;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p1, Lorg/apache/cordova/engine/SystemWebViewEngine;

    .line 15
    .line 16
    iget-object p1, p1, Lorg/apache/cordova/engine/SystemWebViewEngine;->g:Lorg/apache/cordova/m;

    .line 17
    .line 18
    invoke-interface {p1}, Lorg/apache/cordova/m;->getActivity()Lg/m;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public reset()V
    .registers 3

    .line 1
    new-instance v0, Landroidx/fragment/app/p;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-direct {v0, v1, p0}, Landroidx/fragment/app/p;-><init>(ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode;->a:Lorg/apache/cordova/h0;

    .line 9
    .line 10
    check-cast v1, Lk1/h;

    .line 11
    .line 12
    iget-object v1, v1, Lk1/h;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Lorg/apache/cordova/engine/SystemWebViewEngine;

    .line 15
    .line 16
    iget-object v1, v1, Lorg/apache/cordova/engine/SystemWebViewEngine;->g:Lorg/apache/cordova/m;

    .line 17
    .line 18
    invoke-interface {v1}, Lorg/apache/cordova/m;->getActivity()Lg/m;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
