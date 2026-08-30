###### Class com.engagelab.privates.common.j (com.engagelab.privates.common.j)
.class public abstract Lcom/engagelab/privates/common/j;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public a:Z


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


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)I
    .registers 7

    .line 12
    const-string v0, "code"

    const-string v1, "udp receive "

    :try_start_4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lcom/engagelab/privates/common/j;->a()Ljava/lang/String;

    move-result-object p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/engagelab/privates/common/log/MTCommonLog;->toLogString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_33

    .line 15
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_33

    .line 16
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    return p1

    :catchall_31
    move-exception p1

    goto :goto_41

    .line 17
    :cond_33
    invoke-virtual {p0, p1, v2}, Lcom/engagelab/privates/common/j;->d(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 18
    invoke-virtual {p0, p1, v2}, Lcom/engagelab/privates/common/j;->c(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 19
    invoke-virtual {p0, p1, v2}, Lcom/engagelab/privates/common/j;->b(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 20
    invoke-virtual {p0, p1, v2}, Lcom/engagelab/privates/common/j;->a(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_3f
    .catchall {:try_start_4 .. :try_end_3f} :catchall_31

    const/4 p1, 0x1

    return p1

    .line 21
    :goto_41
    invoke-virtual {p0}, Lcom/engagelab/privates/common/j;->a()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "parseResponse failed "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-static {p1, v0, p2}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 12

    const/4 v1, 0x0

    .line 1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/j;->b(Landroid/content/Context;)[B

    move-result-object v4
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_24

    if-nez v4, :cond_8

    return v1

    :cond_8
    const/16 v5, 0x1770

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    move v7, p3

    .line 2
    :try_start_e
    invoke-virtual/range {v2 .. v7}, Lcom/engagelab/privates/common/j;->a(Landroid/content/Context;[BILjava/lang/String;I)[B

    move-result-object p1

    if-nez p1, :cond_15

    return v1

    .line 3
    :cond_15
    invoke-virtual {p0, v3, p1}, Lcom/engagelab/privates/common/j;->a(Landroid/content/Context;[B)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1c

    return v1

    .line 4
    :cond_1c
    invoke-virtual {p0, v3, p1}, Lcom/engagelab/privates/common/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_21

    return p1

    :catchall_21
    move-exception v0

    :goto_22
    move-object p1, v0

    goto :goto_27

    :catchall_24
    move-exception v0

    move-object v2, p0

    goto :goto_22

    .line 5
    :goto_27
    invoke-virtual {p0}, Lcom/engagelab/privates/common/j;->a()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "sis address connect failed "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public abstract a()Ljava/lang/String;
.end method

.method public a(Landroid/content/Context;[B)Ljava/lang/String;
    .registers 14

    const-string p1, "receive totalLength:"

    const/16 v0, 0xa

    .line 27
    :try_start_4
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 28
    invoke-static {p2, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 30
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 31
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 32
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    ushr-int/lit8 v5, v4, 0x18

    const v6, 0xffffff

    and-int/2addr v6, v4

    int-to-long v6, v6

    .line 33
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    ushr-int/lit8 v1, v4, 0x1c

    const/4 v4, 0x1

    and-int/2addr v5, v4

    .line 34
    invoke-static {v6, v7}, Lcom/engagelab/privates/common/utils/AESUtil;->getMd5AesKey(J)Ljava/lang/String;

    move-result-object v8

    .line 35
    invoke-virtual {p0}, Lcom/engagelab/privates/common/j;->a()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", encryption:"

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", compress:"

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", sid:"

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sub-int/2addr v3, v0

    .line 36
    new-array p1, v3, [B

    .line 37
    invoke-static {p2, v0, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    invoke-static {p1, v8}, Lcom/engagelab/privates/common/utils/SM4Util;->decryptBytes([BLjava/lang/String;)[B

    move-result-object p1

    if-ne v5, v4, :cond_69

    .line 39
    invoke-static {p1}, Lcom/engagelab/privates/common/utils/GZipUtil;->unzip([B)[B

    move-result-object p1

    goto :goto_69

    :catchall_67
    move-exception p1

    goto :goto_6f

    .line 40
    :cond_69
    :goto_69
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_6e
    .catchall {:try_start_4 .. :try_end_6e} :catchall_67

    return-object p2

    .line 41
    :goto_6f
    invoke-virtual {p0}, Lcom/engagelab/privates/common/j;->a()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "parseResponse failed "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-static {p1, v0, p2}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract a(Landroid/content/Context;)V
.end method

.method public final a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 9

    const-string v0, "http_report"

    .line 47
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 48
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    const/4 v2, 0x0

    if-eqz v0, :cond_33

    .line 49
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_33

    move v3, v2

    .line 50
    :goto_15
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_33

    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_33
    const-string v0, "https_report"

    .line 52
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    if-eqz p2, :cond_5f

    .line 53
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_5f

    .line 54
    :goto_41
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_5f

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "https://"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    .line 56
    :cond_5f
    invoke-static {p1, v1}, Lcom/engagelab/privates/common/r;->b(Landroid/content/Context;Ljava/util/Set;)V

    return-void
.end method

.method public a(ILandroid/content/Context;Ljava/lang/String;I)[B
    .registers 14

    const-string v0, "udp connect "

    const/4 v1, 0x0

    .line 6
    :try_start_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    return-object v1

    :cond_a
    if-gtz p4, :cond_d

    return-object v1

    .line 7
    :cond_d
    invoke-virtual {p0}, Lcom/engagelab/privates/common/j;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {p3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 9
    invoke-virtual {p0, p2}, Lcom/engagelab/privates/common/j;->b(Landroid/content/Context;)[B

    move-result-object v5

    if-nez v5, :cond_32

    return-object v1

    :cond_32
    move-object v3, p0

    move v6, p1

    move-object v4, p2

    move-object v7, p3

    move v8, p4

    .line 10
    invoke-virtual/range {v3 .. v8}, Lcom/engagelab/privates/common/j;->a(Landroid/content/Context;[BILjava/lang/String;I)[B

    move-result-object p1
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_3c

    return-object p1

    :catchall_3c
    move-exception v0

    move-object p1, v0

    .line 11
    invoke-virtual {p0}, Lcom/engagelab/privates/common/j;->a()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "udp connect failed "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public abstract a(Landroid/content/Context;[BILjava/lang/String;I)[B
.end method

.method public final b(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 6

    .line 35
    invoke-static {}, Lcom/engagelab/privates/common/global/MTGlobal;->getTcpSSL()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 36
    const-string v0, "cert_ver"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_29

    .line 37
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 38
    invoke-static {p1}, Lcom/engagelab/privates/common/r;->p(Landroid/content/Context;)I

    move-result v1

    if-eq v0, v1, :cond_1c

    .line 39
    invoke-static {p1, v2}, Lcom/engagelab/privates/common/r;->b(Landroid/content/Context;Lorg/json/JSONArray;)V

    .line 40
    :cond_1c
    invoke-static {p1, v0}, Lcom/engagelab/privates/common/r;->e(Landroid/content/Context;I)V

    const-string v0, "ssl_ips"

    .line 41
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    .line 42
    invoke-static {p1, p2}, Lcom/engagelab/privates/common/r;->b(Landroid/content/Context;Lorg/json/JSONArray;)V

    return-void

    .line 43
    :cond_29
    invoke-virtual {p0}, Lcom/engagelab/privates/common/j;->a()Ljava/lang/String;

    move-result-object p2

    const-string v0, "no has cert_ver"

    invoke-static {p2, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-static {p1, v2}, Lcom/engagelab/privates/common/r;->b(Landroid/content/Context;Lorg/json/JSONArray;)V

    :cond_35
    return-void
.end method

.method public final b(Landroid/content/Context;)[B
    .registers 13

    .line 1
    const-string v0, "send totalLength:"

    const-string v1, "sis send:"

    :try_start_4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "platform"

    const/4 v4, 0x0

    .line 2
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "sdkver"

    const-string v5, "5.3.0"

    .line 3
    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_4f

    const-string v3, "appkey"

    .line 4
    :try_start_18
    invoke-static {p1}, Lcom/engagelab/privates/common/global/MTGlobal;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_4f

    const-string v3, "uid"

    .line 5
    :try_start_21
    invoke-static {p1}, Lcom/engagelab/privates/common/r;->r(Landroid/content/Context;)J

    move-result-wide v5

    invoke-virtual {v2, v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_4f

    const-string v3, "type"

    .line 6
    :try_start_2a
    invoke-static {}, Lcom/engagelab/privates/common/global/MTGlobal;->getNetworkType()I

    move-result v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_4f

    const-string v3, "opera"

    .line 7
    :try_start_33
    invoke-static {}, Lcom/engagelab/privates/common/global/MTGlobal;->getNetworkName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    invoke-static {}, Lcom/engagelab/privates/common/global/MTGlobal;->getTcpSSL()Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_52

    .line 9
    invoke-static {p1}, Lcom/engagelab/privates/common/r;->b(Landroid/content/Context;)I

    move-result p1
    :try_end_45
    .catchall {:try_start_33 .. :try_end_45} :catchall_4f

    const-string v3, "cert_ver"

    const/4 v6, -0x1

    if-ne p1, v6, :cond_4b

    move p1, v5

    .line 10
    :cond_4b
    :try_start_4b
    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_52

    :catchall_4f
    move-exception p1

    goto/16 :goto_f7

    .line 11
    :cond_52
    :goto_52
    invoke-virtual {p0}, Lcom/engagelab/privates/common/j;->a()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/engagelab/privates/common/log/MTCommonLog;->toLogString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/engagelab/privates/common/utils/StringUtil;->stringToUtf8Bytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 13
    invoke-static {p1}, Lcom/engagelab/privates/common/utils/GZipUtil;->zip([B)[B

    move-result-object v1

    if-nez v1, :cond_79

    move v1, v4

    goto :goto_7b

    :cond_79
    move-object p1, v1

    move v1, v5

    .line 14
    :goto_7b
    array-length v2, p1

    .line 15
    invoke-static {}, Lcom/engagelab/privates/common/utils/AESUtil;->generateSeed()I

    move-result v3

    int-to-long v6, v3

    .line 16
    invoke-static {v6, v7}, Lcom/engagelab/privates/common/utils/AESUtil;->getMd5AesKey(J)Ljava/lang/String;

    move-result-object v8

    if-eqz v1, :cond_89

    int-to-byte v5, v5

    goto :goto_8a

    :cond_89
    move v5, v4

    .line 17
    :goto_8a
    invoke-static {}, Lcom/engagelab/privates/common/global/MTGlobal;->getEncryptType()I

    move-result v9

    or-int/lit8 v5, v5, 0x20

    int-to-byte v5, v5

    const/16 v10, 0x10

    .line 18
    invoke-virtual {v8, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {p1, v8, v10}, Lcom/engagelab/privates/common/utils/SM4Util;->encryptBytes([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    .line 19
    new-instance v8, Lcom/engagelab/privates/core/api/Outputer;

    array-length v10, p1

    add-int/lit8 v10, v10, 0xa

    invoke-direct {v8, v10}, Lcom/engagelab/privates/core/api/Outputer;-><init>(I)V

    .line 20
    invoke-virtual {v8, v4}, Lcom/engagelab/privates/core/api/Outputer;->writeU16(I)V

    const-string v10, "UG"

    .line 21
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/engagelab/privates/core/api/Outputer;->writeByteArray([B)V

    .line 22
    invoke-virtual {v8, v6, v7}, Lcom/engagelab/privates/core/api/Outputer;->writeU32(J)V

    const/4 v6, 0x4

    .line 23
    invoke-virtual {v8, v5, v6}, Lcom/engagelab/privates/core/api/Outputer;->writeU8At(II)V

    .line 24
    invoke-virtual {v8, v2}, Lcom/engagelab/privates/core/api/Outputer;->writeU16(I)V

    .line 25
    invoke-virtual {v8, p1}, Lcom/engagelab/privates/core/api/Outputer;->writeByteArray([B)V

    .line 26
    invoke-virtual {v8}, Lcom/engagelab/privates/core/api/Outputer;->current()I

    move-result p1

    invoke-virtual {v8, p1, v4}, Lcom/engagelab/privates/core/api/Outputer;->writeU16At(II)V

    .line 27
    invoke-virtual {p0}, Lcom/engagelab/privates/common/j;->a()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/engagelab/privates/core/api/Outputer;->current()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", encryption:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", compress:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", sid:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v8}, Lcom/engagelab/privates/core/api/Outputer;->toByteArray()[B

    move-result-object p1
    :try_end_f6
    .catchall {:try_start_4b .. :try_end_f6} :catchall_4f

    return-object p1

    .line 29
    :goto_f7
    invoke-virtual {p0}, Lcom/engagelab/privates/common/j;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "packageRequest failed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-static {p1, v1, v0}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final c(Landroid/content/Context;)Ljava/util/List;
    .registers 4
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

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/j;->d(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 4
    invoke-static {p1}, Lcom/engagelab/privates/common/r;->d(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final c(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 4

    const-string v0, "ips"

    .line 6
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    .line 7
    invoke-static {p1, p2}, Lcom/engagelab/privates/common/r;->a(Landroid/content/Context;Lorg/json/JSONArray;)V

    return-void
.end method

.method public final d(Landroid/content/Context;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/engagelab/privates/common/r;->q(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public final d(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 6

    const-string v0, "sis_ips"

    .line 2
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    .line 3
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    if-eqz p2, :cond_28

    .line 4
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_28

    const/4 v1, 0x0

    .line 5
    :goto_14
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 6
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 7
    :cond_28
    invoke-static {p1, v0}, Lcom/engagelab/privates/common/r;->c(Landroid/content/Context;Ljava/util/Set;)V

    return-void
.end method

.method public e(Landroid/content/Context;)V
    .registers 11

    .line 1
    iget-boolean v0, p0, Lcom/engagelab/privates/common/j;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_e

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/engagelab/privates/common/j;->a()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v0, "can\'t connect, isUdpConnecting"

    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_e
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/j;->c(Landroid/content/Context;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_22

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/engagelab/privates/common/j;->a()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v0, "there are no udp connect address"

    .line 30
    .line 31
    invoke-static {p1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_22
    const/4 v1, 0x1

    .line 36
    iput-boolean v1, p0, Lcom/engagelab/privates/common/j;->a:Z

    .line 37
    .line 38
    new-instance v2, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    move v4, v3

    .line 45
    :goto_2c
    const/4 v5, 0x3

    .line 46
    if-ge v4, v5, :cond_35

    .line 47
    .line 48
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 49
    .line 50
    .line 51
    add-int/lit8 v4, v4, 0x1

    .line 52
    .line 53
    goto :goto_2c

    .line 54
    :cond_35
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    move v4, v3

    .line 59
    :goto_3a
    if-ge v4, v0, :cond_de

    .line 60
    .line 61
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    add-int/lit8 v4, v4, 0x1

    .line 66
    .line 67
    check-cast v5, Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {p1}, Lcom/engagelab/privates/common/r;->c(Landroid/content/Context;)Z

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    if-nez v6, :cond_57

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/engagelab/privates/common/j;->a()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    const-string v1, "can\'t connect ,connect state is false"

    .line 80
    .line 81
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/j;->g(Landroid/content/Context;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_57
    invoke-static {p1}, Lcom/engagelab/privates/common/utils/SystemUtil;->isNetworkConnecting(Landroid/content/Context;)Z

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    if-nez v6, :cond_6a

    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/engagelab/privates/common/j;->a()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    const-string v1, "can\'t connect, network is disConnected"

    .line 99
    .line 100
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/j;->g(Landroid/content/Context;)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_6a
    const-string v6, ":"

    .line 108
    .line 109
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    array-length v7, v6

    .line 114
    sub-int/2addr v7, v1

    .line 115
    aget-object v6, v6, v7

    .line 116
    .line 117
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 122
    .line 123
    .line 124
    move-result v8

    .line 125
    sub-int/2addr v7, v8

    .line 126
    sub-int/2addr v7, v1

    .line 127
    invoke-virtual {v5, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    move-result v6

    .line 135
    invoke-virtual {p0, p1, v5, v6}, Lcom/engagelab/privates/common/j;->a(Landroid/content/Context;Ljava/lang/String;I)I

    .line 136
    .line 137
    .line 138
    move-result v5

    .line 139
    if-ne v1, v5, :cond_90

    .line 140
    .line 141
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/j;->f(Landroid/content/Context;)V

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :cond_90
    const/16 v6, 0x7d2

    .line 146
    .line 147
    if-ne v6, v5, :cond_a1

    .line 148
    .line 149
    invoke-virtual {p0}, Lcom/engagelab/privates/common/j;->a()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    const-string v1, "fail: CODE_NOT_APPKEY"

    .line 154
    .line 155
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-static {p1}, Lcom/engagelab/privates/common/q;->b(Landroid/content/Context;)V

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    :cond_a1
    const/16 v6, 0x7d3

    .line 163
    .line 164
    if-ne v6, v5, :cond_b2

    .line 165
    .line 166
    invoke-virtual {p0}, Lcom/engagelab/privates/common/j;->a()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    const-string v1, "fail: CODE_RESTRICTED"

    .line 171
    .line 172
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-static {p1}, Lcom/engagelab/privates/common/q;->c(Landroid/content/Context;)V

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
    :cond_b2
    const/16 v6, 0x7d1

    .line 180
    .line 181
    if-ne v6, v5, :cond_c4

    .line 182
    .line 183
    invoke-virtual {p0}, Lcom/engagelab/privates/common/j;->a()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    const-string v6, "fail: CODE_INVALID_APPKEY"

    .line 188
    .line 189
    invoke-static {v5, v6}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-static {p1}, Lcom/engagelab/privates/common/q;->a(Landroid/content/Context;)V

    .line 193
    .line 194
    .line 195
    goto/16 :goto_3a

    .line 196
    .line 197
    :cond_c4
    invoke-virtual {p0}, Lcom/engagelab/privates/common/j;->a()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v6

    .line 201
    new-instance v7, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    const-string v8, "fail result:"

    .line 204
    .line 205
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v5

    .line 215
    invoke-static {v6, v5}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/j;->g(Landroid/content/Context;)V

    .line 219
    .line 220
    .line 221
    goto/16 :goto_3a

    .line 222
    .line 223
    :cond_de
    return-void
.end method

.method public final f(Landroid/content/Context;)V
    .registers 7

    .line 1
    invoke-static {}, Lcom/engagelab/privates/common/global/MTGlobal;->getTcpSSL()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_58

    .line 6
    .line 7
    invoke-static {p1}, Lcom/engagelab/privates/common/r;->b(Landroid/content/Context;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {p1}, Lcom/engagelab/privates/common/r;->p(Landroid/content/Context;)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ne v0, v1, :cond_15

    .line 16
    .line 17
    const/4 v2, -0x1

    .line 18
    if-eq v0, v2, :cond_15

    .line 19
    .line 20
    if-ne v1, v2, :cond_58

    .line 21
    .line 22
    :cond_15
    invoke-virtual {p0}, Lcom/engagelab/privates/common/j;->a()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v4, "connectSSL_crt_v\uff1a"

    .line 29
    .line 30
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v2, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/engagelab/privates/common/j;->a()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v3, "tcpAddressSSL_crt_v\uff1a"

    .line 50
    .line 51
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-static {p1}, Lcom/engagelab/privates/common/e;->b(Landroid/content/Context;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    invoke-virtual {p0}, Lcom/engagelab/privates/common/j;->a()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v2, "get crt\uff1a"

    .line 75
    .line 76
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-static {v0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :cond_58
    return-void
.end method

.method public g(Landroid/content/Context;)V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/engagelab/privates/common/j;->a:Z

    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/j;->a(Landroid/content/Context;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
