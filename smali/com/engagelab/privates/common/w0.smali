###### Class com.engagelab.privates.common.w0 (com.engagelab.privates.common.w0)
.class public Lcom/engagelab/privates/common/w0;
.super Lcom/engagelab/privates/common/v0;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static volatile c:Lcom/engagelab/privates/common/w0;


# instance fields
.field public b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
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
    iput-object v0, p0, Lcom/engagelab/privates/common/w0;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    return-void
.end method

.method public static b()Lcom/engagelab/privates/common/w0;
    .registers 2

    .line 1
    sget-object v0, Lcom/engagelab/privates/common/w0;->c:Lcom/engagelab/privates/common/w0;

    if-nez v0, :cond_13

    .line 2
    const-class v0, Lcom/engagelab/privates/common/w0;

    monitor-enter v0

    .line 3
    :try_start_7
    new-instance v1, Lcom/engagelab/privates/common/w0;

    invoke-direct {v1}, Lcom/engagelab/privates/common/w0;-><init>()V

    sput-object v1, Lcom/engagelab/privates/common/w0;->c:Lcom/engagelab/privates/common/w0;

    .line 4
    monitor-exit v0

    goto :goto_13

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_10

    throw v1

    .line 5
    :cond_13
    :goto_13
    sget-object v0, Lcom/engagelab/privates/common/w0;->c:Lcom/engagelab/privates/common/w0;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .registers 4

    .line 27
    invoke-virtual {p0}, Lcom/engagelab/privates/common/v0;->a()I

    move-result v0

    if-eqz v0, :cond_7

    return v0

    .line 28
    :cond_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 29
    sget p1, Lcom/engagelab/privates/push/api/MTPushPrivatesApi$Code;->INVALID_ALIAS:I

    return p1

    .line 30
    :cond_10
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x28

    if-le v0, v1, :cond_1c

    .line 31
    sget p1, Lcom/engagelab/privates/push/api/MTPushPrivatesApi$Code;->TOO_LONG_ALIAS:I

    return p1

    :cond_1c
    const-string v0, "^[\u4e00-\u9fa50-9a-zA-Z_!@#$&*+=.|]+$"

    .line 32
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 33
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 34
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-nez p1, :cond_2f

    .line 35
    sget p1, Lcom/engagelab/privates/push/api/MTPushPrivatesApi$Code;->INVALID_ALIAS:I

    return p1

    :cond_2f
    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 5

    .line 1
    :try_start_0
    const-class v0, Lcom/engagelab/privates/push/api/AliasMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "alias"

    .line 2
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Lcom/engagelab/privates/push/api/AliasMessage;

    if-nez p3, :cond_14

    goto :goto_1e

    .line 3
    :cond_14
    invoke-static {p1}, Lcom/engagelab/privates/common/global/MTGlobal;->getCommonReceiver(Landroid/content/Context;)Lcom/engagelab/privates/common/component/MTCommonReceiver;

    move-result-object v0

    if-nez v0, :cond_1b

    goto :goto_1e

    :cond_1b
    packed-switch p2, :pswitch_data_32

    :goto_1e
    return-void

    .line 4
    :pswitch_1f
    invoke-virtual {v0, p1, p3}, Lcom/engagelab/privates/common/component/MTCommonReceiver;->onAliasMessage(Landroid/content/Context;Lcom/engagelab/privates/push/api/AliasMessage;)V
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_23

    return-void

    :catchall_23
    move-exception p1

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "processMainMessage failed "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p3, "MTAliasBusiness"

    .line 6
    invoke-static {p1, p2, p3}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_32
    .packed-switch 0xbc9
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
    .end packed-switch
.end method

