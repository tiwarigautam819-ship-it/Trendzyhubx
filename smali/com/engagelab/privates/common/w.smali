###### Class com.engagelab.privates.common.w (com.engagelab.privates.common.w)
.class public Lcom/engagelab/privates/common/w;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/engagelab/privates/common/w$c;
    }
.end annotation


# static fields
.field public static h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/engagelab/privates/push/api/InAppMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/engagelab/privates/push/api/InAppMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static j:I


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/engagelab/privates/push/api/InAppMessage;

.field public d:Z

.field public e:Ljava/lang/String;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/engagelab/privates/push/api/InAppMessage;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/engagelab/privates/common/w;->h:Ljava/util/List;

    .line 7
    .line 8
    new-instance v0, Ljava/util/LinkedList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/engagelab/privates/common/w;->i:Ljava/util/List;

    .line 14
    .line 15
    const/16 v0, 0xa

    .line 16
    .line 17
    sput v0, Lcom/engagelab/privates/common/w;->j:I

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/engagelab/privates/common/w;->b:Ljava/util/List;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/engagelab/privates/common/w;->e:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/engagelab/privates/common/w;->f:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/engagelab/privates/common/w;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/engagelab/privates/common/w$a;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/engagelab/privates/common/w;-><init>()V

    return-void
.end method

.method public static a(I)I
    .registers 2

    .line 82
    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    .line 83
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const-string v0, "4"

    .line 84
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 p0, 0x3

    return p0

    :cond_18
    const-string v0, "2"

    .line 85
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 p0, 0x2

    return p0

    :cond_22
    const-string v0, "3"

    .line 86
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_2c

    if-eqz p0, :cond_2c

    const/4 p0, 0x4

    return p0

    :catchall_2c
    :cond_2c
    const/4 p0, -0x1

    return p0
.end method

.method public static a(Ljava/io/File;)V
    .registers 3

    if-eqz p0, :cond_1a

    .line 149
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 150
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 151
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_17

    .line 152
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 153
    :cond_17
    :try_start_17
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1a

    :catchall_1a
    :cond_1a
    return-void
.end method

