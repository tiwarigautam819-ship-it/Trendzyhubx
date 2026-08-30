###### Class com.engagelab.privates.common.c1 (com.engagelab.privates.common.c1)
.class public Lcom/engagelab/privates/common/c1;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# direct methods
.method public static a(BLjava/lang/String;Ljava/lang/String;)[B
    .registers 6

    const/4 v0, 0x0

    .line 6
    :try_start_1
    sget-object v1, Lcom/engagelab/privates/common/constants/MTCommonConstants;->UTF_8:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 8
    sget-object v1, Lcom/engagelab/privates/common/constants/MTCommonConstants;->UTF_8:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    goto :goto_17

    :catchall_14
    move-exception p0

    goto :goto_3d

    :cond_16
    move-object p2, v0

    :goto_17
    if-eqz p2, :cond_22

    .line 9
    array-length v1, p2

    if-lez v1, :cond_22

    .line 10
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    array-length v2, p2

    add-int/2addr v1, v2

    goto :goto_25

    .line 11
    :cond_22
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    .line 12
    :goto_25
    new-instance v2, Lcom/engagelab/privates/core/api/Outputer;

    invoke-direct {v2, v1}, Lcom/engagelab/privates/core/api/Outputer;-><init>(I)V

    .line 13
    invoke-virtual {v2, p1}, Lcom/engagelab/privates/core/api/Outputer;->writeByteArrayIncludeLength([B)V

    .line 14
    invoke-virtual {v2, p0}, Lcom/engagelab/privates/core/api/Outputer;->writeU8(I)V

    if-eqz p2, :cond_38

    .line 15
    array-length p0, p2

    if-lez p0, :cond_38

    .line 16
    invoke-virtual {v2, p2}, Lcom/engagelab/privates/core/api/Outputer;->writeByteArrayIncludeLength([B)V

    .line 17
    :cond_38
    invoke-virtual {v2}, Lcom/engagelab/privates/core/api/Outputer;->toByteArray()[B

    move-result-object p0
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_14

    return-object p0

    .line 18
    :goto_3d
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "packagePlatformTokenBody failed "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "MTPushProtocol"

    .line 19
    invoke-static {p0, p1, p2}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(IJ)[B
    .registers 5

    .line 1
    new-instance v0, Lcom/engagelab/privates/core/api/Outputer;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/engagelab/privates/core/api/Outputer;-><init>(I)V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/engagelab/privates/core/api/Outputer;->writeU16(I)V

    int-to-byte p0, p0

    .line 3
    invoke-virtual {v0, p0}, Lcom/engagelab/privates/core/api/Outputer;->writeU8(I)V

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/engagelab/privates/core/api/Outputer;->writeU64(J)V

    .line 5
    invoke-virtual {v0}, Lcom/engagelab/privates/core/api/Outputer;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)[B
    .registers 3

    .line 24
    :try_start_0
    sget-object v0, Lcom/engagelab/privates/common/constants/MTCommonConstants;->UTF_8:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 25
    array-length v0, p0

    add-int/lit8 v0, v0, 0x2

    .line 26
    new-instance v1, Lcom/engagelab/privates/core/api/Outputer;

    invoke-direct {v1, v0}, Lcom/engagelab/privates/core/api/Outputer;-><init>(I)V

    const/4 v0, 0x7

    .line 27
    invoke-virtual {v1, v0}, Lcom/engagelab/privates/core/api/Outputer;->writeU8(I)V

    const/4 v0, 0x1

    .line 28
    invoke-virtual {v1, v0}, Lcom/engagelab/privates/core/api/Outputer;->writeU8(I)V

    .line 29
    invoke-virtual {v1, p0}, Lcom/engagelab/privates/core/api/Outputer;->writeByteArrayIncludeLength([B)V

    .line 30
    invoke-virtual {v1}, Lcom/engagelab/privates/core/api/Outputer;->toByteArray()[B

    move-result-object p0
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_1e

    return-object p0

    :catchall_1e
    move-exception p0

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "packageMobileNumberBody failed "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "MTPushProtocol"

    .line 32
    invoke-static {p0, v0, v1}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)[B
    .registers 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/engagelab/privates/common/constants/MTCommonConstants;->UTF_8:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    array-length v0, p0

    .line 8
    new-instance v1, Lcom/engagelab/privates/core/api/Outputer;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Lcom/engagelab/privates/core/api/Outputer;-><init>(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p0}, Lcom/engagelab/privates/core/api/Outputer;->writeByteArrayIncludeLength([B)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/engagelab/privates/core/api/Outputer;->toByteArray()[B

    .line 17
    .line 18
    .line 19
    move-result-object p0
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    .line 20
    return-object p0

    .line 21
    :catchall_14
    move-exception p0

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v1, "packageAliasRequest failed "

    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v1, "MTPushProtocol"

    .line 30
    .line 31
    invoke-static {p0, v0, v1}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 p0, 0x0

    .line 35
    return-object p0
.end method