.method public a(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 8

    const-string v0, "MTAliasBusiness"

    const-string v1, "onAliasOperationFailed sequence:"

    :try_start_4
    const-string v2, "protocol"

    .line 11
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/engagelab/privates/core/api/MTProtocol;

    if-nez p2, :cond_f

    return-void

    .line 12
    :cond_f
    invoke-virtual {p2}, Lcom/engagelab/privates/core/api/MTProtocol;->getRid()J

    move-result-wide v2

    long-to-int p2, v2

    .line 13
    iget-object v2, p0, Lcom/engagelab/privates/common/w0;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 14
    iget-object v3, p0, Lcom/engagelab/privates/common/w0;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v3, Lcom/engagelab/privates/push/api/AliasMessage;

    invoke-direct {v3}, Lcom/engagelab/privates/push/api/AliasMessage;-><init>()V

    invoke-virtual {v3, p2}, Lcom/engagelab/privates/push/api/AliasMessage;->setSequence(I)Lcom/engagelab/privates/push/api/AliasMessage;

    move-result-object v3

    sget v4, Lcom/engagelab/privates/push/api/MTPushPrivatesApi$Code;->TIMEOUT:I

    invoke-virtual {v3, v4}, Lcom/engagelab/privates/push/api/AliasMessage;->setCode(I)Lcom/engagelab/privates/push/api/AliasMessage;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/engagelab/privates/push/api/AliasMessage;->setAlias(Ljava/lang/String;)Lcom/engagelab/privates/push/api/AliasMessage;

    move-result-object v2

    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", aliasMessage:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/engagelab/privates/push/api/AliasMessage;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/engagelab/privates/common/log/MTCommonLog;->debugOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", code:"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/engagelab/privates/push/api/AliasMessage;->getCode()I

    move-result p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v1, "alias"

    .line 19
    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 v1, 0xbc9

    .line 20
    invoke-static {p1, v1, p2}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToMainProcess(Landroid/content/Context;ILandroid/os/Bundle;)V
    :try_end_81
    .catchall {:try_start_4 .. :try_end_81} :catchall_82

    return-void

    :catchall_82
    move-exception p1

    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "onAliasOperationFailed failed "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-static {p1, p2, v0}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 11

    const-string v0, "MTAliasBusiness"

    const-string v1, "alias"

    const-string v2, "sendAliasOperation sequence:"

    :try_start_6
    const-string v3, "sequence"

    .line 6
    invoke-virtual {p3, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 7
    invoke-virtual {p3, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_3b

    packed-switch p2, :pswitch_data_e0

    const-string p2, ""

    goto :goto_46

    .line 8
    :pswitch_16
    :try_start_16
    invoke-virtual {p0, p3}, Lcom/engagelab/privates/common/w0;->a(Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_3e

    .line 9
    new-instance v2, Lcom/engagelab/privates/push/api/AliasMessage;

    invoke-direct {v2}, Lcom/engagelab/privates/push/api/AliasMessage;-><init>()V

    invoke-virtual {v2, v3}, Lcom/engagelab/privates/push/api/AliasMessage;->setSequence(I)Lcom/engagelab/privates/push/api/AliasMessage;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/engagelab/privates/push/api/AliasMessage;->setCode(I)Lcom/engagelab/privates/push/api/AliasMessage;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/engagelab/privates/push/api/AliasMessage;->setAlias(Ljava/lang/String;)Lcom/engagelab/privates/push/api/AliasMessage;

    move-result-object p2

    .line 10
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 11
    invoke-virtual {p3, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 p2, 0xbc9

    .line 12
    invoke-static {p1, p2, p3}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToMainProcess(Landroid/content/Context;ILandroid/os/Bundle;)V
    :try_end_3a
    .catchall {:try_start_16 .. :try_end_3a} :catchall_3b

    return-void

    :catchall_3b
    move-exception p1

    goto/16 :goto_d5

    .line 13
    :cond_3e
    const-string p2, "set"

    goto :goto_46

    .line 14
    :pswitch_41
    const-string p2, "get"

    goto :goto_46

    :pswitch_44
    const-string p2, "del"

    .line 15
    :goto_46
    :try_start_46
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "platform"

    const-string v6, "a"

    .line 16
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "op"

    .line 17
    invoke-virtual {v4, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_69

    .line 19
    iget-object v5, p0, Lcom/engagelab/privates/common/w0;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-virtual {v4, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    :cond_69
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", content:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/engagelab/privates/common/log/MTCommonLog;->toLogString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/engagelab/privates/common/log/MTCommonLog;->debugOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", op:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 24
    invoke-static {p2}, Lcom/engagelab/privates/common/c1;->b(Ljava/lang/String;)[B

    move-result-object p2

    if-nez p2, :cond_a6

    return-void

    .line 25
    :cond_a6
    new-instance p3, Lcom/engagelab/privates/core/api/MTProtocol;

    invoke-direct {p3}, Lcom/engagelab/privates/core/api/MTProtocol;-><init>()V

    int-to-long v1, v3

    .line 26
    invoke-virtual {p3, v1, v2}, Lcom/engagelab/privates/core/api/MTProtocol;->setRid(J)Lcom/engagelab/privates/core/api/MTProtocol;

    move-result-object p3

    const/16 v1, 0x1d

    .line 27
    invoke-virtual {p3, v1}, Lcom/engagelab/privates/core/api/MTProtocol;->setCommand(I)Lcom/engagelab/privates/core/api/MTProtocol;

    move-result-object p3

    const/4 v1, 0x1

    .line 28
    invoke-virtual {p3, v1}, Lcom/engagelab/privates/core/api/MTProtocol;->setVersion(I)Lcom/engagelab/privates/core/api/MTProtocol;

    move-result-object p3

    .line 29
    invoke-virtual {p3, p2}, Lcom/engagelab/privates/core/api/MTProtocol;->setBody([B)Lcom/engagelab/privates/core/api/MTProtocol;

    move-result-object p2

    sget-object p3, Lcom/engagelab/privates/push/MTPush;->a:Ljava/lang/String;

    .line 30
    invoke-virtual {p2, p3}, Lcom/engagelab/privates/core/api/MTProtocol;->setThreadName(Ljava/lang/String;)Lcom/engagelab/privates/core/api/MTProtocol;

    move-result-object p2

    .line 31
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string v1, "protocol"

    .line 32
    invoke-virtual {p3, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 p2, 0x8ae

    .line 33
    invoke-static {p1, p2, p3}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V
    :try_end_d4
    .catchall {:try_start_46 .. :try_end_d4} :catchall_3b

    return-void

    .line 34
    :goto_d5
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "sendAliasOperation failed "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-static {p1, p2, v0}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void

    :pswitch_data_e0
    .packed-switch 0xf8d
        :pswitch_44
        :pswitch_41
        :pswitch_16
    .end packed-switch
.end method

.method public b(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 12

    const-string v0, "MTAliasBusiness"

    const-string v1, "onAliasOperationSuccess aliasMessage:"

    const-string v2, "onAliasOperationSuccess sequence:"

    :try_start_6
    const-string v3, "protocol"

    .line 40
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/engagelab/privates/core/api/MTProtocol;

    if-nez p2, :cond_11

    return-void

    .line 41
    :cond_11
    invoke-virtual {p2}, Lcom/engagelab/privates/core/api/MTProtocol;->getRid()J

    move-result-wide v3

    long-to-int v3, v3

    .line 42
    invoke-virtual {p2}, Lcom/engagelab/privates/core/api/MTProtocol;->getBody()[B

    move-result-object p2

    .line 43
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 44
    invoke-static {p2}, Lcom/engagelab/privates/common/utils/StringUtil;->getTlv2(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p2

    .line 45
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 46
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", content:"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/engagelab/privates/common/log/MTCommonLog;->toLogString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->debugOnly(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "code"

    .line 47
    invoke-virtual {v4, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    const-string v5, "op"

    .line 48
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 49
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", op:"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v6, 0x1840b

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v2, v6, :cond_92

    const v6, 0x18f56

    if-eq v2, v6, :cond_88

    const v6, 0x1bc62

    if-eq v2, v6, :cond_7b

    goto :goto_9c

    :cond_7b
    const-string v2, "set"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9c

    const/4 v2, 0x0

    goto :goto_9d

    :catchall_85
    move-exception p1

    goto/16 :goto_fa

    :cond_88
    const-string v2, "get"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9c

    move v2, v8

    goto :goto_9d

    :cond_92
    const-string v2, "del"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_98
    .catchall {:try_start_6 .. :try_end_98} :catchall_85

    if-eqz v2, :cond_9c

    move v2, v7

    goto :goto_9d

    :cond_9c
    :goto_9c
    const/4 v2, -0x1

    :goto_9d
    const-string v5, "alias"

    const/16 v6, 0xbc9

    if-eqz v2, :cond_b4

    if-eq v2, v8, :cond_ad

    const-string v4, ""

    if-eq v2, v7, :cond_aa

    goto :goto_ca

    :cond_aa
    const/16 v6, 0xbcb

    goto :goto_ca

    .line 51
    :cond_ad
    :try_start_ad
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0xbca

    goto :goto_ca

    .line 52
    :cond_b4
    iget-object v2, p0, Lcom/engagelab/privates/common/w0;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    .line 53
    iget-object v2, p0, Lcom/engagelab/privates/common/w0;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :goto_ca
    new-instance v2, Lcom/engagelab/privates/push/api/AliasMessage;

    invoke-direct {v2}, Lcom/engagelab/privates/push/api/AliasMessage;-><init>()V

    invoke-virtual {v2, v3}, Lcom/engagelab/privates/push/api/AliasMessage;->setSequence(I)Lcom/engagelab/privates/push/api/AliasMessage;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/engagelab/privates/push/api/AliasMessage;->setCode(I)Lcom/engagelab/privates/push/api/AliasMessage;

    move-result-object p2

    invoke-virtual {p2, v4}, Lcom/engagelab/privates/push/api/AliasMessage;->setAlias(Ljava/lang/String;)Lcom/engagelab/privates/push/api/AliasMessage;

    move-result-object p2

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/AliasMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->debugOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 57
    invoke-virtual {v1, v5, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 58
    invoke-static {p1, v6, v1}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToMainProcess(Landroid/content/Context;ILandroid/os/Bundle;)V
    :try_end_f9
    .catchall {:try_start_ad .. :try_end_f9} :catchall_85

    return-void

    .line 59
    :goto_fa
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "onAliasOperationSuccess failed "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-static {p1, p2, v0}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method
