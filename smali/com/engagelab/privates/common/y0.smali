###### Class com.engagelab.privates.common.y0 (com.engagelab.privates.common.y0)
.class public Lcom/engagelab/privates/common/y0;
.super Lcom/engagelab/privates/common/v0;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static volatile c:Lcom/engagelab/privates/common/y0;


# instance fields
.field public final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/engagelab/privates/common/v0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/engagelab/privates/common/y0;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    return-void
.end method

.method public static b()Lcom/engagelab/privates/common/y0;
    .registers 2

    .line 2
    sget-object v0, Lcom/engagelab/privates/common/y0;->c:Lcom/engagelab/privates/common/y0;

    if-nez v0, :cond_13

    .line 3
    const-class v0, Lcom/engagelab/privates/common/y0;

    monitor-enter v0

    .line 4
    :try_start_7
    new-instance v1, Lcom/engagelab/privates/common/y0;

    invoke-direct {v1}, Lcom/engagelab/privates/common/y0;-><init>()V

    sput-object v1, Lcom/engagelab/privates/common/y0;->c:Lcom/engagelab/privates/common/y0;

    .line 5
    monitor-exit v0

    goto :goto_13

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_10

    throw v1

    .line 6
    :cond_13
    :goto_13
    sget-object v0, Lcom/engagelab/privates/common/y0;->c:Lcom/engagelab/privates/common/y0;

    return-object v0
.end method


# virtual methods
.method public final a(I)I
    .registers 2

    .line 1
    packed-switch p1, :pswitch_data_18

    const/4 p1, 0x0

    return p1

    :pswitch_5
    const/16 p1, 0xbc3

    return p1

    :pswitch_8
    const/16 p1, 0xbc4

    return p1

    :pswitch_b
    const/16 p1, 0xbc5

    return p1

    :pswitch_e
    const/16 p1, 0xbc6

    return p1

    :pswitch_11
    const/16 p1, 0xbc7

    return p1

    :pswitch_14
    const/16 p1, 0xbc8

    return p1

    nop

    :pswitch_data_18
    .packed-switch 0xf90
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)I
    .registers 4

    .line 47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 48
    sget p1, Lcom/engagelab/privates/push/api/MTPushPrivatesApi$Code;->INVALID_TAGS:I

    return p1

    :cond_9
    const-string v0, "^[\u4e00-\u9fa50-9a-zA-Z_!@#$&*+=.|]+$"

    .line 49
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 50
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 52
    sget p1, Lcom/engagelab/privates/push/api/MTPushPrivatesApi$Code;->INVALID_TAGS:I

    return p1

    .line 53
    :cond_1c
    :try_start_1c
    sget-object v0, Lcom/engagelab/privates/common/constants/MTCommonConstants;->UTF_8:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    array-length p1, p1

    const/16 v0, 0x28

    if-le p1, v0, :cond_37

    .line 54
    sget p1, Lcom/engagelab/privates/push/api/MTPushPrivatesApi$Code;->TOO_LONG_TAG:I
    :try_end_29
    .catchall {:try_start_1c .. :try_end_29} :catchall_2a

    return p1

    :catchall_2a
    move-exception p1

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getBytes failed "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "MTTagBusiness"

    .line 56
    invoke-static {p1, v0, v1}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_37
    const/4 p1, 0x0

    return p1
.end method

