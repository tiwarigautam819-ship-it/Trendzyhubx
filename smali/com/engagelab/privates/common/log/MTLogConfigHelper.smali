###### Class com.engagelab.privates.common.log.MTLogConfigHelper (com.engagelab.privates.common.log.MTLogConfigHelper)
.class public Lcom/engagelab/privates/common/log/MTLogConfigHelper;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/engagelab/privates/common/log/MTLogConfigHelper$Report;,
        Lcom/engagelab/privates/common/log/MTLogConfigHelper$Ctrl;
    }
.end annotation


# static fields
.field private static final KEY_CAPACITY:Ljava/lang/String; = "key_capacity"

.field private static final KEY_ENABLE:Ljava/lang/String; = "key_enable"

.field private static final KEY_ENABLE_ALL:Ljava/lang/String; = "key_enable_all"

.field private static final TAG:Ljava/lang/String; = "MTLogConfigHelper"

.field public static final THREAD_LOG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/engagelab/privates/common/constants/MTCommonConstants;->getLogTag()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "COMMON_LOG"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lcom/engagelab/privates/common/log/MTLogConfigHelper;->THREAD_LOG:Ljava/lang/String;

    .line 23
    .line 24
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

.method public static synthetic access$100(Ljava/io/File;)[B
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/engagelab/privates/common/log/MTLogConfigHelper;->readFileBytes(Ljava/io/File;)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static readFileBytes(Ljava/io/File;)[B
    .registers 6

    .line 1
    const-string v0, "MTLogConfigHelper"

    .line 2
    .line 3
    const-string v1, "close file input stream failed: "

    .line 4
    .line 5
    :try_start_4
    new-instance v2, Ljava/io/FileInputStream;

    .line 6
    .line 7
    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_2e

    .line 8
    .line 9
    .line 10
    :try_start_9
    invoke-virtual {p0}, Ljava/io/File;->length()J

    .line 11
    .line 12
    .line 13
    move-result-wide v3

    .line 14
    long-to-int p0, v3

    .line 15
    new-array p0, p0, [B

    .line 16
    .line 17
    invoke-virtual {v2, p0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_2c

    .line 18
    .line 19
    .line 20
    :try_start_13
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_17

    .line 21
    .line 22
    .line 23
    return-object p0

    .line 24
    :catch_17
    move-exception v2

    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-object p0

    .line 45
    :catchall_2c
    move-exception p0

    .line 46
    goto :goto_30

    .line 47
    :catchall_2e
    move-exception p0

    .line 48
    const/4 v2, 0x0

    .line 49
    :goto_30
    if-eqz v2, :cond_4a

    .line 50
    .line 51
    :try_start_32
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_36

    .line 52
    .line 53
    .line 54
    goto :goto_4a

    .line 55
    :catch_36
    move-exception v2

    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :cond_4a
    :goto_4a
    throw p0
.end method

.method public static sendReport(Landroid/content/Context;)V
    .registers 5

    .line 1
    invoke-static {p0}, Lcom/engagelab/privates/common/log/MTLogConfigHelper$Ctrl;->getLocalCtrlConfig(Landroid/content/Context;)Lcom/engagelab/privates/common/log/MTLogConfigHelper$Ctrl$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "sendReport ctrlConfig: "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "MTLogConfigHelper"

    .line 20
    .line 21
    invoke-static {v2, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    if-eqz v0, :cond_46

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/engagelab/privates/common/log/MTLogConfigHelper$Ctrl$a;->e()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_25

    .line 31
    .line 32
    const-string p0, "sendReport isExpired: true"

    .line 33
    .line 34
    invoke-static {v2, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_25
    invoke-virtual {v0}, Lcom/engagelab/privates/common/log/MTLogConfigHelper$Ctrl$a;->f()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_31

    .line 43
    .line 44
    const-string p0, "sendReport isLogEnable: false"

    .line 45
    .line 46
    invoke-static {v2, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_31
    invoke-virtual {v0}, Lcom/engagelab/privates/common/log/MTLogConfigHelper$Ctrl$a;->b()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    sget-object v2, Lcom/engagelab/privates/common/MTCommon;->THREAD_COMMON:Ljava/lang/String;

    .line 59
    .line 60
    new-instance v3, Lcom/engagelab/privates/common/log/MTLogConfigHelper$a;

    .line 61
    .line 62
    invoke-direct {v3, v1}, Lcom/engagelab/privates/common/log/MTLogConfigHelper$a;-><init>(Landroid/content/Context;)V

    .line 63
    .line 64
    .line 65
    mul-int/lit16 v0, v0, 0x3e8

    .line 66
    .line 67
    int-to-long v0, v0

    .line 68
    invoke-static {p0, v2, v3, v0, v1}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->postMessageDelayed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 69
    .line 70
    .line 71
    :cond_46
    return-void
.end method

.method private static sendUpdateEnabledAll(Landroid/content/Context;Z)V
    .registers 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "key_enable_all"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    const/16 p1, 0x3fb

    .line 12
    .line 13
    invoke-static {p0, p1, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToMainProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static updateLogCacheConfigMain(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 7

    .line 1
    const-string p0, "key_capacity"

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "MTLogConfigHelper"

    .line 8
    .line 9
    if-eqz v0, :cond_42

    .line 10
    .line 11
    const-string v0, "key_enable"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_42

    .line 18
    .line 19
    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v4, "updateLogCacheConfigMain enable: "

    .line 30
    .line 31
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v4, "updateLogCacheConfigMain maxTotalSize: "

    .line 47
    .line 48
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-static {v2, v3}, Lcom/engagelab/privates/common/log/MTCommonLog;->setMaxTotalSize(J)V

    .line 62
    .line 63
    .line 64
    invoke-static {p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->setLogCacheEnabled(Z)V

    .line 65
    .line 66
    .line 67
    :cond_42
    const-string p0, "key_enable_all"

    .line 68
    .line 69
    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_62

    .line 74
    .line 75
    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v0, "updateLogCacheConfigMain enableAll: "

    .line 82
    .line 83
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-static {p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->setLogCacheEnabledAll(Z)V

    .line 97
    .line 98
    .line 99
    :cond_62
    return-void
.end method

.method public static updateLogCtrlConfig(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-static {p0}, Lcom/engagelab/privates/common/log/MTLogConfigHelper$Ctrl;->getLocalCtrlConfig(Landroid/content/Context;)Lcom/engagelab/privates/common/log/MTLogConfigHelper$Ctrl$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "updateLogCtrlConfig ctrlConfig: "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "MTLogConfigHelper"

    .line 20
    .line 21
    invoke-static {v2, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    if-eqz v0, :cond_30

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/engagelab/privates/common/log/MTLogConfigHelper$Ctrl$a;->f()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {v0}, Lcom/engagelab/privates/common/log/MTLogConfigHelper$Ctrl$a;->e()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_24

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    :cond_24
    xor-int/lit8 v0, v1, 0x1

    .line 38
    .line 39
    invoke-static {v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->setReuseActiveFile(Z)V

    .line 40
    .line 41
    .line 42
    invoke-static {v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->setLogCacheEnabledAll(Z)V

    .line 43
    .line 44
    .line 45
    invoke-static {p0, v1}, Lcom/engagelab/privates/common/log/MTLogConfigHelper;->sendUpdateEnabledAll(Landroid/content/Context;Z)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_30
    const/4 p0, 0x1

    .line 50
    invoke-static {p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->setReuseActiveFile(Z)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

###### Class com.engagelab.privates.common.log.MTLogConfigHelper.Ctrl (com.engagelab.privates.common.log.MTLogConfigHelper$Ctrl)
.class public Lcom/engagelab/privates/common/log/MTLogConfigHelper$Ctrl;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/engagelab/privates/common/log/MTLogConfigHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ctrl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/engagelab/privates/common/log/MTLogConfigHelper$Ctrl$a;
    }
.end annotation


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

.method public static ctrl(Landroid/content/Context;ILjava/lang/String;)V
    .registers 6

    .line 1
    const-string v0, "ctrl: saved log config from content - enable: "

    .line 2
    .line 3
    const-string v1, "MTLogConfigHelper"

    .line 4
    .line 5
    if-nez p0, :cond_c

    .line 6
    .line 7
    const-string p0, "ctrl failed: context is null"

    .line 8
    .line 9
    invoke-static {v1, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_c
    const/16 v2, 0x52

    .line 14
    .line 15
    if-ne v2, p1, :cond_70

    .line 16
    .line 17
    :try_start_10
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_60

    .line 22
    .line 23
    const-string p1, "ctrl: content is valid, parsing and saving"

    .line 24
    .line 25
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p2}, Lcom/engagelab/privates/common/log/MTLogConfigHelper$Ctrl;->parseContent(Ljava/lang/String;)Lcom/engagelab/privates/common/log/MTLogConfigHelper$Ctrl$a;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-eqz p1, :cond_5a

    .line 33
    .line 34
    invoke-static {p0, p1}, Lcom/engagelab/privates/common/log/MTLogConfigHelper$Ctrl;->saveCtrlConfig(Landroid/content/Context;Lcom/engagelab/privates/common/log/MTLogConfigHelper$Ctrl$a;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p0}, Lcom/engagelab/privates/common/log/MTLogConfigHelper;->updateLogCtrlConfig(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    new-instance p0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/engagelab/privates/common/log/MTLogConfigHelper$Ctrl$a;->f()Z

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string p2, ", expire: "

    .line 53
    .line 54
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/engagelab/privates/common/log/MTLogConfigHelper$Ctrl$a;->c()I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string p2, " days, delayUpload: "

    .line 65
    .line 66
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/engagelab/privates/common/log/MTLogConfigHelper$Ctrl$a;->b()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string p1, " seconds"

    .line 77
    .line 78
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-static {v1, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :catchall_58
    move-exception p0

    .line 90
    goto :goto_66

    .line 91
    :cond_5a
    const-string p0, "ctrl: failed to parse content"

    .line 92
    .line 93
    invoke-static {v1, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_60
    const-string p0, "ctrl: content is empty for cmd 82"

    .line 98
    .line 99
    invoke-static {v1, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_65
    .catchall {:try_start_10 .. :try_end_65} :catchall_58

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :goto_66
    new-instance p1, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string p2, "ctrl failed: "

    .line 106
    .line 107
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-static {p0, p1, v1}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :cond_70
    return-void
.end method

.method public static getLocalCtrlConfig(Landroid/content/Context;)Lcom/engagelab/privates/common/log/MTLogConfigHelper$Ctrl$a;
    .registers 7

    .line 1
    const-string v0, "getLocalCtrlConfig: "

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "MTLogConfigHelper"

    .line 5
    .line 6
    if-nez p0, :cond_d

    .line 7
    .line 8
    const-string p0, "getLocalCtrlConfig failed: context is null"

    .line 9
    .line 10
    invoke-static {v2, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_d
    :try_start_d
    invoke-static {p0}, Lcom/engagelab/privates/common/cache/MTLogConfig;->getCtrlConfigContent(Landroid/content/Context;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-static {p0}, Lcom/engagelab/privates/common/cache/MTLogConfig;->getCtrlConfigUpdateTime(Landroid/content/Context;)J

    .line 19
    .line 20
    .line 21
    move-result-wide v4

    .line 22
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-eqz p0, :cond_23

    .line 27
    .line 28
    const-string p0, "getLocalCtrlConfig: no saved content found"

    .line 29
    .line 30
    invoke-static {v2, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-object v1

    .line 34
    :catchall_21
    move-exception p0

    .line 35
    goto :goto_37

    .line 36
    :cond_23
    invoke-static {v3, v4, v5}, Lcom/engagelab/privates/common/log/MTLogConfigHelper$Ctrl;->parseContent(Ljava/lang/String;J)Lcom/engagelab/privates/common/log/MTLogConfigHelper$Ctrl$a;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v2, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36
    .catchall {:try_start_d .. :try_end_36} :catchall_21

    .line 53
    .line 54
    .line 55
    return-object p0

    .line 56
    :goto_37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v3, "getLocalCtrlConfig failed: "

    .line 59
    .line 60
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-static {p0, v0, v2}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-object v1
.end method

.method private static parseContent(Ljava/lang/String;)Lcom/engagelab/privates/common/log/MTLogConfigHelper$Ctrl$a;
    .registers 3

    const-wide/16 v0, 0x0

    .line 16
    invoke-static {p0, v0, v1}, Lcom/engagelab/privates/common/log/MTLogConfigHelper$Ctrl;->parseContent(Ljava/lang/String;J)Lcom/engagelab/privates/common/log/MTLogConfigHelper$Ctrl$a;

    move-result-object p0

    return-object p0
.end method

.method private static parseContent(Ljava/lang/String;J)Lcom/engagelab/privates/common/log/MTLogConfigHelper$Ctrl$a;
    .registers 14

    .line 1
    const-string v0, "parsed ctrl config: "

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "MTLogConfigHelper"

    if-eqz v1, :cond_11

    const-string v0, "parseContent failed: content is empty"

    .line 2
    invoke-static {v3, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 3
    :cond_11
    :try_start_11
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "log_enable"

    const/4 v5, 0x0

    .line 4
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_21

    move v5, v6

    :cond_21
    const-string v4, "expire"

    const/4 v6, 0x7

    .line 5
    invoke-virtual {v1, v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const-string v4, "delay_upload"

    const/16 v7, 0xa

    .line 6
    invoke-virtual {v1, v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const-wide/16 v9, 0x0

    cmp-long v1, p1, v9

    if-lez v1, :cond_38

    move-wide v9, p1

    goto :goto_3c

    .line 7
    :cond_38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 8
    :goto_3c
    new-instance v4, Lcom/engagelab/privates/common/log/MTLogConfigHelper$Ctrl$a;

    move-object v8, p0

    invoke-direct/range {v4 .. v10}, Lcom/engagelab/privates/common/log/MTLogConfigHelper$Ctrl$a;-><init>(ZIILjava/lang/String;J)V

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_51
    .catchall {:try_start_11 .. :try_end_51} :catchall_52

    return-object v4

    :catchall_52
    move-exception v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "parseContent failed: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-static {v0, v1, v3}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-object v2
.end method

.method private static saveCtrlConfig(Landroid/content/Context;Lcom/engagelab/privates/common/log/MTLogConfigHelper$Ctrl$a;)V
    .registers 6

    .line 1
    const-string v0, "saved ctrl config: "

    .line 2
    .line 3
    const-string v1, "MTLogConfigHelper"

    .line 4
    .line 5
    if-eqz p0, :cond_33

    .line 6
    .line 7
    if-nez p1, :cond_9

    .line 8
    .line 9
    goto :goto_33

    .line 10
    :cond_9
    :try_start_9
    invoke-virtual {p1}, Lcom/engagelab/privates/common/log/MTLogConfigHelper$Ctrl$a;->a()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-static {p0, v2}, Lcom/engagelab/privates/common/cache/MTLogConfig;->setCtrlConfigContent(Landroid/content/Context;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/engagelab/privates/common/log/MTLogConfigHelper$Ctrl$a;->d()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    invoke-static {p0, v2, v3}, Lcom/engagelab/privates/common/cache/MTLogConfig;->setCtrlConfigUpdateTime(Landroid/content/Context;J)V

    .line 22
    .line 23
    .line 24
    new-instance p0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {v1, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_9 .. :try_end_26} :catchall_27

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catchall_27
    move-exception p0

    .line 41
    new-instance p1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v0, "saveCtrlConfig failed: "

    .line 44
    .line 45
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p0, p1, v1}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_33
    :goto_33
    const-string p0, "saveCtrlConfig failed: context or config is null"

    .line 53
    .line 54
    invoke-static {v1, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

###### Class com.engagelab.privates.common.log.MTLogConfigHelper.Ctrl.a (com.engagelab.privates.common.log.MTLogConfigHelper$Ctrl$a)
.class public Lcom/engagelab/privates/common/log/MTLogConfigHelper$Ctrl$a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/engagelab/privates/common/log/MTLogConfigHelper$Ctrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:Ljava/lang/String;

.field public e:J


# direct methods
.method public constructor <init>(ZIILjava/lang/String;J)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/engagelab/privates/common/log/MTLogConfigHelper$Ctrl$a;->a:Z

    .line 5
    .line 6
    iput p2, p0, Lcom/engagelab/privates/common/log/MTLogConfigHelper$Ctrl$a;->b:I

    .line 7
    .line 8
    iput p3, p0, Lcom/engagelab/privates/common/log/MTLogConfigHelper$Ctrl$a;->c:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/engagelab/privates/common/log/MTLogConfigHelper$Ctrl$a;->d:Ljava/lang/String;

    .line 11
    .line 12
    iput-wide p5, p0, Lcom/engagelab/privates/common/log/MTLogConfigHelper$Ctrl$a;->e:J

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/common/log/MTLogConfigHelper$Ctrl$a;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/engagelab/privates/common/log/MTLogConfigHelper$Ctrl$a;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public c()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/engagelab/privates/common/log/MTLogConfigHelper$Ctrl$a;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public d()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/engagelab/privates/common/log/MTLogConfigHelper$Ctrl$a;->e:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public e()Z
    .registers 11

    .line 1
    iget v0, p0, Lcom/engagelab/privates/common/log/MTLogConfigHelper$Ctrl$a;->b:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-gtz v0, :cond_6

    .line 5
    .line 6
    return v1

    .line 7
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    iget-wide v4, p0, Lcom/engagelab/privates/common/log/MTLogConfigHelper$Ctrl$a;->e:J

    .line 12
    .line 13
    iget v0, p0, Lcom/engagelab/privates/common/log/MTLogConfigHelper$Ctrl$a;->b:I

    .line 14
    .line 15
    const v6, 0x15180

    .line 16
    .line 17
    .line 18
    mul-int/2addr v0, v6

    .line 19
    int-to-long v6, v0

    .line 20
    const-wide/16 v8, 0x3e8

    .line 21
    .line 22
    mul-long/2addr v6, v8

    .line 23
    add-long/2addr v6, v4

    .line 24
    cmp-long v0, v2, v6

    .line 25
    .line 26
    if-lez v0, :cond_1d

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    return v0

    .line 30
    :cond_1d
    return v1
.end method

.method public f()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/engagelab/privates/common/log/MTLogConfigHelper$Ctrl$a;->a:Z

    .line 2
    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "CtrlConfig{logEnable="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/engagelab/privates/common/log/MTLogConfigHelper$Ctrl$a;->a:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", expire="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/engagelab/privates/common/log/MTLogConfigHelper$Ctrl$a;->b:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", delayUpload="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/engagelab/privates/common/log/MTLogConfigHelper$Ctrl$a;->c:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", content=\'"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/engagelab/privates/common/log/MTLogConfigHelper$Ctrl$a;->d:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, "\', updateTime="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-wide v1, p0, Lcom/engagelab/privates/common/log/MTLogConfigHelper$Ctrl$a;->e:J

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", isExpired="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/engagelab/privates/common/log/MTLogConfigHelper$Ctrl$a;->e()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const/16 v1, 0x7d

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    return-object v0
.end method

###### Class com.engagelab.privates.common.log.MTLogConfigHelper.Report (com.engagelab.privates.common.log.MTLogConfigHelper$Report)
.class public Lcom/engagelab/privates/common/log/MTLogConfigHelper$Report;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/engagelab/privates/common/log/MTLogConfigHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Report"
.end annotation


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

.method public static synthetic access$000(Landroid/content/Context;Ljava/io/File;Ljava/util/List;JLjava/lang/String;)V
    .registers 6

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/engagelab/privates/common/log/MTLogConfigHelper$Report;->uploadLogFile(Landroid/content/Context;Ljava/io/File;Ljava/util/List;JLjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static decodeFileData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "JCKP"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1}, Lcom/engagelab/privates/common/utils/StringUtil;->get32MD5String(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/16 v0, 0x10

    .line 25
    .line 26
    new-array v0, v0, [B

    .line 27
    .line 28
    fill-array-data v0, :array_3e

    .line 29
    .line 30
    .line 31
    new-instance v1, Ljava/lang/String;

    .line 32
    .line 33
    const-string v2, "UTF-8"

    .line 34
    .line 35
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 40
    .line 41
    .line 42
    const/16 v0, 0x62

    .line 43
    .line 44
    invoke-static {v1, v0}, Lcom/engagelab/privates/common/utils/AESUtil;->getIv(Ljava/lang/String;C)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {p0, p1, v0}, Lcom/engagelab/privates/common/utils/SM4Util;->decryptBytes([BLjava/lang/String;Ljava/lang/String;)[B

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-static {p0}, Lcom/engagelab/privates/common/utils/GZipUtil;->unzip([B)[B

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    new-instance p1, Ljava/lang/String;

    .line 57
    .line 58
    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    .line 59
    .line 60
    .line 61
    return-object p1

    .line 62
    nop

    .line 63
    :array_3e
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

.method private static getFileData([BLjava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-static {p0}, Lcom/engagelab/privates/common/utils/GZipUtil;->zip([B)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "JCKP"

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p1}, Lcom/engagelab/privates/common/utils/StringUtil;->get32MD5String(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/16 v0, 0x10

    .line 24
    .line 25
    new-array v0, v0, [B

    .line 26
    .line 27
    fill-array-data v0, :array_38

    .line 28
    .line 29
    .line 30
    new-instance v1, Ljava/lang/String;

    .line 31
    .line 32
    const-string v2, "UTF-8"

    .line 33
    .line 34
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 39
    .line 40
    .line 41
    const/16 v0, 0x62

    .line 42
    .line 43
    invoke-static {v1, v0}, Lcom/engagelab/privates/common/utils/AESUtil;->getIv(Ljava/lang/String;C)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {p0, p1, v0}, Lcom/engagelab/privates/common/utils/SM4Util;->encryptBytes([BLjava/lang/String;Ljava/lang/String;)[B

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const/4 p1, 0x2

    .line 52
    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0

    .line 57
    :array_38
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

.method public static report(Landroid/content/Context;Ljava/util/List;JLjava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/engagelab/privates/common/log/MTLogConfigHelper;->THREAD_LOG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Lcom/engagelab/privates/common/log/MTLogConfigHelper$Report$a;

    .line 4
    .line 5
    move-object v2, p0

    .line 6
    move-object v5, p1

    .line 7
    move-wide v3, p2

    .line 8
    move-object v6, p4

    .line 9
    invoke-direct/range {v1 .. v6}, Lcom/engagelab/privates/common/log/MTLogConfigHelper$Report$a;-><init>(Landroid/content/Context;JLjava/util/List;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-wide/16 p0, 0x0

    .line 13
    .line 14
    invoke-static {v2, v0, v1, p0, p1}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->postMessageDelayed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private static uploadLogFile(Landroid/content/Context;Ljava/io/File;Ljava/util/List;JLjava/lang/String;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, ":"

    .line 2
    .line 3
    const-string v1, "Basic "

    .line 4
    .line 5
    const-string v2, "uploadLogFile request body: "

    .line 6
    .line 7
    const-string v3, "uploadLogFile logFile: "

    .line 8
    .line 9
    const-string v4, "MTLogConfigHelper"

    .line 10
    .line 11
    :try_start_a
    new-instance v5, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-static {v4, v3}, Lcom/engagelab/privates/common/log/MTCommonLog;->debugOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lcom/engagelab/privates/common/log/MTLogConfigHelper;->access$100(Ljava/io/File;)[B

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-static {p0}, Lcom/engagelab/privates/common/global/MTGlobal;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-static {v3, v5}, Lcom/engagelab/privates/common/log/MTLogConfigHelper$Report;->getFileData([BLjava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    new-instance v6, Lorg/json/JSONObject;

    .line 39
    .line 40
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V
    :try_end_2a
    .catchall {:try_start_a .. :try_end_2a} :catchall_191

    .line 41
    .line 42
    .line 43
    const-string v7, "file_name"

    .line 44
    .line 45
    :try_start_2c
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    .line 51
    .line 52
    const-string v7, "file_data"

    .line 53
    .line 54
    invoke-virtual {v6, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    .line 56
    .line 57
    const-string v3, "appkey"

    .line 58
    .line 59
    invoke-virtual {v6, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    .line 61
    .line 62
    const-string v3, "platform"

    .line 63
    .line 64
    const-string v7, "a"

    .line 65
    .line 66
    invoke-virtual {v6, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    new-instance v6, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-static {v4, v2}, Lcom/engagelab/privates/common/log/MTCommonLog;->debugOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    sget-object v2, Lcom/engagelab/privates/common/constants/MTCommonConstants;->UTF_8:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v3, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-static {v2}, Lcom/engagelab/privates/common/utils/GZipUtil;->zip([B)[B

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-static {}, Lcom/engagelab/privates/common/utils/AESUtil;->generateSeed()I

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    int-to-long v6, v3

    .line 103
    invoke-static {v6, v7}, Lcom/engagelab/privates/common/utils/AESUtil;->getMd5AesKey(J)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    const/16 v6, 0x10

    .line 108
    .line 109
    new-array v6, v6, [B

    .line 110
    .line 111
    fill-array-data v6, :array_1fe

    .line 112
    .line 113
    .line 114
    new-instance v7, Ljava/lang/String;

    .line 115
    .line 116
    const-string v8, "UTF-8"

    .line 117
    .line 118
    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 119
    .line 120
    .line 121
    move-result-object v8

    .line 122
    invoke-direct {v7, v6, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 123
    .line 124
    .line 125
    const/16 v6, 0x62

    .line 126
    .line 127
    invoke-static {v7, v6}, Lcom/engagelab/privates/common/utils/AESUtil;->getIv(Ljava/lang/String;C)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    invoke-static {}, Lcom/engagelab/privates/common/global/MTGlobal;->getEncryptType()I

    .line 132
    .line 133
    .line 134
    move-result v7

    .line 135
    invoke-static {v2, v3, v6}, Lcom/engagelab/privates/common/utils/SM4Util;->encryptBytes([BLjava/lang/String;Ljava/lang/String;)[B

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-static {p5}, Lcom/engagelab/privates/common/utils/StringUtil;->getMD5Utf8(Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p5

    .line 143
    invoke-static {v2}, Lcom/engagelab/privates/common/utils/StringUtil;->getBytesSHA1([B)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    new-instance v8, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v8, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v8, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p5

    .line 165
    invoke-static {p5}, Lcom/engagelab/privates/common/utils/StringUtil;->getBytesSHA1(Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p5

    .line 169
    new-instance v6, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v6, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p3

    .line 193
    new-instance p4, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    .line 199
    .line 200
    .line 201
    move-result-object p3

    .line 202
    const/16 p5, 0xa

    .line 203
    .line 204
    invoke-static {p3, p5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p3

    .line 208
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p3

    .line 215
    new-instance p4, Ljava/util/HashMap;

    .line 216
    .line 217
    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    .line 218
    .line 219
    .line 220
    const-string p5, "Authorization"

    .line 221
    .line 222
    invoke-virtual {p4, p5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e0
    .catchall {:try_start_2c .. :try_end_e0} :catchall_191

    .line 223
    .line 224
    .line 225
    const-string p3, "Charset"

    .line 226
    .line 227
    :try_start_e2
    sget-object p5, Lcom/engagelab/privates/common/constants/MTCommonConstants;->UTF_8:Ljava/lang/String;

    .line 228
    .line 229
    invoke-virtual {p4, p3, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    const-string p3, "Accept"

    .line 233
    .line 234
    const-string p5, "application/json"

    .line 235
    .line 236
    invoke-virtual {p4, p3, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    const-string p3, "Accept-Encoding"

    .line 240
    .line 241
    const-string p5, "gzip"

    .line 242
    .line 243
    invoke-virtual {p4, p3, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    const-string p3, "content-type"

    .line 247
    .line 248
    const-string p5, "application/octet-stream"

    .line 249
    .line 250
    invoke-virtual {p4, p3, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_fc
    .catchall {:try_start_e2 .. :try_end_fc} :catchall_191

    .line 251
    .line 252
    .line 253
    const-string p3, "Content-Length"

    .line 254
    .line 255
    :try_start_fe
    array-length p5, v2

    .line 256
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object p5

    .line 260
    invoke-virtual {p4, p3, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    const-string p3, "X-App-Key"

    .line 264
    .line 265
    invoke-virtual {p4, p3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10b
    .catchall {:try_start_fe .. :try_end_10b} :catchall_191

    .line 266
    .line 267
    .line 268
    const/4 p3, 0x2

    .line 269
    if-ne v7, p3, :cond_111

    .line 270
    .line 271
    const-string p3, "SM4"

    .line 272
    .line 273
    goto :goto_113

    .line 274
    :cond_111
    const-string p3, ""

    .line 275
    .line 276
    :goto_113
    :try_start_113
    const-string p5, "Encrypt-Type"

    .line 277
    .line 278
    invoke-virtual {p4, p5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 282
    .line 283
    .line 284
    move-result-object p2

    .line 285
    :goto_11c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 286
    .line 287
    .line 288
    move-result p3

    .line 289
    if-eqz p3, :cond_1c6

    .line 290
    .line 291
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object p3

    .line 295
    check-cast p3, Ljava/lang/String;

    .line 296
    .line 297
    new-instance p5, Ljava/lang/StringBuilder;

    .line 298
    .line 299
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    .line 301
    .line 302
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    const-string p3, "/log/upload"

    .line 306
    .line 307
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object p3

    .line 314
    new-instance p5, Ljava/lang/StringBuilder;

    .line 315
    .line 316
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    .line 318
    .line 319
    const-string v0, "uploading log file to: "

    .line 320
    .line 321
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object p5

    .line 331
    invoke-static {v4, p5}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    const/4 p5, 0x1

    .line 335
    invoke-static {p0, p3, p4, v2, p5}, Lcom/engagelab/privates/common/https/HttpUtils;->postPair(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;[BZ)Landroid/util/Pair;

    .line 336
    .line 337
    .line 338
    move-result-object p3

    .line 339
    iget-object p5, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 340
    .line 341
    check-cast p5, Ljava/lang/Integer;

    .line 342
    .line 343
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    .line 344
    .line 345
    .line 346
    move-result p5

    .line 347
    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 348
    .line 349
    check-cast p3, [B

    .line 350
    .line 351
    const/16 p3, 0xc8

    .line 352
    .line 353
    if-ne p5, p3, :cond_1a8

    .line 354
    .line 355
    new-instance p0, Ljava/lang/StringBuilder;

    .line 356
    .line 357
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    .line 359
    .line 360
    const-string p2, "log file upload success to: "

    .line 361
    .line 362
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object p0

    .line 372
    invoke-static {v4, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 376
    .line 377
    .line 378
    move-result p0

    .line 379
    if-eqz p0, :cond_193

    .line 380
    .line 381
    new-instance p0, Ljava/lang/StringBuilder;

    .line 382
    .line 383
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 384
    .line 385
    .line 386
    const-string p2, "deleted uploaded log file: "

    .line 387
    .line 388
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object p0

    .line 398
    invoke-static {v4, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    return-void

    .line 402
    :catchall_191
    move-exception p0

    .line 403
    goto :goto_1db

    .line 404
    :cond_193
    new-instance p0, Ljava/lang/StringBuilder;

    .line 405
    .line 406
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 407
    .line 408
    .line 409
    const-string p2, "failed to delete uploaded log file: "

    .line 410
    .line 411
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object p0

    .line 421
    invoke-static {v4, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    return-void

    .line 425
    :cond_1a8
    new-instance p3, Ljava/lang/StringBuilder;

    .line 426
    .line 427
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 428
    .line 429
    .line 430
    const-string v0, "log file upload failed, code: "

    .line 431
    .line 432
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    const-string p5, ", url: "

    .line 439
    .line 440
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object p3

    .line 450
    invoke-static {v4, p3}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    goto/16 :goto_11c

    .line 454
    .line 455
    :cond_1c6
    new-instance p0, Ljava/lang/StringBuilder;

    .line 456
    .line 457
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 458
    .line 459
    .line 460
    const-string p2, "all log file upload requests failed for file: "

    .line 461
    .line 462
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object p0

    .line 472
    invoke-static {v4, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1da
    .catchall {:try_start_113 .. :try_end_1da} :catchall_191

    .line 473
    .line 474
    .line 475
    return-void

    .line 476
    :goto_1db
    new-instance p2, Ljava/lang/StringBuilder;

    .line 477
    .line 478
    const-string p3, "uploadLogFile failed for file: "

    .line 479
    .line 480
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object p1

    .line 487
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    const-string p1, ", error: "

    .line 491
    .line 492
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object p0

    .line 499
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object p0

    .line 506
    invoke-static {v4, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    .line 508
    .line 509
    return-void

    .line 510
    nop

    .line 511
    :array_1fe
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

###### Class com.engagelab.privates.common.log.MTLogConfigHelper.Report.a (com.engagelab.privates.common.log.MTLogConfigHelper$Report$a)
.class public final Lcom/engagelab/privates/common/log/MTLogConfigHelper$Report$a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/engagelab/privates/common/log/MTLogConfigHelper$Report;->report(Landroid/content/Context;Ljava/util/List;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:J

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;JLjava/util/List;Ljava/lang/String;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/common/log/MTLogConfigHelper$Report$a;->a:Landroid/content/Context;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/engagelab/privates/common/log/MTLogConfigHelper$Report$a;->b:J

    .line 4
    .line 5
    iput-object p4, p0, Lcom/engagelab/privates/common/log/MTLogConfigHelper$Report$a;->c:Ljava/util/List;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/engagelab/privates/common/log/MTLogConfigHelper$Report$a;->d:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 1
    invoke-static {}, Lcom/engagelab/privates/common/log/MTCommonLog;->getAllClosedLogFiles()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "MTLogConfigHelper"

    .line 6
    .line 7
    if-eqz v0, :cond_75

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_f

    .line 14
    .line 15
    goto :goto_75

    .line 16
    :cond_f
    iget-object v2, p0, Lcom/engagelab/privates/common/log/MTLogConfigHelper$Report$a;->a:Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {v2}, Lcom/engagelab/privates/common/utils/SystemUtil;->isNetworkConnecting(Landroid/content/Context;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_1d

    .line 23
    .line 24
    const-string v0, "can\'t upload log files, network is disconnected"

    .line 25
    .line 26
    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1d
    iget-wide v2, p0, Lcom/engagelab/privates/common/log/MTLogConfigHelper$Report$a;->b:J

    .line 31
    .line 32
    const-wide/16 v4, 0x0

    .line 33
    .line 34
    cmp-long v2, v2, v4

    .line 35
    .line 36
    if-nez v2, :cond_2b

    .line 37
    .line 38
    const-string v0, "uid is 0, skip log upload"

    .line 39
    .line 40
    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_2b
    iget-object v2, p0, Lcom/engagelab/privates/common/log/MTLogConfigHelper$Report$a;->c:Ljava/util/List;

    .line 45
    .line 46
    if-eqz v2, :cond_6f

    .line 47
    .line 48
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_36

    .line 53
    .line 54
    goto :goto_6f

    .line 55
    :cond_36
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    :goto_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_6e

    .line 64
    .line 65
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    move-object v4, v2

    .line 70
    check-cast v4, Ljava/io/File;

    .line 71
    .line 72
    if-eqz v4, :cond_5c

    .line 73
    .line 74
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-nez v2, :cond_50

    .line 79
    .line 80
    goto :goto_5c

    .line 81
    :cond_50
    iget-object v3, p0, Lcom/engagelab/privates/common/log/MTLogConfigHelper$Report$a;->a:Landroid/content/Context;

    .line 82
    .line 83
    iget-object v5, p0, Lcom/engagelab/privates/common/log/MTLogConfigHelper$Report$a;->c:Ljava/util/List;

    .line 84
    .line 85
    iget-wide v6, p0, Lcom/engagelab/privates/common/log/MTLogConfigHelper$Report$a;->b:J

    .line 86
    .line 87
    iget-object v8, p0, Lcom/engagelab/privates/common/log/MTLogConfigHelper$Report$a;->d:Ljava/lang/String;

    .line 88
    .line 89
    invoke-static/range {v3 .. v8}, Lcom/engagelab/privates/common/log/MTLogConfigHelper$Report;->access$000(Landroid/content/Context;Ljava/io/File;Ljava/util/List;JLjava/lang/String;)V

    .line 90
    .line 91
    .line 92
    goto :goto_3a

    .line 93
    :cond_5c
    :goto_5c
    new-instance v2, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v3, "log file is null or not exists: "

    .line 96
    .line 97
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-static {v1, v2}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    goto :goto_3a

    .line 111
    :cond_6e
    return-void

    .line 112
    :cond_6f
    :goto_6f
    const-string v0, "report failed: urls is null or empty"

    .line 113
    .line 114
    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :cond_75
    :goto_75
    const-string v0, "no closed log files to upload"

    .line 119
    .line 120
    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    return-void
.end method

###### Class com.engagelab.privates.common.log.MTLogConfigHelper.a (com.engagelab.privates.common.log.MTLogConfigHelper$a)
.class public final Lcom/engagelab/privates/common/log/MTLogConfigHelper$a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/engagelab/privates/common/log/MTLogConfigHelper;->sendReport(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/common/log/MTLogConfigHelper$a;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    const-string v0, "MTLogConfigHelper"

    .line 2
    .line 3
    const-string v1, "sendReport run"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/engagelab/privates/common/log/MTLogConfigHelper$a;->a:Landroid/content/Context;

    .line 9
    .line 10
    const/16 v1, 0x7c7

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {v0, v1, v2}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
