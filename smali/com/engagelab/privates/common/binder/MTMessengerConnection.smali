###### Class com.engagelab.privates.common.binder.MTMessengerConnection (com.engagelab.privates.common.binder.MTMessengerConnection)
.class public Lcom/engagelab/privates/common/binder/MTMessengerConnection;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/engagelab/privates/common/binder/MTMessengerConnection;->context:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/engagelab/privates/common/binder/MTMessenger;->getInstance()Lcom/engagelab/privates/common/binder/MTMessenger;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/engagelab/privates/common/binder/MTMessengerConnection;->context:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p1, v0, p2}, Lcom/engagelab/privates/common/binder/MTMessenger;->onServiceConnected(Landroid/content/Context;Landroid/os/IBinder;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/engagelab/privates/common/binder/MTMessenger;->getInstance()Lcom/engagelab/privates/common/binder/MTMessenger;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/engagelab/privates/common/binder/MTMessengerConnection;->context:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/engagelab/privates/common/binder/MTMessenger;->onServiceDisconnected(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