.method public final a([Ljava/lang/String;)I
    .registers 9

    .line 28
    invoke-virtual {p0}, Lcom/engagelab/privates/common/v0;->a()I

    move-result v0

    if-eqz v0, :cond_7

    return v0

    .line 29
    :cond_7
    array-length v0, p1

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_f

    .line 30
    sget p1, Lcom/engagelab/privates/push/api/MTPushPrivatesApi$Code;->TOO_MANY_TAGS:I

    return p1

    .line 31
    :cond_f
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_13
    if-ge v2, v0, :cond_54

    aget-object v4, p1, v2

    .line 32
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 33
    sget p1, Lcom/engagelab/privates/push/api/MTPushPrivatesApi$Code;->INVALID_TAGS:I

    return p1

    :cond_20
    const-string v5, "^[\u4e00-\u9fa50-9a-zA-Z_!@#$&*+=.|]+$"

    .line 34
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 35
    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 36
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_33

    .line 37
    sget p1, Lcom/engagelab/privates/push/api/MTPushPrivatesApi$Code;->INVALID_TAGS:I

    return p1

    .line 38
    :cond_33
    :try_start_33
    sget-object v5, Lcom/engagelab/privates/common/constants/MTCommonConstants;->UTF_8:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    array-length v4, v4

    const/16 v5, 0x28

    if-le v4, v5, :cond_43

    .line 39
    sget p1, Lcom/engagelab/privates/push/api/MTPushPrivatesApi$Code;->TOO_LONG_TAG:I
    :try_end_40
    .catchall {:try_start_33 .. :try_end_40} :catchall_41

    return p1

    :catchall_41
    move-exception v4

    goto :goto_45

    :cond_43
    add-int/2addr v3, v4

    goto :goto_51

    .line 40
    :goto_45
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getBytes failed "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "MTTagBusiness"

    .line 41
    invoke-static {v4, v5, v6}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_54
    const/16 p1, 0x1388

    if-le v3, p1, :cond_5b

    .line 42
    sget p1, Lcom/engagelab/privates/push/api/MTPushPrivatesApi$Code;->TOO_LONG_TAGS:I

    return p1

    :cond_5b
    return v1
.end method

.method public final a(Landroid/content/Context;IIII[Ljava/lang/String;)Lcom/engagelab/privates/push/api/TagMessage;
    .registers 14

    const-string v0, "MTTagBusiness"

    const-string v1, "sendTagOperation sequence:"

    const/4 v2, 0x0

    if-eqz p5, :cond_d2

    if-nez p4, :cond_b

    goto/16 :goto_d2

    .line 65
    :cond_b
    :try_start_b
    iget-object v3, p0, Lcom/engagelab/privates/common/y0;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 66
    iget-object v3, p0, Lcom/engagelab/privates/common/y0;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 67
    array-length v4, p6

    array-length v5, v3

    add-int/2addr v4, v5

    invoke-static {p6, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 68
    array-length p6, p6

    array-length v5, v3

    const/4 v6, 0x0

    invoke-static {v3, v6, v4, p6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p6, v4

    goto :goto_37

    :catchall_34
    move-exception p1

    goto/16 :goto_c8

    :cond_37
    :goto_37
    if-ge p4, p5, :cond_ad

    .line 69
    iget-object p2, p0, Lcom/engagelab/privates/common/y0;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p2, p5, p6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    add-int/2addr p4, p2

    .line 70
    new-instance p5, Lorg/json/JSONObject;

    invoke-direct {p5}, Lorg/json/JSONObject;-><init>()V

    const-string p6, "platform"

    const-string v3, "a"

    .line 71
    invoke-virtual {p5, p6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p6, "op"

    const-string v3, "get"

    .line 72
    invoke-virtual {p5, p6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p6, "curr"

    .line 73
    invoke-virtual {p5, p6, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 74
    invoke-virtual {p5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    .line 75
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", content:"

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Lcom/engagelab/privates/common/log/MTCommonLog;->toLogString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {v0, p5}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-static {p4}, Lcom/engagelab/privates/common/c1;->b(Ljava/lang/String;)[B

    move-result-object p4

    .line 77
    new-instance p5, Lcom/engagelab/privates/core/api/MTProtocol;

    invoke-direct {p5}, Lcom/engagelab/privates/core/api/MTProtocol;-><init>()V

    int-to-long v3, p3

    .line 78
    invoke-virtual {p5, v3, v4}, Lcom/engagelab/privates/core/api/MTProtocol;->setRid(J)Lcom/engagelab/privates/core/api/MTProtocol;

    move-result-object p3

    const/16 p5, 0x1c

    .line 79
    invoke-virtual {p3, p5}, Lcom/engagelab/privates/core/api/MTProtocol;->setCommand(I)Lcom/engagelab/privates/core/api/MTProtocol;

    move-result-object p3

    .line 80
    invoke-virtual {p3, p2}, Lcom/engagelab/privates/core/api/MTProtocol;->setVersion(I)Lcom/engagelab/privates/core/api/MTProtocol;

    move-result-object p2

    .line 81
    invoke-virtual {p2, p4}, Lcom/engagelab/privates/core/api/MTProtocol;->setBody([B)Lcom/engagelab/privates/core/api/MTProtocol;

    move-result-object p2

    sget-object p3, Lcom/engagelab/privates/push/MTPush;->a:Ljava/lang/String;

    .line 82
    invoke-virtual {p2, p3}, Lcom/engagelab/privates/core/api/MTProtocol;->setThreadName(Ljava/lang/String;)Lcom/engagelab/privates/core/api/MTProtocol;

    move-result-object p2

    .line 83
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string p4, "protocol"

    .line 84
    invoke-virtual {p3, p4, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 p2, 0x8ae

    .line 85
    invoke-static {p1, p2, p3}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    return-object v2

    .line 86
    :cond_ad
    iget-object p1, p0, Lcom/engagelab/privates/common/y0;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance p1, Lcom/engagelab/privates/push/api/TagMessage;

    invoke-direct {p1}, Lcom/engagelab/privates/push/api/TagMessage;-><init>()V

    invoke-virtual {p1, p3}, Lcom/engagelab/privates/push/api/TagMessage;->setSequence(I)Lcom/engagelab/privates/push/api/TagMessage;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/engagelab/privates/push/api/TagMessage;->setCode(I)Lcom/engagelab/privates/push/api/TagMessage;

    move-result-object p1

    invoke-virtual {p1, p6}, Lcom/engagelab/privates/push/api/TagMessage;->setTags([Ljava/lang/String;)Lcom/engagelab/privates/push/api/TagMessage;

    move-result-object p1
    :try_end_c7
    .catchall {:try_start_b .. :try_end_c7} :catchall_34

    return-object p1

    .line 88
    :goto_c8
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "onTagQueryAll failed "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-static {p1, p2, v0}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_d2
    :goto_d2
    return-object v2
.end method

.method public a(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 5

    .line 2
    :try_start_0
    const-class v0, Lcom/engagelab/privates/push/api/TagMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "tag"

    .line 3
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Lcom/engagelab/privates/push/api/TagMessage;

    if-nez p3, :cond_14

    goto :goto_1e

    .line 4
    :cond_14
    invoke-static {p1}, Lcom/engagelab/privates/common/global/MTGlobal;->getCommonReceiver(Landroid/content/Context;)Lcom/engagelab/privates/common/component/MTCommonReceiver;

    move-result-object v0

    if-nez v0, :cond_1b

    goto :goto_1e

    :cond_1b
    packed-switch p2, :pswitch_data_32

    :goto_1e
    return-void

    .line 5
    :pswitch_1f
    invoke-virtual {v0, p1, p3}, Lcom/engagelab/privates/common/component/MTCommonReceiver;->onTagMessage(Landroid/content/Context;Lcom/engagelab/privates/push/api/TagMessage;)V
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_23

    return-void

    :catchall_23
    move-exception p1

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "processMainMessage failed "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p3, "MTTagBusiness"

    .line 7
    invoke-static {p1, p2, p3}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_32
    .packed-switch 0xbc3
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
    .end packed-switch
.end method

.method public a(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 8

    const-string v0, "MTTagBusiness"

    const-string v1, "onAliasOperationFailed sequence:"

    :try_start_4
    const-string v2, "protocol"

    .line 12
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/engagelab/privates/core/api/MTProtocol;

    if-nez p2, :cond_f

    return-void

    .line 13
    :cond_f
    invoke-virtual {p2}, Lcom/engagelab/privates/core/api/MTProtocol;->getRid()J

    move-result-wide v2

    long-to-int p2, v2

    .line 14
    iget-object v2, p0, Lcom/engagelab/privates/common/y0;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 15
    iget-object v3, p0, Lcom/engagelab/privates/common/y0;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance v3, Lcom/engagelab/privates/push/api/TagMessage;

    invoke-direct {v3}, Lcom/engagelab/privates/push/api/TagMessage;-><init>()V

    invoke-virtual {v3, p2}, Lcom/engagelab/privates/push/api/TagMessage;->setSequence(I)Lcom/engagelab/privates/push/api/TagMessage;

    move-result-object v3

    sget v4, Lcom/engagelab/privates/push/api/MTPushPrivatesApi$Code;->TIMEOUT:I

    invoke-virtual {v3, v4}, Lcom/engagelab/privates/push/api/TagMessage;->setCode(I)Lcom/engagelab/privates/push/api/TagMessage;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/engagelab/privates/push/api/TagMessage;->setTags([Ljava/lang/String;)Lcom/engagelab/privates/push/api/TagMessage;

    move-result-object v2

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", tagMessage:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/engagelab/privates/push/api/TagMessage;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/engagelab/privates/common/log/MTCommonLog;->debugOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", tagMessage code:"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/engagelab/privates/push/api/TagMessage;->getCode()I

    move-result p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v1, "tag"

    .line 20
    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 v1, 0xbc3

    .line 21
    invoke-static {p1, v1, p2}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToMainProcess(Landroid/content/Context;ILandroid/os/Bundle;)V
    :try_end_81
    .catchall {:try_start_4 .. :try_end_81} :catchall_82

    return-void

    :catchall_82
    move-exception p1

    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "onAliasOperationFailed failed "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-static {p1, p2, v0}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lorg/json/JSONArray;)[Ljava/lang/String;
    .registers 5

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 61
    :cond_4
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 62
    :goto_b
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 63
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 64
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1a
    return-object v0
.end method

.method public final b(Ljava/lang/String;)I
    .registers 5

    .line 86
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_64

    goto :goto_4e

    :sswitch_d
    const-string v0, "valid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    goto :goto_4e

    :cond_16
    const/4 v2, 0x5

    goto :goto_4e

    :sswitch_18
    const-string v0, "clean"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_21

    goto :goto_4e

    :cond_21
    const/4 v2, 0x4

    goto :goto_4e

    :sswitch_23
    const-string v0, "set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2c

    goto :goto_4e

    :cond_2c
    const/4 v2, 0x3

    goto :goto_4e

    :sswitch_2e
    const-string v0, "get"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_37

    goto :goto_4e

    :cond_37
    const/4 v2, 0x2

    goto :goto_4e

    :sswitch_39
    const-string v0, "del"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_42

    goto :goto_4e

    :cond_42
    const/4 v2, 0x1

    goto :goto_4e

    :sswitch_44
    const-string v0, "add"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4d

    goto :goto_4e

    :cond_4d
    move v2, v1

    :goto_4e
    packed-switch v2, :pswitch_data_7e

    return v1

    :pswitch_52
    const/16 p1, 0xbc6

    return p1

    :pswitch_55
    const/16 p1, 0xbc7

    return p1

    :pswitch_58
    const/16 p1, 0xbc5

    return p1

    :pswitch_5b
    const/16 p1, 0xbc8

    return p1

    :pswitch_5e
    const/16 p1, 0xbc4

    return p1

    :pswitch_61
    const/16 p1, 0xbc3

    return p1

    :sswitch_data_64
    .sparse-switch
        0x178a1 -> :sswitch_44
        0x1840b -> :sswitch_39
        0x18f56 -> :sswitch_2e
        0x1bc62 -> :sswitch_23
        0x5a5b649 -> :sswitch_18
        0x6ac8ffc -> :sswitch_d
    .end sparse-switch

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_61
        :pswitch_5e
        :pswitch_5b
        :pswitch_58
        :pswitch_55
        :pswitch_52
    .end packed-switch
.end method

.method public final b(I)Ljava/lang/String;
    .registers 2

    .line 1
    packed-switch p1, :pswitch_data_18

    const-string p1, ""

    return-object p1

    :pswitch_6
    const-string p1, "add"

    return-object p1

    :pswitch_9
    const-string p1, "del"

    return-object p1

    :pswitch_c
    const-string p1, "set"

    return-object p1

    :pswitch_f
    const-string p1, "valid"

    return-object p1

    :pswitch_12
    const-string p1, "clean"

    return-object p1

    :pswitch_15
    const-string p1, "get"

    return-object p1

    :pswitch_data_18
    .packed-switch 0xf90
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public final b([Ljava/lang/String;)Lorg/json/JSONArray;
    .registers 6

    .line 87
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 88
    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_11

    aget-object v3, p1, v2

    .line 89
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_11
    return-object v0
.end method

.method public b(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 13

    const-string v0, "MTTagBusiness"

    const-string v1, "sendAliasOperation sequence:"

    :try_start_4
    const-string v2, "sequence"

    .line 7
    invoke-virtual {p3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 8
    invoke-virtual {p0, p2}, Lcom/engagelab/privates/common/y0;->b(I)Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {p0, p2}, Lcom/engagelab/privates/common/y0;->a(I)I

    move-result v4

    .line 10
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "platform"

    const-string v7, "a"

    .line 11
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "op"

    .line 12
    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_54

    const/4 v6, 0x1

    const-string v7, "tags"

    const-string v8, "tag"

    packed-switch p2, :pswitch_data_11c

    :pswitch_2b
    goto/16 :goto_a5

    .line 13
    :pswitch_2d
    :try_start_2d
    invoke-virtual {p3, v8}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 14
    invoke-virtual {p0, p2}, Lcom/engagelab/privates/common/y0;->a([Ljava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_57

    .line 15
    new-instance v1, Lcom/engagelab/privates/push/api/TagMessage;

    invoke-direct {v1}, Lcom/engagelab/privates/push/api/TagMessage;-><init>()V

    invoke-virtual {v1, v2}, Lcom/engagelab/privates/push/api/TagMessage;->setSequence(I)Lcom/engagelab/privates/push/api/TagMessage;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/engagelab/privates/push/api/TagMessage;->setCode(I)Lcom/engagelab/privates/push/api/TagMessage;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/engagelab/privates/push/api/TagMessage;->setTags([Ljava/lang/String;)Lcom/engagelab/privates/push/api/TagMessage;

    move-result-object p2

    .line 16
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 17
    invoke-virtual {p3, v8, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 18
    invoke-static {p1, v4, p3}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToMainProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    return-void

    :catchall_54
    move-exception p1

    goto/16 :goto_110

    .line 19
    :cond_57
    iget-object p3, p0, Lcom/engagelab/privates/common/y0;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v4, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-virtual {p0, p2}, Lcom/engagelab/privates/common/y0;->b([Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    invoke-virtual {v5, v7, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_a5

    .line 21
    :pswitch_68
    invoke-virtual {p3, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 22
    invoke-virtual {p0, p2}, Lcom/engagelab/privates/common/y0;->a(Ljava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_8f

    .line 23
    new-instance v1, Lcom/engagelab/privates/push/api/TagMessage;

    invoke-direct {v1}, Lcom/engagelab/privates/push/api/TagMessage;-><init>()V

    invoke-virtual {v1, v2}, Lcom/engagelab/privates/push/api/TagMessage;->setSequence(I)Lcom/engagelab/privates/push/api/TagMessage;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/engagelab/privates/push/api/TagMessage;->setCode(I)Lcom/engagelab/privates/push/api/TagMessage;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/engagelab/privates/push/api/TagMessage;->setQueryTag(Ljava/lang/String;)Lcom/engagelab/privates/push/api/TagMessage;

    move-result-object p2

    .line 24
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 25
    invoke-virtual {p3, v8, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 26
    invoke-static {p1, v4, p3}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToMainProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    return-void

    .line 27
    :cond_8f
    iget-object p3, p0, Lcom/engagelab/privates/common/y0;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v4, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-virtual {v5, v7, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_a5

    :pswitch_a0
    const-string p2, "curr"

    .line 29
    invoke-virtual {v5, p2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 30
    :goto_a5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", content:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/engagelab/privates/common/log/MTCommonLog;->toLogString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->debugOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", op:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 33
    invoke-static {p2}, Lcom/engagelab/privates/common/c1;->b(Ljava/lang/String;)[B

    move-result-object p2

    if-nez p2, :cond_e2

    return-void

    .line 34
    :cond_e2
    new-instance p3, Lcom/engagelab/privates/core/api/MTProtocol;

    invoke-direct {p3}, Lcom/engagelab/privates/core/api/MTProtocol;-><init>()V

    int-to-long v1, v2

    .line 35
    invoke-virtual {p3, v1, v2}, Lcom/engagelab/privates/core/api/MTProtocol;->setRid(J)Lcom/engagelab/privates/core/api/MTProtocol;

    move-result-object p3

    const/16 v1, 0x1c

    .line 36
    invoke-virtual {p3, v1}, Lcom/engagelab/privates/core/api/MTProtocol;->setCommand(I)Lcom/engagelab/privates/core/api/MTProtocol;

    move-result-object p3

    .line 37
    invoke-virtual {p3, v6}, Lcom/engagelab/privates/core/api/MTProtocol;->setVersion(I)Lcom/engagelab/privates/core/api/MTProtocol;

    move-result-object p3

    .line 38
    invoke-virtual {p3, p2}, Lcom/engagelab/privates/core/api/MTProtocol;->setBody([B)Lcom/engagelab/privates/core/api/MTProtocol;

    move-result-object p2

    sget-object p3, Lcom/engagelab/privates/push/MTPush;->a:Ljava/lang/String;

    .line 39
    invoke-virtual {p2, p3}, Lcom/engagelab/privates/core/api/MTProtocol;->setThreadName(Ljava/lang/String;)Lcom/engagelab/privates/core/api/MTProtocol;

    move-result-object p2

    .line 40
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string v1, "protocol"

    .line 41
    invoke-virtual {p3, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 p2, 0x8ae

    .line 42
    invoke-static {p1, p2, p3}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V
    :try_end_10f
    .catchall {:try_start_2d .. :try_end_10f} :catchall_54

    return-void

    .line 43
    :goto_110
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "sendTagOperation failed "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-static {p1, p2, v0}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_11c
    .packed-switch 0xf90
        :pswitch_a0
        :pswitch_2b
        :pswitch_68
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
    .end packed-switch
.end method

.method public b(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 15

    const-string v1, "MTTagBusiness"

    const-string v0, "onTagOperationSuccess tagMessage:"

    const-string v2, "onTagOperationSuccess sequence:"

    :try_start_6
    const-string v3, "protocol"

    .line 49
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/engagelab/privates/core/api/MTProtocol;

    if-nez p2, :cond_13

    move-object v5, p0

    goto/16 :goto_12a

    .line 50
    :cond_13
    invoke-virtual {p2}, Lcom/engagelab/privates/core/api/MTProtocol;->getRid()J

    move-result-wide v3

    long-to-int v8, v3

    .line 51
    invoke-virtual {p2}, Lcom/engagelab/privates/core/api/MTProtocol;->getBody()[B

    move-result-object p2

    .line 52
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 53
    invoke-static {p2}, Lcom/engagelab/privates/common/utils/StringUtil;->getTlv2(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p2

    .line 54
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 55
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", content:"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/engagelab/privates/common/log/MTCommonLog;->toLogString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->debugOnly(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "code"

    .line 56
    invoke-virtual {v3, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 57
    new-instance p2, Lcom/engagelab/privates/push/api/TagMessage;

    invoke-direct {p2}, Lcom/engagelab/privates/push/api/TagMessage;-><init>()V

    invoke-virtual {p2, v8}, Lcom/engagelab/privates/push/api/TagMessage;->setSequence(I)Lcom/engagelab/privates/push/api/TagMessage;

    move-result-object p2

    invoke-virtual {p2, v7}, Lcom/engagelab/privates/push/api/TagMessage;->setCode(I)Lcom/engagelab/privates/push/api/TagMessage;

    move-result-object p2

    const-string v4, "op"

    .line 58
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 59
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", code:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", op:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0, v4}, Lcom/engagelab/privates/common/y0;->b(Ljava/lang/String;)I

    move-result v2

    .line 61
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5
    :try_end_84
    .catchall {:try_start_6 .. :try_end_84} :catchall_f8

    sparse-switch v5, :sswitch_data_158

    goto :goto_b5

    :sswitch_88
    :try_start_88
    const-string v5, "valid"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b5

    .line 62
    iget-object v4, p0, Lcom/engagelab/privates/common/y0;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    .line 63
    iget-object v5, p0, Lcom/engagelab/privates/common/y0;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "validated"

    .line 64
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 65
    invoke-virtual {p2, v4}, Lcom/engagelab/privates/push/api/TagMessage;->setQueryTag(Ljava/lang/String;)Lcom/engagelab/privates/push/api/TagMessage;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/engagelab/privates/push/api/TagMessage;->setQueryTagValid(Z)Lcom/engagelab/privates/push/api/TagMessage;

    :cond_b5
    :goto_b5
    move-object v5, p0

    move-object v6, p1

    goto/16 :goto_128

    :catchall_b9
    move-exception v0

    move-object p1, v0

    move-object v5, p0

    goto/16 :goto_14c

    .line 66
    :sswitch_be
    const-string v3, "clean"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_b5

    :sswitch_c5
    const-string v3, "set"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_cb
    .catchall {:try_start_88 .. :try_end_cb} :catchall_b9

    if-eqz v3, :cond_b5

    move-object v5, p0

    move-object v6, p1

    goto :goto_110

    :sswitch_d0
    :try_start_d0
    const-string v5, "get"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b5

    const-string p2, "tags"

    .line 67
    invoke-virtual {v3, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    .line 68
    invoke-virtual {p0, p2}, Lcom/engagelab/privates/common/y0;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v11

    const-string p2, "total"

    .line 69
    invoke-virtual {v3, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    const-string p2, "curr"

    .line 70
    invoke-virtual {v3, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9
    :try_end_ee
    .catchall {:try_start_d0 .. :try_end_ee} :catchall_f8

    move-object v5, p0

    move-object v6, p1

    .line 71
    :try_start_f0
    invoke-virtual/range {v5 .. v11}, Lcom/engagelab/privates/common/y0;->a(Landroid/content/Context;IIII[Ljava/lang/String;)Lcom/engagelab/privates/push/api/TagMessage;

    move-result-object p2

    goto :goto_128

    :catchall_f5
    move-exception v0

    :goto_f6
    move-object p1, v0

    goto :goto_14c

    :catchall_f8
    move-exception v0

    move-object v5, p0

    goto :goto_f6

    :sswitch_fb
    move-object v5, p0

    move-object v6, p1

    .line 72
    const-string p1, "del"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_128

    goto :goto_110

    :sswitch_106
    move-object v5, p0

    move-object v6, p1

    const-string p1, "add"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_128

    .line 73
    :goto_110
    iget-object p1, v5, Lcom/engagelab/privates/common/y0;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 74
    iget-object v3, v5, Lcom/engagelab/privates/common/y0;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-virtual {p2, p1}, Lcom/engagelab/privates/push/api/TagMessage;->setTags([Ljava/lang/String;)Lcom/engagelab/privates/push/api/TagMessage;

    :cond_128
    :goto_128
    if-nez p2, :cond_12b

    :goto_12a
    return-void

    .line 76
    :cond_12b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/TagMessage;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->debugOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "tag"

    .line 78
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 79
    invoke-static {v6, v2, p1}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToMainProcess(Landroid/content/Context;ILandroid/os/Bundle;)V
    :try_end_14b
    .catchall {:try_start_f0 .. :try_end_14b} :catchall_f5

    return-void

    .line 80
    :goto_14c
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onTagOperationSuccess failed "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-static {p1, p2, v1}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void

    nop

    :sswitch_data_158
    .sparse-switch
        0x178a1 -> :sswitch_106
        0x1840b -> :sswitch_fb
        0x18f56 -> :sswitch_d0
        0x1bc62 -> :sswitch_c5
        0x5a5b649 -> :sswitch_be
        0x6ac8ffc -> :sswitch_88
    .end sparse-switch
.end method
