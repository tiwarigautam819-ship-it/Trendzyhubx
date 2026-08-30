###### Class com.engagelab.privates.common.log.MTLogEntry (com.engagelab.privates.common.log.MTLogEntry)
.class public Lcom/engagelab/privates/common/log/MTLogEntry;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field private final level:Ljava/lang/String;

.field private final message:Ljava/lang/String;

.field private final processId:I

.field private final processType:Ljava/lang/String;

.field private final tag:Ljava/lang/String;

.field private final threadId:J

.field private final timestamp:J


# direct methods
.method public constructor <init>(JIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-wide p1, p0, Lcom/engagelab/privates/common/log/MTLogEntry;->timestamp:J

    .line 19
    iput p3, p0, Lcom/engagelab/privates/common/log/MTLogEntry;->processId:I

    .line 20
    iput-wide p4, p0, Lcom/engagelab/privates/common/log/MTLogEntry;->threadId:J

    const-string p1, "UNKNOWN"

    if-eqz p6, :cond_e

    goto :goto_f

    :cond_e
    move-object p6, p1

    .line 21
    :goto_f
    iput-object p6, p0, Lcom/engagelab/privates/common/log/MTLogEntry;->level:Ljava/lang/String;

    if-eqz p7, :cond_14

    goto :goto_16

    :cond_14
    const-string p7, "DEFAULT"

    .line 22
    :goto_16
    iput-object p7, p0, Lcom/engagelab/privates/common/log/MTLogEntry;->tag:Ljava/lang/String;

    if-eqz p8, :cond_1b

    goto :goto_1d

    :cond_1b
    const-string p8, ""

    .line 23
    :goto_1d
    iput-object p8, p0, Lcom/engagelab/privates/common/log/MTLogEntry;->message:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/engagelab/privates/common/log/MTLogEntry;->processType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-wide p1, p0, Lcom/engagelab/privates/common/log/MTLogEntry;->timestamp:J

    .line 27
    iput p3, p0, Lcom/engagelab/privates/common/log/MTLogEntry;->processId:I

    .line 28
    iput-wide p4, p0, Lcom/engagelab/privates/common/log/MTLogEntry;->threadId:J

    const-string p1, "UNKNOWN"

    if-eqz p6, :cond_e

    goto :goto_f

    :cond_e
    move-object p6, p1

    .line 29
    :goto_f
    iput-object p6, p0, Lcom/engagelab/privates/common/log/MTLogEntry;->level:Ljava/lang/String;

    if-eqz p7, :cond_14

    goto :goto_16

    :cond_14
    const-string p7, "DEFAULT"

    .line 30
    :goto_16
    iput-object p7, p0, Lcom/engagelab/privates/common/log/MTLogEntry;->tag:Ljava/lang/String;

    if-eqz p8, :cond_1b

    goto :goto_1d

    :cond_1b
    const-string p8, ""

    .line 31
    :goto_1d
    iput-object p8, p0, Lcom/engagelab/privates/common/log/MTLogEntry;->message:Ljava/lang/String;

    if-eqz p9, :cond_22

    goto :goto_23

    :cond_22
    move-object p9, p1

    .line 32
    :goto_23
    iput-object p9, p0, Lcom/engagelab/privates/common/log/MTLogEntry;->processType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/engagelab/privates/common/log/MTLogEntry;->timestamp:J

    .line 3
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p0, Lcom/engagelab/privates/common/log/MTLogEntry;->processId:I

    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/engagelab/privates/common/log/MTLogEntry;->threadId:J

    const-string v0, "UNKNOWN"

    if-eqz p1, :cond_1e

    goto :goto_1f

    :cond_1e
    move-object p1, v0

    .line 5
    :goto_1f
    iput-object p1, p0, Lcom/engagelab/privates/common/log/MTLogEntry;->level:Ljava/lang/String;

    if-eqz p2, :cond_24

    goto :goto_26

    :cond_24
    const-string p2, "DEFAULT"

    .line 6
    :goto_26
    iput-object p2, p0, Lcom/engagelab/privates/common/log/MTLogEntry;->tag:Ljava/lang/String;

    if-eqz p3, :cond_2b

    goto :goto_2d

    :cond_2b
    const-string p3, ""

    .line 7
    :goto_2d
    iput-object p3, p0, Lcom/engagelab/privates/common/log/MTLogEntry;->message:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/engagelab/privates/common/log/MTLogEntry;->processType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/engagelab/privates/common/log/MTLogEntry;->timestamp:J

    .line 11
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p0, Lcom/engagelab/privates/common/log/MTLogEntry;->processId:I

    .line 12
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/engagelab/privates/common/log/MTLogEntry;->threadId:J

    const-string v0, "UNKNOWN"

    if-eqz p1, :cond_1e

    goto :goto_1f

    :cond_1e
    move-object p1, v0

    .line 13
    :goto_1f
    iput-object p1, p0, Lcom/engagelab/privates/common/log/MTLogEntry;->level:Ljava/lang/String;

    if-eqz p2, :cond_24

    goto :goto_26

    :cond_24
    const-string p2, "DEFAULT"

    .line 14
    :goto_26
    iput-object p2, p0, Lcom/engagelab/privates/common/log/MTLogEntry;->tag:Ljava/lang/String;

    if-eqz p3, :cond_2b

    goto :goto_2d

    :cond_2b
    const-string p3, ""

    .line 15
    :goto_2d
    iput-object p3, p0, Lcom/engagelab/privates/common/log/MTLogEntry;->message:Ljava/lang/String;

    if-eqz p4, :cond_32

    goto :goto_33

    :cond_32
    move-object p4, v0

    .line 16
    :goto_33
    iput-object p4, p0, Lcom/engagelab/privates/common/log/MTLogEntry;->processType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_4

    .line 3
    .line 4
    return v0

    .line 5
    :cond_4
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_53

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-eq v2, v3, :cond_12

    .line 17
    .line 18
    goto :goto_53

    .line 19
    :cond_12
    check-cast p1, Lcom/engagelab/privates/common/log/MTLogEntry;

    .line 20
    .line 21
    iget-wide v2, p0, Lcom/engagelab/privates/common/log/MTLogEntry;->timestamp:J

    .line 22
    .line 23
    iget-wide v4, p1, Lcom/engagelab/privates/common/log/MTLogEntry;->timestamp:J

    .line 24
    .line 25
    cmp-long v2, v2, v4

    .line 26
    .line 27
    if-nez v2, :cond_53

    .line 28
    .line 29
    iget v2, p0, Lcom/engagelab/privates/common/log/MTLogEntry;->processId:I

    .line 30
    .line 31
    iget v3, p1, Lcom/engagelab/privates/common/log/MTLogEntry;->processId:I

    .line 32
    .line 33
    if-ne v2, v3, :cond_53

    .line 34
    .line 35
    iget-wide v2, p0, Lcom/engagelab/privates/common/log/MTLogEntry;->threadId:J

    .line 36
    .line 37
    iget-wide v4, p1, Lcom/engagelab/privates/common/log/MTLogEntry;->threadId:J

    .line 38
    .line 39
    cmp-long v2, v2, v4

    .line 40
    .line 41
    if-nez v2, :cond_53

    .line 42
    .line 43
    iget-object v2, p0, Lcom/engagelab/privates/common/log/MTLogEntry;->level:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v3, p1, Lcom/engagelab/privates/common/log/MTLogEntry;->level:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_53

    .line 52
    .line 53
    iget-object v2, p0, Lcom/engagelab/privates/common/log/MTLogEntry;->tag:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v3, p1, Lcom/engagelab/privates/common/log/MTLogEntry;->tag:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_53

    .line 62
    .line 63
    iget-object v2, p0, Lcom/engagelab/privates/common/log/MTLogEntry;->message:Ljava/lang/String;

    .line 64
    .line 65
    iget-object v3, p1, Lcom/engagelab/privates/common/log/MTLogEntry;->message:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_53

    .line 72
    .line 73
    iget-object v2, p0, Lcom/engagelab/privates/common/log/MTLogEntry;->processType:Ljava/lang/String;

    .line 74
    .line 75
    iget-object p1, p1, Lcom/engagelab/privates/common/log/MTLogEntry;->processType:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-eqz p1, :cond_53

    .line 82
    .line 83
    return v0

    .line 84
    :cond_53
    :goto_53
    return v1
.end method

.method public getLevel()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/common/log/MTLogEntry;->level:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/common/log/MTLogEntry;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getProcessId()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/engagelab/privates/common/log/MTLogEntry;->processId:I

    .line 2
    .line 3
    return v0
.end method

.method public getProcessType()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/common/log/MTLogEntry;->processType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/common/log/MTLogEntry;->tag:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getThreadId()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/engagelab/privates/common/log/MTLogEntry;->threadId:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getThreadName()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/engagelab/privates/common/log/MTLogEntry;->timestamp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public hashCode()I
    .registers 8

    .line 1
    iget-wide v0, p0, Lcom/engagelab/privates/common/log/MTLogEntry;->timestamp:J

    .line 2
    .line 3
    const/16 v2, 0x20

    .line 4
    .line 5
    ushr-long v3, v0, v2

    .line 6
    .line 7
    xor-long/2addr v0, v3

    .line 8
    long-to-int v0, v0

    .line 9
    const/16 v1, 0x1f

    .line 10
    .line 11
    mul-int/2addr v0, v1

    .line 12
    iget v3, p0, Lcom/engagelab/privates/common/log/MTLogEntry;->processId:I

    .line 13
    .line 14
    add-int/2addr v0, v3

    .line 15
    mul-int/2addr v0, v1

    .line 16
    iget-wide v3, p0, Lcom/engagelab/privates/common/log/MTLogEntry;->threadId:J

    .line 17
    .line 18
    ushr-long v5, v3, v2

    .line 19
    .line 20
    xor-long/2addr v3, v5

    .line 21
    long-to-int v2, v3

    .line 22
    add-int/2addr v0, v2

    .line 23
    mul-int/2addr v0, v1

    .line 24
    iget-object v2, p0, Lcom/engagelab/privates/common/log/MTLogEntry;->level:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v0, v2, v1}, Lq2/x;->d(ILjava/lang/String;I)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iget-object v2, p0, Lcom/engagelab/privates/common/log/MTLogEntry;->tag:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v0, v2, v1}, Lq2/x;->d(ILjava/lang/String;I)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iget-object v2, p0, Lcom/engagelab/privates/common/log/MTLogEntry;->message:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v0, v2, v1}, Lq2/x;->d(ILjava/lang/String;I)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iget-object v1, p0, Lcom/engagelab/privates/common/log/MTLogEntry;->processType:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    add-int/2addr v1, v0

    .line 49
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "MTLogEntry{timestamp="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Lcom/engagelab/privates/common/log/MTLogEntry;->timestamp:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", processId="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/engagelab/privates/common/log/MTLogEntry;->processId:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", threadId="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-wide v1, p0, Lcom/engagelab/privates/common/log/MTLogEntry;->threadId:J

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", level=\'"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/engagelab/privates/common/log/MTLogEntry;->level:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, "\', tag=\'"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/engagelab/privates/common/log/MTLogEntry;->tag:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, "\', message=\'"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/engagelab/privates/common/log/MTLogEntry;->message:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, "\', processType=\'"

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/engagelab/privates/common/log/MTLogEntry;->processType:Ljava/lang/String;

    .line 69
    .line 70
    const-string v2, "\'}"

    .line 71
    .line 72
    invoke-static {v0, v1, v2}, Lq2/x;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    return-object v0
.end method
