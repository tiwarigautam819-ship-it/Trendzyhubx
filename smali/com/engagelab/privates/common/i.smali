###### Class com.engagelab.privates.common.i (com.engagelab.privates.common.i)
.class public Lcom/engagelab/privates/common/i;
.super Lcom/engagelab/privates/common/f;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/engagelab/privates/common/i$a;
    }
.end annotation


# instance fields
.field public d:Ljavax/net/ssl/SSLSocket;


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
    const-string v0, "TcpSSLClient"

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljavax/net/ssl/TrustManager;
    .registers 3

    .line 12
    new-instance v0, Lcom/engagelab/privates/common/i$a;

    invoke-direct {v0, p1}, Lcom/engagelab/privates/common/i$a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .registers 5

    const-string p1, "TcpSSLClient"

    :try_start_2
    const-string v0, "tcp disconnectImp"

    .line 2
    invoke-static {p1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/engagelab/privates/common/i;->d:Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_14

    .line 4
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/engagelab/privates/common/i;->d:Ljavax/net/ssl/SSLSocket;
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v0

    goto :goto_15

    :cond_14
    return-void

    .line 6
    :goto_15
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "disconnect failed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-static {v0, v1, p1}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 4

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/engagelab/privates/common/i;->c(Landroid/content/Context;Ljava/lang/String;I)Ljavax/net/ssl/SSLSocket;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string p2, "TcpSSLClient"

    .line 6
    .line 7
    if-eqz p1, :cond_11

    .line 8
    .line 9
    iput-object p1, p0, Lcom/engagelab/privates/common/i;->d:Ljavax/net/ssl/SSLSocket;

    .line 10
    .line 11
    const-string p1, "tcp connect success"

    .line 12
    .line 13
    invoke-static {p2, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    return p1

    .line 18
    :cond_11
    const-string p1, "tcp connect fai"

    .line 19
    .line 20
    invoke-static {p2, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    return p1
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
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/i;->i(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final c(Landroid/content/Context;Ljava/lang/String;I)Ljavax/net/ssl/SSLSocket;
    .registers 10

    const-string v0, "TcpSSLClient"

    const-string v1, "host:"

    const/4 v2, 0x0

    .line 5
    :try_start_5
    invoke-static {p1}, Lcom/engagelab/privates/common/r;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_27

    const-string p1, "ssl cer is null"

    .line 7
    invoke-static {v0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :catch_15
    move-exception p1

    goto/16 :goto_7c

    :catch_18
    move-exception p1

    goto/16 :goto_92

    :catch_1b
    move-exception p1

    goto/16 :goto_a8

    :catch_1e
    move-exception p1

    goto/16 :goto_be

    :catch_21
    move-exception p1

    goto/16 :goto_d4

    :catch_24
    move-exception p1

    goto/16 :goto_ea

    .line 8
    :cond_27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",port:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "TLSv1.2"

    .line 9
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 10
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/i;->a(Ljava/lang/String;)Ljavax/net/ssl/TrustManager;

    move-result-object p1

    const/4 v3, 0x1

    new-array v4, v3, [Ljavax/net/ssl/TrustManager;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    new-instance p1, Ljava/security/SecureRandom;

    invoke-direct {p1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v2, v4, p1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 11
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    .line 12
    invoke-virtual {p1, p2, p3}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/SSLSocket;
    :try_end_60
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_60} :catch_24
    .catch Ljava/security/KeyManagementException; {:try_start_5 .. :try_end_60} :catch_21
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_60} :catch_1e
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_60} :catch_1b
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_60} :catch_18
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_60} :catch_15

    .line 13
    :try_start_60
    invoke-virtual {p1, v3}, Ljava/net/Socket;->setKeepAlive(Z)V
    :try_end_63
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_60 .. :try_end_63} :catch_78
    .catch Ljava/security/KeyManagementException; {:try_start_60 .. :try_end_63} :catch_74
    .catch Ljava/security/cert/CertificateException; {:try_start_60 .. :try_end_63} :catch_70
    .catch Ljava/net/SocketException; {:try_start_60 .. :try_end_63} :catch_6c
    .catch Ljava/net/UnknownHostException; {:try_start_60 .. :try_end_63} :catch_68
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64

    return-object p1

    :catch_64
    move-exception p2

    move-object v2, p1

    move-object p1, p2

    goto :goto_7c

    :catch_68
    move-exception p2

    move-object v2, p1

    move-object p1, p2

    goto :goto_92

    :catch_6c
    move-exception p2

    move-object v2, p1

    move-object p1, p2

    goto :goto_a8

    :catch_70
    move-exception p2

    move-object v2, p1

    move-object p1, p2

    goto :goto_be

    :catch_74
    move-exception p2

    move-object v2, p1

    move-object p1, p2

    goto :goto_d4

    :catch_78
    move-exception p2

    move-object v2, p1

    move-object p1, p2

    goto :goto_ea

    .line 14
    :goto_7c
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "ssl IOException:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ff

    .line 15
    :goto_92
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "ssl UnknownHostException:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ff

    .line 16
    :goto_a8
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "ssl SocketException:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ff

    .line 17
    :goto_be
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "ssl CertificateException:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ff

    .line 18
    :goto_d4
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "ssl KeyManagementException:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ff

    .line 19
    :goto_ea
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "ssl NoSuchAlgorithmException:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_ff
    return-object v2
.end method

.method public c(Landroid/content/Context;[B)Z
    .registers 4

    .line 2
    iget-object p1, p0, Lcom/engagelab/privates/common/i;->d:Ljavax/net/ssl/SSLSocket;

    const/4 v0, 0x0

    if-nez p1, :cond_6

    return v0

    .line 3
    :cond_6
    invoke-virtual {p1}, Ljava/net/Socket;->isConnected()Z

    move-result p1

    if-nez p1, :cond_d

    return v0

    .line 4
    :cond_d
    iget-object p1, p0, Lcom/engagelab/privates/common/i;->d:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    const/4 p1, 0x1

    return p1
.end method

.method public d(Landroid/content/Context;)[B
    .registers 13

    .line 1
    const-string v0, "TcpSSLClient"

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
    goto/16 :goto_d0

    .line 23
    .line 24
    :catch_17
    move-exception v1

    .line 25
    goto/16 :goto_de

    .line 26
    .line 27
    :cond_1a
    iget-object v5, p0, Lcom/engagelab/privates/common/i;->d:Ljavax/net/ssl/SSLSocket;

    .line 28
    .line 29
    invoke-virtual {v5}, Ljava/net/Socket;->isConnected()Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-nez v5, :cond_2b

    .line 34
    .line 35
    const-string v1, "socketChannel is disConnected"

    .line 36
    .line 37
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1, v3}, Lcom/engagelab/privates/common/f;->a(Landroid/content/Context;Z)V

    .line 41
    .line 42
    .line 43
    return-object v4

    .line 44
    :cond_2b
    invoke-virtual {p0}, Lcom/engagelab/privates/common/f;->b()Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_f6

    .line 49
    .line 50
    const/4 v5, 0x2

    .line 51
    new-array v6, v5, [B

    .line 52
    .line 53
    iget-object v7, p0, Lcom/engagelab/privates/common/i;->d:Ljavax/net/ssl/SSLSocket;

    .line 54
    .line 55
    invoke-virtual {v7}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    invoke-virtual {v7, v6}, Ljava/io/InputStream;->read([B)I

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    if-gez v7, :cond_53

    .line 64
    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, p1, v3}, Lcom/engagelab/privates/common/f;->a(Landroid/content/Context;Z)V

    .line 81
    .line 82
    .line 83
    return-object v4

    .line 84
    :cond_53
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    and-int/lit16 v2, v2, 0x3fff

    .line 93
    .line 94
    new-instance v7, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    if-nez v2, :cond_72

    .line 110
    .line 111
    invoke-virtual {p0, p1, v3}, Lcom/engagelab/privates/common/f;->a(Landroid/content/Context;Z)V

    .line 112
    .line 113
    .line 114
    return-object v4

    .line 115
    :cond_72
    add-int/lit8 v1, v2, -0x2

    .line 116
    .line 117
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    :goto_78
    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 122
    .line 123
    .line 124
    move-result v7

    .line 125
    if-eqz v7, :cond_ac

    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    .line 128
    .line 129
    .line 130
    move-result v7

    .line 131
    new-array v7, v7, [B

    .line 132
    .line 133
    iget-object v8, p0, Lcom/engagelab/privates/common/i;->d:Ljavax/net/ssl/SSLSocket;

    .line 134
    .line 135
    invoke-virtual {v8}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 136
    .line 137
    .line 138
    move-result-object v8

    .line 139
    invoke-virtual {v8, v7}, Ljava/io/InputStream;->read([B)I

    .line 140
    .line 141
    .line 142
    move-result v8

    .line 143
    new-instance v9, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    const-string v10, "read content length = "

    .line 149
    .line 150
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v9

    .line 160
    invoke-static {v0, v9}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    if-gtz v8, :cond_a8

    .line 164
    .line 165
    invoke-virtual {p0, p1, v3}, Lcom/engagelab/privates/common/f;->a(Landroid/content/Context;Z)V

    .line 166
    .line 167
    .line 168
    return-object v4

    .line 169
    :cond_a8
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 170
    .line 171
    .line 172
    goto :goto_78

    .line 173
    :cond_ac
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    new-instance v7, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .line 181
    .line 182
    const-string v8, "read total contentBytes.length = "

    .line 183
    .line 184
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    array-length v8, v1

    .line 188
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v7

    .line 195
    invoke-static {v0, v7}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    new-array v2, v2, [B

    .line 199
    .line 200
    const/4 v7, 0x0

    .line 201
    invoke-static {v6, v7, v2, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    .line 203
    .line 204
    array-length v6, v1

    .line 205
    invoke-static {v1, v7, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_cf} :catch_17
    .catchall {:try_start_8 .. :try_end_cf} :catchall_14

    .line 206
    .line 207
    .line 208
    return-object v2

    .line 209
    :goto_d0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    const-string v5, "receive failed "

    .line 212
    .line 213
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    invoke-static {v1, v2, v0}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0, p1, v3}, Lcom/engagelab/privates/common/f;->a(Landroid/content/Context;Z)V

    .line 220
    .line 221
    .line 222
    goto :goto_f6

    .line 223
    :goto_de
    new-instance v2, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    const-string v5, "receive IOException "

    .line 226
    .line 227
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p0, p1, v3}, Lcom/engagelab/privates/common/f;->a(Landroid/content/Context;Z)V

    .line 245
    .line 246
    .line 247
    :cond_f6
    :goto_f6
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
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/i;->j(Landroid/content/Context;)Ljava/util/List;

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
    invoke-static {p1}, Lcom/engagelab/privates/common/r;->o(Landroid/content/Context;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

###### Class com.engagelab.privates.common.i.a (com.engagelab.privates.common.i$a)
.class public Lcom/engagelab/privates/common/i$a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/engagelab/privates/common/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/engagelab/privates/common/i$a$a;
    }
.end annotation


# instance fields
.field public a:Ljavax/net/ssl/X509TrustManager;

.field public b:Ljava/security/cert/X509Certificate;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    :try_start_3
    const-string v0, "X.509"

    .line 5
    .line 6
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/engagelab/privates/common/i$a;->b:Ljava/security/cert/X509Certificate;

    .line 29
    .line 30
    new-instance v0, Ljava/security/KeyStore$TrustedCertificateEntry;

    .line 31
    .line 32
    invoke-direct {v0, p1}, Ljava/security/KeyStore$TrustedCertificateEntry;-><init>(Ljava/security/cert/Certificate;)V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-virtual {p1, v1, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 45
    .line 46
    .line 47
    const-string v2, "ca_root"

    .line 48
    .line 49
    invoke-virtual {p1, v2, v0, v1}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 50
    .line 51
    .line 52
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0, p1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    array-length v0, p1

    .line 68
    const/4 v1, 0x0

    .line 69
    :goto_44
    if-ge v1, v0, :cond_56

    .line 70
    .line 71
    aget-object v2, p1, v1

    .line 72
    .line 73
    instance-of v3, v2, Ljavax/net/ssl/X509TrustManager;

    .line 74
    .line 75
    if-eqz v3, :cond_53

    .line 76
    .line 77
    check-cast v2, Ljavax/net/ssl/X509TrustManager;

    .line 78
    .line 79
    iput-object v2, p0, Lcom/engagelab/privates/common/i$a;->a:Ljavax/net/ssl/X509TrustManager;
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_51

    .line 80
    .line 81
    return-void

    .line 82
    :catchall_51
    move-exception p1

    .line 83
    goto :goto_57

    .line 84
    :cond_53
    add-int/lit8 v1, v1, 0x1

    .line 85
    .line 86
    goto :goto_44

    .line 87
    :cond_56
    return-void

    .line 88
    :goto_57
    new-instance v0, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string v1, "init trustManager failed, error:"

    .line 91
    .line 92
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    const-string v1, "SSLTrustManager"

    .line 103
    .line 104
    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    new-instance v0, Lcom/engagelab/privates/common/i$a$a;

    .line 108
    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string v2, "SSLTrustManager init : "

    .line 112
    .line 113
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-direct {v0, p1}, Lcom/engagelab/privates/common/i$a$a;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw v0
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 5

    .line 1
    const-string v0, "SSLTrustManager"

    .line 2
    .line 3
    const-string v1, "checkClientTrusted"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/engagelab/privates/common/i$a;->a:Ljavax/net/ssl/X509TrustManager;

    .line 9
    .line 10
    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 7

    .line 1
    const-string p2, "checkServerTrusted"

    .line 2
    .line 3
    const-string v0, "SSLTrustManager"

    .line 4
    .line 5
    invoke-static {v0, p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_112

    .line 9
    .line 10
    array-length p2, p1

    .line 11
    if-eqz p2, :cond_112

    .line 12
    .line 13
    const/4 p2, 0x0

    .line 14
    aget-object v1, p1, p2

    .line 15
    .line 16
    if-eqz v1, :cond_112

    .line 17
    .line 18
    :try_start_11
    array-length v1, p1

    .line 19
    :goto_12
    if-ge p2, v1, :cond_33

    .line 20
    .line 21
    aget-object v2, p1, p2

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->checkValidity()V

    .line 24
    .line 25
    .line 26
    iget-object v3, p0, Lcom/engagelab/privates/common/i$a;->b:Ljava/security/cert/X509Certificate;

    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v2, v3}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_22
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_11 .. :try_end_22} :catch_30
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_11 .. :try_end_22} :catch_2d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_11 .. :try_end_22} :catch_2b
    .catch Ljava/security/InvalidKeyException; {:try_start_11 .. :try_end_22} :catch_29
    .catch Ljava/security/SignatureException; {:try_start_11 .. :try_end_22} :catch_27
    .catch Ljava/security/NoSuchProviderException; {:try_start_11 .. :try_end_22} :catch_25

    .line 33
    .line 34
    .line 35
    add-int/lit8 p2, p2, 0x1

    .line 36
    .line 37
    goto :goto_12

    .line 38
    :catch_25
    move-exception p1

    .line 39
    goto :goto_34

    .line 40
    :catch_27
    move-exception p1

    .line 41
    goto :goto_59

    .line 42
    :catch_29
    move-exception p1

    .line 43
    goto :goto_7e

    .line 44
    :catch_2b
    move-exception p1

    .line 45
    goto :goto_a3

    .line 46
    :catch_2d
    move-exception p1

    .line 47
    goto/16 :goto_c8

    .line 48
    .line 49
    :catch_30
    move-exception p1

    .line 50
    goto/16 :goto_ed

    .line 51
    .line 52
    :cond_33
    return-void

    .line 53
    :goto_34
    new-instance p2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v1, ":checkServerTrusted: NoSuchProviderException:"

    .line 56
    .line 57
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-static {v0, p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    new-instance p2, Lcom/engagelab/privates/common/i$a$a;

    .line 71
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v1, "NoSuchProviderException:"

    .line 75
    .line 76
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-direct {p2, p1}, Lcom/engagelab/privates/common/i$a$a;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p2

    .line 90
    :goto_59
    new-instance p2, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v1, ":checkServerTrusted: SignatureException:"

    .line 93
    .line 94
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    invoke-static {v0, p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    new-instance p2, Lcom/engagelab/privates/common/i$a$a;

    .line 108
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string v1, "SignatureException:"

    .line 112
    .line 113
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-direct {p2, p1}, Lcom/engagelab/privates/common/i$a$a;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw p2

    .line 127
    :goto_7e
    new-instance p2, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    const-string v1, ":checkServerTrusted: InvalidKeyException:"

    .line 130
    .line 131
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    invoke-static {v0, p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    new-instance p2, Lcom/engagelab/privates/common/i$a$a;

    .line 145
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    const-string v1, "InvalidKeyException:"

    .line 149
    .line 150
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-direct {p2, p1}, Lcom/engagelab/privates/common/i$a$a;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    throw p2

    .line 164
    :goto_a3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    const-string v1, ":checkServerTrusted: NoSuchAlgorithmException:"

    .line 167
    .line 168
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    invoke-static {v0, p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    new-instance p2, Lcom/engagelab/privates/common/i$a$a;

    .line 182
    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    const-string v1, "NoSuchAlgorithmException:"

    .line 186
    .line 187
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-direct {p2, p1}, Lcom/engagelab/privates/common/i$a$a;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    throw p2

    .line 201
    :goto_c8
    new-instance p2, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    const-string v1, ":checkServerTrusted: CertificateNotYetValidException:"

    .line 204
    .line 205
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p2

    .line 215
    invoke-static {v0, p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    new-instance p2, Lcom/engagelab/privates/common/i$a$a;

    .line 219
    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    const-string v1, "CertificateNotYetValidException:"

    .line 223
    .line 224
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    invoke-direct {p2, p1}, Lcom/engagelab/privates/common/i$a$a;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    throw p2

    .line 238
    :goto_ed
    new-instance p2, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    const-string v1, ":checkServerTrusted: CertificateExpiredException:"

    .line 241
    .line 242
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p2

    .line 252
    invoke-static {v0, p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    new-instance p2, Lcom/engagelab/privates/common/i$a$a;

    .line 256
    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    const-string v1, "CertificateExpiredException:"

    .line 260
    .line 261
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    invoke-direct {p2, p1}, Lcom/engagelab/privates/common/i$a$a;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    throw p2

    .line 275
    :cond_112
    new-instance p1, Lcom/engagelab/privates/common/i$a$a;

    .line 276
    .line 277
    const-string p2, "Check Server x509Certificates is empty"

    .line 278
    .line 279
    invoke-direct {p1, p2}, Lcom/engagelab/privates/common/i$a$a;-><init>(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    throw p1
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .registers 3

    .line 1
    const-string v0, "SSLTrustManager"

    .line 2
    .line 3
    const-string v1, "getAcceptedIssuers"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/engagelab/privates/common/i$a;->a:Ljavax/net/ssl/X509TrustManager;

    .line 9
    .line 10
    invoke-interface {v0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

###### Class com.engagelab.privates.common.i.a.C0000a (com.engagelab.privates.common.i$a$a)
.class public Lcom/engagelab/privates/common/i$a$a;
.super Ljava/security/cert/CertificateException;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/engagelab/privates/common/i$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 1
    const-string v0, "MyCertificateException:"

    .line 2
    .line 3
    invoke-static {v0, p1}, Lq2/x;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
