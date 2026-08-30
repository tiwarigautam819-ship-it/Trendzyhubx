###### Class com.engagelab.privates.common.u0 (com.engagelab.privates.common.u0)
.class public Lcom/engagelab/privates/common/u0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/engagelab/privates/common/s0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/engagelab/privates/common/s0;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/engagelab/privates/common/u0;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p0, :cond_12

    :try_start_6
    const-string p0, "MsgQueueUtils"

    const-string p1, "unexcepted , context is null"

    .line 11
    invoke-static {p0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_f

    monitor-exit v0

    return-object v1

    :catchall_f
    move-exception p0

    goto/16 :goto_7f

    .line 12
    :cond_12
    :try_start_12
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_f

    .line 13
    :try_start_17
    invoke-static {p0, p1}, Lcom/engagelab/privates/common/utils/FileUtils;->getAppKeyFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 14
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_54

    .line 15
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_26
    .catchall {:try_start_17 .. :try_end_26} :catchall_52

    .line 16
    :try_start_26
    invoke-static {v4}, Lcom/engagelab/privates/common/utils/Utils;->readAvailable(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 17
    new-instance v3, Lorg/json/JSONArray;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v3, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 18
    :goto_35
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_4d

    .line 19
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-wide/16 v6, -0x1

    .line 20
    invoke-static {v5, v6, v7}, Lcom/engagelab/privates/common/s0;->a(Lorg/json/JSONObject;J)Lcom/engagelab/privates/common/s0;

    move-result-object v5

    .line 21
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_48
    .catchall {:try_start_26 .. :try_end_48} :catchall_4b

    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    :catchall_4b
    move-exception v1

    goto :goto_4f

    :cond_4d
    move-object v1, v4

    goto :goto_54

    :goto_4f
    move-object v3, v1

    move-object v1, v4

    goto :goto_58

    :catchall_52
    move-exception v3

    goto :goto_58

    .line 22
    :cond_54
    :goto_54
    :try_start_54
    invoke-static {v1}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_78

    :goto_58
    const-string v4, "MsgQueueUtils"
    :try_end_5a
    .catchall {:try_start_54 .. :try_end_5a} :catchall_f

    .line 23
    :try_start_5a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "load objects error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-static {p0, p1}, Lcom/engagelab/privates/common/u0;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_75
    .catchall {:try_start_5a .. :try_end_75} :catchall_7a

    .line 25
    :try_start_75
    invoke-static {v1}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_f

    :goto_78
    monitor-exit v0

    return-object v2

    :catchall_7a
    move-exception p0

    :try_start_7b
    invoke-static {v1}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 26
    throw p0

    :goto_7f
    monitor-exit v0
    :try_end_80
    .catchall {:try_start_7b .. :try_end_80} :catchall_f

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/engagelab/privates/common/s0;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/engagelab/privates/common/u0;

    monitor-enter v0

    :try_start_3
    const-string v1, "MsgQueueUtils"

    const-string v2, "Action - saveObjects"

    .line 1
    invoke-static {v1, v2}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_17

    const-string p0, "MsgQueueUtils"

    const-string p1, "unexcepted , context is null"

    .line 2
    invoke-static {p0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    goto :goto_6c

    :cond_17
    if-nez p2, :cond_22

    :try_start_19
    const-string p0, "MsgQueueUtils"

    const-string p1, "mObjectList is null"

    .line 3
    invoke-static {p0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_15

    monitor-exit v0

    return-void

    .line 4
    :cond_22
    :try_start_22
    invoke-static {p0, p1}, Lcom/engagelab/privates/common/utils/FileUtils;->getAppKeyFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 5
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    .line 6
    :goto_2c
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_44

    .line 7
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/engagelab/privates/common/s0;

    .line 8
    invoke-virtual {v2}, Lcom/engagelab/privates/common/s0;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :catchall_42
    move-exception p0

    goto :goto_50

    .line 9
    :cond_44
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/engagelab/privates/common/utils/FileUtils;->save(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4f
    .catchall {:try_start_22 .. :try_end_4f} :catchall_42

    goto :goto_6a

    .line 10
    :goto_50
    :try_start_50
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "save Objects  error:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MsgQueueUtils"

    invoke-static {p1, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6a
    .catchall {:try_start_50 .. :try_end_6a} :catchall_15

    :goto_6a
    monitor-exit v0

    return-void

    :goto_6c
    :try_start_6c
    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_15

    throw p0
.end method

.method public static a(Landroid/content/Context;Lcom/engagelab/privates/common/s0;)Z
    .registers 10

    .line 27
    sget-object v0, Lcom/engagelab/privates/common/u0;->a:Ljava/util/Queue;

    const-string v1, "msg_queue_v350_privates"

    const/4 v2, 0x0

    const-string v3, "MsgQueueUtils"

    if-nez v0, :cond_47

    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/engagelab/privates/common/u0;->a:Ljava/util/Queue;

    .line 29
    :try_start_10
    invoke-static {p0, v1}, Lcom/engagelab/privates/common/u0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_47

    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v2

    :goto_21
    if-ge v5, v4, :cond_47

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/engagelab/privates/common/s0;

    .line 32
    sget-object v7, Lcom/engagelab/privates/common/u0;->a:Ljava/util/Queue;

    invoke-interface {v7, v6}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_30} :catch_31

    goto :goto_21

    :catch_31
    move-exception v0

    .line 33
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "init lastMsgQueue failed:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_47
    if-nez p0, :cond_4f

    const-string p0, "#unexcepted - context was null"

    .line 34
    invoke-static {v3, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_4f
    if-nez p1, :cond_56

    const-string v0, "#unexcepted - entityKey was null"

    .line 35
    invoke-static {v3, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_56
    sget-object v0, Lcom/engagelab/privates/common/u0;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 37
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Duplicated msg. Give up processing - "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 38
    :cond_71
    sget-object v0, Lcom/engagelab/privates/common/u0;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/16 v4, 0xc8

    if-lt v0, v4, :cond_80

    .line 39
    sget-object v0, Lcom/engagelab/privates/common/u0;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 40
    :cond_80
    sget-object v0, Lcom/engagelab/privates/common/u0;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 41
    :try_start_85
    invoke-static {p0, v1}, Lcom/engagelab/privates/common/u0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_93

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_93

    :catch_91
    move-exception p0

    goto :goto_a5

    .line 43
    :cond_93
    :goto_93
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x32

    if-lt v4, v5, :cond_9e

    .line 44
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 45
    :cond_9e
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-static {p0, v1, v0}, Lcom/engagelab/privates/common/u0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_a4} :catch_91

    goto :goto_ba

    .line 47
    :goto_a5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "msg save in sp failed:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_ba
    return v2
.end method

.method public static declared-synchronized b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 1
    const-class v0, Lcom/engagelab/privates/common/u0;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-nez p0, :cond_10

    .line 5
    .line 6
    :try_start_5
    const-string p0, "MsgQueueUtils"

    .line 7
    .line 8
    const-string p1, "unexcepted , context is null"

    .line 9
    .line 10
    invoke-static {p0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    .line 11
    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_e
    move-exception p0

    .line 16
    goto :goto_1f

    .line 17
    :cond_10
    :try_start_10
    invoke-static {p0, p1}, Lcom/engagelab/privates/common/utils/FileUtils;->getAppKeyFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1d

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_e

    .line 28
    .line 29
    .line 30
    :cond_1d
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :goto_1f
    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_e

    .line 33
    throw p0
.end method
