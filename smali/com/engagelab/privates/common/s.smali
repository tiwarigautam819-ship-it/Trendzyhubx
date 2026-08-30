###### Class com.engagelab.privates.common.s (com.engagelab.privates.common.s)
.class public Lcom/engagelab/privates/common/s;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# direct methods
.method public static a(Landroid/content/Context;[B)I
    .registers 8

    .line 1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 3
    invoke-static {p0, v0}, Lcom/engagelab/privates/common/r;->b(Landroid/content/Context;I)V

    const-string v1, "MTCoreProtocol"

    if-eqz v0, :cond_4b

    const/16 v2, 0x6c

    if-eq v0, v2, :cond_31

    .line 4
    invoke-static {p1}, Lcom/engagelab/privates/common/utils/StringUtil;->getTlv2(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p0

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "login failed code:"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", message:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_31
    const-wide/16 v2, 0x0

    .line 6
    invoke-static {p0, v2, v3}, Lcom/engagelab/privates/common/r;->b(Landroid/content/Context;J)V

    .line 7
    const-string p1, ""

    invoke-static {p0, p1}, Lcom/engagelab/privates/common/r;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    invoke-static {p0, p1}, Lcom/engagelab/privates/common/r;->b(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 9
    invoke-static {p0, p1}, Lcom/engagelab/privates/common/r;->d(Landroid/content/Context;I)V

    .line 10
    invoke-static {p0, v2, v3}, Lcom/engagelab/privates/common/r;->a(Landroid/content/Context;J)V

    const-string p0, "onLoginFailed, will re-register"

    .line 11
    invoke-static {v1, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 12
    :cond_4b
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 13
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 14
    invoke-static {p1}, Lcom/engagelab/privates/common/utils/StringUtil;->getTlv2(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 16
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 17
    invoke-static {p0, v2}, Lcom/engagelab/privates/common/r;->d(Landroid/content/Context;I)V

    int-to-long v4, v3

    .line 18
    invoke-static {p0, v4, v5}, Lcom/engagelab/privates/common/r;->a(Landroid/content/Context;J)V

    .line 19
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "onLoginSuccess seedId:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", serverTime:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static a()Ljava/lang/String;
    .registers 9

    .line 37
    invoke-static {}, Lcom/engagelab/privates/common/observer/MTObservable;->getInstance()Lcom/engagelab/privates/common/observer/MTObservable;

    move-result-object v0

    iget-object v0, v0, Lcom/engagelab/privates/common/observer/MTObservable;->observeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/engagelab/privates/common/observer/MTObserver;

    .line 38
    invoke-virtual {v3}, Lcom/engagelab/privates/common/observer/MTObserver;->isSdk()Z

    move-result v4

    if-nez v4, :cond_1f

    goto :goto_c

    .line 39
    :cond_1f
    invoke-virtual {v3}, Lcom/engagelab/privates/common/observer/MTObserver;->getSdkPriority()I

    move-result v3

    if-ge v2, v3, :cond_c

    move v2, v3

    goto :goto_c

    .line 40
    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    move v4, v3

    :goto_2e
    if-gt v4, v2, :cond_7e

    .line 41
    invoke-static {}, Lcom/engagelab/privates/common/observer/MTObservable;->getInstance()Lcom/engagelab/privates/common/observer/MTObservable;

    move-result-object v5

    iget-object v5, v5, Lcom/engagelab/privates/common/observer/MTObservable;->observeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/engagelab/privates/common/observer/MTObserver;

    .line 42
    invoke-virtual {v6}, Lcom/engagelab/privates/common/observer/MTObserver;->isSdk()Z

    move-result v7

    if-nez v7, :cond_4d

    goto :goto_3a

    .line 43
    :cond_4d
    invoke-virtual {v6}, Lcom/engagelab/privates/common/observer/MTObserver;->getSdkPriority()I

    move-result v7

    if-eq v7, v4, :cond_54

    goto :goto_3a

    .line 44
    :cond_54
    invoke-virtual {v6}, Lcom/engagelab/privates/common/observer/MTObserver;->getSdkVersion()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\."

    .line 45
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 46
    aget-object v7, v6, v1

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    shl-int/lit8 v7, v7, 0x10

    aget-object v8, v6, v3

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    shl-int/lit8 v8, v8, 0x8

    add-int/2addr v7, v8

    const/4 v8, 0x2

    aget-object v6, v6, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v6, v7

    .line 47
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3a

    :cond_7b
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    .line 48
    :cond_7e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, "$$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "$$$$"

    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-static {p0}, Lcom/engagelab/privates/common/global/MTGlobal;->getAppChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-static {}, Lcom/engagelab/privates/common/s;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-static {p0}, Lcom/engagelab/privates/common/utils/SystemUtil;->isSystemApp(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-static {p0}, Lcom/engagelab/privates/common/utils/DeviceUtil;->getResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    sget-object p0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;[B)I
    .registers 8

    .line 1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 3
    invoke-static {p0, v0}, Lcom/engagelab/privates/common/r;->c(Landroid/content/Context;I)V

    const-string v1, "MTCoreProtocol"

    if-eqz v0, :cond_2d

    .line 4
    invoke-static {p1}, Lcom/engagelab/privates/common/utils/StringUtil;->getTlv2(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p0

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "onRegisterFailed code:"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", message:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 6
    :cond_2d
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    .line 7
    invoke-static {p1}, Lcom/engagelab/privates/common/utils/StringUtil;->getTlv2(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-static {p1}, Lcom/engagelab/privates/common/utils/StringUtil;->getTlv2(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {p0, v2, v3}, Lcom/engagelab/privates/common/r;->b(Landroid/content/Context;J)V

    .line 10
    invoke-static {p0, p1}, Lcom/engagelab/privates/common/r;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 11
    invoke-static {p0, v4}, Lcom/engagelab/privates/common/r;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 12
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v5, "onRegisterSuccess uid:"

    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", registrationId:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", password:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static b()Ljava/lang/String;
    .registers 7

    .line 21
    invoke-static {}, Lcom/engagelab/privates/common/observer/MTObservable;->getInstance()Lcom/engagelab/privates/common/observer/MTObservable;

    move-result-object v0

    iget-object v0, v0, Lcom/engagelab/privates/common/observer/MTObservable;->observeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/engagelab/privates/common/observer/MTObserver;

    .line 22
    invoke-virtual {v3}, Lcom/engagelab/privates/common/observer/MTObserver;->isSdk()Z

    move-result v4

    if-nez v4, :cond_1f

    goto :goto_c

    .line 23
    :cond_1f
    invoke-virtual {v3}, Lcom/engagelab/privates/common/observer/MTObserver;->getSdkPriority()I

    move-result v3

    if-ge v2, v3, :cond_c

    move v2, v3

    goto :goto_c

    .line 24
    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v3, v1

    :goto_2d
    if-gt v3, v2, :cond_63

    .line 25
    invoke-static {}, Lcom/engagelab/privates/common/observer/MTObservable;->getInstance()Lcom/engagelab/privates/common/observer/MTObservable;

    move-result-object v4

    iget-object v4, v4, Lcom/engagelab/privates/common/observer/MTObservable;->observeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_39
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_60

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/engagelab/privates/common/observer/MTObserver;

    .line 26
    invoke-virtual {v5}, Lcom/engagelab/privates/common/observer/MTObserver;->isSdk()Z

    move-result v6

    if-nez v6, :cond_4c

    goto :goto_39

    .line 27
    :cond_4c
    invoke-virtual {v5}, Lcom/engagelab/privates/common/observer/MTObserver;->getSdkPriority()I

    move-result v6

    if-eq v6, v3, :cond_53

    goto :goto_39

    .line 28
    :cond_53
    invoke-virtual {v5}, Lcom/engagelab/privates/common/observer/MTObserver;->getSdkVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "|"

    .line 29
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_39

    :cond_60
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 30
    :cond_63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 13
    invoke-static {p0}, Lcom/engagelab/privates/common/global/MTGlobal;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 14
    const-string v0, "0$$"

    const-string v1, "$$ $$ $$ $$ "

    .line 15
    invoke-static {v0, p0, v1}, Lq2/x;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c()S
    .registers 6

    .line 4
    invoke-static {}, Lcom/engagelab/privates/common/observer/MTObservable;->getInstance()Lcom/engagelab/privates/common/observer/MTObservable;

    move-result-object v0

    iget-object v0, v0, Lcom/engagelab/privates/common/observer/MTObservable;->observeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/engagelab/privates/common/observer/MTObserver;

    .line 5
    invoke-virtual {v3}, Lcom/engagelab/privates/common/observer/MTObserver;->isSdk()Z

    move-result v4

    if-nez v4, :cond_1f

    goto :goto_c

    .line 6
    :cond_1f
    invoke-virtual {v3}, Lcom/engagelab/privates/common/observer/MTObserver;->getSdkPriority()I

    move-result v3

    if-ge v2, v3, :cond_c

    move v2, v3

    goto :goto_c

    :cond_27
    move v0, v1

    :goto_28
    if-gt v1, v2, :cond_58

    .line 7
    invoke-static {}, Lcom/engagelab/privates/common/observer/MTObservable;->getInstance()Lcom/engagelab/privates/common/observer/MTObservable;

    move-result-object v3

    iget-object v3, v3, Lcom/engagelab/privates/common/observer/MTObservable;->observeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_34
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_55

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/engagelab/privates/common/observer/MTObserver;

    .line 8
    invoke-virtual {v4}, Lcom/engagelab/privates/common/observer/MTObserver;->isSdk()Z

    move-result v5

    if-nez v5, :cond_47

    goto :goto_34

    .line 9
    :cond_47
    invoke-virtual {v4}, Lcom/engagelab/privates/common/observer/MTObserver;->getSdkPriority()I

    move-result v5

    if-eq v5, v1, :cond_4e

    goto :goto_34

    .line 10
    :cond_4e
    invoke-virtual {v4}, Lcom/engagelab/privates/common/observer/MTObserver;->getSdkFlag()S

    move-result v4

    or-int/2addr v0, v4

    int-to-short v0, v0

    goto :goto_34

    :cond_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_58
    return v0
.end method

.method public static c(Landroid/content/Context;)[B
    .registers 2

    .line 1
    new-instance p0, Lcom/engagelab/privates/core/api/Outputer;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/engagelab/privates/core/api/Outputer;-><init>(I)V

    .line 2
    invoke-static {}, Lcom/engagelab/privates/common/s;->c()S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/engagelab/privates/core/api/Outputer;->writeU8(I)V

    .line 3
    invoke-virtual {p0}, Lcom/engagelab/privates/core/api/Outputer;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;)[B
    .registers 12

    .line 1
    invoke-static {p0}, Lcom/engagelab/privates/common/r;->g(Landroid/content/Context;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/engagelab/privates/common/utils/StringUtil;->toMD5(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Lcom/engagelab/privates/common/s;->a()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {p0}, Lcom/engagelab/privates/common/global/MTGlobal;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {}, Lcom/engagelab/privates/common/s;->c()S

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-static {p0}, Lcom/engagelab/privates/common/r;->h(Landroid/content/Context;)B

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    invoke-static {}, Lcom/engagelab/privates/common/global/MTGlobal;->getNetworkType()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    invoke-static {p0}, Lcom/engagelab/privates/common/cache/MTCommonConfig;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    invoke-static {p0}, Lcom/engagelab/privates/common/global/MTGlobal;->getCountryCode(Landroid/content/Context;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    new-instance v8, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v9, "login with uid:"

    .line 40
    .line 41
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p0}, Lcom/engagelab/privates/common/r;->r(Landroid/content/Context;)J

    .line 45
    .line 46
    .line 47
    move-result-wide v9

    .line 48
    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v9, ", registrationId:"

    .line 52
    .line 53
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-static {p0}, Lcom/engagelab/privates/common/r;->j(Landroid/content/Context;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p0, ", platform:"

    .line 64
    .line 65
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    const-string v8, "MTCoreProtocol"

    .line 76
    .line 77
    invoke-static {v8, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    const-string v6, ""

    .line 97
    .line 98
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    array-length v9, p0

    .line 111
    add-int/lit8 v9, v9, 0x4

    .line 112
    .line 113
    array-length v10, v0

    .line 114
    add-int/2addr v9, v10

    .line 115
    array-length v10, v1

    .line 116
    add-int/2addr v9, v10

    .line 117
    add-int/lit8 v9, v9, 0x7

    .line 118
    .line 119
    array-length v10, v2

    .line 120
    add-int/2addr v9, v10

    .line 121
    array-length v10, v8

    .line 122
    add-int/2addr v9, v10

    .line 123
    array-length v10, v7

    .line 124
    add-int/2addr v9, v10

    .line 125
    array-length v10, v6

    .line 126
    add-int/2addr v9, v10

    .line 127
    new-instance v10, Lcom/engagelab/privates/core/api/Outputer;

    .line 128
    .line 129
    invoke-direct {v10, v9}, Lcom/engagelab/privates/core/api/Outputer;-><init>(I)V

    .line 130
    .line 131
    .line 132
    const/16 v9, 0x61

    .line 133
    .line 134
    invoke-virtual {v10, v9}, Lcom/engagelab/privates/core/api/Outputer;->writeU8(I)V

    .line 135
    .line 136
    .line 137
    const/4 v9, 0x0

    .line 138
    invoke-virtual {v10, v9}, Lcom/engagelab/privates/core/api/Outputer;->writeU8(I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v10, v9}, Lcom/engagelab/privates/core/api/Outputer;->writeU16(I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v10, p0}, Lcom/engagelab/privates/core/api/Outputer;->writeByteArrayIncludeLength([B)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v10, v0}, Lcom/engagelab/privates/core/api/Outputer;->writeByteArrayIncludeLength([B)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v10, v1}, Lcom/engagelab/privates/core/api/Outputer;->writeByteArrayIncludeLength([B)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v10, v9}, Lcom/engagelab/privates/core/api/Outputer;->writeU8(I)V

    .line 154
    .line 155
    .line 156
    int-to-long v0, v3

    .line 157
    invoke-virtual {v10, v0, v1}, Lcom/engagelab/privates/core/api/Outputer;->writeU32(J)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v10, v4}, Lcom/engagelab/privates/core/api/Outputer;->writeU8(I)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v10, v5}, Lcom/engagelab/privates/core/api/Outputer;->writeU8(I)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v10, v2}, Lcom/engagelab/privates/core/api/Outputer;->writeByteArrayIncludeLength([B)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v10, v8}, Lcom/engagelab/privates/core/api/Outputer;->writeByteArrayIncludeLength([B)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v10, v7}, Lcom/engagelab/privates/core/api/Outputer;->writeByteArrayIncludeLength([B)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v10, v6}, Lcom/engagelab/privates/core/api/Outputer;->writeByteArrayIncludeLength([B)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v10}, Lcom/engagelab/privates/core/api/Outputer;->toByteArray()[B

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    return-object p0
.end method

.method public static e(Landroid/content/Context;)[B
    .registers 9

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    invoke-static {p0, v0, v1}, Lcom/engagelab/privates/common/r;->b(Landroid/content/Context;J)V

    .line 4
    .line 5
    .line 6
    const-string v2, ""

    .line 7
    .line 8
    invoke-static {p0, v2}, Lcom/engagelab/privates/common/r;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v2}, Lcom/engagelab/privates/common/r;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-static {p0, v3}, Lcom/engagelab/privates/common/r;->d(Landroid/content/Context;I)V

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v0, v1}, Lcom/engagelab/privates/common/r;->a(Landroid/content/Context;J)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v1, " $$ $$"

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, "$$"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-static {p0}, Lcom/engagelab/privates/common/global/MTGlobal;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {p0}, Lcom/engagelab/privates/common/global/MTGlobal;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {p0}, Lcom/engagelab/privates/common/s;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-static {p0}, Lcom/engagelab/privates/common/s;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-static {}, Lcom/engagelab/privates/common/s;->c()S

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    new-instance v6, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v7, "register with clientInfo:"

    .line 70
    .line 71
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v7, ", deviceInfo:"

    .line 78
    .line 79
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    const-string v7, "MTCoreProtocol"

    .line 90
    .line 91
    invoke-static {v7, v6}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    array-length v6, v0

    .line 115
    array-length v7, v1

    .line 116
    add-int/2addr v6, v7

    .line 117
    array-length v7, v4

    .line 118
    add-int/2addr v6, v7

    .line 119
    add-int/lit8 v6, v6, 0x1

    .line 120
    .line 121
    array-length v7, p0

    .line 122
    add-int/2addr v6, v7

    .line 123
    add-int/lit8 v6, v6, 0x4

    .line 124
    .line 125
    array-length v7, v2

    .line 126
    add-int/2addr v6, v7

    .line 127
    new-instance v7, Lcom/engagelab/privates/core/api/Outputer;

    .line 128
    .line 129
    invoke-direct {v7, v6}, Lcom/engagelab/privates/core/api/Outputer;-><init>(I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v7, v0}, Lcom/engagelab/privates/core/api/Outputer;->writeByteArrayIncludeLength([B)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v7, v1}, Lcom/engagelab/privates/core/api/Outputer;->writeByteArrayIncludeLength([B)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v7, v4}, Lcom/engagelab/privates/core/api/Outputer;->writeByteArrayIncludeLength([B)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v7, v3}, Lcom/engagelab/privates/core/api/Outputer;->writeU8(I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v7, p0}, Lcom/engagelab/privates/core/api/Outputer;->writeByteArrayIncludeLength([B)V

    .line 145
    .line 146
    .line 147
    int-to-long v0, v5

    .line 148
    invoke-virtual {v7, v0, v1}, Lcom/engagelab/privates/core/api/Outputer;->writeU32(J)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v7, v2}, Lcom/engagelab/privates/core/api/Outputer;->writeByteArrayIncludeLength([B)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v7}, Lcom/engagelab/privates/core/api/Outputer;->toByteArray()[B

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    return-object p0
.end method
