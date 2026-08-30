###### Class com.engagelab.privates.common.d (com.engagelab.privates.common.d)
.class public Lcom/engagelab/privates/common/d;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static volatile e:Lcom/engagelab/privates/common/d;


# instance fields
.field public final a:Lcom/engagelab/privates/common/j;

.field public final b:Lcom/engagelab/privates/common/f;

.field public c:I

.field public d:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/engagelab/privates/common/k;->a()Lcom/engagelab/privates/common/j;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/engagelab/privates/common/d;->a:Lcom/engagelab/privates/common/j;

    .line 9
    .line 10
    invoke-static {}, Lcom/engagelab/privates/common/h;->a()Lcom/engagelab/privates/common/f;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/engagelab/privates/common/d;->b:Lcom/engagelab/privates/common/f;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/engagelab/privates/common/d;->c:I

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/engagelab/privates/common/d;->d:Z

    .line 21
    .line 22
    return-void
.end method

.method public static a()Lcom/engagelab/privates/common/d;
    .registers 2

    .line 1
    sget-object v0, Lcom/engagelab/privates/common/d;->e:Lcom/engagelab/privates/common/d;

    if-nez v0, :cond_19

    .line 2
    const-class v0, Lcom/engagelab/privates/common/d;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Lcom/engagelab/privates/common/d;->e:Lcom/engagelab/privates/common/d;

    if-nez v1, :cond_15

    .line 4
    new-instance v1, Lcom/engagelab/privates/common/d;

    invoke-direct {v1}, Lcom/engagelab/privates/common/d;-><init>()V

    sput-object v1, Lcom/engagelab/privates/common/d;->e:Lcom/engagelab/privates/common/d;

    goto :goto_15

    :catchall_13
    move-exception v1

    goto :goto_17

    .line 5
    :cond_15
    :goto_15
    monitor-exit v0

    goto :goto_19

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_13

    throw v1

    .line 6
    :cond_19
    :goto_19
    sget-object v0, Lcom/engagelab/privates/common/d;->e:Lcom/engagelab/privates/common/d;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 4

    .line 19
    iget v0, p0, Lcom/engagelab/privates/common/d;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/engagelab/privates/common/d;->c:I

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAckFailed :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/engagelab/privates/common/d;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MTConnectBusiness"

    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget v0, p0, Lcom/engagelab/privates/common/d;->c:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_27

    .line 22
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/d;->g(Landroid/content/Context;)V

    .line 23
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/d;->e(Landroid/content/Context;)V

    return-void

    :cond_27
    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/engagelab/privates/common/d;->c:I

    const/16 v0, 0xbb1

    const/4 v1, 0x0

    .line 25
    invoke-static {p1, v0, v1}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    const/16 v0, 0xbb2

    .line 26
    invoke-static {p1, v0, v1}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    return-void
.end method

