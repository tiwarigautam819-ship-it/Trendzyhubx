###### Class org.apache.cordova.w (org.apache.cordova.w)
.class public final Lorg/apache/cordova/w;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ls4/b;

.field public final synthetic d:Lorg/apache/cordova/CordovaWebViewImpl;


# direct methods
.method public constructor <init>(Lorg/apache/cordova/CordovaWebViewImpl;IILs4/b;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/cordova/w;->d:Lorg/apache/cordova/CordovaWebViewImpl;

    .line 5
    .line 6
    iput p2, p0, Lorg/apache/cordova/w;->a:I

    .line 7
    .line 8
    iput p3, p0, Lorg/apache/cordova/w;->b:I

    .line 9
    .line 10
    iput-object p4, p0, Lorg/apache/cordova/w;->c:Ls4/b;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_1} :catch_c

    .line 2
    :try_start_1
    iget v0, p0, Lorg/apache/cordova/w;->a:I

    .line 3
    .line 4
    int-to-long v0, v0

    .line 5
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 6
    .line 7
    .line 8
    monitor-exit p0

    .line 9
    goto :goto_10

    .line 10
    :catchall_9
    move-exception v0

    .line 11
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    .line 12
    :try_start_b
    throw v0
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_c} :catch_c

    .line 13
    :catch_c
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 15
    .line 16
    .line 17
    :goto_10
    iget-object v0, p0, Lorg/apache/cordova/w;->d:Lorg/apache/cordova/CordovaWebViewImpl;

    .line 18
    .line 19
    iget v1, v0, Lorg/apache/cordova/CordovaWebViewImpl;->d:I

    .line 20
    .line 21
    iget v2, p0, Lorg/apache/cordova/w;->b:I

    .line 22
    .line 23
    if-ne v1, v2, :cond_2e

    .line 24
    .line 25
    iget-object v0, v0, Lorg/apache/cordova/CordovaWebViewImpl;->c:Lorg/apache/cordova/m;

    .line 26
    .line 27
    invoke-interface {v0}, Lorg/apache/cordova/m;->getActivity()Lg/m;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_2e

    .line 32
    .line 33
    iget-object v0, p0, Lorg/apache/cordova/w;->d:Lorg/apache/cordova/CordovaWebViewImpl;

    .line 34
    .line 35
    iget-object v0, v0, Lorg/apache/cordova/CordovaWebViewImpl;->c:Lorg/apache/cordova/m;

    .line 36
    .line 37
    invoke-interface {v0}, Lorg/apache/cordova/m;->getActivity()Lg/m;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lorg/apache/cordova/w;->c:Ls4/b;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 44
    .line 45
    .line 46
    goto :goto_35

    .line 47
    :cond_2e
    iget-object v0, p0, Lorg/apache/cordova/w;->d:Lorg/apache/cordova/CordovaWebViewImpl;

    .line 48
    .line 49
    iget-object v0, v0, Lorg/apache/cordova/CordovaWebViewImpl;->c:Lorg/apache/cordova/m;

    .line 50
    .line 51
    invoke-interface {v0}, Lorg/apache/cordova/m;->getActivity()Lg/m;

    .line 52
    .line 53
    .line 54
    :goto_35
    return-void
.end method
