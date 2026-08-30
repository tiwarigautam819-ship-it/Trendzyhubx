###### Class com.engagelab.privates.push.platform.google.callback.MTGoogleCallback (com.engagelab.privates.push.platform.google.callback.MTGoogleCallback)
.class public Lcom/engagelab/privates/push/platform/google/callback/MTGoogleCallback;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field private static final TAG:Ljava/lang/String; = "MTGoogleCallback"


# instance fields
.field private mtGoogleCallbackImp:Lcom/engagelab/privates/push/platform/google/callback/MTGoogleCallbackImp;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/engagelab/privates/push/platform/google/callback/MTGoogleCallback;->mtGoogleCallbackImp:Lcom/engagelab/privates/push/platform/google/callback/MTGoogleCallbackImp;

    .line 6
    .line 7
    return-void
.end method

.method public static getFirebaseMessagingService(Landroid/app/Service;)Lcom/google/firebase/messaging/FirebaseMessagingService;
    .registers 2

    .line 1
    new-instance v0, Lcom/engagelab/privates/push/platform/google/callback/MTGoogleCallbackImp;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/engagelab/privates/push/platform/google/callback/MTGoogleCallbackImp;-><init>(Landroid/app/Service;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/engagelab/privates/push/platform/google/callback/MTGoogleCallbackImp;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/engagelab/privates/push/platform/google/callback/MTGoogleCallbackImp;-><init>(Landroid/app/Service;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/engagelab/privates/push/platform/google/callback/MTGoogleCallback;->mtGoogleCallbackImp:Lcom/engagelab/privates/push/platform/google/callback/MTGoogleCallbackImp;

    .line 10
    .line 11
    return-void
.end method

.method public onMessageReceived(Lcom/google/firebase/messaging/w;)V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/engagelab/privates/push/platform/google/callback/MTGoogleCallback;->mtGoogleCallbackImp:Lcom/engagelab/privates/push/platform/google/callback/MTGoogleCallbackImp;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/engagelab/privates/push/platform/google/callback/MTGoogleCallbackImp;->onMessageReceived(Lcom/google/firebase/messaging/w;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catchall_6
    move-exception p1

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "onMessageReceived failed "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "MTGoogleCallback"

    .line 16
    .line 17
    invoke-static {p1, v0, v1}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onNewToken(Ljava/lang/String;)V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/engagelab/privates/push/platform/google/callback/MTGoogleCallback;->mtGoogleCallbackImp:Lcom/engagelab/privates/push/platform/google/callback/MTGoogleCallbackImp;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/engagelab/privates/push/platform/google/callback/MTGoogleCallbackImp;->onNewToken(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catchall_6
    move-exception p1

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "onNewToken failed "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "MTGoogleCallback"

    .line 16
    .line 17
    invoke-static {p1, v0, v1}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
