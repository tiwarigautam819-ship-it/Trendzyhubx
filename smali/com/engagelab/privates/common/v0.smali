###### Class com.engagelab.privates.common.v0 (com.engagelab.privates.common.v0)
.class public Lcom/engagelab/privates/common/v0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static a:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/engagelab/privates/common/v0;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()I
    .registers 11

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget-object v2, Lcom/engagelab/privates/common/v0;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    const/16 v4, 0xa

    .line 13
    .line 14
    if-ge v2, v4, :cond_19

    .line 15
    .line 16
    sget-object v2, Lcom/engagelab/privates/common/v0;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 17
    .line 18
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    return v3

    .line 26
    :cond_19
    sget-object v2, Lcom/engagelab/privates/common/v0;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/util/AbstractQueue;->element()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/lang/Long;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 35
    .line 36
    .line 37
    move-result-wide v5

    .line 38
    sub-long v5, v0, v5

    .line 39
    .line 40
    const-wide/16 v7, 0x0

    .line 41
    .line 42
    cmp-long v2, v5, v7

    .line 43
    .line 44
    const-string v7, "MTOperationBusiness"

    .line 45
    .line 46
    if-gez v2, :cond_3c

    .line 47
    .line 48
    sget-object v0, Lcom/engagelab/privates/common/v0;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 51
    .line 52
    .line 53
    const-string v0, "set tags/alias failed, time shaft error\uff0cplease try again"

    .line 54
    .line 55
    invoke-static {v7, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    sget v0, Lcom/engagelab/privates/push/api/MTPushPrivatesApi$Code;->INVOKE_TOO_SOON:I

    .line 59
    .line 60
    return v0

    .line 61
    :cond_3c
    const-wide/16 v8, 0x2710

    .line 62
    .line 63
    cmp-long v2, v5, v8

    .line 64
    .line 65
    if-lez v2, :cond_5a

    .line 66
    .line 67
    :goto_42
    sget-object v2, Lcom/engagelab/privates/common/v0;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-lt v2, v4, :cond_50

    .line 74
    .line 75
    sget-object v2, Lcom/engagelab/privates/common/v0;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    goto :goto_42

    .line 81
    :cond_50
    sget-object v2, Lcom/engagelab/privates/common/v0;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 82
    .line 83
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    return v3

    .line 91
    :cond_5a
    const-string v0, "set tags/alias too soon, over 10 times in 10s"

    .line 92
    .line 93
    invoke-static {v7, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    sget v0, Lcom/engagelab/privates/push/api/MTPushPrivatesApi$Code;->INVOKE_TOO_SOON:I

    .line 97
    .line 98
    return v0
.end method