.method public static d()Lcom/engagelab/privates/common/w;
    .registers 1

    .line 1
    invoke-static {}, Lcom/engagelab/privates/common/w$c;->a()Lcom/engagelab/privates/common/w;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)Lcom/engagelab/privates/push/api/InAppMessage;
    .registers 5

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getMessage target="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MTInAppConfig"

    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    sget-object v0, Lcom/engagelab/privates/common/w;->h:Ljava/util/List;

    invoke-virtual {p0, p1, p2, v0}, Lcom/engagelab/privates/common/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Lcom/engagelab/privates/push/api/InAppMessage;

    move-result-object v0

    if-eqz v0, :cond_1c

    return-object v0

    .line 109
    :cond_1c
    sget-object v0, Lcom/engagelab/privates/common/w;->i:Ljava/util/List;

    invoke-virtual {p0, p1, p2, v0}, Lcom/engagelab/privates/common/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Lcom/engagelab/privates/push/api/InAppMessage;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Lcom/engagelab/privates/push/api/InAppMessage;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/engagelab/privates/push/api/InAppMessage;",
            ">;)",
            "Lcom/engagelab/privates/push/api/InAppMessage;"
        }
    .end annotation

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getMessage target="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MTInAppConfig"

    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/w;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 112
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/w;->a(Landroid/content/Context;)V

    :cond_1c
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 113
    :try_start_1e
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_dd

    move-object v3, v2

    :cond_23
    :goto_23
    :try_start_23
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/engagelab/privates/push/api/InAppMessage;

    .line 114
    iget-object v5, p0, Lcom/engagelab/privates/common/w;->f:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    goto :goto_23

    .line 115
    :cond_38
    invoke-virtual {v4}, Lcom/engagelab/privates/push/api/InAppMessage;->getTarget()Ljava/lang/String;

    move-result-object v5

    .line 116
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4c

    .line 117
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    goto :goto_4d

    :catchall_48
    move-exception p3

    move-object v2, v3

    goto/16 :goto_de

    :cond_4c
    move-object v6, v2

    .line 118
    :goto_4d
    invoke-virtual {v4}, Lcom/engagelab/privates/push/api/InAppMessage;->getPriority()I

    move-result v5

    const/4 v7, 0x4

    if-eq v7, v5, :cond_5a

    const/4 v7, 0x3

    if-eq v7, v5, :cond_5a

    const/4 v7, 0x2

    if-ne v7, v5, :cond_7f

    .line 119
    :cond_5a
    iget-object v7, p0, Lcom/engagelab/privates/common/w;->b:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7f

    .line 120
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Lcom/engagelab/privates/common/w;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " message had show, current type message show only once in this activity"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    :cond_7f
    if-eqz v6, :cond_c3

    .line 121
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-gtz v7, :cond_88

    goto :goto_c3

    :cond_88
    move v7, v0

    .line 122
    :goto_89
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_23

    .line 123
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 124
    invoke-virtual {p2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_c0

    .line 125
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "find "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Lcom/engagelab/privates/common/w;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " match target="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    goto/16 :goto_23

    :cond_c0
    add-int/lit8 v7, v7, 0x1

    goto :goto_89

    .line 126
    :cond_c3
    :goto_c3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Lcom/engagelab/privates/common/w;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " message target is null, so can show any activity"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_db
    .catchall {:try_start_23 .. :try_end_db} :catchall_48

    move-object v3, v4

    goto :goto_f0

    :catchall_dd
    move-exception p3

    .line 127
    :goto_de
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get message throwable="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    :cond_f0
    :goto_f0
    if-eqz v3, :cond_13c

    .line 128
    :try_start_f2
    invoke-virtual {v3}, Lcom/engagelab/privates/push/api/InAppMessage;->getExpired()J

    move-result-wide v4

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long p3, v4, v6

    if-gtz p3, :cond_123

    .line 130
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMessage  out of date, endTime: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0, v3, v0}, Lcom/engagelab/privates/common/w;->a(Lcom/engagelab/privates/push/api/InAppMessage;Z)V

    .line 132
    invoke-virtual {v3}, Lcom/engagelab/privates/push/api/InAppMessage;->getMessageId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/engagelab/privates/common/w;->b(Ljava/lang/String;)Z

    .line 133
    invoke-virtual {p0, p1, p2}, Lcom/engagelab/privates/common/w;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/engagelab/privates/push/api/InAppMessage;

    move-result-object p1

    return-object p1

    :catchall_121
    move-exception p1

    goto :goto_12b

    .line 134
    :cond_123
    iput-object v3, p0, Lcom/engagelab/privates/common/w;->c:Lcom/engagelab/privates/push/api/InAppMessage;

    .line 135
    iget-object p1, p0, Lcom/engagelab/privates/common/w;->f:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_12a
    .catchall {:try_start_f2 .. :try_end_12a} :catchall_121

    goto :goto_13c

    .line 136
    :goto_12b
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "get message2 throwable="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13c
    :goto_13c
    return-object v3
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;)Lcom/engagelab/privates/push/api/InAppMessage;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/engagelab/privates/push/api/InAppMessage;",
            ">;)",
            "Lcom/engagelab/privates/push/api/InAppMessage;"
        }
    .end annotation

    .line 9
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/engagelab/privates/push/api/InAppMessage;

    .line 10
    invoke-virtual {v0}, Lcom/engagelab/privates/push/api/InAppMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    :cond_1b
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lorg/json/JSONObject;)Lcom/engagelab/privates/push/api/InAppMessage;
    .registers 31

    move-object/from16 v0, p1

    const-string v1, "html"

    const-string v2, "banner"

    const-string v3, "full"

    const-string v4, "interstitial"

    :try_start_a
    const-string v6, "type"

    .line 20
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "is_notification"

    const/4 v8, 0x0

    .line 21
    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-string v10, "msg_time"

    .line 23
    invoke-virtual {v0, v10, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 24
    invoke-static {v6}, Lcom/engagelab/privates/common/w;->a(I)I

    move-result v10

    const-string v11, "android_target"

    .line 25
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    const-string v12, "target_event"

    .line 26
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    const-string v13, "expired"

    .line 27
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v13

    const-string v15, "msg_id"
    :try_end_38
    .catchall {:try_start_a .. :try_end_38} :catchall_156

    move/from16 v17, v6

    const/16 v16, 0x0

    .line 28
    :try_start_3c
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    const-string v15, "appkey"

    .line 29
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v18, v11

    const-string v11, "delay"

    move-object/from16 v19, v12

    .line 30
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v11

    move-object/from16 v20, v15

    const-string v15, "interval"

    move-wide/from16 v21, v5

    .line 31
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    const-string v15, "duration"

    move-wide/from16 v23, v5

    const-wide/16 v5, 0x7530

    .line 32
    invoke-virtual {v0, v15, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    const-string v15, "image"

    .line 33
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move/from16 v25, v7

    const-string v7, "extras"

    .line 34
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 35
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_8e

    move-object/from16 v26, v7

    const/16 v7, 0x14

    move-wide/from16 v27, v5

    move/from16 v5, v17

    if-eq v7, v5, :cond_86

    const/16 v6, 0x15

    if-ne v6, v5, :cond_94

    .line 36
    :cond_86
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_cb

    :catchall_8b
    move-exception v0

    goto/16 :goto_159

    :cond_8e
    move-wide/from16 v27, v5

    move-object/from16 v26, v7

    move/from16 v5, v17

    .line 37
    :cond_94
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a7

    const/16 v4, 0x1e

    if-eq v4, v5, :cond_a2

    const/16 v4, 0x1f

    if-ne v4, v5, :cond_a7

    .line 38
    :cond_a2
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_cb

    .line 39
    :cond_a7
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ba

    const/16 v3, 0xa

    if-eq v3, v5, :cond_b5

    const/16 v3, 0xb

    if-ne v3, v5, :cond_ba

    .line 40
    :cond_b5
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_cb

    .line 41
    :cond_ba
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c9

    const/16 v2, 0x28

    if-ne v2, v5, :cond_c9

    .line 42
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_cb

    :cond_c9
    move-object/from16 v1, v16

    .line 43
    :goto_cb
    new-instance v2, Lcom/engagelab/privates/push/api/InAppMessage;

    invoke-direct {v2}, Lcom/engagelab/privates/push/api/InAppMessage;-><init>()V

    const-string v3, "click"

    .line 44
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_df

    .line 45
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/engagelab/privates/push/api/InAppMessage;->setClick(Ljava/lang/String;)Lcom/engagelab/privates/push/api/InAppMessage;

    :cond_df
    if-eqz v26, :cond_e8

    .line 46
    invoke-virtual/range {v26 .. v26}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/engagelab/privates/push/api/InAppMessage;->setExtras(Ljava/lang/String;)Lcom/engagelab/privates/push/api/InAppMessage;

    :cond_e8
    if-eqz v1, :cond_f1

    .line 47
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/engagelab/privates/push/api/InAppMessage;->setContent(Ljava/lang/String;)Lcom/engagelab/privates/push/api/InAppMessage;

    :cond_f1
    if-eqz v18, :cond_100

    .line 48
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_100

    .line 49
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/engagelab/privates/push/api/InAppMessage;->setTarget(Ljava/lang/String;)Lcom/engagelab/privates/push/api/InAppMessage;

    :cond_100
    if-eqz v19, :cond_10f

    .line 50
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_10f

    .line 51
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/engagelab/privates/push/api/InAppMessage;->setTargetEvent(Ljava/lang/String;)Lcom/engagelab/privates/push/api/InAppMessage;

    .line 52
    :cond_10f
    invoke-virtual {v2, v11, v12}, Lcom/engagelab/privates/push/api/InAppMessage;->setDelay(J)Lcom/engagelab/privates/push/api/InAppMessage;

    move-result-object v0

    .line 53
    invoke-virtual {v0, v10}, Lcom/engagelab/privates/push/api/InAppMessage;->setPriority(I)Lcom/engagelab/privates/push/api/InAppMessage;

    move-result-object v0

    .line 54
    invoke-virtual {v0, v8, v9}, Lcom/engagelab/privates/push/api/InAppMessage;->setMsgTime(J)Lcom/engagelab/privates/push/api/InAppMessage;

    move-result-object v0

    .line 55
    invoke-virtual {v0, v15}, Lcom/engagelab/privates/push/api/InAppMessage;->setImageUrl(Ljava/lang/String;)Lcom/engagelab/privates/push/api/InAppMessage;

    move-result-object v0

    .line 56
    invoke-virtual {v0, v5}, Lcom/engagelab/privates/push/api/InAppMessage;->setType(I)Lcom/engagelab/privates/push/api/InAppMessage;

    move-result-object v0

    .line 57
    invoke-virtual {v0, v13, v14}, Lcom/engagelab/privates/push/api/InAppMessage;->setExpired(J)Lcom/engagelab/privates/push/api/InAppMessage;

    move-result-object v0

    move-wide/from16 v3, v23

    .line 58
    invoke-virtual {v0, v3, v4}, Lcom/engagelab/privates/push/api/InAppMessage;->setInterval(J)Lcom/engagelab/privates/push/api/InAppMessage;

    move-result-object v0

    move-wide/from16 v3, v27

    .line 59
    invoke-virtual {v0, v3, v4}, Lcom/engagelab/privates/push/api/InAppMessage;->setDuration(J)Lcom/engagelab/privates/push/api/InAppMessage;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v3, v21

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Lcom/engagelab/privates/push/api/InAppMessage;->setMessageId(Ljava/lang/String;)Lcom/engagelab/privates/push/api/InAppMessage;

    move-result-object v0

    move/from16 v1, v25

    .line 61
    invoke-virtual {v0, v1}, Lcom/engagelab/privates/push/api/InAppMessage;->setIsNotification(Z)Lcom/engagelab/privates/push/api/InAppMessage;

    move-result-object v0

    move-object/from16 v1, v20

    .line 62
    invoke-virtual {v0, v1}, Lcom/engagelab/privates/push/api/InAppMessage;->setAppkey(Ljava/lang/String;)Lcom/engagelab/privates/push/api/InAppMessage;
    :try_end_155
    .catchall {:try_start_3c .. :try_end_155} :catchall_8b

    return-object v2

    :catchall_156
    move-exception v0

    const/16 v16, 0x0

    .line 63
    :goto_159
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "msgToInAppMessage failed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MTInAppConfig"

    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v16
.end method

.method public final a(Lcom/engagelab/privates/push/api/InAppMessage;)Ljava/lang/String;
    .registers 6

    .line 64
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "type"

    .line 65
    :try_start_7
    invoke-virtual {p1}, Lcom/engagelab/privates/push/api/InAppMessage;->getType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_8d

    const-string v1, "priority"

    .line 66
    :try_start_10
    invoke-virtual {p1}, Lcom/engagelab/privates/push/api/InAppMessage;->getPriority()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_8d

    const-string v1, "click"

    .line 67
    :try_start_19
    invoke-virtual {p1}, Lcom/engagelab/privates/push/api/InAppMessage;->getClick()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_8d

    const-string v1, "content"

    .line 68
    :try_start_22
    invoke-virtual {p1}, Lcom/engagelab/privates/push/api/InAppMessage;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_8d

    const-string v1, "delay"

    .line 69
    :try_start_2b
    invoke-virtual {p1}, Lcom/engagelab/privates/push/api/InAppMessage;->getDelay()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_8d

    const-string v1, "expired"

    .line 70
    :try_start_34
    invoke-virtual {p1}, Lcom/engagelab/privates/push/api/InAppMessage;->getExpired()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_8d

    const-string v1, "extras"

    .line 71
    :try_start_3d
    invoke-virtual {p1}, Lcom/engagelab/privates/push/api/InAppMessage;->getExtras()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_8d

    const-string v1, "image"

    .line 72
    :try_start_46
    invoke-virtual {p1}, Lcom/engagelab/privates/push/api/InAppMessage;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4d
    .catchall {:try_start_46 .. :try_end_4d} :catchall_8d

    const-string v1, "interval"

    .line 73
    :try_start_4f
    invoke-virtual {p1}, Lcom/engagelab/privates/push/api/InAppMessage;->getInterval()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_56
    .catchall {:try_start_4f .. :try_end_56} :catchall_8d

    const-string v1, "msg_id"

    .line 74
    :try_start_58
    invoke-virtual {p1}, Lcom/engagelab/privates/push/api/InAppMessage;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5f
    .catchall {:try_start_58 .. :try_end_5f} :catchall_8d

    const-string v1, "msg_time"

    .line 75
    :try_start_61
    invoke-virtual {p1}, Lcom/engagelab/privates/push/api/InAppMessage;->getMsgTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_68
    .catchall {:try_start_61 .. :try_end_68} :catchall_8d

    const-string v1, "duration"

    .line 76
    :try_start_6a
    invoke-virtual {p1}, Lcom/engagelab/privates/push/api/InAppMessage;->getDuration()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_71
    .catchall {:try_start_6a .. :try_end_71} :catchall_8d

    const-string v1, "is_notification"

    .line 77
    :try_start_73
    invoke-virtual {p1}, Lcom/engagelab/privates/push/api/InAppMessage;->isNotification()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_7a
    .catchall {:try_start_73 .. :try_end_7a} :catchall_8d

    const-string v1, "android_target"

    .line 78
    :try_start_7c
    invoke-virtual {p1}, Lcom/engagelab/privates/push/api/InAppMessage;->getTarget()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_83
    .catchall {:try_start_7c .. :try_end_83} :catchall_8d

    const-string v1, "target_event"

    .line 79
    :try_start_85
    invoke-virtual {p1}, Lcom/engagelab/privates/push/api/InAppMessage;->getTargetEvent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8c
    .catchall {:try_start_85 .. :try_end_8c} :catchall_8d

    goto :goto_a5

    :catchall_8d
    move-exception p1

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "inAppMessageToString failed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MTInAppConfig"

    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :goto_a5
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .registers 3

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/engagelab/privates/common/w;->b:Ljava/util/List;

    if-nez v0, :cond_b

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/engagelab/privates/common/w;->b:Ljava/util/List;

    .line 139
    :cond_b
    iget-object v0, p0, Lcom/engagelab/privates/common/w;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/engagelab/privates/common/w;->c:Lcom/engagelab/privates/push/api/InAppMessage;

    invoke-virtual {v1}, Lcom/engagelab/privates/push/api/InAppMessage;->getPriority()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1a

    :catchall_1a
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/common/w;->a:Landroid/content/Context;

    .line 2
    invoke-static {p1}, Lcom/engagelab/privates/common/v;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/engagelab/privates/common/w;->e:Ljava/lang/String;

    .line 3
    sget-object p1, Lcom/engagelab/privates/common/w;->h:Ljava/util/List;

    const-string v0, "inapp_data"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/engagelab/privates/common/w;->a(Ljava/util/List;Ljava/lang/String;Z)V

    .line 4
    sget-object p1, Lcom/engagelab/privates/common/w;->i:Ljava/util/List;

    const-string v0, "inapp_data_n"

    invoke-virtual {p0, p1, v0, v1}, Lcom/engagelab/privates/common/w;->a(Ljava/util/List;Ljava/lang/String;Z)V

    .line 5
    iput-boolean v1, p0, Lcom/engagelab/privates/common/w;->d:Z

    return-void
.end method

.method public a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 5

    .line 11
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/w;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 12
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/w;->a(Landroid/content/Context;)V

    :cond_9
    if-nez p2, :cond_c

    return-void

    .line 13
    :cond_c
    invoke-virtual {p0, p2}, Lcom/engagelab/privates/common/w;->a(Lorg/json/JSONObject;)Lcom/engagelab/privates/push/api/InAppMessage;

    move-result-object p1

    const-string p2, "MTInAppConfig"

    if-nez p1, :cond_1a

    const-string p1, "msgToInAppMessage is null "

    .line 14
    invoke-static {p2, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 15
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "msgToInAppMessage inAppMessage="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->debugOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "msgToInAppMessage inAppMessageId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/engagelab/privates/push/api/InAppMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Lcom/engagelab/privates/push/api/InAppMessage;->isNotification()Z

    move-result p2

    if-eqz p2, :cond_4e

    .line 18
    sget-object p2, Lcom/engagelab/privates/common/w;->i:Ljava/util/List;

    const-string v0, "inapp_data_n"

    invoke-virtual {p0, p2, p1, v0}, Lcom/engagelab/privates/common/w;->a(Ljava/util/List;Lcom/engagelab/privates/push/api/InAppMessage;Ljava/lang/String;)V

    return-void

    .line 19
    :cond_4e
    sget-object p2, Lcom/engagelab/privates/common/w;->h:Ljava/util/List;

    const-string v0, "inapp_data"

    invoke-virtual {p0, p2, p1, v0}, Lcom/engagelab/privates/common/w;->a(Ljava/util/List;Lcom/engagelab/privates/push/api/InAppMessage;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/engagelab/privates/push/api/InAppMessage;Z)V
    .registers 6

    .line 154
    invoke-static {}, Lcom/engagelab/privates/common/u;->a()Lcom/engagelab/privates/common/u;

    move-result-object v0

    iget-object v1, p0, Lcom/engagelab/privates/common/w;->a:Landroid/content/Context;

    if-eqz p2, :cond_c

    const p2, 0x9a9a27

    goto :goto_f

    :cond_c
    const p2, 0x9a9a22

    :goto_f
    invoke-virtual {p1}, Lcom/engagelab/privates/push/api/InAppMessage;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/engagelab/privates/push/api/InAppMessage;->getAppkey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/engagelab/privates/common/u;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 6

    const-string v0, "mt_in_app_"

    .line 102
    :try_start_2
    iget-object v1, p0, Lcom/engagelab/privates/common/w;->a:Landroid/content/Context;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_19

    const-string v2, "mt_in_app_down"

    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/engagelab/privates/common/utils/FileUtils;->getAppKeyFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 103
    invoke-static {p1}, Lcom/engagelab/privates/common/utils/FileUtils;->deleteDirectory(Ljava/io/File;)Z
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_19

    :catchall_19
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/engagelab/privates/push/api/InAppMessage;",
            ">;)V"
        }
    .end annotation

    .line 93
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lcom/engagelab/privates/common/w;->j:I

    if-lt v0, v1, :cond_2d

    .line 94
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/w;->c(Ljava/util/List;)V

    .line 95
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 96
    :goto_f
    sget v1, Lcom/engagelab/privates/common/w;->j:I

    if-lt v0, v1, :cond_2d

    const/4 v0, 0x0

    .line 97
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/engagelab/privates/push/api/InAppMessage;

    .line 98
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 99
    invoke-virtual {v1}, Lcom/engagelab/privates/push/api/InAppMessage;->getMessageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/engagelab/privates/common/w;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 100
    invoke-virtual {p0, v1, v0}, Lcom/engagelab/privates/common/w;->a(Lcom/engagelab/privates/push/api/InAppMessage;Z)V

    .line 101
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_f

    :cond_2d
    return-void
.end method

.method public final a(Ljava/util/List;Lcom/engagelab/privates/push/api/InAppMessage;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/engagelab/privates/push/api/InAppMessage;",
            ">;",
            "Lcom/engagelab/privates/push/api/InAppMessage;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 87
    invoke-virtual {p0, p2, p1}, Lcom/engagelab/privates/common/w;->a(Lcom/engagelab/privates/push/api/InAppMessage;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 88
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "the notify message cache already, messageId: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/InAppMessage;->getMessageId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MTInAppConfig"

    invoke-static {p2, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 89
    :cond_1e
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/w;->a(Ljava/util/List;)V

    .line 91
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/w;->b(Ljava/util/List;)V

    .line 92
    invoke-virtual {p0, p3, p1}, Lcom/engagelab/privates/common/w;->c(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public final a(Ljava/util/List;Ljava/lang/String;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/engagelab/privates/push/api/InAppMessage;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    if-eqz p3, :cond_5

    .line 6
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 7
    :cond_5
    invoke-virtual {p0, p2, p1}, Lcom/engagelab/privates/common/w;->b(Ljava/lang/String;Ljava/util/List;)V

    .line 8
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/w;->b(Ljava/util/List;)V

    return-void
.end method

.method public final a(Lcom/engagelab/privates/push/api/InAppMessage;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/engagelab/privates/push/api/InAppMessage;",
            "Ljava/util/List<",
            "Lcom/engagelab/privates/push/api/InAppMessage;",
            ">;)Z"
        }
    .end annotation

    .line 104
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_8

    return v1

    :cond_8
    if-nez p1, :cond_b

    return v1

    .line 105
    :cond_b
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/engagelab/privates/push/api/InAppMessage;

    .line 106
    invoke-virtual {v0}, Lcom/engagelab/privates/push/api/InAppMessage;->getMessageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/engagelab/privates/push/api/InAppMessage;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 p1, 0x1

    return p1

    :cond_2b
    return v1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/engagelab/privates/push/api/InAppMessage;",
            ">;)Z"
        }
    .end annotation

    .line 140
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 141
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "MTInAppConfig"

    if-eqz v1, :cond_3a

    .line 142
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/engagelab/privates/push/api/InAppMessage;

    .line 143
    invoke-virtual {v1}, Lcom/engagelab/privates/push/api/InAppMessage;->getMessageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 144
    iget-object v3, p0, Lcom/engagelab/privates/common/w;->f:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 145
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "deleteMessage mInAppList remove msgID="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0, p2, p3}, Lcom/engagelab/privates/common/w;->d(Ljava/lang/String;Ljava/util/List;)V

    const/4 p1, 0x1

    return p1

    .line 148
    :cond_3a
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "delete failed, not found msgID="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final b(I)Ljava/lang/String;
    .registers 3

    .line 1
    const/4 v0, 0x2

    if-eq p1, v0, :cond_12

    const/4 v0, 0x3

    if-eq p1, v0, :cond_f

    const/4 v0, 0x4

    if-eq p1, v0, :cond_c

    const-string p1, "Banner"

    return-object p1

    :cond_c
    const-string p1, "Full"

    return-object p1

    :cond_f
    const-string p1, "Html"

    return-object p1

    :cond_12
    const-string p1, "Interstitial"

    return-object p1
.end method

.method public b()V
    .registers 2

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/engagelab/privates/common/w;->a()V

    .line 10
    iget-object v0, p0, Lcom/engagelab/privates/common/w;->c:Lcom/engagelab/privates/push/api/InAppMessage;

    if-eqz v0, :cond_17

    .line 11
    invoke-virtual {v0}, Lcom/engagelab/privates/push/api/InAppMessage;->getMessageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/engagelab/privates/common/w;->b(Ljava/lang/String;)Z

    .line 12
    iget-object v0, p0, Lcom/engagelab/privates/common/w;->c:Lcom/engagelab/privates/push/api/InAppMessage;

    invoke-virtual {v0}, Lcom/engagelab/privates/push/api/InAppMessage;->getMessageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/engagelab/privates/common/w;->a(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_17

    :catchall_17
    :cond_17
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/engagelab/privates/push/api/InAppMessage;",
            ">;)V"
        }
    .end annotation

    const-string v0, "MTInAppConfig"

    const/4 v1, 0x0

    .line 15
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/w;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_a1

    .line 16
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_a1

    .line 17
    new-instance v3, Ljava/lang/String;

    invoke-static {v2}, Lcom/engagelab/privates/common/utils/FileUtils;->read2Bytes(Ljava/io/File;)[B

    move-result-object v2

    const-string v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 18
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a1

    .line 19
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 20
    iget-object v3, p0, Lcom/engagelab/privates/common/w;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 21
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    :goto_31
    if-ltz v3, :cond_a1

    .line 22
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/engagelab/privates/common/w;->f(Ljava/lang/String;)Lcom/engagelab/privates/push/api/InAppMessage;

    move-result-object v6

    if-nez v6, :cond_42

    goto :goto_9e

    .line 23
    :cond_42
    invoke-virtual {v6}, Lcom/engagelab/privates/push/api/InAppMessage;->getExpired()J

    move-result-wide v7

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v9, v7, v9

    if-gtz v9, :cond_6d

    .line 25
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadObjects message out of date, endTime: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v7, p0, Lcom/engagelab/privates/common/w;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 27
    invoke-virtual {p0, v6, v4}, Lcom/engagelab/privates/common/w;->a(Lcom/engagelab/privates/push/api/InAppMessage;Z)V

    goto :goto_9e

    :catchall_6b
    move-exception v2

    goto :goto_aa

    .line 28
    :cond_6d
    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    sget v7, Lcom/engagelab/privates/common/w;->j:I

    if-ne v6, v7, :cond_9e

    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[loadObjects] reach max cache message count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/engagelab/privates/common/w;->j:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", drop message count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    sget v4, Lcom/engagelab/privates/common/w;->j:I

    sub-int/2addr v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9d
    .catchall {:try_start_3 .. :try_end_9d} :catchall_6b

    goto :goto_a1

    :cond_9e
    :goto_9e
    add-int/lit8 v3, v3, -0x1

    goto :goto_31

    .line 31
    :cond_a1
    :goto_a1
    iget-object v2, p0, Lcom/engagelab/privates/common/w;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_d0

    goto :goto_cd

    .line 32
    :goto_aa
    :try_start_aa
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load objects error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/w;->e(Ljava/lang/String;)V
    :try_end_c5
    .catchall {:try_start_aa .. :try_end_c5} :catchall_e9

    .line 34
    iget-object v2, p0, Lcom/engagelab/privates/common/w;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_d0

    .line 35
    :goto_cd
    invoke-virtual {p0, p1, p2}, Lcom/engagelab/privates/common/w;->d(Ljava/lang/String;Ljava/util/List;)V

    .line 36
    :cond_d0
    invoke-static {v1}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "load object size: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_e9
    move-exception v0

    .line 38
    iget-object v2, p0, Lcom/engagelab/privates/common/w;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_f5

    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/engagelab/privates/common/w;->d(Ljava/lang/String;Ljava/util/List;)V

    .line 40
    :cond_f5
    invoke-static {v1}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 41
    throw v0
.end method

.method public final b(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/engagelab/privates/push/api/InAppMessage;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_12

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_a

    goto :goto_12

    .line 8
    :cond_a
    new-instance v0, Lcom/engagelab/privates/common/w$b;

    invoke-direct {v0, p0}, Lcom/engagelab/privates/common/w$b;-><init>(Lcom/engagelab/privates/common/w;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_12
    :goto_12
    return-void
.end method

.method public b(Landroid/content/Context;)Z
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/engagelab/privates/common/w;->e:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 3
    invoke-static {p1}, Lcom/engagelab/privates/common/v;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/engagelab/privates/common/w;->e:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/engagelab/privates/common/w;->d:Z

    .line 6
    :cond_13
    iget-boolean p1, p0, Lcom/engagelab/privates/common/w;->d:Z

    return p1
.end method

.method public b(Ljava/lang/String;)Z
    .registers 4

    .line 13
    sget-object v0, Lcom/engagelab/privates/common/w;->h:Ljava/util/List;

    const-string v1, "inapp_data"

    invoke-virtual {p0, p1, v1, v0}, Lcom/engagelab/privates/common/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p1, 0x1

    return p1

    .line 14
    :cond_c
    sget-object v0, Lcom/engagelab/privates/common/w;->i:Ljava/util/List;

    const-string v1, "inapp_data_n"

    invoke-virtual {p0, p1, v1, v0}, Lcom/engagelab/privates/common/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public final c(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    .line 30
    iget-object v0, p0, Lcom/engagelab/privates/common/w;->a:Landroid/content/Context;

    const-string v1, "in_app"

    invoke-static {v0, v1, p1}, Lcom/engagelab/privates/common/utils/FileUtils;->getAppKeyFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public c()V
    .registers 1

    .line 1
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/engagelab/privates/push/api/InAppMessage;",
            ">;)V"
        }
    .end annotation

    const-string v0, "MTInAppConfig"

    if-eqz p2, :cond_af

    .line 4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_c

    goto/16 :goto_af

    .line 5
    :cond_c
    :try_start_c
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/w;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lcom/engagelab/privates/common/w;->a(Ljava/io/File;)V

    if-nez p1, :cond_1e

    const-string p1, "file is null"

    .line 7
    invoke-static {v0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_1b
    move-exception p1

    goto/16 :goto_a4

    .line 8
    :cond_1e
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 9
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_29
    if-ltz v2, :cond_98

    .line 10
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/engagelab/privates/push/api/InAppMessage;

    if-nez v3, :cond_34

    goto :goto_95

    .line 11
    :cond_34
    invoke-virtual {v3}, Lcom/engagelab/privates/push/api/InAppMessage;->getExpired()J

    move-result-wide v4

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_60

    .line 13
    invoke-interface {p2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveObjects message out of date, endTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/engagelab/privates/push/api/InAppMessage;->getMessageId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 15
    invoke-virtual {p0, v3, v4}, Lcom/engagelab/privates/common/w;->a(Lcom/engagelab/privates/push/api/InAppMessage;Z)V

    goto :goto_95

    .line 16
    :cond_60
    invoke-virtual {p0, v3}, Lcom/engagelab/privates/common/w;->a(Lcom/engagelab/privates/push/api/InAppMessage;)Ljava/lang/String;

    move-result-object v3

    .line 17
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 18
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    sget v4, Lcom/engagelab/privates/common/w;->j:I

    if-ne v3, v4, :cond_95

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[saveObjects] reach max cache message count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/engagelab/privates/common/w;->j:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", drop message count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sget v3, Lcom/engagelab/privates/common/w;->j:I

    sub-int/2addr p2, v3

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_98

    :cond_95
    :goto_95
    add-int/lit8 v2, v2, -0x1

    goto :goto_29

    .line 20
    :cond_98
    :goto_98
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/engagelab/privates/common/utils/FileUtils;->save(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_a3
    .catchall {:try_start_c .. :try_end_a3} :catchall_1b

    return-void

    .line 21
    :goto_a4
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "save Objects  error:"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-static {p1, p2, v0}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void

    .line 23
    :cond_af
    :goto_af
    const-string p2, "mObjectList is null or size is 0"

    .line 24
    invoke-static {v0, p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/w;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final c(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/engagelab/privates/push/api/InAppMessage;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_12

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_a

    goto :goto_12

    .line 3
    :cond_a
    new-instance v0, Lcom/engagelab/privates/common/w$a;

    invoke-direct {v0, p0}, Lcom/engagelab/privates/common/w$a;-><init>(Lcom/engagelab/privates/common/w;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_12
    :goto_12
    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/engagelab/privates/push/api/InAppMessage;
    .registers 4

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "deleteMessage msgID="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MTInAppConfig"

    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/engagelab/privates/common/w;->h:Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lcom/engagelab/privates/common/w;->a(Ljava/lang/String;Ljava/util/List;)Lcom/engagelab/privates/push/api/InAppMessage;

    move-result-object v0

    if-eqz v0, :cond_1c

    return-object v0

    .line 4
    :cond_1c
    sget-object v0, Lcom/engagelab/privates/common/w;->i:Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lcom/engagelab/privates/common/w;->a(Ljava/lang/String;Ljava/util/List;)Lcom/engagelab/privates/push/api/InAppMessage;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/engagelab/privates/push/api/InAppMessage;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/engagelab/privates/common/w;->c(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public e()V
    .registers 3

    const-string v0, "MTInAppConfig"

    const-string v1, " target change, set default data"

    .line 1
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/engagelab/privates/common/w;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .registers 3

    .line 3
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/w;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_10

    .line 4
    :cond_7
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_10
    :goto_10
    return-void
.end method

.method public final f(Ljava/lang/String;)Lcom/engagelab/privates/push/api/InAppMessage;
    .registers 8

    .line 1
    const-string v0, "MTInAppConfig"

    .line 2
    .line 3
    const-string v1, "stringToInAppMessage object "

    .line 4
    .line 5
    new-instance v2, Lcom/engagelab/privates/push/api/InAppMessage;

    .line 6
    .line 7
    invoke-direct {v2}, Lcom/engagelab/privates/push/api/InAppMessage;-><init>()V

    .line 8
    .line 9
    .line 10
    :try_start_9
    new-instance v3, Lorg/json/JSONObject;

    .line 11
    .line 12
    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {v0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string p1, "type"

    .line 31
    .line 32
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-virtual {v2, p1}, Lcom/engagelab/privates/push/api/InAppMessage;->setType(I)Lcom/engagelab/privates/push/api/InAppMessage;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string v1, "priority"

    .line 41
    .line 42
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-virtual {p1, v1}, Lcom/engagelab/privates/push/api/InAppMessage;->setPriority(I)Lcom/engagelab/privates/push/api/InAppMessage;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const-string v1, "click"

    .line 51
    .line 52
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {p1, v1}, Lcom/engagelab/privates/push/api/InAppMessage;->setClick(Ljava/lang/String;)Lcom/engagelab/privates/push/api/InAppMessage;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const-string v1, "content"

    .line 61
    .line 62
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {p1, v1}, Lcom/engagelab/privates/push/api/InAppMessage;->setContent(Ljava/lang/String;)Lcom/engagelab/privates/push/api/InAppMessage;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const-string v1, "delay"

    .line 71
    .line 72
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 73
    .line 74
    .line 75
    move-result-wide v4

    .line 76
    invoke-virtual {p1, v4, v5}, Lcom/engagelab/privates/push/api/InAppMessage;->setDelay(J)Lcom/engagelab/privates/push/api/InAppMessage;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    const-string v1, "expired"

    .line 81
    .line 82
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 83
    .line 84
    .line 85
    move-result-wide v4

    .line 86
    invoke-virtual {p1, v4, v5}, Lcom/engagelab/privates/push/api/InAppMessage;->setExpired(J)Lcom/engagelab/privates/push/api/InAppMessage;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    const-string v1, "extras"

    .line 91
    .line 92
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {p1, v1}, Lcom/engagelab/privates/push/api/InAppMessage;->setExtras(Ljava/lang/String;)Lcom/engagelab/privates/push/api/InAppMessage;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    const-string v1, "image"

    .line 101
    .line 102
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {p1, v1}, Lcom/engagelab/privates/push/api/InAppMessage;->setImageUrl(Ljava/lang/String;)Lcom/engagelab/privates/push/api/InAppMessage;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    const-string v1, "interval"

    .line 111
    .line 112
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 113
    .line 114
    .line 115
    move-result-wide v4

    .line 116
    invoke-virtual {p1, v4, v5}, Lcom/engagelab/privates/push/api/InAppMessage;->setInterval(J)Lcom/engagelab/privates/push/api/InAppMessage;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    const-string v1, "msg_id"

    .line 121
    .line 122
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {p1, v1}, Lcom/engagelab/privates/push/api/InAppMessage;->setMessageId(Ljava/lang/String;)Lcom/engagelab/privates/push/api/InAppMessage;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    const-string v1, "is_notification"

    .line 131
    .line 132
    const/4 v4, 0x0

    .line 133
    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    invoke-virtual {p1, v1}, Lcom/engagelab/privates/push/api/InAppMessage;->setIsNotification(Z)Lcom/engagelab/privates/push/api/InAppMessage;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    const-string v1, "msg_time"

    .line 142
    .line 143
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 144
    .line 145
    .line 146
    move-result-wide v4

    .line 147
    invoke-virtual {p1, v4, v5}, Lcom/engagelab/privates/push/api/InAppMessage;->setMsgTime(J)Lcom/engagelab/privates/push/api/InAppMessage;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    const-string v1, "duration"

    .line 152
    .line 153
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 154
    .line 155
    .line 156
    move-result-wide v4

    .line 157
    invoke-virtual {p1, v4, v5}, Lcom/engagelab/privates/push/api/InAppMessage;->setDuration(J)Lcom/engagelab/privates/push/api/InAppMessage;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    const-string v1, "android_target"

    .line 162
    .line 163
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-virtual {p1, v1}, Lcom/engagelab/privates/push/api/InAppMessage;->setTarget(Ljava/lang/String;)Lcom/engagelab/privates/push/api/InAppMessage;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    const-string v1, "target_event"

    .line 172
    .line 173
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-virtual {p1, v1}, Lcom/engagelab/privates/push/api/InAppMessage;->setTargetEvent(Ljava/lang/String;)Lcom/engagelab/privates/push/api/InAppMessage;
    :try_end_b3
    .catchall {:try_start_9 .. :try_end_b3} :catchall_b4

    .line 178
    .line 179
    .line 180
    return-object v2

    .line 181
    :catchall_b4
    move-exception p1

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    const-string v3, "stringToInAppMessage failed "

    .line 185
    .line 186
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-static {v0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    return-object v2
.end method

###### Class com.engagelab.privates.common.w.a (com.engagelab.privates.common.w$a)
.class public Lcom/engagelab/privates/common/w$a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/engagelab/privates/common/w;->c(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/engagelab/privates/push/api/InAppMessage;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/engagelab/privates/common/w;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lcom/engagelab/privates/push/api/InAppMessage;Lcom/engagelab/privates/push/api/InAppMessage;)I
    .registers 5

    .line 1
    invoke-virtual {p1}, Lcom/engagelab/privates/push/api/InAppMessage;->getMsgTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/InAppMessage;->getMsgTime()J

    .line 6
    .line 7
    .line 8
    move-result-wide p1

    .line 9
    sub-long/2addr v0, p1

    .line 10
    const-wide/16 p1, 0x0

    .line 11
    .line 12
    cmp-long p1, v0, p1

    .line 13
    .line 14
    if-lez p1, :cond_11

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    return p1

    .line 18
    :cond_11
    const/4 p1, -0x1

    .line 19
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Lcom/engagelab/privates/push/api/InAppMessage;

    .line 2
    .line 3
    check-cast p2, Lcom/engagelab/privates/push/api/InAppMessage;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/engagelab/privates/common/w$a;->a(Lcom/engagelab/privates/push/api/InAppMessage;Lcom/engagelab/privates/push/api/InAppMessage;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

###### Class com.engagelab.privates.common.w.b (com.engagelab.privates.common.w$b)
.class public Lcom/engagelab/privates/common/w$b;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/engagelab/privates/common/w;->b(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/engagelab/privates/push/api/InAppMessage;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/engagelab/privates/common/w;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lcom/engagelab/privates/push/api/InAppMessage;Lcom/engagelab/privates/push/api/InAppMessage;)I
    .registers 8

    .line 1
    invoke-virtual {p1}, Lcom/engagelab/privates/push/api/InAppMessage;->getPriority()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/InAppMessage;->getPriority()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    const/4 v1, 0x1

    .line 11
    const/4 v2, -0x1

    .line 12
    if-eqz v0, :cond_11

    .line 13
    .line 14
    if-lez v0, :cond_10

    .line 15
    .line 16
    return v2

    .line 17
    :cond_10
    return v1

    .line 18
    :cond_11
    invoke-virtual {p1}, Lcom/engagelab/privates/push/api/InAppMessage;->getMsgTime()J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/InAppMessage;->getMsgTime()J

    .line 23
    .line 24
    .line 25
    move-result-wide p1

    .line 26
    sub-long/2addr v3, p1

    .line 27
    const-wide/16 p1, 0x0

    .line 28
    .line 29
    cmp-long p1, v3, p1

    .line 30
    .line 31
    if-lez p1, :cond_21

    .line 32
    .line 33
    return v2

    .line 34
    :cond_21
    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Lcom/engagelab/privates/push/api/InAppMessage;

    .line 2
    .line 3
    check-cast p2, Lcom/engagelab/privates/push/api/InAppMessage;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/engagelab/privates/common/w$b;->a(Lcom/engagelab/privates/push/api/InAppMessage;Lcom/engagelab/privates/push/api/InAppMessage;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

###### Class com.engagelab.privates.common.w.c (com.engagelab.privates.common.w$c)
.class public final Lcom/engagelab/privates/common/w$c;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/engagelab/privates/common/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final a:Lcom/engagelab/privates/common/w;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/engagelab/privates/common/w;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/engagelab/privates/common/w;-><init>(Lcom/engagelab/privates/common/w$a;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/engagelab/privates/common/w$c;->a:Lcom/engagelab/privates/common/w;

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic a()Lcom/engagelab/privates/common/w;
    .registers 1

    .line 1
    sget-object v0, Lcom/engagelab/privates/common/w$c;->a:Lcom/engagelab/privates/common/w;

    .line 2
    .line 3
    return-object v0
.end method
