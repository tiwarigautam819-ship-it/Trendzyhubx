###### Class com.engagelab.privates.common.binder.MainMessengerHandler (com.engagelab.privates.common.binder.MainMessengerHandler)
.class public Lcom/engagelab/privates/common/binder/MainMessengerHandler;
.super Landroid/os/Handler;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field private static final TAG:Ljava/lang/String; = "MainMessengerHandler"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 3

    .line 1
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/engagelab/privates/common/binder/MainMessengerHandler;->context:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 1
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {}, Lcom/engagelab/privates/common/observer/MTObservable;->getInstance()Lcom/engagelab/privates/common/observer/MTObservable;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/engagelab/privates/common/binder/MainMessengerHandler;->context:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v1, v2, v0, p1}, Lcom/engagelab/privates/common/observer/MTObservable;->dispatchMessage(Landroid/content/Context;ILandroid/os/Bundle;)V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_10

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catchall_10
    move-exception p1

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v1, "handleMessage failed "

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v1, "MainMessengerHandler"

    .line 26
    .line 27
    invoke-static {p1, v0, v1}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
