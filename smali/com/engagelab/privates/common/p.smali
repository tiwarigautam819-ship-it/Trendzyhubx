###### Class com.engagelab.privates.common.p (com.engagelab.privates.common.p)
.class public Lcom/engagelab/privates/common/p;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static d:I = 0x3e8

.field public static final e:[I

.field public static final f:I

.field public static final g:Ljava/util/concurrent/ScheduledExecutorService;

.field public static final h:Ljava/util/Random;

.field public static volatile i:Lcom/engagelab/privates/common/p;


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    const/4 v0, 0x7

    .line 2
    new-array v1, v0, [I

    .line 3
    .line 4
    fill-array-data v1, :array_1c

    .line 5
    .line 6
    .line 7
    sput-object v1, Lcom/engagelab/privates/common/p;->e:[I

    .line 8
    .line 9
    sput v0, Lcom/engagelab/privates/common/p;->f:I

    .line 10
    .line 11
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/engagelab/privates/common/p;->g:Ljava/util/concurrent/ScheduledExecutorService;

    .line 16
    .line 17
    new-instance v0, Ljava/util/Random;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/engagelab/privates/common/p;->h:Ljava/util/Random;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    sput-object v0, Lcom/engagelab/privates/common/p;->i:Lcom/engagelab/privates/common/p;

    .line 26
    .line 27
    return-void

    .line 28
    nop

    .line 29
    :array_1c
    .array-data 4
        0x4
        0x10
        0x20
        0x40
        0x80
        0x100
        0x200
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/engagelab/privates/common/p;->a:Z

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    iput-object v0, p0, Lcom/engagelab/privates/common/p;->c:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public static a()Lcom/engagelab/privates/common/p;
    .registers 2

    .line 12
    sget-object v0, Lcom/engagelab/privates/common/p;->i:Lcom/engagelab/privates/common/p;

    if-nez v0, :cond_13

    .line 13
    const-class v0, Lcom/engagelab/privates/common/p;

    monitor-enter v0

    .line 14
    :try_start_7
    new-instance v1, Lcom/engagelab/privates/common/p;

    invoke-direct {v1}, Lcom/engagelab/privates/common/p;-><init>()V

    sput-object v1, Lcom/engagelab/privates/common/p;->i:Lcom/engagelab/privates/common/p;

    .line 15
    monitor-exit v0

    goto :goto_13

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_10

    throw v1

    .line 16
    :cond_13
    :goto_13
    sget-object v0, Lcom/engagelab/privates/common/p;->i:Lcom/engagelab/privates/common/p;

    return-object v0
.end method

.method public static synthetic a(Lcom/engagelab/privates/common/p;Landroid/content/Context;I)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/engagelab/privates/common/p;->a(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONArray;[Ljava/io/File;)I
    .registers 30

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const-string v3, "report failed code:"

    const-string v4, "report success encrypt:"

    const-string v5, "/v4/report"

    const-string v6, "/v3/sgm/report"

    const-string v7, "sgm"

    const-string v8, ":"

    const-string v9, "MTReportBusiness"

    const-string v10, "last success address: "

    const/4 v11, -0x1

    .line 19
    :try_start_15
    invoke-static/range {p1 .. p1}, Lcom/engagelab/privates/common/utils/SystemUtil;->isNetworkConnecting(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_27

    const-string v0, "can\'t report, network is disConnected"

    .line 20
    invoke-static {v9, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v11

    :catchall_21
    move-exception v0

    move-object v7, v9

    move/from16 v16, v11

    goto/16 :goto_2af

    .line 21
    :cond_27
    invoke-static/range {p1 .. p1}, Lcom/engagelab/privates/common/r;->r(Landroid/content/Context;)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v14, v12, v14

    if-nez v14, :cond_37

    const-string v0, "uid is 0"

    .line 22
    invoke-static {v9, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v11

    .line 23
    :cond_37
    invoke-static/range {p1 .. p1}, Lcom/engagelab/privates/core/global/MTCoreGlobal;->getHttpAddress(Landroid/content/Context;)Ljava/util/List;

    move-result-object v14

    .line 24
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_47

    const-string v0, "there are no report url"

    .line 25
    invoke-static {v9, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v11

    :cond_47
    if-eqz v1, :cond_4f

    .line 26
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-nez v15, :cond_54

    :cond_4f
    move-object v7, v9

    move/from16 v16, v11

    goto/16 :goto_2a9

    .line 27
    :cond_54
    invoke-virtual/range {p0 .. p0}, Lcom/engagelab/privates/common/p;->b()Ljava/lang/String;

    move-result-object v15
    :try_end_58
    .catchall {:try_start_15 .. :try_end_58} :catchall_21

    move/from16 v16, v11

    .line 28
    :try_start_5a
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 30
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_82

    .line 31
    invoke-interface {v14, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_82

    .line 32
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_82

    :catchall_7e
    move-exception v0

    move-object v7, v9

    goto/16 :goto_2af

    .line 33
    :cond_82
    :goto_82
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_86
    :goto_86
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 34
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_86

    .line 35
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_86

    :cond_9c
    const/4 v14, 0x0

    .line 36
    :goto_9d
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v14, v15, :cond_b1

    .line 37
    invoke-virtual {v1, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    const/16 v17, 0x0

    const-string v11, "uid"

    .line 38
    invoke-virtual {v15, v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    add-int/lit8 v14, v14, 0x1

    goto :goto_9d

    :cond_b1
    const/16 v17, 0x0

    .line 39
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v11

    .line 40
    sget-object v14, Lcom/engagelab/privates/common/constants/MTCommonConstants;->UTF_8:Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    .line 41
    invoke-static {v11}, Lcom/engagelab/privates/common/utils/GZipUtil;->zip([B)[B

    move-result-object v11

    .line 42
    invoke-static {}, Lcom/engagelab/privates/common/utils/AESUtil;->generateSeed()I

    move-result v14

    int-to-long v14, v14

    .line 43
    invoke-static {v14, v15}, Lcom/engagelab/privates/common/utils/AESUtil;->getMd5AesKey(J)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x10

    .line 44
    new-array v15, v15, [B

    fill-array-data v15, :array_2ba

    move-object/from16 v18, v3

    .line 45
    new-instance v3, Ljava/lang/String;

    const-string v19, "UTF-8"

    invoke-static/range {v19 .. v19}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v3, v15, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/16 v2, 0x62

    invoke-static {v3, v2}, Lcom/engagelab/privates/common/utils/AESUtil;->getIv(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-static {}, Lcom/engagelab/privates/common/global/MTGlobal;->getEncryptType()I

    move-result v3

    .line 47
    invoke-static {v11, v14, v2}, Lcom/engagelab/privates/common/utils/SM4Util;->encryptBytes([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 48
    invoke-static/range {p1 .. p1}, Lcom/engagelab/privates/common/r;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 49
    invoke-static {v11}, Lcom/engagelab/privates/common/utils/StringUtil;->getMD5Utf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 50
    invoke-static {v2}, Lcom/engagelab/privates/common/utils/StringUtil;->getBytesSHA1([B)Ljava/lang/String;

    move-result-object v15
    :try_end_f8
    .catchall {:try_start_5a .. :try_end_f8} :catchall_7e

    move-object/from16 v19, v9

    .line 51
    :try_start_fa
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/engagelab/privates/common/utils/StringUtil;->getBytesSHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 52
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 53
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Basic "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/16 v11, 0xa

    invoke-static {v8, v11}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 54
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 55
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 56
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    move/from16 v11, v17

    :goto_151
    if-ge v11, v10, :cond_2b9

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v11, v11, 0x1

    check-cast v12, Ljava/lang/String;

    .line 57
    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_17c

    invoke-virtual {v12, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_17c

    .line 58
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_17d

    :catchall_177
    move-exception v0

    :goto_178
    move-object/from16 v7, v19

    goto/16 :goto_2af

    :cond_17c
    move-object v13, v12

    .line 59
    :goto_17d
    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_198

    invoke-virtual {v13, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_198

    .line 60
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 61
    :cond_198
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v15, p1

    .line 62
    invoke-static {v15, v13, v8, v2, v14}, Lcom/engagelab/privates/common/t;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/util/Map;)I

    move-result v14
    :try_end_1a3
    .catchall {:try_start_fa .. :try_end_1a3} :catchall_177

    move-object/from16 v20, v2

    const-string v2, ", type:"

    move-object/from16 v22, v5

    const-string v5, ", fileName:"

    move-object/from16 v23, v6

    const-string v6, ", url:"

    move-object/from16 v24, v7

    const/16 v7, 0xc8

    if-ne v14, v7, :cond_24a

    .line 63
    :try_start_1b5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p4 .. p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1d7
    .catchall {:try_start_1b5 .. :try_end_1d7} :catchall_245

    move-object/from16 v7, v19

    :try_start_1d9
    invoke-static {v7, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1fa
    .catchall {:try_start_1d9 .. :try_end_1fa} :catchall_241

    move-object/from16 v1, p0

    .line 65
    :try_start_1fc
    invoke-virtual {v1, v12}, Lcom/engagelab/privates/common/p;->a(Ljava/lang/String;)V

    move-object/from16 v12, p4

    .line 66
    array-length v0, v12

    move/from16 v2, v17

    :goto_204
    if-ge v2, v0, :cond_240

    aget-object v3, v12, v2

    .line 67
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_23d

    .line 68
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    .line 69
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_21c
    .catchall {:try_start_1fc .. :try_end_21c} :catchall_23a

    if-eqz v4, :cond_221

    const-string v4, "success"

    goto :goto_223

    :cond_221
    const-string v4, "failed"

    :goto_223
    :try_start_223
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " file:"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23d

    :catchall_23a
    move-exception v0

    goto/16 :goto_2af

    :cond_23d
    :goto_23d
    add-int/lit8 v2, v2, 0x1

    goto :goto_204

    :cond_240
    return v17

    :catchall_241
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_2af

    :catchall_245
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_178

    :cond_24a
    move-object/from16 v12, p4

    move-object/from16 v7, v19

    move/from16 v19, v3

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v4

    move-object/from16 v4, v18

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/engagelab/privates/common/log/MTCommonLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v18, v4

    move/from16 v3, v19

    move-object/from16 v2, v20

    move-object/from16 v4, v21

    move-object/from16 v5, v22

    move-object/from16 v6, v23

    move-object/from16 v19, v7

    move-object/from16 v7, v24

    goto/16 :goto_151

    :goto_2a9
    const-string v0, "reportJsonArr is null or empty"

    .line 72
    invoke-static {v7, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2ae
    .catchall {:try_start_223 .. :try_end_2ae} :catchall_23a

    return v16

    .line 73
    :goto_2af
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "report failed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-static {v0, v1, v7}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2b9
    return v16

    :array_2ba
    .array-data 1
        0xbt
        0xdt
        0x12t
        0x50t
        0x52t
        0x51t
        0x52t
        0x56t
        0x52t
        0x57t
        0x52t
        0x54t
        0x3t
        0x32t
        0x9t
        0x43t
    .end array-data
.end method

.method public final a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_50

    .line 168
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_50

    .line 169
    :cond_a
    :try_start_a
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 171
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 172
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1f

    :catchall_2f
    move-exception p1

    goto :goto_42

    .line 173
    :cond_31
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Ljava/io/File;

    invoke-interface {p3, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/io/File;

    .line 174
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/engagelab/privates/common/p;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONArray;[Ljava/io/File;)I

    move-result p1
    :try_end_41
    .catchall {:try_start_a .. :try_end_41} :catchall_2f

    return p1

    .line 175
    :goto_42
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "batch report failed: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p3, "MTReportBusiness"

    .line 176
    invoke-static {p1, p2, p3}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    :cond_50
    :goto_50
    return v0
.end method

.method public a(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 2
    iget-object v0, p0, Lcom/engagelab/privates/common/p;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "com_engagelab_privates_core"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/engagelab/privates/common/p;->b:Ljava/lang/String;

    .line 6
    :cond_2b
    invoke-static {p1}, Lcom/engagelab/privates/common/global/MTGlobal;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/engagelab/privates/common/p;->b:Ljava/lang/String;

    .line 8
    invoke-static {v0, v1, p1}, Lq2/x;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 212
    iget-object v0, p0, Lcom/engagelab/privates/common/p;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 213
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    .line 214
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "com_engagelab_privates_core"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/engagelab/privates/common/p;->b:Ljava/lang/String;

    .line 216
    :cond_2b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/engagelab/privates/common/p;->b:Ljava/lang/String;

    .line 217
    invoke-static {p1, v0, p2}, Lq2/x;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 8

    const-string v0, "itime"

    .line 79
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {p2, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "account_id"

    const-string v1, ""

    .line 80
    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 82
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 83
    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string p2, "content"

    .line 84
    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "platform"

    const-string v1, "a"

    .line 85
    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2c
    .catchall {:try_start_2 .. :try_end_2c} :catchall_8f

    const-string p2, "uid"

    .line 86
    :try_start_2e
    invoke-static {p1}, Lcom/engagelab/privates/common/r;->r(Landroid/content/Context;)J

    move-result-wide v1

    invoke-virtual {v0, p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_35
    .catchall {:try_start_2e .. :try_end_35} :catchall_8f

    const-string p2, "app_version"

    .line 87
    :try_start_37
    invoke-static {p1}, Lcom/engagelab/privates/common/global/MTGlobal;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_8f

    const-string p2, "app_key"

    .line 88
    :try_start_40
    invoke-static {p1}, Lcom/engagelab/privates/common/global/MTGlobal;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_8f

    const-string p2, "channel"

    .line 89
    :try_start_49
    invoke-static {p1}, Lcom/engagelab/privates/common/global/MTGlobal;->getAppChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    invoke-static {}, Lcom/engagelab/privates/common/observer/MTObservable;->getInstance()Lcom/engagelab/privates/common/observer/MTObservable;

    move-result-object p1

    iget-object p1, p1, Lcom/engagelab/privates/common/observer/MTObservable;->observeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_91

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/engagelab/privates/common/observer/MTObserver;

    .line 91
    invoke-virtual {p2}, Lcom/engagelab/privates/common/observer/MTObserver;->isSdk()Z

    move-result v1

    if-nez v1, :cond_6d

    goto :goto_5a

    .line 92
    :cond_6d
    invoke-virtual {p2}, Lcom/engagelab/privates/common/observer/MTObserver;->getSdkName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_78

    goto :goto_5a

    .line 93
    :cond_78
    invoke-virtual {p2}, Lcom/engagelab/privates/common/observer/MTObserver;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_83

    goto :goto_5a

    .line 94
    :cond_83
    invoke-virtual {p2}, Lcom/engagelab/privates/common/observer/MTObserver;->getSdkName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/engagelab/privates/common/observer/MTObserver;->getSdkVersion()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8e
    .catchall {:try_start_49 .. :try_end_8e} :catchall_8f

    goto :goto_5a

    :catchall_8f
    move-exception p1

    goto :goto_92

    :cond_91
    return-object v0

    .line 95
    :goto_92
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "prepareReportJson failed "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "MTReportBusiness"

    .line 96
    invoke-static {p1, p2, v0}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/io/File;)Lorg/json/JSONObject;
    .registers 7

    const-string v0, "readCacheFile failed: "

    const/4 v1, 0x0

    .line 157
    :try_start_3
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_2d

    .line 158
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result p1

    new-array p1, p1, [B

    .line 159
    invoke-virtual {v2, p1}, Ljava/io/FileInputStream;->read([B)I

    .line 160
    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/engagelab/privates/common/constants/MTCommonConstants;->UTF_8:Ljava/lang/String;

    invoke-direct {v3, p1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 161
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_2b

    if-eqz p1, :cond_22

    .line 162
    invoke-static {v2}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    .line 163
    :cond_22
    :try_start_22
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_2b

    .line 164
    invoke-static {v2}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    return-object p1

    :catchall_2b
    move-exception p1

    goto :goto_2f

    :catchall_2d
    move-exception p1

    move-object v2, v1

    :goto_2f
    const-string v3, "MTReportBusiness"

    .line 165
    :try_start_31
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_44
    .catchall {:try_start_31 .. :try_end_44} :catchall_48

    .line 166
    invoke-static {v2}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :catchall_48
    move-exception p1

    invoke-static {v2}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 167
    throw p1
.end method

.method public final declared-synchronized a(Landroid/content/Context;I)V
    .registers 14

    const-string v0, "report cache begin, retryCount: "

    monitor-enter p0

    .line 101
    :try_start_3
    iget-boolean v1, p0, Lcom/engagelab/privates/common/p;->a:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_33

    if-eqz v1, :cond_9

    monitor-exit p0

    return-void

    .line 102
    :cond_9
    :try_start_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MTReportBusiness"

    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Lcom/engagelab/privates/common/p;->a:Z
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_33

    const/4 v1, 0x0

    .line 104
    :try_start_1e
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/p;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_39

    const-string p1, "MTReportBusiness"

    const-string p2, "there are no report cache"

    .line 106
    invoke-static {p1, p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_1e .. :try_end_2f} :catchall_36

    .line 107
    :try_start_2f
    iput-boolean v1, p0, Lcom/engagelab/privates/common/p;->a:Z
    :try_end_31
    .catchall {:try_start_2f .. :try_end_31} :catchall_33

    monitor-exit p0

    return-void

    :catchall_33
    move-exception p1

    goto/16 :goto_1ea

    :catchall_36
    move-exception p1

    goto/16 :goto_1c1

    .line 108
    :cond_39
    :try_start_39
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4f

    const-string p1, "MTReportBusiness"

    const-string p2, "there are no report cache"

    .line 110
    invoke-static {p1, p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4b
    .catchall {:try_start_39 .. :try_end_4b} :catchall_36

    .line 111
    :try_start_4b
    iput-boolean v1, p0, Lcom/engagelab/privates/common/p;->a:Z
    :try_end_4d
    .catchall {:try_start_4b .. :try_end_4d} :catchall_33

    monitor-exit p0

    return-void

    .line 112
    :cond_4f
    :try_start_4f
    sget v4, Lcom/engagelab/privates/common/p;->d:I

    invoke-static {v2, v4}, Lcom/engagelab/privates/common/utils/FileUtils;->deleteCacheFileMaximum(Ljava/lang/String;I)V

    .line 113
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1b6

    .line 114
    array-length v3, v2

    if-nez v3, :cond_5f

    goto/16 :goto_1b6

    .line 115
    :cond_5f
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 116
    new-instance v3, Lcom/engagelab/privates/common/p$a;

    invoke-direct {v3, p0}, Lcom/engagelab/privates/common/p$a;-><init>(Lcom/engagelab/privates/common/p;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 117
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 118
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 119
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_79
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 120
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6
    :try_end_89
    .catchall {:try_start_4f .. :try_end_89} :catchall_36

    if-nez v6, :cond_ab

    :try_start_8b
    const-string v6, "MTReportBusiness"
    :try_end_8d
    .catchall {:try_start_8b .. :try_end_8d} :catchall_33

    .line 121
    :try_start_8d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cacheFile ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] is no exist"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_79

    .line 122
    :cond_ab
    invoke-virtual {p0, v5}, Lcom/engagelab/privates/common/p;->a(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v6
    :try_end_af
    .catchall {:try_start_8d .. :try_end_af} :catchall_36

    if-nez v6, :cond_cc

    :try_start_b1
    const-string v6, "MTReportBusiness"
    :try_end_b3
    .catchall {:try_start_b1 .. :try_end_b3} :catchall_33

    .line 123
    :try_start_b3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readCacheFile failed for file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_79

    .line 124
    :cond_cc
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_79

    .line 126
    :cond_d3
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e4

    const-string p1, "MTReportBusiness"

    const-string p2, "no valid cache files"

    .line 127
    invoke-static {p1, p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e0
    .catchall {:try_start_b3 .. :try_end_e0} :catchall_36

    .line 128
    :try_start_e0
    iput-boolean v1, p0, Lcom/engagelab/privates/common/p;->a:Z
    :try_end_e2
    .catchall {:try_start_e0 .. :try_end_e2} :catchall_33

    monitor-exit p0

    return-void

    :cond_e4
    if-lez p2, :cond_10f

    .line 129
    :try_start_e6
    sget-object v2, Lcom/engagelab/privates/common/p;->h:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2
    :try_end_f0
    .catchall {:try_start_e6 .. :try_end_f0} :catchall_36

    :try_start_f0
    const-string v5, "MTReportBusiness"
    :try_end_f2
    .catchall {:try_start_f0 .. :try_end_f2} :catchall_33

    .line 130
    :try_start_f2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "retry "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", randomly selected file index: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_110

    :cond_10f
    move v2, v1

    .line 131
    :goto_110
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 132
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    const-string v7, "type"

    .line 133
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_122
    .catchall {:try_start_f2 .. :try_end_122} :catchall_36

    :try_start_122
    const-string v8, "MTReportBusiness"
    :try_end_124
    .catchall {:try_start_122 .. :try_end_124} :catchall_33

    .line 134
    :try_start_124
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "attempting to report first file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 136
    invoke-virtual {v8, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 137
    new-array v0, v0, [Ljava/io/File;

    aput-object v5, v0, v1

    invoke-virtual {p0, p1, v7, v8, v0}, Lcom/engagelab/privates/common/p;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONArray;[Ljava/io/File;)I

    move-result v0

    if-nez v0, :cond_165

    const-string v0, "MTReportBusiness"

    const-string v5, "first report success, start batch reporting remaining data"

    .line 138
    invoke-static {v0, v5}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 140
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 141
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b3

    .line 142
    invoke-virtual {p0, p1, v3, v4, p2}, Lcom/engagelab/privates/common/p;->b(Landroid/content/Context;Ljava/util/List;Ljava/util/List;I)V
    :try_end_164
    .catchall {:try_start_124 .. :try_end_164} :catchall_36

    goto :goto_1b3

    :cond_165
    :try_start_165
    const-string v0, "MTReportBusiness"
    :try_end_167
    .catchall {:try_start_165 .. :try_end_167} :catchall_33

    .line 143
    :try_start_167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "first report failed, scheduling retry. retryCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    sget v0, Lcom/engagelab/privates/common/p;->f:I

    if-ge p2, v0, :cond_1ac

    .line 145
    sget-object v0, Lcom/engagelab/privates/common/p;->e:[I

    aget v0, v0, p2
    :try_end_183
    .catchall {:try_start_167 .. :try_end_183} :catchall_36

    :try_start_183
    const-string v2, "MTReportBusiness"
    :try_end_185
    .catchall {:try_start_183 .. :try_end_185} :catchall_33

    .line 146
    :try_start_185
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scheduling retry in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " seconds"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    sget-object v2, Lcom/engagelab/privates/common/p;->g:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/engagelab/privates/common/p$b;

    invoke-direct {v3, p0, p1, p2}, Lcom/engagelab/privates/common/p$b;-><init>(Lcom/engagelab/privates/common/p;Landroid/content/Context;I)V

    int-to-long p1, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, p1, p2, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_1b3

    :cond_1ac
    const-string p1, "MTReportBusiness"

    const-string p2, "max retry count reached, giving up"

    .line 148
    invoke-static {p1, p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b3
    .catchall {:try_start_185 .. :try_end_1b3} :catchall_36

    .line 149
    :cond_1b3
    :goto_1b3
    :try_start_1b3
    iput-boolean v1, p0, Lcom/engagelab/privates/common/p;->a:Z
    :try_end_1b5
    .catchall {:try_start_1b3 .. :try_end_1b5} :catchall_33

    goto :goto_1dd

    :cond_1b6
    :goto_1b6
    :try_start_1b6
    const-string p1, "MTReportBusiness"

    const-string p2, "there are no report cache"

    .line 150
    invoke-static {p1, p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1bd
    .catchall {:try_start_1b6 .. :try_end_1bd} :catchall_36

    .line 151
    :try_start_1bd
    iput-boolean v1, p0, Lcom/engagelab/privates/common/p;->a:Z
    :try_end_1bf
    .catchall {:try_start_1bd .. :try_end_1bf} :catchall_33

    monitor-exit p0

    return-void

    :goto_1c1
    :try_start_1c1
    const-string p2, "MTReportBusiness"
    :try_end_1c3
    .catchall {:try_start_1c1 .. :try_end_1c3} :catchall_33

    .line 152
    :try_start_1c3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportCache failed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1db
    .catchall {:try_start_1c3 .. :try_end_1db} :catchall_1e6

    .line 153
    :try_start_1db
    iput-boolean v1, p0, Lcom/engagelab/privates/common/p;->a:Z

    :goto_1dd
    const-string p1, "MTReportBusiness"

    const-string p2, "report cache finish"

    .line 154
    invoke-static {p1, p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e4
    .catchall {:try_start_1db .. :try_end_1e4} :catchall_33

    monitor-exit p0

    return-void

    :catchall_1e6
    move-exception p1

    .line 155
    :try_start_1e7
    iput-boolean v1, p0, Lcom/engagelab/privates/common/p;->a:Z

    .line 156
    throw p1

    :goto_1ea
    monitor-exit p0
    :try_end_1eb
    .catchall {:try_start_1e7 .. :try_end_1eb} :catchall_33

    throw p1
.end method

.method public final a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;I)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;>;I)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p4

    .line 181
    const-string v4, "Batch "

    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 182
    new-instance v7, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v7, v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 183
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v8

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v9, "Starting parallel batch reports, total batches: "

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", currentRetryCount: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "MTReportBusiness"

    invoke-static {v9, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v10, v6

    :goto_33
    if-ge v10, v8, :cond_fd

    move-object/from16 v11, p2

    .line 185
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object/from16 v12, p3

    .line 186
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    const/4 v14, 0x1

    .line 187
    :try_start_46
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Executing batch "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " with "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " items"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {v1, v2, v13, v0}, Lcom/engagelab/privates/common/p;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)I

    move-result v0

    if-eqz v0, :cond_8e

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " failed"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_a5

    :catchall_8c
    move-exception v0

    goto :goto_b2

    .line 191
    :cond_8e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " succeeded"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a5
    .catchall {:try_start_46 .. :try_end_a5} :catchall_8c

    .line 192
    :goto_a5
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    if-ne v0, v8, :cond_e4

    .line 193
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_e0

    goto :goto_e1

    .line 194
    :goto_b2
    :try_start_b2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " exception: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_d3
    .catchall {:try_start_b2 .. :try_end_d3} :catchall_e9

    .line 196
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    if-ne v0, v8, :cond_e4

    .line 197
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_e0

    goto :goto_e1

    :cond_e0
    const/4 v14, 0x0

    :goto_e1
    invoke-virtual {v1, v2, v14, v3}, Lcom/engagelab/privates/common/p;->a(Landroid/content/Context;ZI)V

    :cond_e4
    add-int/lit8 v10, v10, 0x1

    const/4 v6, 0x0

    goto/16 :goto_33

    :catchall_e9
    move-exception v0

    .line 198
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    if-ne v4, v8, :cond_fc

    .line 199
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-lez v4, :cond_f8

    move v6, v14

    goto :goto_f9

    :cond_f8
    const/4 v6, 0x0

    :goto_f9
    invoke-virtual {v1, v2, v6, v3}, Lcom/engagelab/privates/common/p;->a(Landroid/content/Context;ZI)V

    .line 200
    :cond_fc
    throw v0

    :cond_fd
    return-void
.end method

.method public final a(Landroid/content/Context;ZI)V
    .registers 7

    const-string v0, "MTReportBusiness"

    if-nez p2, :cond_a

    const-string p1, "All batch reports succeeded"

    .line 201
    invoke-static {v0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    const-string p2, "Some batch reports failed, will retry through reportCacheWithRetry"

    .line 202
    invoke-static {v0, p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    sget p2, Lcom/engagelab/privates/common/p;->f:I

    if-ge p3, p2, :cond_40

    .line 204
    sget-object p2, Lcom/engagelab/privates/common/p;->e:[I

    aget p2, p2, p3

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Scheduling retry through reportCacheWithRetry in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " seconds, retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p3, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    sget-object v0, Lcom/engagelab/privates/common/p;->g:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/engagelab/privates/common/p$c;

    invoke-direct {v1, p0, p1, p3}, Lcom/engagelab/privates/common/p$c;-><init>(Lcom/engagelab/privates/common/p;Landroid/content/Context;I)V

    int-to-long p1, p2

    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void

    :cond_40
    const-string p1, "Max retry count reached for batch reports, giving up"

    .line 207
    invoke-static {v0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    .line 17
    iput-object p1, p0, Lcom/engagelab/privates/common/p;->c:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "set last success report address: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MTReportBusiness"

    invoke-static {v0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Landroid/os/Bundle;)Z
    .registers 4

    const-string v0, "protocol"

    .line 208
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/engagelab/privates/core/api/MTReporter;

    .line 209
    invoke-virtual {p2}, Lcom/engagelab/privates/core/api/MTReporter;->getAppkey()Ljava/lang/String;

    move-result-object p2

    .line 210
    invoke-static {p1}, Lcom/engagelab/privates/common/global/MTGlobal;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 211
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_24

    const/4 p1, 0x0

    return p1

    :cond_24
    const/4 p1, 0x1

    return p1
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 10

    const-string v0, "MTReportBusiness"

    const-string v1, "saveReportContent failed "

    const-string v2, "save file:"

    const/4 v3, 0x0

    .line 27
    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/p;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 28
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_4c

    .line 31
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4c

    .line 32
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_4c

    return-object v3

    :catchall_4a
    move-exception p1

    goto :goto_59

    .line 33
    :cond_4c
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_5c

    .line 34
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result p1

    if-nez p1, :cond_5c

    return-object v3

    :goto_59
    move-object p2, p1

    move-object p1, v3

    goto :goto_6f

    .line 35
    :cond_5c
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_61
    .catchall {:try_start_7 .. :try_end_61} :catchall_4a

    .line 36
    :try_start_61
    sget-object v4, Lcom/engagelab/privates/common/constants/MTCommonConstants;->UTF_8:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_6a
    .catchall {:try_start_61 .. :try_end_6a} :catchall_6e

    .line 37
    :try_start_6a
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_6d

    :catchall_6d
    return-object v2

    :catchall_6e
    move-exception p2

    .line 38
    :goto_6f
    :try_start_6f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_82
    .catchall {:try_start_6f .. :try_end_82} :catchall_88

    if-eqz p1, :cond_87

    .line 39
    :try_start_84
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_87

    :catchall_87
    :cond_87
    return-object v3

    :catchall_88
    move-exception p2

    if-eqz p1, :cond_8e

    :try_start_8b
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8e
    .catchall {:try_start_8b .. :try_end_8e} :catchall_8e

    .line 40
    :catchall_8e
    :cond_8e
    throw p2
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/common/p;->c:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized b(Landroid/content/Context;)V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 41
    :try_start_2
    invoke-virtual {p0, p1, v0}, Lcom/engagelab/privates/common/p;->a(Landroid/content/Context;I)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-void

    :catchall_7
    move-exception p1

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public b(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 9

    const-string v0, "protocol"

    const-string v1, "MTReportBusiness"

    .line 2
    :try_start_4
    const-class v2, Lcom/engagelab/privates/core/api/MTReporter;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 3
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 4
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/p;->b(Landroid/content/Context;)V

    return-void

    :catchall_17
    move-exception p1

    goto :goto_84

    .line 5
    :cond_19
    invoke-static {p1}, Lcom/engagelab/privates/common/r;->r(Landroid/content/Context;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_29

    const-string p1, "report uid is 0"

    .line 6
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_29
    invoke-virtual {p0, p1, p2}, Lcom/engagelab/privates/common/p;->a(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_38

    const-string v0, "appkey is not same, cache first, not report"

    .line 8
    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/engagelab/privates/common/p;->c(Landroid/content/Context;Landroid/os/Bundle;)Ljava/io/File;

    return-void

    .line 10
    :cond_38
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/p;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 11
    sget v3, Lcom/engagelab/privates/common/p;->d:I

    invoke-static {v2, v3}, Lcom/engagelab/privates/common/utils/FileUtils;->deleteCacheFileMaximum(Ljava/lang/String;I)V

    .line 12
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/engagelab/privates/core/api/MTReporter;

    .line 13
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/engagelab/privates/core/api/MTReporter;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_50
    .catchall {:try_start_4 .. :try_end_50} :catchall_17

    const-string v2, "type"

    .line 14
    :try_start_52
    invoke-virtual {p2}, Lcom/engagelab/privates/core/api/MTReporter;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    invoke-virtual {p0, p1, v0}, Lcom/engagelab/privates/common/p;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_60

    goto :goto_83

    .line 16
    :cond_60
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/engagelab/privates/common/p;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 17
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 18
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 19
    invoke-virtual {p2}, Lcom/engagelab/privates/core/api/MTReporter;->getType()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const/4 v4, 0x0

    aput-object v2, v0, v4

    invoke-virtual {p0, p1, p2, v3, v0}, Lcom/engagelab/privates/common/p;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONArray;[Ljava/io/File;)I

    move-result p2

    if-nez p2, :cond_83

    .line 20
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/p;->b(Landroid/content/Context;)V
    :try_end_83
    .catchall {:try_start_52 .. :try_end_83} :catchall_17

    :cond_83
    :goto_83
    return-void

    .line 21
    :goto_84
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "report failed "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-static {p1, p2, v1}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Landroid/content/Context;Ljava/util/List;Ljava/util/List;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;I)V"
        }
    .end annotation

    .line 42
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 43
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 45
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 46
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 47
    :goto_1c
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_55

    .line 48
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 49
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    .line 50
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0x64

    if-lt v5, v6, :cond_52

    .line 53
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 56
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_52
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 57
    :cond_55
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_6b

    .line 58
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_6b
    invoke-virtual {p0, p1, v0, v1, p4}, Lcom/engagelab/privates/common/p;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;I)V

    return-void
.end method

.method public c(Landroid/content/Context;Landroid/os/Bundle;)Ljava/io/File;
    .registers 10

    .line 1
    const-string v0, "MTReportBusiness"

    .line 2
    .line 3
    const-string v1, "saveReportContent failed "

    .line 4
    .line 5
    const-string v2, "save file:"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    :try_start_7
    const-string v4, "protocol"

    .line 9
    .line 10
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    check-cast p2, Lcom/engagelab/privates/core/api/MTReporter;

    .line 15
    .line 16
    new-instance v4, Lorg/json/JSONObject;

    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/engagelab/privates/core/api/MTReporter;->getContent()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_73

    .line 23
    .line 24
    .line 25
    const-string v5, "type"

    .line 26
    .line 27
    :try_start_1a
    invoke-virtual {p2}, Lcom/engagelab/privates/core/api/MTReporter;->getType()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1, v4}, Lcom/engagelab/privates/common/p;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    if-nez v4, :cond_28

    .line 39
    .line 40
    return-object v3

    .line 41
    :cond_28
    invoke-virtual {p2}, Lcom/engagelab/privates/core/api/MTReporter;->getAppkey()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    new-instance v5, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/engagelab/privates/common/p;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 67
    .line 68
    .line 69
    move-result-wide p1

    .line 70
    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    new-instance p2, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-static {v0, p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    new-instance p2, Ljava/io/File;

    .line 93
    .line 94
    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    if-eqz p1, :cond_75

    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    if-nez v2, :cond_75

    .line 108
    .line 109
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-nez p1, :cond_75

    .line 114
    .line 115
    return-object v3

    .line 116
    :catchall_73
    move-exception p1

    .line 117
    goto :goto_82

    .line 118
    :cond_75
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    if-nez p1, :cond_85

    .line 123
    .line 124
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-nez p1, :cond_85

    .line 129
    .line 130
    return-object v3

    .line 131
    :goto_82
    move-object p2, p1

    .line 132
    move-object p1, v3

    .line 133
    goto :goto_98

    .line 134
    :cond_85
    new-instance p1, Ljava/io/FileOutputStream;

    .line 135
    .line 136
    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_8a
    .catchall {:try_start_1a .. :try_end_8a} :catchall_73

    .line 137
    .line 138
    .line 139
    :try_start_8a
    sget-object v2, Lcom/engagelab/privates/common/constants/MTCommonConstants;->UTF_8:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {v4, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {p1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_93
    .catchall {:try_start_8a .. :try_end_93} :catchall_97

    .line 146
    .line 147
    .line 148
    :try_start_93
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_96
    .catchall {:try_start_93 .. :try_end_96} :catchall_96

    .line 149
    .line 150
    .line 151
    :catchall_96
    return-object p2

    .line 152
    :catchall_97
    move-exception p2

    .line 153
    :goto_98
    :try_start_98
    new-instance v2, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    invoke-static {v0, p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ab
    .catchall {:try_start_98 .. :try_end_ab} :catchall_b1

    .line 170
    .line 171
    .line 172
    if-eqz p1, :cond_b0

    .line 173
    .line 174
    :try_start_ad
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_b0
    .catchall {:try_start_ad .. :try_end_b0} :catchall_b0

    .line 175
    .line 176
    .line 177
    :catchall_b0
    :cond_b0
    return-object v3

    .line 178
    :catchall_b1
    move-exception p2

    .line 179
    if-eqz p1, :cond_b7

    .line 180
    .line 181
    :try_start_b4
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_b7
    .catchall {:try_start_b4 .. :try_end_b7} :catchall_b7

    .line 182
    .line 183
    .line 184
    :catchall_b7
    :cond_b7
    throw p2
.end method

###### Class com.engagelab.privates.common.p.a (com.engagelab.privates.common.p$a)
.class public Lcom/engagelab/privates/common/p$a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/engagelab/privates/common/p;->a(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/engagelab/privates/common/p;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;Ljava/io/File;)I
    .registers 5

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

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
    if-gez p1, :cond_11

    .line 15
    .line 16
    const/4 p1, -0x1

    .line 17
    return p1

    .line 18
    :cond_11
    if-lez p1, :cond_15

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    return p1

    .line 22
    :cond_15
    const/4 p1, 0x0

    .line 23
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Ljava/io/File;

    .line 2
    .line 3
    check-cast p2, Ljava/io/File;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/engagelab/privates/common/p$a;->a(Ljava/io/File;Ljava/io/File;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

###### Class com.engagelab.privates.common.p.b (com.engagelab.privates.common.p$b)
.class public Lcom/engagelab/privates/common/p$b;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/engagelab/privates/common/p;->a(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:I

.field public final synthetic c:Lcom/engagelab/privates/common/p;


# direct methods
.method public constructor <init>(Lcom/engagelab/privates/common/p;Landroid/content/Context;I)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/common/p$b;->c:Lcom/engagelab/privates/common/p;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/engagelab/privates/common/p$b;->a:Landroid/content/Context;

    .line 4
    .line 5
    iput p3, p0, Lcom/engagelab/privates/common/p$b;->b:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/common/p$b;->c:Lcom/engagelab/privates/common/p;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/engagelab/privates/common/p$b;->a:Landroid/content/Context;

    .line 4
    .line 5
    iget v2, p0, Lcom/engagelab/privates/common/p$b;->b:I

    .line 6
    .line 7
    add-int/lit8 v2, v2, 0x1

    .line 8
    .line 9
    invoke-static {v0, v1, v2}, Lcom/engagelab/privates/common/p;->a(Lcom/engagelab/privates/common/p;Landroid/content/Context;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

###### Class com.engagelab.privates.common.p.c (com.engagelab.privates.common.p$c)
.class public Lcom/engagelab/privates/common/p$c;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/engagelab/privates/common/p;->a(Landroid/content/Context;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:I

.field public final synthetic c:Lcom/engagelab/privates/common/p;


# direct methods
.method public constructor <init>(Lcom/engagelab/privates/common/p;Landroid/content/Context;I)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/common/p$c;->c:Lcom/engagelab/privates/common/p;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/engagelab/privates/common/p$c;->a:Landroid/content/Context;

    .line 4
    .line 5
    iput p3, p0, Lcom/engagelab/privates/common/p$c;->b:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/common/p$c;->c:Lcom/engagelab/privates/common/p;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/engagelab/privates/common/p$c;->a:Landroid/content/Context;

    .line 4
    .line 5
    iget v2, p0, Lcom/engagelab/privates/common/p$c;->b:I

    .line 6
    .line 7
    add-int/lit8 v2, v2, 0x1

    .line 8
    .line 9
    invoke-static {v0, v1, v2}, Lcom/engagelab/privates/common/p;->a(Lcom/engagelab/privates/common/p;Landroid/content/Context;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
