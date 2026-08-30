###### Class com.engagelab.privates.common.g (com.engagelab.privates.common.g)
.class public Lcom/engagelab/privates/common/g;
.super Lcom/engagelab/privates/common/f;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public d:Ljava/nio/channels/Selector;

.field public e:Ljava/nio/channels/SocketChannel;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/engagelab/privates/common/f;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "TcpChannlClient"

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .registers 5

    const-string p1, "tcp disconnectImp"

    .line 2
    const-string v0, "TcpChannlClient"

    invoke-static {v0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :try_start_7
    iget-object p1, p0, Lcom/engagelab/privates/common/g;->d:Ljava/nio/channels/Selector;

    const/4 v1, 0x0

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Ljava/nio/channels/Selector;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 4
    iget-object p1, p0, Lcom/engagelab/privates/common/g;->d:Ljava/nio/channels/Selector;

    invoke-virtual {p1}, Ljava/nio/channels/Selector;->close()V

    .line 5
    iput-object v1, p0, Lcom/engagelab/privates/common/g;->d:Ljava/nio/channels/Selector;

    goto :goto_1c

    :catchall_1a
    move-exception p1

    goto :goto_33

    .line 6
    :cond_1c
    :goto_1c
    iget-object p1, p0, Lcom/engagelab/privates/common/g;->e:Ljava/nio/channels/SocketChannel;

    if-eqz p1, :cond_32

    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_32

    .line 7
    iget-object p1, p0, Lcom/engagelab/privates/common/g;->e:Ljava/nio/channels/SocketChannel;

    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    .line 8
    iget-object p1, p0, Lcom/engagelab/privates/common/g;->e:Ljava/nio/channels/SocketChannel;

    invoke-virtual {p1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 9
    iput-object v1, p0, Lcom/engagelab/privates/common/g;->e:Ljava/nio/channels/SocketChannel;
    :try_end_32
    .catchall {:try_start_7 .. :try_end_32} :catchall_1a

    :cond_32
    return-void

    .line 10
    :goto_33
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "disconnect failed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-static {p1, v1, v0}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 7

    .line 1
    invoke-static {p1}, Lcom/engagelab/privates/common/utils/SystemUtil;->isNetworkConnecting(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    const-string v1, "TcpChannlClient"

    .line 7
    .line 8
    if-nez p1, :cond_f

    .line 9
    .line 10
    const-string p1, "can\'t connect, network is disConnected"

    .line 11
    .line 12
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return v0

    .line 16
    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v2, "tcp connect "

    .line 19
    .line 20
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, ":"

    .line 27
    .line 28
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance p1, Ljava/net/InetSocketAddress;

    .line 42
    .line 43
    invoke-direct {p1, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    iput-object p2, p0, Lcom/engagelab/privates/common/g;->e:Ljava/nio/channels/SocketChannel;

    .line 51
    .line 52
    invoke-virtual {p2, v0}, Ljava/nio/channels/SelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 53
    .line 54
    .line 55
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    iput-object p2, p0, Lcom/engagelab/privates/common/g;->d:Ljava/nio/channels/Selector;

    .line 60
    .line 61
    iget-object p3, p0, Lcom/engagelab/privates/common/g;->e:Ljava/nio/channels/SocketChannel;

    .line 62
    .line 63
    const/16 v2, 0x8

    .line 64
    .line 65
    invoke-virtual {p3, p2, v2}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    .line 66
    .line 67
    .line 68
    iget-object p2, p0, Lcom/engagelab/privates/common/g;->e:Ljava/nio/channels/SocketChannel;

    .line 69
    .line 70
    invoke-virtual {p2, p1}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/engagelab/privates/common/g;->d:Ljava/nio/channels/Selector;

    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/nio/channels/Selector;->select()I

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/engagelab/privates/common/g;->d:Ljava/nio/channels/Selector;

    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-nez p1, :cond_5b

    .line 85
    .line 86
    const-string p1, "selectionKeys is null"

    .line 87
    .line 88
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    return v0

    .line 92
    :cond_5b
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    if-eqz p2, :cond_67

    .line 97
    .line 98
    const-string p1, "selectionKeys is empty"

    .line 99
    .line 100
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    return v0

    .line 104
    :cond_67
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    check-cast p1, Ljava/nio/channels/SelectionKey;

    .line 113
    .line 114
    if-eqz p1, :cond_a7

    .line 115
    .line 116
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    if-nez p2, :cond_7a

    .line 121
    .line 122
    goto :goto_a7

    .line 123
    :cond_7a
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    if-nez p2, :cond_86

    .line 128
    .line 129
    const-string p1, "selectionKey is disConnected"

    .line 130
    .line 131
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    return v0

    .line 135
    :cond_86
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    check-cast p1, Ljava/nio/channels/SocketChannel;

    .line 140
    .line 141
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->isConnectionPending()Z

    .line 142
    .line 143
    .line 144
    move-result p2

    .line 145
    if-nez p2, :cond_98

    .line 146
    .line 147
    const-string p1, "finish connect"

    .line 148
    .line 149
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    return v0

    .line 153
    :cond_98
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    .line 154
    .line 155
    .line 156
    iget-object p2, p0, Lcom/engagelab/privates/common/g;->d:Ljava/nio/channels/Selector;

    .line 157
    .line 158
    const/4 p3, 0x1

    .line 159
    invoke-virtual {p1, p2, p3}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    .line 160
    .line 161
    .line 162
    const-string p1, "tcp connect success"

    .line 163
    .line 164
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    return p3

    .line 168
    :cond_a7
    :goto_a7
    const-string p1, "selectionKey is null"

    .line 169
    .line 170
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    return v0
.end method

.method public c(Landroid/content/Context;)Ljava/util/List;
    .registers 2
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

    .line 1
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/g;->i(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/content/Context;[B)Z
    .registers 4

    .line 2
    iget-object p1, p0, Lcom/engagelab/privates/common/g;->e:Ljava/nio/channels/SocketChannel;

    const/4 v0, 0x0

    if-nez p1, :cond_6

    return v0

    .line 3
    :cond_6
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result p1

    if-nez p1, :cond_d

    return v0

    .line 4
    :cond_d
    iget-object p1, p0, Lcom/engagelab/privates/common/g;->e:Ljava/nio/channels/SocketChannel;

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 p1, 0x1

    return p1
.end method

.method public d(Landroid/content/Context;)[B
    .registers 13

    .line 1
    const-string v0, "TcpChannlClient"

    .line 2
    .line 3
    const-string v1, "read total length = "

    .line 4
    .line 5
    const-string v2, "read ahead length = "

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    :try_start_8
    invoke-virtual {p0}, Lcom/engagelab/privates/common/f;->b()Z

    .line 10
    .line 11
    .line 12
    move-result v5

    .line 13
    if-nez v5, :cond_1a

    .line 14
    .line 15
    const-string v1, "tcp is not connecting"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-object v4

    .line 21
    :catchall_14
    move-exception v1

    .line 22
    goto/16 :goto_14c

    .line 23
    .line 24
    :catch_17
    move-exception v1

    .line 25
    goto/16 :goto_15a

    .line 26
    .line 27
    :cond_1a
    iget-object v5, p0, Lcom/engagelab/privates/common/g;->d:Ljava/nio/channels/Selector;

    .line 28
    .line 29
    invoke-virtual {v5}, Ljava/nio/channels/Selector;->select()I

    .line 30
    .line 31
    .line 32
    iget-object v5, p0, Lcom/engagelab/privates/common/g;->d:Ljava/nio/channels/Selector;

    .line 33
    .line 34
    invoke-virtual {v5}, Ljava/nio/channels/Selector;->isOpen()Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-nez v5, :cond_2d

    .line 39
    .line 40
    const-string v1, "selector is closed"

    .line 41
    .line 42
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-object v4

    .line 46
    :cond_2d
    iget-object v5, p0, Lcom/engagelab/privates/common/g;->d:Ljava/nio/channels/Selector;

    .line 47
    .line 48
    invoke-virtual {v5}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    if-nez v5, :cond_3e

    .line 53
    .line 54
    const-string v1, "selectionKeys is null"

    .line 55
    .line 56
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p1, v3}, Lcom/engagelab/privates/common/f;->a(Landroid/content/Context;Z)V

    .line 60
    .line 61
    .line 62
    return-object v4

    .line 63
    :cond_3e
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    if-eqz v6, :cond_4d

    .line 68
    .line 69
    const-string v1, "selectionKeys is empty"

    .line 70
    .line 71
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, p1, v3}, Lcom/engagelab/privates/common/f;->a(Landroid/content/Context;Z)V

    .line 75
    .line 76
    .line 77
    return-object v4

    .line 78
    :cond_4d
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    if-nez v6, :cond_60

    .line 87
    .line 88
    const-string v1, "selectionKeys hasn\'t next"

    .line 89
    .line 90
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, p1, v3}, Lcom/engagelab/privates/common/f;->a(Landroid/content/Context;Z)V

    .line 94
    .line 95
    .line 96
    return-object v4

    .line 97
    :cond_60
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    check-cast v5, Ljava/nio/channels/SelectionKey;

    .line 102
    .line 103
    if-nez v5, :cond_71

    .line 104
    .line 105
    const-string v1, "selectionKey is null"

    .line 106
    .line 107
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, p1, v3}, Lcom/engagelab/privates/common/f;->a(Landroid/content/Context;Z)V

    .line 111
    .line 112
    .line 113
    return-object v4

    .line 114
    :cond_71
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    if-nez v6, :cond_80

    .line 119
    .line 120
    const-string v1, "selectionKey is disReadable"

    .line 121
    .line 122
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, p1, v3}, Lcom/engagelab/privates/common/f;->a(Landroid/content/Context;Z)V

    .line 126
    .line 127
    .line 128
    return-object v4

    .line 129
    :cond_80
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    check-cast v5, Ljava/nio/channels/SocketChannel;

    .line 134
    .line 135
    invoke-virtual {v5}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    if-nez v6, :cond_95

    .line 140
    .line 141
    const-string v1, "socketChannel is disConnected"

    .line 142
    .line 143
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, p1, v3}, Lcom/engagelab/privates/common/f;->a(Landroid/content/Context;Z)V

    .line 147
    .line 148
    .line 149
    return-object v4

    .line 150
    :cond_95
    invoke-virtual {p0}, Lcom/engagelab/privates/common/f;->b()Z

    .line 151
    .line 152
    .line 153
    move-result v6

    .line 154
    if-eqz v6, :cond_172

    .line 155
    .line 156
    const/4 v6, 0x2

    .line 157
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    invoke-virtual {v5, v6}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 162
    .line 163
    .line 164
    move-result v7

    .line 165
    if-gez v7, :cond_b9

    .line 166
    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0, p1, v3}, Lcom/engagelab/privates/common/f;->a(Landroid/content/Context;Z)V

    .line 183
    .line 184
    .line 185
    return-object v4

    .line 186
    :cond_b9
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 191
    .line 192
    .line 193
    move-result-object v6

    .line 194
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getShort()S

    .line 195
    .line 196
    .line 197
    move-result v6

    .line 198
    and-int/lit16 v6, v6, 0x3fff

    .line 199
    .line 200
    if-nez v6, :cond_dc

    .line 201
    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0, p1, v3}, Lcom/engagelab/privates/common/f;->a(Landroid/content/Context;Z)V

    .line 218
    .line 219
    .line 220
    return-object v4

    .line 221
    :cond_dc
    add-int/lit8 v1, v6, -0x2

    .line 222
    .line 223
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    :cond_e2
    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 228
    .line 229
    .line 230
    move-result v7

    .line 231
    if-eqz v7, :cond_13b

    .line 232
    .line 233
    invoke-virtual {v5, v1}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 234
    .line 235
    .line 236
    move-result v7

    .line 237
    int-to-long v7, v7

    .line 238
    const-wide/16 v9, 0x0

    .line 239
    .line 240
    cmp-long v9, v7, v9

    .line 241
    .line 242
    if-gez v9, :cond_e2

    .line 243
    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .line 248
    .line 249
    const-string v5, "read content n = "

    .line 250
    .line 251
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    invoke-static {v0, v2}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .line 268
    .line 269
    const-string v5, "read content position = "

    .line 270
    .line 271
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    .line 275
    .line 276
    .line 277
    move-result v5

    .line 278
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    invoke-static {v0, v2}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    .line 289
    .line 290
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 291
    .line 292
    .line 293
    const-string v5, "read content limit = "

    .line 294
    .line 295
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    .line 299
    .line 300
    .line 301
    move-result v1

    .line 302
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {p0, p1, v3}, Lcom/engagelab/privates/common/f;->a(Landroid/content/Context;Z)V

    .line 313
    .line 314
    .line 315
    return-object v4

    .line 316
    :cond_13b
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    new-array v5, v6, [B

    .line 321
    .line 322
    array-length v6, v2

    .line 323
    const/4 v7, 0x0

    .line 324
    invoke-static {v2, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 325
    .line 326
    .line 327
    array-length v2, v2

    .line 328
    array-length v6, v1

    .line 329
    invoke-static {v1, v7, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_14b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_14b} :catch_17
    .catchall {:try_start_8 .. :try_end_14b} :catchall_14

    .line 330
    .line 331
    .line 332
    return-object v5

    .line 333
    :goto_14c
    new-instance v2, Ljava/lang/StringBuilder;

    .line 334
    .line 335
    const-string v5, "receive failed "

    .line 336
    .line 337
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    invoke-static {v1, v2, v0}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {p0, p1, v3}, Lcom/engagelab/privates/common/f;->a(Landroid/content/Context;Z)V

    .line 344
    .line 345
    .line 346
    goto :goto_172

    .line 347
    :goto_15a
    new-instance v2, Ljava/lang/StringBuilder;

    .line 348
    .line 349
    const-string v5, "receive IOException "

    .line 350
    .line 351
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {p0, p1, v3}, Lcom/engagelab/privates/common/f;->a(Landroid/content/Context;Z)V

    .line 369
    .line 370
    .line 371
    :cond_172
    :goto_172
    return-object v4
.end method

.method public final i(Landroid/content/Context;)Ljava/util/List;
    .registers 3
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

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/g;->j(Landroid/content/Context;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final j(Landroid/content/Context;)Ljava/util/List;
    .registers 2
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

    .line 1
    invoke-static {p1}, Lcom/engagelab/privates/common/r;->n(Landroid/content/Context;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
