###### Class com.engagelab.privates.common.o0 (com.engagelab.privates.common.o0)
.class public Lcom/engagelab/privates/common/o0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static volatile a:Lcom/engagelab/privates/common/o0;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a()Lcom/engagelab/privates/common/o0;
    .registers 2

    .line 1
    sget-object v0, Lcom/engagelab/privates/common/o0;->a:Lcom/engagelab/privates/common/o0;

    if-nez v0, :cond_13

    .line 2
    const-class v0, Lcom/engagelab/privates/common/o0;

    monitor-enter v0

    .line 3
    :try_start_7
    new-instance v1, Lcom/engagelab/privates/common/o0;

    invoke-direct {v1}, Lcom/engagelab/privates/common/o0;-><init>()V

    sput-object v1, Lcom/engagelab/privates/common/o0;->a:Lcom/engagelab/privates/common/o0;

    .line 4
    monitor-exit v0

    goto :goto_13

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_10

    throw v1

    .line 5
    :cond_13
    :goto_13
    sget-object v0, Lcom/engagelab/privates/common/o0;->a:Lcom/engagelab/privates/common/o0;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;IJ)V
    .registers 5

    .line 54
    invoke-static {p2, p3, p4}, Lcom/engagelab/privates/common/c1;->a(IJ)[B

    move-result-object p2

    .line 55
    new-instance p3, Lcom/engagelab/privates/core/api/MTProtocol;

    invoke-direct {p3}, Lcom/engagelab/privates/core/api/MTProtocol;-><init>()V

    const/4 p4, 0x4

    .line 56
    invoke-virtual {p3, p4}, Lcom/engagelab/privates/core/api/MTProtocol;->setCommand(I)Lcom/engagelab/privates/core/api/MTProtocol;

    move-result-object p3

    const/4 p4, 0x2

    .line 57
    invoke-virtual {p3, p4}, Lcom/engagelab/privates/core/api/MTProtocol;->setVersion(I)Lcom/engagelab/privates/core/api/MTProtocol;

    move-result-object p3

    .line 58
    invoke-virtual {p3, p2}, Lcom/engagelab/privates/core/api/MTProtocol;->setBody([B)Lcom/engagelab/privates/core/api/MTProtocol;

    move-result-object p2

    sget-object p3, Lcom/engagelab/privates/push/MTPush;->a:Ljava/lang/String;

    .line 59
    invoke-virtual {p2, p3}, Lcom/engagelab/privates/core/api/MTProtocol;->setThreadName(Ljava/lang/String;)Lcom/engagelab/privates/core/api/MTProtocol;

    move-result-object p2

    .line 60
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string p4, "protocol"

    .line 61
    invoke-virtual {p3, p4, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 p2, 0x8ae

    .line 62
    invoke-static {p1, p2, p3}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    return-void
.end method

.method public a(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 20

    move-object/from16 v0, p1

    const-string v1, "geofence"

    const-string v2, "MTMessageBusiness"

    const-string v3, "onMessage type="

    const-string v4, "onMessage:"

    const-string v5, "Local applicationKey is ["

    const-string v6, "the message applicationKey is ["

    const-string v7, "the message applicationId is ["

    :try_start_10
    const-string v8, "protocol"

    move-object/from16 v9, p2

    .line 6
    invoke-virtual {v9, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/engagelab/privates/core/api/MTProtocol;

    .line 7
    invoke-virtual {v8}, Lcom/engagelab/privates/core/api/MTProtocol;->getBody()[B

    move-result-object v8

    .line 8
    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 9
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    .line 10
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v10

    .line 11
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->intValue()I

    move-result v12

    int-to-long v12, v12

    .line 12
    invoke-static {v8}, Lcom/engagelab/privates/common/utils/StringUtil;->getTlv2(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v8

    .line 13
    new-instance v14, Ljava/io/LineNumberReader;

    new-instance v15, Ljava/io/StringReader;

    invoke-direct {v15, v8}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v14, v15}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 14
    invoke-virtual {v14}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 15
    invoke-virtual {v14}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v15

    .line 16
    invoke-virtual {v14}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v16, v3

    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_57
    .catchall {:try_start_10 .. :try_end_57} :catchall_70

    move/from16 p2, v3

    const-string v3, "]"

    if-nez p2, :cond_75

    .line 18
    :try_start_5d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_70
    move-exception v0

    move-object/from16 v7, p0

    goto/16 :goto_190

    .line 19
    :cond_75
    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a8

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 22
    :cond_a8
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b4

    const-string v0, "the message is empty"

    .line 23
    invoke-static {v2, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 24
    :cond_b4
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "n_only"

    .line 25
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "show_type"

    .line 26
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6
    :try_end_c5
    .catchall {:try_start_5d .. :try_end_c5} :catchall_70

    move-object/from16 v7, p0

    .line 27
    :try_start_c7
    invoke-virtual {v7, v0, v9, v10, v11}, Lcom/engagelab/privates/common/o0;->a(Landroid/content/Context;IJ)V

    .line 28
    invoke-static {v3, v12, v13}, Lcom/engagelab/privates/common/s0;->a(Lorg/json/JSONObject;J)Lcom/engagelab/privates/common/s0;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/engagelab/privates/common/u0;->a(Landroid/content/Context;Lcom/engagelab/privates/common/s0;)Z

    move-result v8

    if-eqz v8, :cond_d6

    goto/16 :goto_18f

    .line 29
    :cond_d6
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V
    :try_end_db
    .catchall {:try_start_c7 .. :try_end_db} :catchall_129

    const-string v10, "message"

    .line 30
    :try_start_dd
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/engagelab/privates/common/log/MTCommonLog;->toLogString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/engagelab/privates/common/log/MTCommonLog;->debugOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12b

    .line 34
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_12b

    const-string v3, "geofenceid"

    .line 35
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12b

    const-string v1, "is geofence notification"

    .line 37
    invoke-static {v2, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xf29

    .line 38
    invoke-static {v0, v1, v8}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    return-void

    :catchall_129
    move-exception v0

    goto :goto_190

    .line 39
    :cond_12b
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v3, v16

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " flag="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " messageType="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "message_id"

    .line 40
    invoke-virtual {v8, v1, v12, v13}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const/16 v1, 0x69

    if-ne v9, v1, :cond_15d

    .line 41
    invoke-static {}, Lcom/engagelab/privates/common/m0;->a()Lcom/engagelab/privates/common/m0;

    move-result-object v1

    invoke-virtual {v1, v0, v8}, Lcom/engagelab/privates/common/m0;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void

    .line 42
    :cond_15d
    invoke-static {}, Lcom/engagelab/privates/common/z0;->a()Lcom/engagelab/privates/common/z0;

    move-result-object v1

    invoke-virtual {v1, v0, v8}, Lcom/engagelab/privates/common/z0;->b(Landroid/content/Context;Landroid/os/Bundle;)V

    const-string v1, "message_type"

    .line 43
    invoke-virtual {v8, v1, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x4

    if-ne v6, v1, :cond_17b

    .line 44
    invoke-static {}, Lcom/engagelab/privates/common/q0;->b()Lcom/engagelab/privates/common/q0;

    move-result-object v1

    invoke-virtual {v1, v0, v8}, Lcom/engagelab/privates/common/q0;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 45
    invoke-static {}, Lcom/engagelab/privates/common/p0;->b()Lcom/engagelab/privates/common/p0;

    move-result-object v1

    invoke-virtual {v1, v0, v8}, Lcom/engagelab/privates/common/p0;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void

    :cond_17b
    const/4 v1, 0x1

    if-ne v5, v1, :cond_186

    .line 46
    invoke-static {}, Lcom/engagelab/privates/common/q0;->b()Lcom/engagelab/privates/common/q0;

    move-result-object v1

    invoke-virtual {v1, v0, v8}, Lcom/engagelab/privates/common/q0;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void

    :cond_186
    if-nez v5, :cond_18f

    .line 47
    invoke-static {}, Lcom/engagelab/privates/common/p0;->b()Lcom/engagelab/privates/common/p0;

    move-result-object v1

    invoke-virtual {v1, v0, v8}, Lcom/engagelab/privates/common/p0;->a(Landroid/content/Context;Landroid/os/Bundle;)V
    :try_end_18f
    .catchall {:try_start_dd .. :try_end_18f} :catchall_129

    :cond_18f
    :goto_18f
    return-void

    .line 48
    :goto_190
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "onMessage failed "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-static {v0, v1, v2}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method
