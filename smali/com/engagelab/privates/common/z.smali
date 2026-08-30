###### Class com.engagelab.privates.common.z (com.engagelab.privates.common.z)
.class public Lcom/engagelab/privates/common/z;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# direct methods
.method public static a(Landroid/content/Context;J)J
    .registers 14

    const-string v0, "InAppHelper"

    const-string v1, "getIntervalTime return value= "

    const-string v2, "getIntervalTime diff="

    const-string v3, "getIntervalTime currentTimeMillis="

    const-string v4, "getIntervalTime lastShowMessageTime="

    .line 19
    :try_start_a
    invoke-static {p0}, Lcom/engagelab/privates/common/x;->a(Landroid/content/Context;)J

    move-result-wide v5

    .line 20
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v7, 0x0

    cmp-long p0, v5, v7

    if-gtz p0, :cond_24

    return-wide p1

    .line 21
    :cond_24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v5, v9, v5

    .line 22
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    .line 23
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long p0, v4, p1

    if-lez p0, :cond_56

    const-string p0, "getIntervalTime return value= 0"

    .line 25
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v7

    .line 26
    :cond_56
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v1, p1, v4

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_67
    .catchall {:try_start_a .. :try_end_67} :catchall_68

    return-wide v1

    .line 27
    :catchall_68
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "getIntervalTime return intervalTime= "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide p1
.end method

