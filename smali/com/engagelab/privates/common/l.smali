###### Class com.engagelab.privates.common.l (com.engagelab.privates.common.l)
.class public Lcom/engagelab/privates/common/l;
.super Lcom/engagelab/privates/common/j;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public b:Ljava/nio/channels/SocketChannel;

.field public c:Ljava/nio/channels/Selector;

.field public d:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/engagelab/privates/common/j;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "TcpSisClinet"

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .registers 2

    .line 12
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/l;->h(Landroid/content/Context;)V

    return-void
.end method

.method public a(Landroid/content/Context;[BILjava/lang/String;I)[B
    .registers 9

    const-string p3, "TcpSisClinet"

    const-string v0, "tcp connect "

    const/4 v1, 0x0

    .line 2
    :try_start_5
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    return-object v1

    :cond_c
    add-int/lit16 p5, p5, -0x2710

    if-gtz p5, :cond_11

    return-object v1

    .line 3
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p1, p4, p5}, Lcom/engagelab/privates/common/l;->b(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p4

    if-nez p4, :cond_39

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/engagelab/privates/common/l;->d:Z

    const-string p1, "tcp connect fail"

    .line 6
    invoke-static {p3, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :catchall_37
    move-exception p1

    goto :goto_4b

    :cond_39
    const/4 p4, 0x1

    .line 7
    iput-boolean p4, p0, Lcom/engagelab/privates/common/l;->d:Z

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/engagelab/privates/common/l;->b(Landroid/content/Context;[B)Z

    move-result p2

    if-nez p2, :cond_46

    .line 9
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/l;->h(Landroid/content/Context;)V

    return-object v1

    .line 10
    :cond_46
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/l;->i(Landroid/content/Context;)[B

    move-result-object p1
    :try_end_4a
    .catchall {:try_start_5 .. :try_end_4a} :catchall_37

    return-object p1

    .line 11
    :goto_4b
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "udp connect failed "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 7

    .line 1
    invoke-static {p1}, Lcom/engagelab/privates/common/utils/SystemUtil;->isNetworkConnecting(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "TcpSisClinet"

    if-nez p1, :cond_f

    const-string p1, "can\'t connect, network is disConnected"

    .line 2
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 3
    :cond_f
    new-instance p1, Ljava/net/InetSocketAddress;

    invoke-direct {p1, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 4
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object p2

    iput-object p2, p0, Lcom/engagelab/privates/common/l;->b:Ljava/nio/channels/SocketChannel;

    .line 5
    invoke-virtual {p2, v0}, Ljava/nio/channels/SelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 6
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object p2

    iput-object p2, p0, Lcom/engagelab/privates/common/l;->c:Ljava/nio/channels/Selector;

    .line 7
    iget-object p3, p0, Lcom/engagelab/privates/common/l;->b:Ljava/nio/channels/SocketChannel;

    const/16 v2, 0x8

    invoke-virtual {p3, p2, v2}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    .line 8
    iget-object p2, p0, Lcom/engagelab/privates/common/l;->b:Ljava/nio/channels/SocketChannel;

    invoke-virtual {p2, p1}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    .line 9
    iget-object p1, p0, Lcom/engagelab/privates/common/l;->c:Ljava/nio/channels/Selector;

    invoke-virtual {p1}, Ljava/nio/channels/Selector;->select()I

    .line 10
    iget-object p1, p0, Lcom/engagelab/privates/common/l;->c:Ljava/nio/channels/Selector;

    invoke-virtual {p1}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object p1

    if-nez p1, :cond_42

    const-string p1, "selectionKeys is null"

    .line 11
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 12
    :cond_42
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4e

    const-string p1, "selectionKeys is empty"

    .line 13
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 14
    :cond_4e
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/channels/SelectionKey;

    if-eqz p1, :cond_8e

    .line 15
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    move-result p2

    if-nez p2, :cond_61

    goto :goto_8e

    .line 16
    :cond_61
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    move-result p2

    if-nez p2, :cond_6d

    const-string p1, "selectionKey is disConnected"

    .line 17
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 18
    :cond_6d
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object p1

    check-cast p1, Ljava/nio/channels/SocketChannel;

    .line 19
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->isConnectionPending()Z

    move-result p2

    if-nez p2, :cond_7f

    const-string p1, "finish connect"

    .line 20
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 21
    :cond_7f
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    .line 22
    iget-object p2, p0, Lcom/engagelab/privates/common/l;->c:Ljava/nio/channels/Selector;

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    const-string p1, "tcp connect success"

    .line 23
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p3

    :cond_8e
    :goto_8e
    const-string p1, "selectionKey is null"

    .line 24
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public b(Landroid/content/Context;[B)Z
    .registers 4

    .line 25
    iget-object p1, p0, Lcom/engagelab/privates/common/l;->b:Ljava/nio/channels/SocketChannel;

    const/4 v0, 0x0

    if-nez p1, :cond_6

    return v0

    .line 26
    :cond_6
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result p1

    if-nez p1, :cond_d

    return v0

    .line 27
    :cond_d
    iget-object p1, p0, Lcom/engagelab/privates/common/l;->b:Ljava/nio/channels/SocketChannel;

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 p1, 0x1

    return p1
.end method

.method public h(Landroid/content/Context;)V
    .registers 5

    .line 1
    const-string p1, "tcp disconnectImp"

    .line 2
    .line 3
    const-string v0, "TcpSisClinet"

    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_7
    iget-object p1, p0, Lcom/engagelab/privates/common/l;->c:Ljava/nio/channels/Selector;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz p1, :cond_1c

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/nio/channels/Selector;->isOpen()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_1c

    .line 18
    .line 19
    iget-object p1, p0, Lcom/engagelab/privates/common/l;->c:Ljava/nio/channels/Selector;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/nio/channels/Selector;->close()V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/engagelab/privates/common/l;->c:Ljava/nio/channels/Selector;

    .line 25
    .line 26
    goto :goto_1c

    .line 27
    :catchall_1a
    move-exception p1

    .line 28
    goto :goto_33

    .line 29
    :cond_1c
    :goto_1c
    iget-object p1, p0, Lcom/engagelab/privates/common/l;->b:Ljava/nio/channels/SocketChannel;

    .line 30
    .line 31
    if-eqz p1, :cond_32

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_32

    .line 38
    .line 39
    iget-object p1, p0, Lcom/engagelab/privates/common/l;->b:Ljava/nio/channels/SocketChannel;

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/engagelab/privates/common/l;->b:Ljava/nio/channels/SocketChannel;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 47
    .line 48
    .line 49
    iput-object v1, p0, Lcom/engagelab/privates/common/l;->b:Ljava/nio/channels/SocketChannel;
    :try_end_32
    .catchall {:try_start_7 .. :try_end_32} :catchall_1a

    .line 50
    .line 51
    :cond_32
    return-void

    .line 52
    :goto_33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v2, "disconnect failed "

    .line 55
    .line 56
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-static {p1, v1, v0}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public i(Landroid/content/Context;)[B
    .registers 12

    .line 1
    const-string v0, "TcpSisClinet"

    .line 2
    .line 3
    const-string v1, "read total length = "

    .line 4
    .line 5
    const-string v2, "read ahead length = "

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    :try_start_7
    iget-boolean v4, p0, Lcom/engagelab/privates/common/l;->d:Z

    .line 9
    .line 10
    if-nez v4, :cond_17

    .line 11
    .line 12
    const-string v1, "tcp is not connecting"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-object v3

    .line 18
    :catchall_11
    move-exception v1

    .line 19
    goto/16 :goto_147

    .line 20
    .line 21
    :catch_14
    move-exception v1

    .line 22
    goto/16 :goto_160

    .line 23
    .line 24
    :cond_17
    iget-object v4, p0, Lcom/engagelab/privates/common/l;->c:Ljava/nio/channels/Selector;

    .line 25
    .line 26
    invoke-virtual {v4}, Ljava/nio/channels/Selector;->select()I

    .line 27
    .line 28
    .line 29
    iget-object v4, p0, Lcom/engagelab/privates/common/l;->c:Ljava/nio/channels/Selector;

    .line 30
    .line 31
    invoke-virtual {v4}, Ljava/nio/channels/Selector;->isOpen()Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-nez v4, :cond_2a

    .line 36
    .line 37
    const-string v1, "selector is closed"

    .line 38
    .line 39
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-object v3

    .line 43
    :cond_2a
    iget-object v4, p0, Lcom/engagelab/privates/common/l;->c:Ljava/nio/channels/Selector;

    .line 44
    .line 45
    invoke-virtual {v4}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    if-nez v4, :cond_3b

    .line 50
    .line 51
    const-string v1, "selectionKeys is null"

    .line 52
    .line 53
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/l;->h(Landroid/content/Context;)V

    .line 57
    .line 58
    .line 59
    return-object v3

    .line 60
    :cond_3b
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-eqz v5, :cond_4a

    .line 65
    .line 66
    const-string v1, "selectionKeys is empty"

    .line 67
    .line 68
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/l;->h(Landroid/content/Context;)V

    .line 72
    .line 73
    .line 74
    return-object v3

    .line 75
    :cond_4a
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-nez v5, :cond_5d

    .line 84
    .line 85
    const-string v1, "selectionKeys hasn\'t next"

    .line 86
    .line 87
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/l;->h(Landroid/content/Context;)V

    .line 91
    .line 92
    .line 93
    return-object v3

    .line 94
    :cond_5d
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    check-cast v4, Ljava/nio/channels/SelectionKey;

    .line 99
    .line 100
    if-nez v4, :cond_6e

    .line 101
    .line 102
    const-string v1, "selectionKey is null"

    .line 103
    .line 104
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/l;->h(Landroid/content/Context;)V

    .line 108
    .line 109
    .line 110
    return-object v3

    .line 111
    :cond_6e
    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    if-nez v5, :cond_7d

    .line 116
    .line 117
    const-string v1, "selectionKey is disReadable"

    .line 118
    .line 119
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/l;->h(Landroid/content/Context;)V

    .line 123
    .line 124
    .line 125
    return-object v3

    .line 126
    :cond_7d
    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    check-cast v4, Ljava/nio/channels/SocketChannel;

    .line 131
    .line 132
    invoke-virtual {v4}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    if-nez v5, :cond_92

    .line 137
    .line 138
    const-string v1, "socketChannel is disConnected"

    .line 139
    .line 140
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/l;->h(Landroid/content/Context;)V

    .line 144
    .line 145
    .line 146
    return-object v3

    .line 147
    :cond_92
    iget-boolean v5, p0, Lcom/engagelab/privates/common/l;->d:Z

    .line 148
    .line 149
    if-eqz v5, :cond_178

    .line 150
    .line 151
    const/4 v5, 0x2

    .line 152
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    invoke-virtual {v4, v5}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 157
    .line 158
    .line 159
    move-result v6

    .line 160
    if-gez v6, :cond_b4

    .line 161
    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/l;->h(Landroid/content/Context;)V

    .line 178
    .line 179
    .line 180
    return-object v3

    .line 181
    :cond_b4
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getShort()S

    .line 190
    .line 191
    .line 192
    move-result v5

    .line 193
    and-int/lit16 v5, v5, 0x3fff

    .line 194
    .line 195
    if-nez v5, :cond_d7

    .line 196
    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/l;->h(Landroid/content/Context;)V

    .line 213
    .line 214
    .line 215
    return-object v3

    .line 216
    :cond_d7
    add-int/lit8 v1, v5, -0x2

    .line 217
    .line 218
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    :cond_dd
    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 223
    .line 224
    .line 225
    move-result v6

    .line 226
    if-eqz v6, :cond_136

    .line 227
    .line 228
    invoke-virtual {v4, v1}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 229
    .line 230
    .line 231
    move-result v6

    .line 232
    int-to-long v6, v6

    .line 233
    const-wide/16 v8, 0x0

    .line 234
    .line 235
    cmp-long v8, v6, v8

    .line 236
    .line 237
    if-gez v8, :cond_dd

    .line 238
    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .line 243
    .line 244
    const-string v4, "read content n = "

    .line 245
    .line 246
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    invoke-static {v0, v2}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .line 263
    .line 264
    const-string v4, "read content position = "

    .line 265
    .line 266
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    .line 270
    .line 271
    .line 272
    move-result v4

    .line 273
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    invoke-static {v0, v2}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    .line 284
    .line 285
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    .line 287
    .line 288
    const-string v4, "read content limit = "

    .line 289
    .line 290
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    .line 294
    .line 295
    .line 296
    move-result v1

    .line 297
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/l;->h(Landroid/content/Context;)V

    .line 308
    .line 309
    .line 310
    return-object v3

    .line 311
    :cond_136
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    new-array v4, v5, [B

    .line 316
    .line 317
    array-length v5, v2

    .line 318
    const/4 v6, 0x0

    .line 319
    invoke-static {v2, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 320
    .line 321
    .line 322
    array-length v2, v2

    .line 323
    array-length v5, v1

    .line 324
    invoke-static {v1, v6, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_146
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_146} :catch_14
    .catchall {:try_start_7 .. :try_end_146} :catchall_11

    .line 325
    .line 326
    .line 327
    return-object v4

    .line 328
    :goto_147
    new-instance v2, Ljava/lang/StringBuilder;

    .line 329
    .line 330
    const-string v4, "receive failed "

    .line 331
    .line 332
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/l;->h(Landroid/content/Context;)V

    .line 350
    .line 351
    .line 352
    goto :goto_178

    .line 353
    :goto_160
    new-instance v2, Ljava/lang/StringBuilder;

    .line 354
    .line 355
    const-string v4, "receive IOException "

    .line 356
    .line 357
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v1

    .line 371
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/l;->h(Landroid/content/Context;)V

    .line 375
    .line 376
    .line 377
    :cond_178
    :goto_178
    return-object v3
.end method
