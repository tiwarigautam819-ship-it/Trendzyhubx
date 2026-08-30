###### Class org.apache.cordova.b0 (org.apache.cordova.b0)
.class public final Lorg/apache/cordova/b0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/apache/cordova/CoreAndroid;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/cordova/CoreAndroid;I)V
    .registers 3

    .line 1
    iput p2, p0, Lorg/apache/cordova/b0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/apache/cordova/b0;->b:Lorg/apache/cordova/CoreAndroid;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget v0, p0, Lorg/apache/cordova/b0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_2e

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/cordova/b0;->b:Lorg/apache/cordova/CoreAndroid;

    .line 7
    .line 8
    iget-object v0, v0, Lorg/apache/cordova/o;->webView:Lorg/apache/cordova/t;

    .line 9
    .line 10
    invoke-interface {v0}, Lorg/apache/cordova/t;->backHistory()Z

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_d
    iget-object v0, p0, Lorg/apache/cordova/b0;->b:Lorg/apache/cordova/CoreAndroid;

    .line 15
    .line 16
    iget-object v0, v0, Lorg/apache/cordova/o;->webView:Lorg/apache/cordova/t;

    .line 17
    .line 18
    invoke-interface {v0}, Lorg/apache/cordova/t;->clearHistory()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_15
    iget-object v0, p0, Lorg/apache/cordova/b0;->b:Lorg/apache/cordova/CoreAndroid;

    .line 23
    .line 24
    iget-object v0, v0, Lorg/apache/cordova/o;->webView:Lorg/apache/cordova/t;

    .line 25
    .line 26
    invoke-interface {v0}, Lorg/apache/cordova/t;->clearCache()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_1d
    iget-object v0, p0, Lorg/apache/cordova/b0;->b:Lorg/apache/cordova/CoreAndroid;

    .line 31
    .line 32
    iget-object v0, v0, Lorg/apache/cordova/o;->webView:Lorg/apache/cordova/t;

    .line 33
    .line 34
    invoke-interface {v0}, Lorg/apache/cordova/t;->getPluginManager()Lorg/apache/cordova/l0;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v1, "spinner"

    .line 39
    .line 40
    const-string v2, "stop"

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/l0;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    nop

    .line 47
    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_15
        :pswitch_d
    .end packed-switch
.end method
