###### Class com.engagelab.privates.common.handler.CommonHandler (com.engagelab.privates.common.handler.CommonHandler)
.class public Lcom/engagelab/privates/common/handler/CommonHandler;
.super Landroid/os/Handler;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field private static final TAG:Ljava/lang/String; = "CommonHandler"

.field private static final WHAT_RELEASE:I = -0x3e8


# instance fields
.field private final context:Landroid/content/Context;

.field private final releaseInterval:I


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;I)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/engagelab/privates/common/handler/CommonHandler;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput p3, p0, Lcom/engagelab/privates/common/handler/CommonHandler;->releaseInterval:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    .line 1
    :try_start_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 2
    .line 3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    iget v4, p1, Landroid/os/Message;->what:I

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    const/16 p1, -0x3e8

    .line 16
    .line 17
    if-ne v4, p1, :cond_2b

    .line 18
    .line 19
    invoke-static {}, Lcom/engagelab/privates/common/handler/MTHandler;->getInstance()Lcom/engagelab/privates/common/handler/MTHandler;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object v0, p0, Lcom/engagelab/privates/common/handler/CommonHandler;->context:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p1, v0, v1}, Lcom/engagelab/privates/common/handler/MTHandler;->releaseHandler(Landroid/content/Context;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catchall_28
    move-exception v0

    .line 42
    move-object p1, v0

    .line 43
    goto :goto_3e

    .line 44
    :cond_2b
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 45
    .line 46
    .line 47
    iget v0, p0, Lcom/engagelab/privates/common/handler/CommonHandler;->releaseInterval:I

    .line 48
    .line 49
    int-to-long v0, v0

    .line 50
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lcom/engagelab/privates/common/observer/MTObservable;->getInstance()Lcom/engagelab/privates/common/observer/MTObservable;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/engagelab/privates/common/handler/CommonHandler;->context:Landroid/content/Context;

    .line 58
    .line 59
    invoke-virtual/range {v0 .. v5}, Lcom/engagelab/privates/common/observer/MTObservable;->handleMessage(Landroid/content/Context;ILjava/lang/String;ILandroid/os/Bundle;)V
    :try_end_3d
    .catchall {:try_start_0 .. :try_end_3d} :catchall_28

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :goto_3e
    new-instance v0, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v1, "handleMessage failed "

    .line 66
    .line 67
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const-string v1, "CommonHandler"

    .line 71
    .line 72
    invoke-static {p1, v0, v1}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method
