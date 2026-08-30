###### Class com.engagelab.privates.common.m (com.engagelab.privates.common.m)
.class public Lcom/engagelab/privates/common/m;
.super Lcom/engagelab/privates/common/j;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public b:Ljava/net/DatagramSocket;


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
    const-string v0, "UdpSisClient"

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .registers 3

    .line 13
    iget-object p1, p0, Lcom/engagelab/privates/common/m;->b:Ljava/net/DatagramSocket;

    if-eqz p1, :cond_10

    const-string p1, "UdpSisClient"

    const-string v0, "udp disconnect"

    .line 14
    invoke-static {p1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/engagelab/privates/common/m;->b:Ljava/net/DatagramSocket;

    invoke-virtual {p1}, Ljava/net/DatagramSocket;->close()V

    :cond_10
    return-void
.end method

.method public a(Landroid/content/Context;[BILjava/lang/String;I)[B
    .registers 9

    const-string p1, "UdpSisClient"

    const-string v0, "udp connect "

    const/4 v1, 0x0

    .line 2
    :try_start_5
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    return-object v1

    :cond_c
    if-gtz p5, :cond_f

    return-object v1

    .line 3
    :cond_f
    new-instance v2, Ljava/net/DatagramSocket;

    invoke-direct {v2}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v2, p0, Lcom/engagelab/privates/common/m;->b:Ljava/net/DatagramSocket;

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {p4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p4

    if-nez p2, :cond_34

    return-object v1

    .line 6
    :cond_34
    new-instance v0, Ljava/net/DatagramPacket;

    array-length v2, p2

    invoke-direct {v0, p2, v2, p4, p5}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 7
    iget-object p2, p0, Lcom/engagelab/privates/common/m;->b:Ljava/net/DatagramSocket;

    invoke-virtual {p2, p3}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 8
    iget-object p2, p0, Lcom/engagelab/privates/common/m;->b:Ljava/net/DatagramSocket;

    invoke-virtual {p2, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    const/16 p2, 0x400

    .line 9
    new-array p3, p2, [B

    .line 10
    new-instance p4, Ljava/net/DatagramPacket;

    invoke-direct {p4, p3, p2}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 11
    iget-object p2, p0, Lcom/engagelab/privates/common/m;->b:Ljava/net/DatagramSocket;

    invoke-virtual {p2, p4}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_52
    .catchall {:try_start_5 .. :try_end_52} :catchall_53

    return-object p3

    :catchall_53
    move-exception p2

    .line 12
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "udp connect failed "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