.method public a(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 9

    const-string v0, "protocol"

    .line 7
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/engagelab/privates/core/api/MTProtocol;

    .line 8
    invoke-virtual {p2}, Lcom/engagelab/privates/core/api/MTProtocol;->getBody()[B

    move-result-object p2

    .line 9
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 10
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 11
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 12
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 13
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v5, "onAckSuccess command:"

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", result:"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", code:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", serverTime:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "MTConnectBusiness"

    invoke-static {v1, p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x2

    if-ne v0, p2, :cond_61

    const-string p2, "onHeartbeatSuccess"

    .line 15
    invoke-static {v1, p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 16
    iput p2, p0, Lcom/engagelab/privates/common/d;->c:I

    const/16 p2, 0x7d3

    const/4 v0, 0x0

    .line 17
    invoke-static {p1, p2, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    const/16 p2, 0xbb5

    .line 18
    invoke-static {p1, p2, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    :cond_61
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .registers 4

    .line 2
    invoke-static {p1}, Lcom/engagelab/privates/common/global/MTGlobal;->getCommonReceiver(Landroid/content/Context;)Lcom/engagelab/privates/common/component/MTCommonReceiver;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, p1, v1}, Lcom/engagelab/privates/common/component/MTCommonReceiver;->onConnectStatus(Landroid/content/Context;Z)V

    return-void
.end method

.method public b(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/common/d;->b:Lcom/engagelab/privates/common/f;

    invoke-virtual {v0, p1, p2}, Lcom/engagelab/privates/common/f;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method public b()Z
    .registers 2

    .line 4
    iget-object v0, p0, Lcom/engagelab/privates/common/d;->b:Lcom/engagelab/privates/common/f;

    invoke-virtual {v0}, Lcom/engagelab/privates/common/f;->b()Z

    move-result v0

    return v0
.end method

.method public c(Landroid/content/Context;)V
    .registers 4

    .line 4
    invoke-static {p1}, Lcom/engagelab/privates/common/global/MTGlobal;->getCommonReceiver(Landroid/content/Context;)Lcom/engagelab/privates/common/component/MTCommonReceiver;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, p1, v1}, Lcom/engagelab/privates/common/component/MTCommonReceiver;->onConnectStatus(Landroid/content/Context;Z)V

    return-void
.end method

.method public c(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 5

    if-eqz p2, :cond_10

    .line 1
    const-string v0, "retry"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/engagelab/privates/common/d;->d:Z

    .line 3
    :cond_10
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/d;->f(Landroid/content/Context;)V

    return-void
.end method

.method public d(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-static {p1}, Lcom/engagelab/privates/common/r;->c(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "MTConnectBusiness"

    .line 6
    .line 7
    if-nez v0, :cond_e

    .line 8
    .line 9
    const-string p1, "connect state is false, can\'t startConnect"

    .line 10
    .line 11
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_e
    iget-boolean v0, p0, Lcom/engagelab/privates/common/d;->d:Z

    .line 16
    .line 17
    if-nez v0, :cond_18

    .line 18
    .line 19
    const-string p1, "canReconnect is false, can\'t startConnect"

    .line 20
    .line 21
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_18
    invoke-static {p1}, Lcom/engagelab/privates/common/q;->f(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    const-string v0, "startConnect"

    .line 29
    .line 30
    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/engagelab/privates/common/d;->a:Lcom/engagelab/privates/common/j;

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Lcom/engagelab/privates/common/j;->e(Landroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/engagelab/privates/common/d;->b:Lcom/engagelab/privates/common/f;

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Lcom/engagelab/privates/common/f;->g(Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public e(Landroid/content/Context;)V
    .registers 10

    .line 1
    const-string v0, "MTConnectBusiness"

    .line 2
    .line 3
    const-string v1, "startHeartbeat"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v3, Lcom/engagelab/privates/core/MTCore;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {}, Lcom/engagelab/privates/core/global/MTCoreGlobal;->getHeartbeatInterval()J

    .line 11
    .line 12
    .line 13
    move-result-wide v6

    .line 14
    const/16 v4, 0xbb0

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    move-object v2, p1

    .line 18
    invoke-static/range {v2 .. v7}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageDelayed(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Bundle;J)V

    .line 19
    .line 20
    .line 21
    invoke-static {v2}, Lcom/engagelab/privates/common/s;->c(Landroid/content/Context;)[B

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    new-instance v0, Lcom/engagelab/privates/core/api/MTProtocol;

    .line 26
    .line 27
    invoke-direct {v0}, Lcom/engagelab/privates/core/api/MTProtocol;-><init>()V

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x2

    .line 31
    invoke-virtual {v0, v1}, Lcom/engagelab/privates/core/api/MTProtocol;->setCommand(I)Lcom/engagelab/privates/core/api/MTProtocol;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/4 v1, 0x4

    .line 36
    invoke-virtual {v0, v1}, Lcom/engagelab/privates/core/api/MTProtocol;->setVersion(I)Lcom/engagelab/privates/core/api/MTProtocol;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0, p1}, Lcom/engagelab/privates/core/api/MTProtocol;->setBody([B)Lcom/engagelab/privates/core/api/MTProtocol;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1, v3}, Lcom/engagelab/privates/core/api/MTProtocol;->setThreadName(Ljava/lang/String;)Lcom/engagelab/privates/core/api/MTProtocol;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    new-instance v0, Landroid/os/Bundle;

    .line 49
    .line 50
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v1, "protocol"

    .line 54
    .line 55
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v2, v0}, Lcom/engagelab/privates/common/d;->b(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public f(Landroid/content/Context;)V
    .registers 4

    .line 1
    const-string v0, "MTConnectBusiness"

    .line 2
    .line 3
    const-string v1, "stopConnect"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/engagelab/privates/common/d;->a:Lcom/engagelab/privates/common/j;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/engagelab/privates/common/j;->g(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/engagelab/privates/common/d;->b:Lcom/engagelab/privates/common/f;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/engagelab/privates/common/f;->h(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public g(Landroid/content/Context;)V
    .registers 4

    .line 1
    const-string v0, "MTConnectBusiness"

    .line 2
    .line 3
    const-string v1, "stopHeartbeat"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/engagelab/privates/core/MTCore;->a:Ljava/lang/String;

    .line 9
    .line 10
    const/16 v1, 0xbb0

    .line 11
    .line 12
    invoke-static {p1, v0, v1}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->removeMessages(Landroid/content/Context;Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public h(Landroid/content/Context;)V
    .registers 4

    .line 1
    const-string v0, "MTConnectBusiness"

    .line 2
    .line 3
    const-string v1, "turnOffConnect"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-static {p1, v0}, Lcom/engagelab/privates/common/r;->a(Landroid/content/Context;Z)V

    .line 10
    .line 11
    .line 12
    const/16 v0, 0xbb1

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-static {p1, v0, v1}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public i(Landroid/content/Context;)V
    .registers 4

    .line 1
    const-string v0, "MTConnectBusiness"

    .line 2
    .line 3
    const-string v1, "turnOnConnect"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-static {p1, v0}, Lcom/engagelab/privates/common/r;->a(Landroid/content/Context;Z)V

    .line 10
    .line 11
    .line 12
    const/16 v0, 0xbb2

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-static {p1, v0, v1}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
