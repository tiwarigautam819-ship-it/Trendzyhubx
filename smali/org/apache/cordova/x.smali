###### Class org.apache.cordova.x (org.apache.cordova.x)
.class public final Lorg/apache/cordova/x;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/apache/cordova/w;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Z

.field public final synthetic e:Lorg/apache/cordova/CordovaWebViewImpl;


# direct methods
.method public constructor <init>(Lorg/apache/cordova/CordovaWebViewImpl;ILorg/apache/cordova/w;Ljava/lang/String;Z)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/cordova/x;->e:Lorg/apache/cordova/CordovaWebViewImpl;

    .line 5
    .line 6
    iput p2, p0, Lorg/apache/cordova/x;->a:I

    .line 7
    .line 8
    iput-object p3, p0, Lorg/apache/cordova/x;->b:Lorg/apache/cordova/w;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/apache/cordova/x;->c:Ljava/lang/String;

    .line 11
    .line 12
    iput-boolean p5, p0, Lorg/apache/cordova/x;->d:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget v0, p0, Lorg/apache/cordova/x;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/cordova/x;->e:Lorg/apache/cordova/CordovaWebViewImpl;

    .line 4
    .line 5
    if-lez v0, :cond_11

    .line 6
    .line 7
    iget-object v0, v1, Lorg/apache/cordova/CordovaWebViewImpl;->c:Lorg/apache/cordova/m;

    .line 8
    .line 9
    invoke-interface {v0}, Lorg/apache/cordova/m;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v2, p0, Lorg/apache/cordova/x;->b:Lorg/apache/cordova/w;

    .line 14
    .line 15
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    :cond_11
    iget-object v0, v1, Lorg/apache/cordova/CordovaWebViewImpl;->b:Lorg/apache/cordova/v;

    .line 19
    .line 20
    iget-object v1, p0, Lorg/apache/cordova/x;->c:Ljava/lang/String;

    .line 21
    .line 22
    iget-boolean v2, p0, Lorg/apache/cordova/x;->d:Z

    .line 23
    .line 24
    invoke-interface {v0, v1, v2}, Lorg/apache/cordova/v;->loadUrl(Ljava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
