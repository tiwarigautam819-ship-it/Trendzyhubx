###### Class com.engagelab.privates.common.binder.RemoteMessengerHandler (com.engagelab.privates.common.binder.RemoteMessengerHandler)
.class public Lcom/engagelab/privates/common/binder/RemoteMessengerHandler;
.super Landroid/os/Handler;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteMessengerHandler"


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
    iput-object p1, p0, Lcom/engagelab/privates/common/binder/RemoteMessengerHandler;->context:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 1
    :try_start_0
    invoke-static {}, Lcom/engagelab/privates/common/binder/MTMessenger;->getInstance()Lcom/engagelab/privates/common/binder/MTMessenger;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/engagelab/privates/common/binder/MTMessenger;->initMainMessenger(Landroid/os/Messenger;)V

    .line 8
    .line 9
    .line 10
    iget v0, p1, Landroid/os/Message;->what:I

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const/16 v1, 0x65

    .line 17
    .line 18
    if-ne v0, v1, :cond_1f

    .line 19
    .line 20
    invoke-static {}, Lcom/engagelab/privates/common/observer/MTObservable;->getInstance()Lcom/engagelab/privates/common/observer/MTObservable;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/engagelab/privates/common/binder/RemoteMessengerHandler;->context:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {v0, v1, p1}, Lcom/engagelab/privates/common/observer/MTObservable;->observerOnRemoteProcess(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catchall_1d
    move-exception p1

    .line 31
    goto :goto_29

    .line 32
    :cond_1f
    invoke-static {}, Lcom/engagelab/privates/common/observer/MTObservable;->getInstance()Lcom/engagelab/privates/common/observer/MTObservable;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget-object v2, p0, Lcom/engagelab/privates/common/binder/RemoteMessengerHandler;->context:Landroid/content/Context;

    .line 37
    .line 38
    invoke-virtual {v1, v2, v0, p1}, Lcom/engagelab/privates/common/observer/MTObservable;->dispatchMessage(Landroid/content/Context;ILandroid/os/Bundle;)V
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_1d

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :goto_29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v1, "handleMessage failed "

    .line 45
    .line 46
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string v1, "RemoteMessengerHandler"

    .line 50
    .line 51
    invoke-static {p1, v0, v1}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method
