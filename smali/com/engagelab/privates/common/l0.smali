###### Class com.engagelab.privates.common.l0 (com.engagelab.privates.common.l0)
.class public Lcom/engagelab/privates/common/l0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static volatile d:Lcom/engagelab/privates/common/l0;


# instance fields
.field public a:J

.field public b:J

.field public c:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/engagelab/privates/common/l0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/engagelab/privates/common/l0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/engagelab/privates/common/l0;->d:Lcom/engagelab/privates/common/l0;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/engagelab/privates/common/l0;->a:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/engagelab/privates/common/l0;->b:J

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/engagelab/privates/common/l0;->c:Z

    .line 12
    .line 13
    return-void
.end method

.method public static a()Lcom/engagelab/privates/common/l0;
    .registers 1

    .line 1
    sget-object v0, Lcom/engagelab/privates/common/l0;->d:Lcom/engagelab/privates/common/l0;

    return-object v0
.end method

.method public static a(Landroid/content/Context;J)Ljava/lang/String;
    .registers 6

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    invoke-static {p0}, Lcom/engagelab/privates/common/global/MTGlobal;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    :cond_12
    invoke-static {p0}, Lcom/engagelab/privates/common/global/MTGlobal;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 28
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    :cond_1f
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/engagelab/privates/common/utils/StringUtil;->get32MD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;JJ)V
    .registers 10

    const-string v0, "processBackground failed "

    const-class v1, Lcom/engagelab/privates/common/l0;

    monitor-enter v1

    .line 9
    :try_start_5
    invoke-static {p0}, Lcom/engagelab/privates/common/a1;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const-string p0, "MTActiveBusiness"

    const-string p1, "session is null"

    .line 11
    invoke-static {p0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_18

    monitor-exit v1

    return-void

    :catchall_18
    move-exception p0

    goto :goto_5c

    :cond_1a
    sub-long/2addr p1, p3

    const-wide/16 p3, 0x3e8

    .line 12
    :try_start_1d
    div-long/2addr p1, p3

    const-wide/16 p3, 0x0

    cmp-long v3, p1, p3

    if-gez v3, :cond_25

    move-wide p1, p3

    .line 13
    :cond_25
    invoke-static {}, Lcom/engagelab/privates/common/utils/DateUtil;->getTodayDateTimeForReport()Ljava/lang/String;

    move-result-object p3

    const-string p4, "_"

    .line 14
    invoke-virtual {p3, p4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    const/4 v3, 0x0

    aget-object p4, p4, v3

    const-string v3, "_"

    .line 15
    invoke-virtual {p3, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    const/4 v3, 0x1

    aget-object p3, p3, v3

    .line 16
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "session_id"

    .line 17
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "date"

    .line 18
    invoke-virtual {v3, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p4, "time"

    .line 19
    invoke-virtual {v3, p4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "duration"

    .line 20
    invoke-virtual {v3, p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 21
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/engagelab/privates/common/a1;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_5b
    .catchall {:try_start_1d .. :try_end_5b} :catchall_18

    goto :goto_71

    .line 22
    :goto_5c
    :try_start_5c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MTActiveBusiness"

    invoke-static {p1, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_71
    .catchall {:try_start_5c .. :try_end_71} :catchall_73

    :goto_71
    monitor-exit v1

    return-void

    :catchall_73
    move-exception p0

    :try_start_74
    monitor-exit v1
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    throw p0
.end method

.method public static declared-synchronized b(Landroid/content/Context;J)V
    .registers 9

    const-string v0, "processForeground failed "

    const-class v1, Lcom/engagelab/privates/common/l0;

    monitor-enter v1

    .line 11
    :try_start_5
    invoke-static {p0}, Lcom/engagelab/privates/common/a1;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v4, 0x8b9

    if-nez v3, :cond_39

    .line 13
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 14
    new-instance v2, Lcom/engagelab/privates/core/api/MTReporter;

    invoke-direct {v2}, Lcom/engagelab/privates/core/api/MTReporter;-><init>()V

    const-string v5, "active_terminate"

    .line 15
    invoke-virtual {v2, v5}, Lcom/engagelab/privates/core/api/MTReporter;->setType(Ljava/lang/String;)Lcom/engagelab/privates/core/api/MTReporter;

    move-result-object v2

    .line 16
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/engagelab/privates/core/api/MTReporter;->setContent(Ljava/lang/String;)Lcom/engagelab/privates/core/api/MTReporter;

    move-result-object v2

    .line 17
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v5, "protocol"

    .line 18
    invoke-virtual {v3, v5, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 19
    invoke-static {p0, v4, v3}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    goto :goto_39

    :catchall_37
    move-exception p0

    goto :goto_9a

    .line 20
    :cond_39
    :goto_39
    invoke-static {p0, p1, p2}, Lcom/engagelab/privates/common/l0;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4c

    const-string p0, "MTActiveBusiness"

    const-string p1, "session is null"

    .line 22
    invoke-static {p0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4a
    .catchall {:try_start_5 .. :try_end_4a} :catchall_37

    monitor-exit v1

    return-void

    .line 23
    :cond_4c
    :try_start_4c
    invoke-static {p0, p1}, Lcom/engagelab/privates/common/a1;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lcom/engagelab/privates/common/utils/DateUtil;->getTodayDateTimeForReport()Ljava/lang/String;

    move-result-object p2

    const-string v2, "_"

    .line 25
    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string v3, "_"

    .line 26
    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x1

    aget-object p2, p2, v3

    .line 27
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "session_id"

    .line 28
    invoke-virtual {v3, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "date"

    .line 29
    invoke-virtual {v3, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "time"

    .line 30
    invoke-virtual {v3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    new-instance p1, Lcom/engagelab/privates/core/api/MTReporter;

    invoke-direct {p1}, Lcom/engagelab/privates/core/api/MTReporter;-><init>()V

    const-string p2, "active_launch"

    .line 32
    invoke-virtual {p1, p2}, Lcom/engagelab/privates/core/api/MTReporter;->setType(Ljava/lang/String;)Lcom/engagelab/privates/core/api/MTReporter;

    move-result-object p1

    .line 33
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/engagelab/privates/core/api/MTReporter;->setContent(Ljava/lang/String;)Lcom/engagelab/privates/core/api/MTReporter;

    move-result-object p1

    .line 34
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v2, "protocol"

    .line 35
    invoke-virtual {p2, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 36
    invoke-static {p0, v4, p2}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V
    :try_end_99
    .catchall {:try_start_4c .. :try_end_99} :catchall_37

    goto :goto_af

    .line 37
    :goto_9a
    :try_start_9a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MTActiveBusiness"

    invoke-static {p1, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_af
    .catchall {:try_start_9a .. :try_end_af} :catchall_b1

    :goto_af
    monitor-exit v1

    return-void

    :catchall_b1
    move-exception p0

    :try_start_b2
    monitor-exit v1
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_b1

    throw p0
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;)V
    .registers 6

    monitor-enter p0

    const/4 v0, 0x0

    .line 2
    :try_start_2
    iput-boolean v0, p0, Lcom/engagelab/privates/common/l0;->c:Z

    .line 3
    iget-wide v0, p0, Lcom/engagelab/privates/common/l0;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_17

    const-string p1, "MTActiveBusiness"

    const-string v0, "toBackground lastToForegroundTime is 0 "

    .line 4
    invoke-static {p1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-void

    :catchall_15
    move-exception p1

    goto :goto_27

    .line 5
    :cond_17
    :try_start_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 6
    iget-wide v2, p0, Lcom/engagelab/privates/common/l0;->a:J

    invoke-static {p1, v0, v1, v2, v3}, Lcom/engagelab/privates/common/l0;->a(Landroid/content/Context;JJ)V

    .line 7
    iput-wide v0, p0, Lcom/engagelab/privates/common/l0;->b:J

    .line 8
    invoke-static {p1, v0, v1}, Lcom/engagelab/privates/common/a1;->a(Landroid/content/Context;J)V
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_15

    monitor-exit p0

    return-void

    :goto_27
    :try_start_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_15

    throw p1
.end method

.method public declared-synchronized b(Landroid/content/Context;)V
    .registers 8

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_2
    iput-boolean v0, p0, Lcom/engagelab/privates/common/l0;->c:Z

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    iget-wide v2, p0, Lcom/engagelab/privates/common/l0;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_19

    .line 4
    invoke-static {p1}, Lcom/engagelab/privates/common/a1;->c(Landroid/content/Context;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/engagelab/privates/common/l0;->b:J

    goto :goto_19

    :catchall_17
    move-exception p1

    goto :goto_3b

    .line 5
    :cond_19
    :goto_19
    iget-wide v2, p0, Lcom/engagelab/privates/common/l0;->a:J

    cmp-long v2, v4, v2

    if-nez v2, :cond_25

    .line 6
    invoke-static {p1}, Lcom/engagelab/privates/common/a1;->d(Landroid/content/Context;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/engagelab/privates/common/l0;->a:J

    .line 7
    :cond_25
    iget-wide v2, p0, Lcom/engagelab/privates/common/l0;->b:J
    :try_end_27
    .catchall {:try_start_2 .. :try_end_27} :catchall_17

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-gez v2, :cond_31

    monitor-exit p0

    return-void

    .line 8
    :cond_31
    :try_start_31
    iput-wide v0, p0, Lcom/engagelab/privates/common/l0;->a:J

    .line 9
    invoke-static {p1, v0, v1}, Lcom/engagelab/privates/common/a1;->b(Landroid/content/Context;J)V

    .line 10
    invoke-static {p1, v0, v1}, Lcom/engagelab/privates/common/l0;->b(Landroid/content/Context;J)V
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_17

    monitor-exit p0

    return-void

    :goto_3b
    :try_start_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_17

    throw p1
.end method

.method public b()Z
    .registers 2

    .line 38
    iget-boolean v0, p0, Lcom/engagelab/privates/common/l0;->c:Z

    return v0
.end method
