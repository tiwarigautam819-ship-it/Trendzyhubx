###### Class com.engagelab.privates.common.f (com.engagelab.privates.common.f)
.class public abstract Lcom/engagelab/privates/common/f;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lcom/engagelab/privates/core/api/MTProtocol;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    iput-object v0, p0, Lcom/engagelab/privates/common/f;->a:Ljava/util/concurrent/ConcurrentMap;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;[B)Lcom/engagelab/privates/core/api/MTProtocol;
    .registers 25

    move-object/from16 v0, p2

    const-string v1, "receive body  length:"

    const-string v2, "receive head  length:"

    const-string v3, "receive ahead length:2, encryption:"

    const/4 v4, 0x0

    if-nez v0, :cond_c

    return-object v4

    .line 96
    :cond_c
    :try_start_c
    new-instance v5, Lcom/engagelab/privates/core/api/MTProtocol;

    invoke-direct {v5}, Lcom/engagelab/privates/core/api/MTProtocol;-><init>()V

    const/4 v6, 0x2

    .line 97
    new-array v7, v6, [B

    const/4 v8, 0x0

    .line 98
    invoke-static {v0, v8, v7, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 100
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v7

    ushr-int/lit8 v9, v7, 0xf

    const/4 v10, 0x1

    and-int/2addr v9, v10

    ushr-int/lit8 v11, v7, 0xe

    and-int/2addr v11, v10

    and-int/lit16 v7, v7, 0x3fff

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/engagelab/privates/common/f;->a()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", expand:"

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", totalLength:"

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v7, -0x2

    .line 102
    new-array v9, v3, [B

    .line 103
    invoke-static {v0, v6, v9, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-ne v11, v10, :cond_62

    .line 105
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 106
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    goto :goto_65

    :cond_62
    const/16 v3, 0x14

    move v12, v8

    .line 107
    :goto_65
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    xor-int/lit8 v13, v13, 0x5a

    .line 108
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v14

    xor-int/lit8 v14, v14, 0x5a

    .line 109
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v15

    const-wide v17, 0x5a5a5a5a5a5a5a5aL

    move/from16 v19, v6

    move/from16 v20, v7

    xor-long v6, v15, v17

    .line 110
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v15

    move-object/from16 v21, v9

    xor-long v8, v15, v17

    .line 111
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v15

    if-ne v11, v10, :cond_95

    if-ne v12, v10, :cond_95

    .line 112
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    goto :goto_97

    :cond_95
    move/from16 v0, v19

    .line 113
    :goto_97
    invoke-virtual {v5, v13}, Lcom/engagelab/privates/core/api/MTProtocol;->setCommand(I)Lcom/engagelab/privates/core/api/MTProtocol;

    .line 114
    invoke-virtual {v5, v14}, Lcom/engagelab/privates/core/api/MTProtocol;->setVersion(I)Lcom/engagelab/privates/core/api/MTProtocol;

    .line 115
    invoke-virtual {v5, v8, v9}, Lcom/engagelab/privates/core/api/MTProtocol;->setRid(J)Lcom/engagelab/privates/core/api/MTProtocol;

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/engagelab/privates/common/f;->a()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", headVersion:"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", command:"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", version:"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid:"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", rid:"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", crc16:"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", encrypt:"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sub-int v7, v20, v3

    add-int/lit8 v7, v7, -0x2

    .line 117
    new-array v2, v7, [B

    move-object/from16 v6, v21

    const/4 v8, 0x0

    .line 118
    invoke-static {v6, v3, v2, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    invoke-static/range {p1 .. p1}, Lcom/engagelab/privates/common/r;->r(Landroid/content/Context;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/engagelab/privates/common/utils/AESUtil;->getMd5AesKey(J)Ljava/lang/String;

    move-result-object v3

    move/from16 v6, v19

    if-eq v0, v6, :cond_104

    goto :goto_108

    .line 120
    :cond_104
    invoke-static {v2, v3}, Lcom/engagelab/privates/common/utils/SM4Util;->decryptBytes([BLjava/lang/String;)[B

    move-result-object v2

    .line 121
    :goto_108
    invoke-virtual {v5, v2}, Lcom/engagelab/privates/core/api/MTProtocol;->setBody([B)Lcom/engagelab/privates/core/api/MTProtocol;

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/engagelab/privates/common/f;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", decryptBodyLength:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v2

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_127
    .catchall {:try_start_c .. :try_end_127} :catchall_128

    return-object v5

    :catchall_128
    return-object v4
.end method

.method public abstract a()Ljava/lang/String;
.end method

.method public abstract a(Landroid/content/Context;)V
.end method

.method public a(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 10

    const-string v0, "data"

    const-string v2, "send "

    if-nez p2, :cond_13

    .line 14
    :try_start_6
    invoke-virtual {p0}, Lcom/engagelab/privates/common/f;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "can\'t send, bundle is null"

    invoke-static {v0, v2}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_10
    move-exception v0

    goto/16 :goto_103

    .line 15
    :cond_13
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_3a

    .line 16
    iget-boolean v2, p0, Lcom/engagelab/privates/common/f;->b:Z

    if-eqz v2, :cond_2d

    invoke-static {p1}, Lcom/engagelab/privates/common/utils/SystemUtil;->isNetworkConnecting(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_25

    goto :goto_2d

    .line 17
    :cond_25
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 18
    invoke-virtual {p0, p1, v0}, Lcom/engagelab/privates/common/f;->b(Landroid/content/Context;[B)V

    return-void

    .line 19
    :cond_2d
    :goto_2d
    invoke-virtual {p0}, Lcom/engagelab/privates/common/f;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "can\'t send data, tcp is not connected"

    invoke-static {v0, v2}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, p1, v5}, Lcom/engagelab/privates/common/f;->a(Landroid/content/Context;Z)V

    return-void

    .line 21
    :cond_3a
    const-class v0, Lcom/engagelab/privates/core/api/MTProtocol;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "protocol"

    .line 22
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/engagelab/privates/core/api/MTProtocol;

    .line 23
    invoke-static {p1}, Lcom/engagelab/privates/common/utils/SystemUtil;->isNetworkConnecting(Landroid/content/Context;)Z

    move-result v3
    :try_end_4f
    .catchall {:try_start_6 .. :try_end_4f} :catchall_10

    const-string v6, "can\'t send command:"

    if-nez v3, :cond_82

    .line 24
    :try_start_53
    invoke-virtual {p0}, Lcom/engagelab/privates/common/f;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/engagelab/privates/core/api/MTProtocol;->getCommand()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", network is disConnected"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0, p1, v5}, Lcom/engagelab/privates/common/f;->a(Landroid/content/Context;Z)V

    .line 26
    invoke-virtual {v0}, Lcom/engagelab/privates/core/api/MTProtocol;->getThreadName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/engagelab/privates/core/api/MTProtocol;->getCommand()I

    move-result v3

    const-wide/16 v5, 0x0

    move-object v1, p1

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageDelayed(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Bundle;J)V

    return-void

    .line 27
    :cond_82
    iget-boolean v3, p0, Lcom/engagelab/privates/common/f;->b:Z

    if-nez v3, :cond_b5

    .line 28
    invoke-virtual {p0}, Lcom/engagelab/privates/common/f;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/engagelab/privates/core/api/MTProtocol;->getCommand()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", tcp is disConnected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0, p1, v5}, Lcom/engagelab/privates/common/f;->a(Landroid/content/Context;Z)V

    .line 30
    invoke-virtual {v0}, Lcom/engagelab/privates/core/api/MTProtocol;->getThreadName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/engagelab/privates/core/api/MTProtocol;->getCommand()I

    move-result v3

    const-wide/16 v5, 0x0

    move-object v1, p1

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageDelayed(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Bundle;J)V

    return-void

    .line 31
    :cond_b5
    invoke-virtual {v0}, Lcom/engagelab/privates/core/api/MTProtocol;->getRid()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_c6

    .line 32
    invoke-static {}, Lcom/engagelab/privates/core/global/MTCoreGlobal;->getRid()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/engagelab/privates/core/api/MTProtocol;->setRid(J)Lcom/engagelab/privates/core/api/MTProtocol;

    .line 33
    :cond_c6
    invoke-virtual {p0}, Lcom/engagelab/privates/common/f;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/engagelab/privates/core/api/MTProtocol;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0}, Lcom/engagelab/privates/core/api/MTProtocol;->getThreadName()Ljava/lang/String;

    move-result-object v2

    .line 35
    invoke-virtual {p0, p1, v0}, Lcom/engagelab/privates/common/f;->a(Landroid/content/Context;Lcom/engagelab/privates/core/api/MTProtocol;)[B

    move-result-object v3

    if-nez v3, :cond_e8

    goto :goto_f1

    .line 36
    :cond_e8
    invoke-virtual {p0, p1, v3}, Lcom/engagelab/privates/common/f;->b(Landroid/content/Context;[B)V

    .line 37
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f2

    :goto_f1
    return-void

    .line 38
    :cond_f2
    iget-object v3, p0, Lcom/engagelab/privates/common/f;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-virtual {v0}, Lcom/engagelab/privates/core/api/MTProtocol;->getCommand()I

    move-result v3

    const-wide/16 v5, 0x2710

    move-object v1, p1

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageDelayed(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Bundle;J)V
    :try_end_102
    .catchall {:try_start_53 .. :try_end_102} :catchall_10

    return-void

    .line 40
    :goto_103
    invoke-virtual {p0}, Lcom/engagelab/privates/common/f;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "send failed "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-static {v0, v3, v2}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 42
    invoke-virtual {p0, p1, v0}, Lcom/engagelab/privates/common/f;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method public a(Landroid/content/Context;Z)V
    .registers 10

    .line 47
    invoke-virtual {p0}, Lcom/engagelab/privates/common/f;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tcp disconnect"

    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/engagelab/privates/common/f;->b:Z

    .line 49
    sget-object v0, Lcom/engagelab/privates/core/MTCore;->a:Ljava/lang/String;

    const/16 v1, 0xbb0

    invoke-static {p1, v0, v1}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->removeMessages(Landroid/content/Context;Ljava/lang/String;I)V

    .line 50
    :try_start_13
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/f;->a(Landroid/content/Context;)V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_17

    goto :goto_26

    :catchall_17
    move-exception v0

    .line 51
    invoke-virtual {p0}, Lcom/engagelab/privates/common/f;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "disconnect failed "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-static {v0, v2, v1}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_26
    if-eqz p2, :cond_57

    .line 53
    invoke-virtual {p0}, Lcom/engagelab/privates/common/f;->a()Ljava/lang/String;

    move-result-object p2

    const-string v0, "tcp retry connect"

    invoke-static {p2, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {p1}, Lcom/engagelab/privates/common/utils/SystemUtil;->isNetworkConnecting(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_41

    .line 55
    invoke-virtual {p0}, Lcom/engagelab/privates/common/f;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "tcp retry connect not has net"

    invoke-static {p1, p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_41
    const/16 p2, 0xbb1

    const/4 v0, 0x0

    .line 56
    invoke-static {p1, p2, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 57
    sget-object v2, Lcom/engagelab/privates/core/MTCore;->a:Ljava/lang/String;

    const/16 p2, 0xbae

    invoke-static {p1, v2, p2}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->removeMessages(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v4, 0x0

    const-wide/16 v5, 0x7d0

    const/16 v3, 0xbae

    move-object v1, p1

    .line 58
    invoke-static/range {v1 .. v6}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageDelayed(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Bundle;J)V

    :cond_57
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 8

    const-string v0, "tcp connect "

    const/4 v1, 0x0

    .line 1
    :try_start_3
    invoke-static {p1}, Lcom/engagelab/privates/common/utils/SystemUtil;->isNetworkConnecting(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 2
    invoke-virtual {p0}, Lcom/engagelab/privates/common/f;->a()Ljava/lang/String;

    move-result-object p2

    const-string p3, "can\'t connect, network is disConnected"

    invoke-static {p2, p3}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :catchall_13
    move-exception p2

    goto :goto_43

    .line 3
    :cond_15
    invoke-virtual {p0}, Lcom/engagelab/privates/common/f;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/engagelab/privates/common/f;->b(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_54

    .line 5
    invoke-virtual {p0}, Lcom/engagelab/privates/common/f;->a()Ljava/lang/String;

    move-result-object p2

    const-string p3, "tcp connect success"

    invoke-static {p2, p3}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 6
    iput-boolean p2, p0, Lcom/engagelab/privates/common/f;->b:Z
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_13

    return p2

    .line 7
    :goto_43
    invoke-virtual {p0}, Lcom/engagelab/privates/common/f;->a()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "tcp connect failed "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-static {p2, v0, p3}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, p1, v1}, Lcom/engagelab/privates/common/f;->a(Landroid/content/Context;Z)V

    :cond_54
    return v1
.end method

.method public final a(Landroid/content/Context;Lcom/engagelab/privates/core/api/MTProtocol;)[B
    .registers 23

    const-string v0, "send body  length:"

    const-string v1, ", crc16:0, encrypt:"

    const-string v2, "send head  length:27, headVersion:1, command:"

    const-string v3, "send ahead length:2, encryption:1, expand:1, totalLength:"

    .line 63
    :try_start_8
    invoke-virtual/range {p2 .. p2}, Lcom/engagelab/privates/core/api/MTProtocol;->getCommand()I

    move-result v4

    .line 64
    invoke-virtual/range {p2 .. p2}, Lcom/engagelab/privates/core/api/MTProtocol;->getVersion()I

    move-result v5

    .line 65
    invoke-static/range {p1 .. p1}, Lcom/engagelab/privates/common/r;->r(Landroid/content/Context;)J

    move-result-wide v6

    .line 66
    invoke-static/range {p1 .. p1}, Lcom/engagelab/privates/common/r;->k(Landroid/content/Context;)I

    move-result v8

    .line 67
    invoke-virtual/range {p2 .. p2}, Lcom/engagelab/privates/core/api/MTProtocol;->getRid()J

    move-result-wide v9

    .line 68
    invoke-static {}, Lcom/engagelab/privates/common/global/MTGlobal;->getEncryptType()I

    move-result v11

    .line 69
    new-instance v12, Lcom/engagelab/privates/core/api/Outputer;

    const/16 v13, 0x1b

    invoke-direct {v12, v13}, Lcom/engagelab/privates/core/api/Outputer;-><init>(I)V

    .line 70
    invoke-virtual {v12, v13}, Lcom/engagelab/privates/core/api/Outputer;->writeU8(I)V

    const/4 v14, 0x1

    .line 71
    invoke-virtual {v12, v14}, Lcom/engagelab/privates/core/api/Outputer;->writeU8(I)V

    xor-int/lit8 v15, v4, 0x5a

    .line 72
    invoke-virtual {v12, v15}, Lcom/engagelab/privates/core/api/Outputer;->writeU8(I)V

    xor-int/lit8 v15, v5, 0x5a

    .line 73
    invoke-virtual {v12, v15}, Lcom/engagelab/privates/core/api/Outputer;->writeU8(I)V

    const-wide v15, 0x5a5a5a5a5a5a5a5aL

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    xor-long v0, v6, v15

    .line 74
    invoke-virtual {v12, v0, v1}, Lcom/engagelab/privates/core/api/Outputer;->writeU64(J)V

    int-to-long v0, v8

    .line 75
    invoke-virtual {v12, v0, v1}, Lcom/engagelab/privates/core/api/Outputer;->writeU32(J)V

    xor-long v0, v9, v15

    .line 76
    invoke-virtual {v12, v0, v1}, Lcom/engagelab/privates/core/api/Outputer;->writeU64(J)V

    const/4 v0, 0x0

    .line 77
    invoke-virtual {v12, v0}, Lcom/engagelab/privates/core/api/Outputer;->writeU16(I)V

    .line 78
    invoke-virtual {v12, v11}, Lcom/engagelab/privates/core/api/Outputer;->writeU8(I)V

    .line 79
    invoke-virtual {v12}, Lcom/engagelab/privates/core/api/Outputer;->toByteArray()[B

    move-result-object v1

    .line 80
    invoke-virtual/range {p2 .. p2}, Lcom/engagelab/privates/core/api/MTProtocol;->getBody()[B

    move-result-object v8

    .line 81
    invoke-static/range {p1 .. p1}, Lcom/engagelab/privates/common/r;->r(Landroid/content/Context;)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Lcom/engagelab/privates/common/utils/AESUtil;->getMd5AesKey(J)Ljava/lang/String;

    move-result-object v12

    const/4 v15, 0x2

    if-eq v11, v15, :cond_6c

    move/from16 v16, v14

    goto :goto_78

    :cond_6c
    move/from16 v16, v14

    const/16 v14, 0x10

    .line 82
    invoke-virtual {v12, v0, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v12, v14}, Lcom/engagelab/privates/common/utils/SM4Util;->encryptBytes([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v8

    .line 83
    :goto_78
    array-length v12, v8

    add-int/lit8 v14, v12, 0x1d

    .line 84
    new-array v13, v15, [B

    move/from16 v19, v0

    ushr-int/lit8 v0, v14, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 85
    aput-byte v0, v13, v19

    and-int/lit16 v15, v14, 0xff

    int-to-byte v15, v15

    .line 86
    aput-byte v15, v13, v16

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    .line 87
    aput-byte v0, v13, v19

    or-int/lit8 v0, v0, 0x40

    int-to-byte v0, v0

    .line 88
    aput-byte v0, v13, v19

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/engagelab/privates/common/f;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/engagelab/privates/common/f;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", version:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", rid:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v2, v18

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/engagelab/privates/common/f;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v17

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    new-array v0, v14, [B

    move/from16 v3, v19

    const/4 v2, 0x2

    .line 93
    invoke-static {v13, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v4, 0x1b

    .line 94
    invoke-static {v1, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x1d

    .line 95
    invoke-static {v8, v3, v0, v1, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_102
    .catchall {:try_start_8 .. :try_end_102} :catchall_103

    return-object v0

    :catchall_103
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Landroid/content/Context;Lcom/engagelab/privates/core/api/MTProtocol;)V
    .registers 11

    .line 46
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "protocol"

    .line 47
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 48
    iget-object v1, p0, Lcom/engagelab/privates/common/f;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 49
    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "receive "

    if-eqz v2, :cond_62

    .line 50
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/engagelab/privates/core/api/MTProtocol;

    .line 51
    invoke-virtual {v2}, Lcom/engagelab/privates/core/api/MTProtocol;->getRid()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/engagelab/privates/core/api/MTProtocol;->getRid()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_14

    .line 52
    iget-object v4, p0, Lcom/engagelab/privates/common/f;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 53
    invoke-virtual {p2, v4}, Lcom/engagelab/privates/core/api/MTProtocol;->setThreadName(Ljava/lang/String;)Lcom/engagelab/privates/core/api/MTProtocol;

    .line 54
    invoke-virtual {p0}, Lcom/engagelab/privates/common/f;->a()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/engagelab/privates/core/api/MTProtocol;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 56
    invoke-virtual {v2}, Lcom/engagelab/privates/core/api/MTProtocol;->getCommand()I

    move-result v1

    invoke-static {p1, v4, v1}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->removeMessages(Landroid/content/Context;Ljava/lang/String;I)V

    .line 57
    invoke-virtual {p2}, Lcom/engagelab/privates/core/api/MTProtocol;->getCommand()I

    move-result p2

    invoke-static {p1, v4, p2, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessage(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void

    .line 58
    :cond_62
    invoke-static {}, Lcom/engagelab/privates/common/observer/MTObservable;->getInstance()Lcom/engagelab/privates/common/observer/MTObservable;

    move-result-object v1

    iget-object v1, v1, Lcom/engagelab/privates/common/observer/MTObservable;->observeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ac

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/engagelab/privates/common/observer/MTObserver;

    .line 59
    invoke-virtual {p2}, Lcom/engagelab/privates/core/api/MTProtocol;->getCommand()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/engagelab/privates/common/observer/MTObserver;->isSupport(I)Z

    move-result v4

    if-nez v4, :cond_83

    goto :goto_6c

    .line 60
    :cond_83
    invoke-virtual {v2}, Lcom/engagelab/privates/common/observer/MTObserver;->getThreadName()[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aget-object v2, v2, v4

    .line 61
    invoke-virtual {p2, v2}, Lcom/engagelab/privates/core/api/MTProtocol;->setThreadName(Ljava/lang/String;)Lcom/engagelab/privates/core/api/MTProtocol;

    .line 62
    invoke-virtual {p0}, Lcom/engagelab/privates/common/f;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/engagelab/privates/core/api/MTProtocol;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Lcom/engagelab/privates/core/api/MTProtocol;->getCommand()I

    move-result v4

    invoke-static {p1, v2, v4, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessage(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_6c

    :cond_ac
    return-void
.end method

.method public final b(Landroid/content/Context;[B)V
    .registers 7

    const-string v0, "sendImp :"

    const/4 v1, 0x1

    .line 28
    :try_start_3
    iget-boolean v2, p0, Lcom/engagelab/privates/common/f;->b:Z

    if-nez v2, :cond_17

    .line 29
    invoke-virtual {p0}, Lcom/engagelab/privates/common/f;->a()Ljava/lang/String;

    move-result-object p2

    const-string v0, "can\'t send, tcp is not connected"

    invoke-static {p2, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_11
    move-exception p2

    goto :goto_2f

    :catch_13
    move-exception p2

    goto :goto_41

    :catch_15
    move-exception p2

    goto :goto_5e

    .line 30
    :cond_17
    invoke-virtual {p0, p1, p2}, Lcom/engagelab/privates/common/f;->c(Landroid/content/Context;[B)Z

    move-result p2

    .line 31
    invoke-virtual {p0}, Lcom/engagelab/privates/common/f;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_2e} :catch_15
    .catch Ljava/nio/channels/NotYetConnectedException; {:try_start_3 .. :try_end_2e} :catch_13
    .catchall {:try_start_3 .. :try_end_2e} :catchall_11

    return-void

    .line 32
    :goto_2f
    invoke-virtual {p0}, Lcom/engagelab/privates/common/f;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "send throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-static {p2, v2, v0}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0, p1, v1}, Lcom/engagelab/privates/common/f;->a(Landroid/content/Context;Z)V

    goto :goto_88

    .line 35
    :goto_41
    invoke-virtual {p0}, Lcom/engagelab/privates/common/f;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "send NotYetConnectedException "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0, p1, v1}, Lcom/engagelab/privates/common/f;->a(Landroid/content/Context;Z)V

    goto :goto_88

    .line 37
    :goto_5e
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    .line 38
    invoke-virtual {p0}, Lcom/engagelab/privates/common/f;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "send IOException "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_85

    const-string v0, "MyCertificateException:"

    .line 39
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_85

    const/4 p2, -0x1

    .line 40
    invoke-static {p1, p2}, Lcom/engagelab/privates/common/r;->a(Landroid/content/Context;I)V

    .line 41
    :cond_85
    invoke-virtual {p0, p1, v1}, Lcom/engagelab/privates/common/f;->a(Landroid/content/Context;Z)V

    :goto_88
    return-void
.end method

.method public b()Z
    .registers 2

    .line 64
    iget-boolean v0, p0, Lcom/engagelab/privates/common/f;->b:Z

    return v0
.end method

.method public final b(Landroid/content/Context;)Z
    .registers 8

    .line 1
    invoke-static {p1}, Lcom/engagelab/privates/common/s;->d(Landroid/content/Context;)[B

    move-result-object v0

    .line 2
    new-instance v1, Lcom/engagelab/privates/core/api/MTProtocol;

    invoke-direct {v1}, Lcom/engagelab/privates/core/api/MTProtocol;-><init>()V

    .line 3
    invoke-static {}, Lcom/engagelab/privates/core/global/MTCoreGlobal;->getRid()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/engagelab/privates/core/api/MTProtocol;->setRid(J)Lcom/engagelab/privates/core/api/MTProtocol;

    move-result-object v1

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2}, Lcom/engagelab/privates/core/api/MTProtocol;->setCommand(I)Lcom/engagelab/privates/core/api/MTProtocol;

    move-result-object v1

    const/16 v3, 0x17

    .line 5
    invoke-virtual {v1, v3}, Lcom/engagelab/privates/core/api/MTProtocol;->setVersion(I)Lcom/engagelab/privates/core/api/MTProtocol;

    move-result-object v1

    .line 6
    invoke-virtual {v1, v0}, Lcom/engagelab/privates/core/api/MTProtocol;->setBody([B)Lcom/engagelab/privates/core/api/MTProtocol;

    move-result-object v0

    sget-object v1, Lcom/engagelab/privates/core/MTCore;->c:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Lcom/engagelab/privates/core/api/MTProtocol;->setThreadName(Ljava/lang/String;)Lcom/engagelab/privates/core/api/MTProtocol;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_33

    .line 8
    invoke-virtual {p0}, Lcom/engagelab/privates/common/f;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "login failed, send request failed"

    invoke-static {p1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 9
    :cond_33
    invoke-virtual {p0}, Lcom/engagelab/privates/common/f;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "send "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/engagelab/privates/core/api/MTProtocol;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/engagelab/privates/common/f;->a(Landroid/content/Context;Lcom/engagelab/privates/core/api/MTProtocol;)[B

    move-result-object v0

    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/engagelab/privates/common/f;->b(Landroid/content/Context;[B)V

    .line 12
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/f;->d(Landroid/content/Context;)[B

    move-result-object v0

    .line 13
    invoke-virtual {p0, p1, v0}, Lcom/engagelab/privates/common/f;->a(Landroid/content/Context;[B)Lcom/engagelab/privates/core/api/MTProtocol;

    move-result-object v0

    if-nez v0, :cond_67

    .line 14
    invoke-virtual {p0}, Lcom/engagelab/privates/common/f;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "login failed, receive response failed"

    invoke-static {p1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 15
    :cond_67
    invoke-virtual {p0}, Lcom/engagelab/privates/common/f;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "receive "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/engagelab/privates/core/api/MTProtocol;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0}, Lcom/engagelab/privates/core/api/MTProtocol;->getBody()[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/engagelab/privates/common/s;->a(Landroid/content/Context;[B)I

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_b2

    .line 17
    invoke-static {}, Lcom/engagelab/privates/common/a;->a()Lcom/engagelab/privates/common/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/engagelab/privates/common/a;->a(Landroid/content/Context;)V

    .line 18
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 19
    invoke-static {p1}, Lcom/engagelab/privates/core/global/MTCoreGlobal;->getHttpAddress(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const-string v4, "get_http_address"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const/16 v1, 0x7d1

    .line 20
    invoke-static {p1, v1, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToMainProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    const/16 v0, 0xbb7

    .line 21
    invoke-static {p1, v0, v3}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    const/16 v0, 0x8b9

    .line 22
    invoke-static {p1, v0, v3}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    return v2

    :cond_b2
    const/16 v2, 0x66

    if-ne v0, v2, :cond_c5

    .line 23
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "retry"

    .line 24
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v2, 0xbb1

    .line 25
    invoke-static {p1, v2, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    :cond_c5
    const/16 v0, 0x7d2

    .line 26
    invoke-static {p1, v0, v3}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToMainProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    const/16 v0, 0xbb6

    .line 27
    invoke-static {p1, v0, v3}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    return v1
.end method

.method public abstract b(Landroid/content/Context;Ljava/lang/String;I)Z
.end method

.method public abstract c(Landroid/content/Context;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract c(Landroid/content/Context;[B)Z
.end method

.method public abstract d(Landroid/content/Context;)[B
.end method

.method public final e(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/engagelab/privates/common/f;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "receiving......"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :goto_9
    iget-boolean v0, p0, Lcom/engagelab/privates/common/f;->b:Z

    .line 11
    .line 12
    if-eqz v0, :cond_28

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/f;->d(Landroid/content/Context;)[B

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_14

    .line 19
    .line 20
    goto :goto_28

    .line 21
    :cond_14
    invoke-virtual {p0, p1, v0}, Lcom/engagelab/privates/common/f;->a(Landroid/content/Context;[B)Lcom/engagelab/privates/core/api/MTProtocol;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-nez v0, :cond_24

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/engagelab/privates/common/f;->a()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "parseResponse failed"

    .line 32
    .line 33
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_9

    .line 37
    :cond_24
    invoke-virtual {p0, p1, v0}, Lcom/engagelab/privates/common/f;->b(Landroid/content/Context;Lcom/engagelab/privates/core/api/MTProtocol;)V

    .line 38
    .line 39
    .line 40
    goto :goto_9

    .line 41
    :cond_28
    :goto_28
    return-void
.end method

.method public final f(Landroid/content/Context;)Z
    .registers 9

    .line 1
    :try_start_0
    invoke-static {}, Lcom/engagelab/privates/common/o;->a()Lcom/engagelab/privates/common/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/engagelab/privates/common/o;->a(Landroid/content/Context;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    .line 6
    .line 7
    .line 8
    goto :goto_17

    .line 9
    :catchall_8
    move-exception v0

    .line 10
    invoke-virtual {p0}, Lcom/engagelab/privates/common/f;->a()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v3, "device migration check failed: "

    .line 17
    .line 18
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v2, v1}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :goto_17
    invoke-static {p1}, Lcom/engagelab/privates/common/r;->r(Landroid/content/Context;)J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    invoke-static {p1}, Lcom/engagelab/privates/common/r;->j(Landroid/content/Context;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-static {p1}, Lcom/engagelab/privates/common/r;->g(Landroid/content/Context;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {p0}, Lcom/engagelab/privates/common/f;->a()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    new-instance v5, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v6, "register uid:"

    .line 43
    .line 44
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v6, ",rid:"

    .line 51
    .line 52
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v6, ",password:"

    .line 59
    .line 60
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-static {v4, v5}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-wide/16 v4, 0x0

    .line 74
    .line 75
    cmp-long v0, v0, v4

    .line 76
    .line 77
    const/4 v1, 0x1

    .line 78
    if-lez v0, :cond_63

    .line 79
    .line 80
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-nez v0, :cond_63

    .line 85
    .line 86
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-nez v0, :cond_63

    .line 91
    .line 92
    invoke-static {}, Lcom/engagelab/privates/common/a;->a()Lcom/engagelab/privates/common/a;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0, p1}, Lcom/engagelab/privates/common/a;->b(Landroid/content/Context;)V

    .line 97
    .line 98
    .line 99
    return v1

    .line 100
    :cond_63
    invoke-static {p1}, Lcom/engagelab/privates/common/s;->e(Landroid/content/Context;)[B

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    new-instance v2, Lcom/engagelab/privates/core/api/MTProtocol;

    .line 105
    .line 106
    invoke-direct {v2}, Lcom/engagelab/privates/core/api/MTProtocol;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-static {}, Lcom/engagelab/privates/core/global/MTCoreGlobal;->getRid()J

    .line 110
    .line 111
    .line 112
    move-result-wide v3

    .line 113
    invoke-virtual {v2, v3, v4}, Lcom/engagelab/privates/core/api/MTProtocol;->setRid(J)Lcom/engagelab/privates/core/api/MTProtocol;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    const/4 v3, 0x0

    .line 118
    invoke-virtual {v2, v3}, Lcom/engagelab/privates/core/api/MTProtocol;->setCommand(I)Lcom/engagelab/privates/core/api/MTProtocol;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    const/16 v4, 0x13

    .line 123
    .line 124
    invoke-virtual {v2, v4}, Lcom/engagelab/privates/core/api/MTProtocol;->setVersion(I)Lcom/engagelab/privates/core/api/MTProtocol;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {v2, v0}, Lcom/engagelab/privates/core/api/MTProtocol;->setBody([B)Lcom/engagelab/privates/core/api/MTProtocol;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    sget-object v2, Lcom/engagelab/privates/core/MTCore;->c:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {v0, v2}, Lcom/engagelab/privates/core/api/MTProtocol;->setThreadName(Ljava/lang/String;)Lcom/engagelab/privates/core/api/MTProtocol;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    if-nez v0, :cond_95

    .line 139
    .line 140
    invoke-virtual {p0}, Lcom/engagelab/privates/common/f;->a()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    const-string v0, "register failed, send request failed"

    .line 145
    .line 146
    invoke-static {p1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    return v3

    .line 150
    :cond_95
    invoke-virtual {p0}, Lcom/engagelab/privates/common/f;->a()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    new-instance v4, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    const-string v5, "send "

    .line 157
    .line 158
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Lcom/engagelab/privates/core/api/MTProtocol;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    invoke-static {v2, v4}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0, p1, v0}, Lcom/engagelab/privates/common/f;->a(Landroid/content/Context;Lcom/engagelab/privates/core/api/MTProtocol;)[B

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-virtual {p0, p1, v0}, Lcom/engagelab/privates/common/f;->b(Landroid/content/Context;[B)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/f;->d(Landroid/content/Context;)[B

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {p0, p1, v0}, Lcom/engagelab/privates/common/f;->a(Landroid/content/Context;[B)Lcom/engagelab/privates/core/api/MTProtocol;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    if-nez v0, :cond_c9

    .line 191
    .line 192
    invoke-virtual {p0}, Lcom/engagelab/privates/common/f;->a()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    const-string v0, "register failed, receive response failed"

    .line 197
    .line 198
    invoke-static {p1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    return v3

    .line 202
    :cond_c9
    invoke-virtual {p0}, Lcom/engagelab/privates/common/f;->a()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    new-instance v4, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    const-string v5, "receive "

    .line 209
    .line 210
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0}, Lcom/engagelab/privates/core/api/MTProtocol;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v5

    .line 217
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    invoke-static {v2, v4}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0}, Lcom/engagelab/privates/core/api/MTProtocol;->getBody()[B

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-static {p1, v0}, Lcom/engagelab/privates/common/s;->b(Landroid/content/Context;[B)I

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    if-nez v0, :cond_f4

    .line 236
    .line 237
    invoke-static {}, Lcom/engagelab/privates/common/a;->a()Lcom/engagelab/privates/common/a;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-virtual {v0, p1}, Lcom/engagelab/privates/common/a;->b(Landroid/content/Context;)V

    .line 242
    .line 243
    .line 244
    return v1

    .line 245
    :cond_f4
    const/16 v0, 0x7d2

    .line 246
    .line 247
    const/4 v1, 0x0

    .line 248
    invoke-static {p1, v0, v1}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToMainProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 249
    .line 250
    .line 251
    const/16 v0, 0xbb6

    .line 252
    .line 253
    invoke-static {p1, v0, v1}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 254
    .line 255
    .line 256
    return v3
.end method

.method public g(Landroid/content/Context;)V
    .registers 13

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/engagelab/privates/common/f;->c:Z

    .line 3
    .line 4
    iget-boolean v1, p0, Lcom/engagelab/privates/common/f;->b:Z

    .line 5
    .line 6
    if-eqz v1, :cond_11

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/engagelab/privates/common/f;->a()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v0, "can\'t connect, isTcpConnecting"

    .line 13
    .line 14
    invoke-static {p1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_11
    iput-boolean v0, p0, Lcom/engagelab/privates/common/f;->b:Z

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/f;->c(Landroid/content/Context;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/4 v3, 0x0

    .line 29
    if-eqz v2, :cond_2c

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/engagelab/privates/common/f;->a()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v2, "there are no tcp connect address"

    .line 36
    .line 37
    invoke-static {v1, v2}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1, v3}, Lcom/engagelab/privates/common/f;->a(Landroid/content/Context;Z)V

    .line 41
    .line 42
    .line 43
    goto/16 :goto_c3

    .line 44
    .line 45
    :cond_2c
    new-instance v2, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lcom/engagelab/privates/core/global/MTCoreGlobal;->getConnectRetryCount()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    move v4, v3

    .line 58
    move v5, v4

    .line 59
    :goto_3a
    if-ge v4, v1, :cond_c2

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/engagelab/privates/common/f;->a()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    new-instance v7, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v8, "connect retry count is "

    .line 68
    .line 69
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    invoke-static {v6, v7}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    move v7, v3

    .line 87
    :goto_56
    if-ge v7, v6, :cond_be

    .line 88
    .line 89
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    add-int/lit8 v7, v7, 0x1

    .line 94
    .line 95
    check-cast v5, Ljava/lang/String;

    .line 96
    .line 97
    invoke-static {p1}, Lcom/engagelab/privates/common/r;->c(Landroid/content/Context;)Z

    .line 98
    .line 99
    .line 100
    move-result v8

    .line 101
    if-nez v8, :cond_70

    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/engagelab/privates/common/f;->a()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    const-string v0, "can\'t connect ,connect state is false"

    .line 108
    .line 109
    invoke-static {p1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :cond_70
    iget-boolean v8, p0, Lcom/engagelab/privates/common/f;->c:Z

    .line 114
    .line 115
    if-nez v8, :cond_7e

    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/engagelab/privates/common/f;->a()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    const-string v0, "can\'t connect ,tcp state is false"

    .line 122
    .line 123
    invoke-static {p1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :cond_7e
    const-string v8, ":"

    .line 128
    .line 129
    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    array-length v9, v8

    .line 134
    sub-int/2addr v9, v0

    .line 135
    aget-object v8, v8, v9

    .line 136
    .line 137
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 138
    .line 139
    .line 140
    move-result v9

    .line 141
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 142
    .line 143
    .line 144
    move-result v10

    .line 145
    sub-int/2addr v9, v10

    .line 146
    sub-int/2addr v9, v0

    .line 147
    invoke-virtual {v5, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    move-result v8

    .line 155
    invoke-virtual {p0, p1, v5, v8}, Lcom/engagelab/privates/common/f;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 156
    .line 157
    .line 158
    move-result v5

    .line 159
    if-nez v5, :cond_a5

    .line 160
    .line 161
    invoke-virtual {p0, p1, v3}, Lcom/engagelab/privates/common/f;->a(Landroid/content/Context;Z)V

    .line 162
    .line 163
    .line 164
    move v5, v0

    .line 165
    goto :goto_56

    .line 166
    :cond_a5
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/f;->f(Landroid/content/Context;)Z

    .line 167
    .line 168
    .line 169
    move-result v5

    .line 170
    if-nez v5, :cond_b0

    .line 171
    .line 172
    invoke-virtual {p0, p1, v3}, Lcom/engagelab/privates/common/f;->a(Landroid/content/Context;Z)V

    .line 173
    .line 174
    .line 175
    :goto_ae
    move v5, v3

    .line 176
    goto :goto_56

    .line 177
    :cond_b0
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/f;->b(Landroid/content/Context;)Z

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    if-nez v5, :cond_ba

    .line 182
    .line 183
    invoke-virtual {p0, p1, v3}, Lcom/engagelab/privates/common/f;->a(Landroid/content/Context;Z)V

    .line 184
    .line 185
    .line 186
    goto :goto_ae

    .line 187
    :cond_ba
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/f;->e(Landroid/content/Context;)V

    .line 188
    .line 189
    .line 190
    goto :goto_ae

    .line 191
    :cond_be
    add-int/lit8 v4, v4, 0x1

    .line 192
    .line 193
    goto/16 :goto_3a

    .line 194
    .line 195
    :cond_c2
    move v0, v5

    .line 196
    :goto_c3
    if-eqz v0, :cond_d0

    .line 197
    .line 198
    const/16 v0, 0x7d2

    .line 199
    .line 200
    const/4 v1, 0x0

    .line 201
    invoke-static {p1, v0, v1}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToMainProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 202
    .line 203
    .line 204
    const/16 v0, 0xbb6

    .line 205
    .line 206
    invoke-static {p1, v0, v1}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 207
    .line 208
    .line 209
    :cond_d0
    return-void
.end method

.method public h(Landroid/content/Context;)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/engagelab/privates/common/f;->c:Z

    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/engagelab/privates/common/f;->a(Landroid/content/Context;Z)V

    .line 5
    .line 6
    .line 7
    const/16 v0, 0x7d2

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {p1, v0, v1}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToMainProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    const/16 v0, 0xbb6

    .line 14
    .line 15
    invoke-static {p1, v0, v1}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
