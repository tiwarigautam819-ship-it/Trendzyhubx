###### Class com.engagelab.privates.inapp.MTInApp (com.engagelab.privates.inapp.MTInApp)
.class public Lcom/engagelab/privates/inapp/MTInApp;
.super Lcom/engagelab/privates/common/observer/MTObserver;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/engagelab/privates/common/constants/MTCommonConstants;->getLogTag()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "INAPP"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lcom/engagelab/privates/inapp/MTInApp;->a:Ljava/lang/String;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/engagelab/privates/common/observer/MTObserver;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 5

    .line 1
    const/16 v0, 0x3ed

    .line 2
    .line 3
    if-eq p2, v0, :cond_3e

    .line 4
    .line 5
    const/16 v0, 0x3ee

    .line 6
    .line 7
    if-eq p2, v0, :cond_35

    .line 8
    .line 9
    const/16 v0, 0x3f5

    .line 10
    .line 11
    if-eq p2, v0, :cond_2d

    .line 12
    .line 13
    const/16 v0, 0x3f6

    .line 14
    .line 15
    if-eq p2, v0, :cond_2d

    .line 16
    .line 17
    const/16 v0, 0x3f9

    .line 18
    .line 19
    if-eq p2, v0, :cond_2d

    .line 20
    .line 21
    const/16 v0, 0x3fa

    .line 22
    .line 23
    if-eq p2, v0, :cond_2d

    .line 24
    .line 25
    const/16 v0, 0x7ca

    .line 26
    .line 27
    if-eq p2, v0, :cond_35

    .line 28
    .line 29
    const/16 v0, 0x7cb

    .line 30
    .line 31
    if-eq p2, v0, :cond_3e

    .line 32
    .line 33
    const/16 v0, 0xce8

    .line 34
    .line 35
    if-eq p2, v0, :cond_2d

    .line 36
    .line 37
    packed-switch p2, :pswitch_data_48

    .line 38
    .line 39
    .line 40
    sget-object v0, Lcom/engagelab/privates/inapp/MTInApp;->a:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {p1, v0, p2, p3}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessage(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_2d
    :pswitch_2d
    invoke-static {}, Lcom/engagelab/privates/common/u;->a()Lcom/engagelab/privates/common/u;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0, p1, p2, p3}, Lcom/engagelab/privates/common/u;->a(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_35
    invoke-static {}, Lcom/engagelab/privates/common/u;->a()Lcom/engagelab/privates/common/u;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    const/4 p2, 0x0

    .line 59
    invoke-virtual {p1, p2}, Lcom/engagelab/privates/common/u;->a(Z)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_3e
    invoke-static {}, Lcom/engagelab/privates/common/u;->a()Lcom/engagelab/privates/common/u;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const/4 p2, 0x1

    .line 68
    invoke-virtual {p1, p2}, Lcom/engagelab/privates/common/u;->a(Z)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    nop

    .line 73
    :pswitch_data_48
    .packed-switch 0xfa0
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
    .end packed-switch
.end method

.method public getThreadName()[Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/engagelab/privates/inapp/MTInApp;->a:Ljava/lang/String;

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public handleDelayMessage(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 6

    .line 1
    const/16 v0, 0xfa2

    .line 2
    .line 3
    if-eq p2, v0, :cond_9

    .line 4
    .line 5
    const/16 v0, 0xfa5

    .line 6
    .line 7
    if-eq p2, v0, :cond_9

    .line 8
    .line 9
    return-void

    .line 10
    :cond_9
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-ne v0, v1, :cond_1f

    .line 23
    .line 24
    invoke-static {}, Lcom/engagelab/privates/common/u;->a()Lcom/engagelab/privates/common/u;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0, p1, p2, p3}, Lcom/engagelab/privates/common/u;->a(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1f
    invoke-static {p1, p2, p3}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToMainProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public handleMessage(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 5

    .line 1
    const/16 v0, 0x3b

    .line 2
    .line 3
    if-eq p2, v0, :cond_1c

    .line 4
    .line 5
    const/16 v0, 0xed3

    .line 6
    .line 7
    if-eq p2, v0, :cond_14

    .line 8
    .line 9
    packed-switch p2, :pswitch_data_24

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :pswitch_c
    invoke-static {}, Lcom/engagelab/privates/common/u;->a()Lcom/engagelab/privates/common/u;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p1, p2, p3}, Lcom/engagelab/privates/common/u;->b(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_14
    invoke-static {}, Lcom/engagelab/privates/common/u;->a()Lcom/engagelab/privates/common/u;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p2, p1, p3}, Lcom/engagelab/privates/common/u;->b(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1c
    invoke-static {}, Lcom/engagelab/privates/common/u;->a()Lcom/engagelab/privates/common/u;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p2, p1, p3}, Lcom/engagelab/privates/common/u;->c(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_data_24
    .packed-switch 0x1384
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

.method public isSupport(I)Z
    .registers 3

    .line 1
    const/16 v0, 0x3b

    .line 2
    .line 3
    if-eq p1, v0, :cond_34

    .line 4
    .line 5
    const/16 v0, 0xce8

    .line 6
    .line 7
    if-eq p1, v0, :cond_34

    .line 8
    .line 9
    const/16 v0, 0xed3

    .line 10
    .line 11
    if-eq p1, v0, :cond_34

    .line 12
    .line 13
    const/16 v0, 0x3ed

    .line 14
    .line 15
    if-eq p1, v0, :cond_34

    .line 16
    .line 17
    const/16 v0, 0x3ee

    .line 18
    .line 19
    if-eq p1, v0, :cond_34

    .line 20
    .line 21
    const/16 v0, 0x3f5

    .line 22
    .line 23
    if-eq p1, v0, :cond_34

    .line 24
    .line 25
    const/16 v0, 0x3f6

    .line 26
    .line 27
    if-eq p1, v0, :cond_34

    .line 28
    .line 29
    const/16 v0, 0x3f9

    .line 30
    .line 31
    if-eq p1, v0, :cond_34

    .line 32
    .line 33
    const/16 v0, 0x3fa

    .line 34
    .line 35
    if-eq p1, v0, :cond_34

    .line 36
    .line 37
    const/16 v0, 0x7ca

    .line 38
    .line 39
    if-eq p1, v0, :cond_34

    .line 40
    .line 41
    const/16 v0, 0x7cb

    .line 42
    .line 43
    if-eq p1, v0, :cond_34

    .line 44
    .line 45
    packed-switch p1, :pswitch_data_36

    .line 46
    .line 47
    .line 48
    packed-switch p1, :pswitch_data_4c

    .line 49
    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    return p1

    .line 53
    :cond_34
    :pswitch_34
    const/4 p1, 0x1

    .line 54
    return p1

    .line 55
    :pswitch_data_36
    .packed-switch 0xfa0
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
    .end packed-switch

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    :pswitch_data_4c
    .packed-switch 0x1384
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
    .end packed-switch
.end method