.method public static a(Lcom/engagelab/privates/push/api/InAppMessage;I)Lcom/engagelab/privates/common/d0;
    .registers 9

    const/4 v0, -0x1

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2
    invoke-static {p1}, Lcom/engagelab/privates/common/f0;->c(I)Z

    move-result p1

    .line 3
    new-instance v1, Lcom/engagelab/privates/common/d0;

    invoke-direct {v1}, Lcom/engagelab/privates/common/d0;-><init>()V

    .line 4
    invoke-virtual {p0}, Lcom/engagelab/privates/push/api/InAppMessage;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_21

    const-wide/16 v2, 0x1388

    :cond_21
    const/high16 v6, 0x43fa0000    # 500.0f

    if-eqz p1, :cond_6a

    .line 5
    :try_start_25
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/engagelab/privates/push/api/InAppMessage;->getContent()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "location"

    .line 6
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide p0

    cmp-long p0, p0, v4

    if-nez p0, :cond_3b

    const/16 p0, 0x30

    goto :goto_3d

    :cond_3b
    const/16 p0, 0x50

    .line 7
    :goto_3d
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/engagelab/privates/common/d0;->a(Ljava/lang/Integer;)Lcom/engagelab/privates/common/d0;
    :try_end_44
    .catchall {:try_start_25 .. :try_end_44} :catchall_44

    .line 8
    :catchall_44
    invoke-virtual {v1, v0}, Lcom/engagelab/privates/common/d0;->d(Ljava/lang/Integer;)Lcom/engagelab/privates/common/d0;

    move-result-object p0

    const/4 p1, -0x2

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/d0;->c(Ljava/lang/Integer;)Lcom/engagelab/privates/common/d0;

    move-result-object p0

    const p1, 0x10120

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/d0;->b(Ljava/lang/Integer;)Lcom/engagelab/privates/common/d0;

    move-result-object p0

    .line 11
    invoke-virtual {p0, v6}, Lcom/engagelab/privates/common/d0;->c(F)Lcom/engagelab/privates/common/d0;

    move-result-object p0

    long-to-float p1, v2

    .line 12
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/d0;->a(F)Lcom/engagelab/privates/common/d0;

    move-result-object p0

    .line 13
    invoke-virtual {p0, v6}, Lcom/engagelab/privates/common/d0;->b(F)Lcom/engagelab/privates/common/d0;

    move-result-object p0

    return-object p0

    .line 14
    :cond_6a
    invoke-virtual {v1, v0}, Lcom/engagelab/privates/common/d0;->d(Ljava/lang/Integer;)Lcom/engagelab/privates/common/d0;

    move-result-object p0

    .line 15
    invoke-virtual {p0, v6}, Lcom/engagelab/privates/common/d0;->c(F)Lcom/engagelab/privates/common/d0;

    move-result-object p0

    long-to-float p1, v2

    .line 16
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/d0;->a(F)Lcom/engagelab/privates/common/d0;

    move-result-object p0

    .line 17
    invoke-virtual {p0, v6}, Lcom/engagelab/privates/common/d0;->b(F)Lcom/engagelab/privates/common/d0;

    move-result-object p0

    .line 18
    invoke-virtual {p0, v0}, Lcom/engagelab/privates/common/d0;->c(Ljava/lang/Integer;)Lcom/engagelab/privates/common/d0;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/engagelab/privates/push/api/InAppMessage;)Lcom/engagelab/privates/push/api/InAppMessage;
    .registers 7

    .line 45
    const-string v0, "InAppHelper"

    const-string v1, "small_image"

    :try_start_4
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/engagelab/privates/push/api/InAppMessage;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 47
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_51

    const-string v3, "http"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_51

    const/4 v3, 0x1

    .line 49
    invoke-static {v1, v3}, Lcom/engagelab/privates/common/utils/Utils;->checkValidImageUrl(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 50
    invoke-virtual {p1}, Lcom/engagelab/privates/push/api/InAppMessage;->getMessageId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v1, v3}, Lcom/engagelab/privates/common/z;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 51
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_47

    const-string p0, "local_small_image"

    .line 52
    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/engagelab/privates/push/api/InAppMessage;->setContent(Ljava/lang/String;)Lcom/engagelab/privates/push/api/InAppMessage;

    return-object p1

    :cond_47
    const-string v2, "handleBannerImage imageError"

    .line 54
    invoke-static {v0, v2}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {p0, v1, p1}, Lcom/engagelab/privates/common/z;->a(Landroid/content/Context;Ljava/lang/String;Lcom/engagelab/privates/push/api/InAppMessage;)V
    :try_end_4f
    .catchall {:try_start_4 .. :try_end_4f} :catchall_51

    const/4 p0, 0x0

    return-object p0

    :catchall_51
    :cond_51
    const-string p0, "handleBannerImage default"

    .line 56
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 14

    const-string v0, "InAppHelper"

    const-string v1, "download image resource failed, path: "

    const-string v2, "Write storage error,  create img file fail."

    const-string v3, "Succeed to load image - "

    const-string v4, "download image resource cache to local success, Uri.fromFile: "

    const-string v5, "download image resource cache to local success, path: "

    const-string v6, "download image resource success, path: "

    const-string v7, "mt_in_app_image_"

    const/4 v8, 0x1

    .line 28
    :try_start_11
    invoke-static {p0, p1, v8}, Lcom/engagelab/privates/push/utils/HttpUtils;->get(Landroid/content/Context;Ljava/lang/String;Z)[B

    move-result-object v8
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_95

    if-eqz v8, :cond_97

    .line 29
    :try_start_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 30
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-static {p0, p2, v1}, Lcom/engagelab/privates/common/z;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 32
    invoke-static {p0, v8}, Lcom/engagelab/privates/common/utils/FileUtils;->createImgFile(Ljava/lang/String;[B)Z

    move-result p2

    if-eqz p2, :cond_6d

    .line 33
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-static {p0, p1}, Lcom/engagelab/privates/common/utils/ImageUtils;->compressImage(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :catchall_6b
    move-exception p0

    goto :goto_85

    .line 36
    :cond_6d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", cache local status: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_84
    .catchall {:try_start_17 .. :try_end_84} :catchall_6b

    goto :goto_b1

    .line 37
    :goto_85
    :try_start_85
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b1

    :catchall_95
    move-exception p0

    goto :goto_a7

    .line 38
    :cond_97
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a6
    .catchall {:try_start_85 .. :try_end_a6} :catchall_95

    goto :goto_b1

    .line 39
    :goto_a7
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "load h5 template image resource failed, "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-static {p0, p1, v0}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_b1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/engagelab/privates/push/api/InAppMessage;)V
    .registers 6

    .line 57
    invoke-static {p1}, Lcom/engagelab/privates/push/utils/HttpUtils;->getErrorCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 58
    invoke-static {p1}, Lcom/engagelab/privates/push/utils/HttpUtils;->deleteErrorCode(Ljava/lang/String;)V

    return-void

    .line 59
    :cond_e
    invoke-static {}, Lcom/engagelab/privates/common/u;->a()Lcom/engagelab/privates/common/u;

    move-result-object p1

    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/InAppMessage;->getMessageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/InAppMessage;->getAppkey()Ljava/lang/String;

    move-result-object v1

    const v2, 0x9a9e10

    invoke-virtual {p1, p0, v2, v0, v1}, Lcom/engagelab/privates/common/u;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {}, Lcom/engagelab/privates/common/w;->d()Lcom/engagelab/privates/common/w;

    move-result-object p0

    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/InAppMessage;->getMessageId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/w;->b(Ljava/lang/String;)Z

    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/engagelab/privates/push/api/InAppMessage;)Lcom/engagelab/privates/push/api/InAppMessage;
    .registers 6

    .line 3
    invoke-virtual {p1}, Lcom/engagelab/privates/push/api/InAppMessage;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "InAppHelper"

    if-nez v1, :cond_37

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    const/4 v1, 0x1

    .line 5
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/utils/Utils;->checkValidImageUrl(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 6
    invoke-virtual {p1}, Lcom/engagelab/privates/push/api/InAppMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/engagelab/privates/common/z;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 8
    invoke-virtual {p1, v1}, Lcom/engagelab/privates/push/api/InAppMessage;->setLocalImageUrl(Ljava/lang/String;)Lcom/engagelab/privates/push/api/InAppMessage;

    return-object p1

    :cond_2d
    const-string v1, "handleDefaultImage imageError"

    .line 9
    invoke-static {v2, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {p0, v0, p1}, Lcom/engagelab/privates/common/z;->a(Landroid/content/Context;Ljava/lang/String;Lcom/engagelab/privates/push/api/InAppMessage;)V

    const/4 p0, 0x0

    return-object p0

    :cond_37
    const-string p0, "handleDefaultImage no image url"

    .line 11
    invoke-static {v2, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mt_in_app_down"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mt_in_app_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/engagelab/privates/common/utils/FileUtils;->getAppKeyFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_21

    const-string p0, ""

    return-object p0

    .line 2
    :cond_21
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;Lcom/engagelab/privates/push/api/InAppMessage;)Lcom/engagelab/privates/push/api/InAppMessage;
    .registers 9

    .line 1
    const-string v0, "InAppHelper"

    .line 2
    .line 3
    const-string v1, "handleHtmlImage save html result="

    .line 4
    .line 5
    const-string v2, "mt_in_app_html_"

    .line 6
    .line 7
    const-string v3, "handleHtmlImage html content="

    .line 8
    .line 9
    :try_start_8
    new-instance v4, Lorg/json/JSONObject;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/engagelab/privates/push/api/InAppMessage;->getContent()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/engagelab/privates/push/api/InAppMessage;->getMessageId()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    const-string v6, "content"

    .line 23
    .line 24
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    new-instance v6, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-static {v0, v3}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v2, ".html"

    .line 52
    .line 53
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-static {p0, v5, v2}, Lcom/engagelab/privates/common/z;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-static {p0, v2}, Lcom/engagelab/privates/common/utils/FileUtils;->createImgFile(Ljava/lang/String;[B)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    if-eqz v2, :cond_5c

    .line 88
    .line 89
    invoke-virtual {p1, p0}, Lcom/engagelab/privates/push/api/InAppMessage;->setContent(Ljava/lang/String;)Lcom/engagelab/privates/push/api/InAppMessage;
    :try_end_5b
    .catchall {:try_start_8 .. :try_end_5b} :catchall_5c

    .line 90
    .line 91
    .line 92
    return-object p1

    .line 93
    :catchall_5c
    :cond_5c
    const-string p0, "handleHtmlImage no html"

    .line 94
    .line 95
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const/4 p0, 0x0

    .line 99
    return-object p0
.end method

.method public static d(Landroid/content/Context;Lcom/engagelab/privates/push/api/InAppMessage;)Lcom/engagelab/privates/push/api/InAppMessage;
    .registers 4

    .line 1
    invoke-virtual {p1}, Lcom/engagelab/privates/push/api/InAppMessage;->getType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x28

    .line 6
    .line 7
    if-ne v1, v0, :cond_d

    .line 8
    .line 9
    invoke-static {p0, p1}, Lcom/engagelab/privates/common/z;->c(Landroid/content/Context;Lcom/engagelab/privates/push/api/InAppMessage;)Lcom/engagelab/privates/push/api/InAppMessage;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_d
    invoke-virtual {p1}, Lcom/engagelab/privates/push/api/InAppMessage;->getType()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/16 v1, 0xa

    .line 19
    .line 20
    if-ne v1, v0, :cond_1a

    .line 21
    .line 22
    invoke-static {p0, p1}, Lcom/engagelab/privates/common/z;->a(Landroid/content/Context;Lcom/engagelab/privates/push/api/InAppMessage;)Lcom/engagelab/privates/push/api/InAppMessage;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_1a
    invoke-static {p0, p1}, Lcom/engagelab/privates/common/z;->b(Landroid/content/Context;Lcom/engagelab/privates/push/api/InAppMessage;)Lcom/engagelab/privates/push/api/InAppMessage;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method
