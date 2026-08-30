###### Class com.engagelab.privates.push.api.MTPushPrivatesApi (com.engagelab.privates.push.api.MTPushPrivatesApi)
.class public Lcom/engagelab/privates/push/api/MTPushPrivatesApi;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/engagelab/privates/push/api/MTPushPrivatesApi$Code;
    }
.end annotation


# static fields
.field public static final PLATFORM_DEFAULT:B = 0x0t

.field public static final PLATFORM_GOOGLE:B = 0x8t

.field public static final PLATFORM_HONOR:B = 0x7t

.field public static final PLATFORM_HUAWEI:B = 0x2t

.field public static final PLATFORM_MEIZU:B = 0x3t

.field public static final PLATFORM_OPPO:B = 0x4t

.field public static final PLATFORM_VIVO:B = 0x5t

.field public static final PLATFORM_XIAOMI:B = 0x1t

.field public static SDK_VERSION_CODE:I = 0x212

.field public static SDK_VERSION_NAME:Ljava/lang/String; = "5.3.0"

.field private static final TAG:Ljava/lang/String; = "MTPushPrivatesApi"


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

.method public static varargs addTag(Landroid/content/Context;I[Ljava/lang/String;)V
    .registers 5

    .line 1
    const-string v0, "MTPushPrivatesApi"

    .line 2
    .line 3
    if-nez p0, :cond_a

    .line 4
    .line 5
    const-string p0, "addTag context can\'t be null, please check it"

    .line 6
    .line 7
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    if-nez p1, :cond_12

    .line 12
    .line 13
    const-string p0, "addTag sequence can\'t be 0, please check it"

    .line 14
    .line 15
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_12
    if-nez p2, :cond_1a

    .line 20
    .line 21
    const-string p0, "addTag tag can\'t be null, please check it"

    .line 22
    .line 23
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1a
    array-length v1, p2

    .line 28
    if-nez v1, :cond_23

    .line 29
    .line 30
    const-string p0, "addTag tag can\'t be empty, please check it"

    .line 31
    .line 32
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_23
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_2e

    .line 45
    .line 46
    return-void

    .line 47
    :cond_2e
    new-instance v0, Landroid/os/Bundle;

    .line 48
    .line 49
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v1, "sequence"

    .line 53
    .line 54
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    const-string p1, "tag"

    .line 58
    .line 59
    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    const/16 p1, 0xf95

    .line 67
    .line 68
    invoke-static {p0, p1, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public static clearAlias(Landroid/content/Context;I)V
    .registers 4

    .line 1
    if-nez p0, :cond_a

    .line 2
    .line 3
    const-string p0, "MTPushPrivatesApi"

    .line 4
    .line 5
    const-string p1, "clearAlias context can\'t be null, please check it"

    .line 6
    .line 7
    invoke-static {p0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_15

    .line 20
    .line 21
    return-void

    .line 22
    :cond_15
    new-instance v0, Landroid/os/Bundle;

    .line 23
    .line 24
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v1, "sequence"

    .line 28
    .line 29
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const/16 p1, 0xf8d

    .line 37
    .line 38
    invoke-static {p0, p1, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public static clearNotification(Landroid/content/Context;)V
    .registers 3

    if-nez p0, :cond_a

    const-string p0, "MTPushPrivatesApi"

    const-string v0, "clearNotification context can\'t be null, please check it"

    .line 6
    invoke-static {p0, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_15

    return-void

    .line 8
    :cond_15
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/16 v0, 0xf36

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    return-void
.end method

.method public static clearNotification(Landroid/content/Context;I)V
    .registers 4

    if-nez p0, :cond_a

    const-string p0, "MTPushPrivatesApi"

    const-string p1, "clearNotification context can\'t be null, please check it"

    .line 1
    invoke-static {p0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_15

    return-void

    .line 3
    :cond_15
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "notify_id"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/16 p1, 0xf36

    invoke-static {p0, p1, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    return-void
.end method

.method public static clearPlatformToken(Landroid/content/Context;)V
    .registers 3

    .line 1
    if-nez p0, :cond_a

    .line 2
    .line 3
    const-string p0, "MTPushPrivatesApi"

    .line 4
    .line 5
    const-string v0, "clearPlatformToken context can\'t be null, please check it"

    .line 6
    .line 7
    invoke-static {p0, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/16 v0, 0xf89

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static configOldPushVersion(Landroid/content/Context;)V
    .registers 3

    .line 1
    const-string v0, "MTPushPrivatesApi"

    .line 2
    .line 3
    if-nez p0, :cond_a

    .line 4
    .line 5
    const-string p0, "init context can\'t be null, please check it"

    .line 6
    .line 7
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1f

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {p0}, Lcom/engagelab/privates/common/global/MTGlobal;->isRemoteProcess(Landroid/content/Context;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-nez p0, :cond_1f

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1f
    const/16 p0, 0x18c

    .line 33
    .line 34
    sput p0, Lcom/engagelab/privates/push/api/MTPushPrivatesApi;->SDK_VERSION_CODE:I

    .line 35
    .line 36
    const-string p0, "3.9.6"

    .line 37
    .line 38
    sput-object p0, Lcom/engagelab/privates/push/api/MTPushPrivatesApi;->SDK_VERSION_NAME:Ljava/lang/String;

    .line 39
    .line 40
    new-instance p0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v1, "configOldPushVersion "

    .line 43
    .line 44
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sget-object v1, Lcom/engagelab/privates/push/api/MTPushPrivatesApi;->SDK_VERSION_NAME:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public static configUserLanguage(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 1
    if-nez p0, :cond_a

    .line 2
    .line 3
    const-string p0, "MTPushPrivatesApi"

    .line 4
    .line 5
    const-string p1, "configPushLanguage context can\'t be null, please check it"

    .line 6
    .line 7
    invoke-static {p0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1f

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->isRemoteProcess(Landroid/content/Context;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1f

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1f
    invoke-static {p0, p1}, Lcom/engagelab/privates/common/r;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance v0, Landroid/os/Bundle;

    .line 36
    .line 37
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v1, "set_user_language"

    .line 41
    .line 42
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/16 p1, 0xed4

    .line 46
    .line 47
    invoke-static {p0, p1, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public static deleteAllTag(Landroid/content/Context;I)V
    .registers 4

    .line 1
    const-string v0, "MTPushPrivatesApi"

    .line 2
    .line 3
    if-nez p0, :cond_a

    .line 4
    .line 5
    const-string p0, "deleteAllTag context can\'t be null, please check it"

    .line 6
    .line 7
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    if-nez p1, :cond_12

    .line 12
    .line 13
    const-string p0, "deleteAllTag sequence can\'t be 0, please check it"

    .line 14
    .line 15
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_12
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1d

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1d
    new-instance v0, Landroid/os/Bundle;

    .line 31
    .line 32
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v1, "sequence"

    .line 36
    .line 37
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const/16 p1, 0xf91

    .line 45
    .line 46
    invoke-static {p0, p1, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public static deleteGeofence(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 1
    const-string v0, "MTPushPrivatesApi"

    .line 2
    .line 3
    if-nez p0, :cond_a

    .line 4
    .line 5
    const-string p0, "deleteGeofence context can\'t be null, please check it"

    .line 6
    .line 7
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_16

    .line 16
    .line 17
    const-string p0, "deleteGeofence geofenceId can\'t be empty, please check it"

    .line 18
    .line 19
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_16
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_21

    .line 32
    .line 33
    return-void

    .line 34
    :cond_21
    new-instance v0, Landroid/os/Bundle;

    .line 35
    .line 36
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v1, "id"

    .line 40
    .line 41
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    const/16 p1, 0xf28

    .line 49
    .line 50
    invoke-static {p0, p1, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public static varargs deleteTag(Landroid/content/Context;I[Ljava/lang/String;)V
    .registers 5

    .line 1
    const-string v0, "MTPushPrivatesApi"

    .line 2
    .line 3
    if-nez p0, :cond_a

    .line 4
    .line 5
    const-string p0, "deleteTag context can\'t be null, please check it"

    .line 6
    .line 7
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    if-nez p1, :cond_12

    .line 12
    .line 13
    const-string p0, "deleteTag sequence can\'t be 0, please check it"

    .line 14
    .line 15
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_12
    if-nez p2, :cond_1a

    .line 20
    .line 21
    const-string p0, "deleteTag tag can\'t be null, please check it"

    .line 22
    .line 23
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1a
    array-length v1, p2

    .line 28
    if-nez v1, :cond_23

    .line 29
    .line 30
    const-string p0, "deleteTag tag can\'t be empty, please check it"

    .line 31
    .line 32
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_23
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_2e

    .line 45
    .line 46
    return-void

    .line 47
    :cond_2e
    new-instance v0, Landroid/os/Bundle;

    .line 48
    .line 49
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v1, "sequence"

    .line 53
    .line 54
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    const-string p1, "tag"

    .line 58
    .line 59
    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    const/16 p1, 0xf94

    .line 67
    .line 68
    invoke-static {p0, p1, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public static getAlias(Landroid/content/Context;I)V
    .registers 4

    .line 1
    if-nez p0, :cond_a

    .line 2
    .line 3
    const-string p0, "MTPushPrivatesApi"

    .line 4
    .line 5
    const-string p1, "getAlias context can\'t be null, please check it"

    .line 6
    .line 7
    invoke-static {p0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_15

    .line 20
    .line 21
    return-void

    .line 22
    :cond_15
    new-instance v0, Landroid/os/Bundle;

    .line 23
    .line 24
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v1, "sequence"

    .line 28
    .line 29
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const/16 p1, 0xf8e

    .line 37
    .line 38
    invoke-static {p0, p1, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public static goToAppNotificationSettings(Landroid/content/Context;)V
    .registers 2

    .line 1
    if-nez p0, :cond_a

    .line 2
    .line 3
    const-string p0, "MTPushPrivatesApi"

    .line 4
    .line 5
    const-string v0, "goToAppNotificationSettings context can\'t be null, please check it"

    .line 6
    .line 7
    invoke-static {p0, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_15

    .line 20
    .line 21
    return-void

    .line 22
    :cond_15
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Lcom/engagelab/privates/push/utils/NotificationUtil;->goToAppNotificationSettings(Landroid/content/Context;)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .registers 3

    .line 1
    const-string v0, "MTPushPrivatesApi.init 5.3.0"

    .line 2
    .line 3
    const-string v1, "MTPushPrivatesApi"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-nez p0, :cond_f

    .line 9
    .line 10
    const-string p0, "init context can\'t be null, please check it"

    .line 11
    .line 12
    invoke-static {v1, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_f
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_29

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->isRemoteProcess(Landroid/content/Context;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_29

    .line 35
    .line 36
    const-string p0, "Please call the MTPushPrivatesApi.init function in the main process or the push process"

    .line 37
    .line 38
    invoke-static {v1, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_29
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const/4 v1, 0x1

    .line 47
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->init(Landroid/content/Context;Z)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_3c

    .line 59
    .line 60
    return-void

    .line 61
    :cond_3c
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {v0}, Lcom/engagelab/privates/push/utils/ApplicationContextUtil;->init(Landroid/content/Context;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {v0}, Lcom/engagelab/privates/push/utils/ActivityUtil;->registerActivityLifecycleCallbacks(Landroid/content/Context;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    new-instance v1, Lcom/engagelab/privates/core/MTCore;

    .line 80
    .line 81
    invoke-direct {v1}, Lcom/engagelab/privates/core/MTCore;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->observer(Landroid/content/Context;Lcom/engagelab/privates/common/observer/MTObserver;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    new-instance v1, Lcom/engagelab/privates/push/MTPush;

    .line 92
    .line 93
    invoke-direct {v1}, Lcom/engagelab/privates/push/MTPush;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->observer(Landroid/content/Context;Lcom/engagelab/privates/common/observer/MTObserver;)V

    .line 97
    .line 98
    .line 99
    invoke-static {}, Lcom/engagelab/privates/common/m0;->a()Lcom/engagelab/privates/common/m0;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v0, v1}, Lcom/engagelab/privates/common/m0;->a(Landroid/content/Context;)V

    .line 108
    .line 109
    .line 110
    invoke-static {}, Lcom/engagelab/privates/common/n0;->a()Lcom/engagelab/privates/common/n0;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v0, p0}, Lcom/engagelab/privates/common/n0;->a(Landroid/content/Context;)V

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method public static onFragmentPause(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_35

    .line 10
    .line 11
    invoke-static {}, Lcom/engagelab/privates/common/global/MTGlobal;->getCurrentActivityName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v0, "&"

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    new-instance v0, Landroid/os/Bundle;

    .line 36
    .line 37
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v1, "activity"

    .line 41
    .line 42
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const/16 p1, 0x3fa

    .line 50
    .line 51
    invoke-static {p0, p1, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToMainProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 52
    .line 53
    .line 54
    :cond_35
    return-void
.end method

.method public static onFragmentResume(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_35

    .line 10
    .line 11
    invoke-static {}, Lcom/engagelab/privates/common/global/MTGlobal;->getCurrentActivityName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v0, "&"

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    new-instance v0, Landroid/os/Bundle;

    .line 36
    .line 37
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v1, "activity"

    .line 41
    .line 42
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const/16 p1, 0x3f9

    .line 50
    .line 51
    invoke-static {p0, p1, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToMainProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 52
    .line 53
    .line 54
    :cond_35
    return-void
.end method

.method public static queryAllTag(Landroid/content/Context;I)V
    .registers 4

    .line 1
    const-string v0, "MTPushPrivatesApi"

    .line 2
    .line 3
    if-nez p0, :cond_a

    .line 4
    .line 5
    const-string p0, "queryAllTag context can\'t be null, please check it"

    .line 6
    .line 7
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    if-nez p1, :cond_12

    .line 12
    .line 13
    const-string p0, "queryAllTag sequence can\'t be 0, please check it"

    .line 14
    .line 15
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_12
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1d

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1d
    new-instance v0, Landroid/os/Bundle;

    .line 31
    .line 32
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v1, "sequence"

    .line 36
    .line 37
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const/16 p1, 0xf90

    .line 45
    .line 46
    invoke-static {p0, p1, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public static queryTag(Landroid/content/Context;ILjava/lang/String;)V
    .registers 5

    .line 1
    const-string v0, "MTPushPrivatesApi"

    .line 2
    .line 3
    if-nez p0, :cond_a

    .line 4
    .line 5
    const-string p0, "queryTag context can\'t be null, please check it"

    .line 6
    .line 7
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    if-nez p1, :cond_12

    .line 12
    .line 13
    const-string p0, "queryTag sequence can\'t be 0, please check it"

    .line 14
    .line 15
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_12
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1e

    .line 24
    .line 25
    const-string p0, "queryTag tag can\'t be empty, please check it"

    .line 26
    .line 27
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1e
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_29

    .line 40
    .line 41
    return-void

    .line 42
    :cond_29
    new-instance v0, Landroid/os/Bundle;

    .line 43
    .line 44
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v1, "sequence"

    .line 48
    .line 49
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 50
    .line 51
    .line 52
    const-string p1, "tag"

    .line 53
    .line 54
    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    const/16 p1, 0xf92

    .line 62
    .line 63
    invoke-static {p0, p1, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public static reportNotificationArrived(Landroid/content/Context;Ljava/lang/String;BLjava/lang/String;)V
    .registers 6

    .line 1
    const-string v0, "MTPushPrivatesApi"

    .line 2
    .line 3
    if-nez p0, :cond_a

    .line 4
    .line 5
    const-string p0, "reportNotificationArrived context can\'t be null, please check it"

    .line 6
    .line 7
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_16

    .line 16
    .line 17
    const-string p0, "reportNotificationArrived messageId can\'t be empty, please check it"

    .line 18
    .line 19
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_16
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_21

    .line 32
    .line 33
    return-void

    .line 34
    :cond_21
    new-instance v0, Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 35
    .line 36
    invoke-direct {v0}, Lcom/engagelab/privates/push/api/NotificationMessage;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lcom/engagelab/privates/push/api/NotificationMessage;->setMessageId(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1, p2}, Lcom/engagelab/privates/push/api/NotificationMessage;->setPlatform(B)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1, p3}, Lcom/engagelab/privates/push/api/NotificationMessage;->setPlatformMessageId(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    new-instance p2, Landroid/os/Bundle;

    .line 52
    .line 53
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string p3, "message"

    .line 57
    .line 58
    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    const/16 p1, 0xf9e

    .line 66
    .line 67
    invoke-static {p0, p1, p2}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public static reportNotificationClicked(Landroid/content/Context;Ljava/lang/String;BLjava/lang/String;)V
    .registers 6

    .line 1
    const-string v0, "MTPushPrivatesApi"

    .line 2
    .line 3
    if-nez p0, :cond_a

    .line 4
    .line 5
    const-string p0, "reportNotificationClicked context can\'t be null, please check it"

    .line 6
    .line 7
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_16

    .line 16
    .line 17
    const-string p0, "reportNotificationClicked messageId can\'t be empty, please check it"

    .line 18
    .line 19
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_16
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_21

    .line 32
    .line 33
    return-void

    .line 34
    :cond_21
    new-instance v0, Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 35
    .line 36
    invoke-direct {v0}, Lcom/engagelab/privates/push/api/NotificationMessage;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lcom/engagelab/privates/push/api/NotificationMessage;->setMessageId(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1, p2}, Lcom/engagelab/privates/push/api/NotificationMessage;->setPlatform(B)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1, p3}, Lcom/engagelab/privates/push/api/NotificationMessage;->setPlatformMessageId(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    new-instance p2, Landroid/os/Bundle;

    .line 52
    .line 53
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string p3, "message"

    .line 57
    .line 58
    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    const/16 p1, 0xf9d

    .line 66
    .line 67
    invoke-static {p0, p1, p2}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public static reportNotificationDeleted(Landroid/content/Context;Ljava/lang/String;BLjava/lang/String;)V
    .registers 6

    .line 1
    const-string v0, "MTPushPrivatesApi"

    .line 2
    .line 3
    if-nez p0, :cond_a

    .line 4
    .line 5
    const-string p0, "reportNotificationDeleted context can\'t be null, please check it"

    .line 6
    .line 7
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_16

    .line 16
    .line 17
    const-string p0, "reportNotificationDeleted messageId can\'t be empty, please check it"

    .line 18
    .line 19
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_16
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_21

    .line 32
    .line 33
    return-void

    .line 34
    :cond_21
    new-instance v0, Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 35
    .line 36
    invoke-direct {v0}, Lcom/engagelab/privates/push/api/NotificationMessage;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lcom/engagelab/privates/push/api/NotificationMessage;->setMessageId(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1, p2}, Lcom/engagelab/privates/push/api/NotificationMessage;->setPlatform(B)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1, p3}, Lcom/engagelab/privates/push/api/NotificationMessage;->setPlatformMessageId(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    new-instance p2, Landroid/os/Bundle;

    .line 52
    .line 53
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string p3, "message"

    .line 57
    .line 58
    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    const/16 p1, 0xf9c

    .line 66
    .line 67
    invoke-static {p0, p1, p2}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public static reportNotificationOpened(Landroid/content/Context;Ljava/lang/String;BLjava/lang/String;)V
    .registers 6

    .line 1
    const-string v0, "MTPushPrivatesApi"

    .line 2
    .line 3
    if-nez p0, :cond_a

    .line 4
    .line 5
    const-string p0, "reportNotificationOpened context can\'t be null, please check it"

    .line 6
    .line 7
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_16

    .line 16
    .line 17
    const-string p0, "reportNotificationOpened messageId can\'t be empty, please check it"

    .line 18
    .line 19
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_16
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_21

    .line 32
    .line 33
    return-void

    .line 34
    :cond_21
    new-instance v0, Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 35
    .line 36
    invoke-direct {v0}, Lcom/engagelab/privates/push/api/NotificationMessage;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lcom/engagelab/privates/push/api/NotificationMessage;->setMessageId(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1, p2}, Lcom/engagelab/privates/push/api/NotificationMessage;->setPlatform(B)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1, p3}, Lcom/engagelab/privates/push/api/NotificationMessage;->setPlatformMessageId(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    new-instance p2, Landroid/os/Bundle;

    .line 52
    .line 53
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string p3, "message"

    .line 57
    .line 58
    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    const/16 p1, 0xf9b

    .line 66
    .line 67
    invoke-static {p0, p1, p2}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public static resetNotificationBadge(Landroid/content/Context;)V
    .registers 3

    .line 1
    if-nez p0, :cond_a

    .line 2
    .line 3
    const-string p0, "MTPushPrivatesApi"

    .line 4
    .line 5
    const-string v0, "resetNotificationBadge context can\'t be null, please check it"

    .line 6
    .line 7
    invoke-static {p0, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_15

    .line 20
    .line 21
    return-void

    .line 22
    :cond_15
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const/16 v0, 0xf2c

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-static {p0, v0, v1}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public static resetNotificationCount(Landroid/content/Context;)V
    .registers 3

    .line 1
    if-nez p0, :cond_a

    .line 2
    .line 3
    const-string p0, "MTPushPrivatesApi"

    .line 4
    .line 5
    const-string v0, "resetNotificationCount context can\'t be null, please check it"

    .line 6
    .line 7
    invoke-static {p0, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_15

    .line 20
    .line 21
    return-void

    .line 22
    :cond_15
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const/16 v0, 0xf2e

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-static {p0, v0, v1}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public static resetNotificationLayout(Landroid/content/Context;I)V
    .registers 4

    .line 1
    if-nez p0, :cond_a

    .line 2
    .line 3
    const-string p0, "MTPushPrivatesApi"

    .line 4
    .line 5
    const-string p1, "resetNotificationLayout context can\'t be null, please check it"

    .line 6
    .line 7
    invoke-static {p0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_15

    .line 20
    .line 21
    return-void

    .line 22
    :cond_15
    new-instance v0, Landroid/os/Bundle;

    .line 23
    .line 24
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v1, "id"

    .line 28
    .line 29
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const/16 p1, 0xf30

    .line 37
    .line 38
    invoke-static {p0, p1, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public static resetNotificationShowTime(Landroid/content/Context;)V
    .registers 3

    .line 1
    if-nez p0, :cond_a

    .line 2
    .line 3
    const-string p0, "MTPushPrivatesApi"

    .line 4
    .line 5
    const-string v0, "resetNotificationShowTime context can\'t be null, please check it"

    .line 6
    .line 7
    invoke-static {p0, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_15

    .line 20
    .line 21
    return-void

    .line 22
    :cond_15
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const/16 v0, 0xf34

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-static {p0, v0, v1}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public static resetNotificationSilenceTime(Landroid/content/Context;)V
    .registers 3

    .line 1
    if-nez p0, :cond_a

    .line 2
    .line 3
    const-string p0, "MTPushPrivatesApi"

    .line 4
    .line 5
    const-string v0, "resetNotificationSilenceTime context can\'t be null, please check it"

    .line 6
    .line 7
    invoke-static {p0, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_15

    .line 20
    .line 21
    return-void

    .line 22
    :cond_15
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const/16 v0, 0xf32

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-static {p0, v0, v1}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public static setAlias(Landroid/content/Context;ILjava/lang/String;)V
    .registers 5

    .line 1
    const-string v0, "MTPushPrivatesApi"

    .line 2
    .line 3
    if-nez p0, :cond_a

    .line 4
    .line 5
    const-string p0, "setAlias context can\'t be null, please check it"

    .line 6
    .line 7
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    if-nez p2, :cond_12

    .line 12
    .line 13
    const-string p0, "setAlias alias can\'t be null, please check it"

    .line 14
    .line 15
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_12
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1d

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1d
    new-instance v0, Landroid/os/Bundle;

    .line 31
    .line 32
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v1, "sequence"

    .line 36
    .line 37
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    const-string p1, "alias"

    .line 41
    .line 42
    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const/16 p1, 0xf8f

    .line 50
    .line 51
    invoke-static {p0, p1, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public static setCollectControl(Lcom/engagelab/privates/push/api/MTPushCollectControl;)V
    .registers 3

    .line 1
    new-instance v0, Lcom/engagelab/privates/common/helper/MTCollectControl;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/engagelab/privates/common/helper/MTCollectControl;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/engagelab/privates/push/api/MTPushCollectControl;->getGaid()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/engagelab/privates/common/helper/MTCollectControl;->setGAID(Z)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/engagelab/privates/push/api/MTPushCollectControl;->getAid()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    invoke-virtual {v0, p0}, Lcom/engagelab/privates/common/helper/MTCollectControl;->setAID(Z)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lcom/engagelab/privates/common/helper/CollectControlHelper;->getInstance()Lcom/engagelab/privates/common/helper/CollectControlHelper;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0, v0}, Lcom/engagelab/privates/common/helper/CollectControlHelper;->setCollectControl(Lcom/engagelab/privates/common/helper/MTCollectControl;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static setEnablePushTextToSpeech(Landroid/content/Context;Z)V
    .registers 3

    .line 1
    if-nez p0, :cond_a

    .line 2
    .line 3
    const-string p0, "MTPushPrivatesApi"

    .line 4
    .line 5
    const-string p1, "setEnablePushTextToSpeech context can\'t be null, please check it"

    .line 6
    .line 7
    invoke-static {p0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1f

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->isRemoteProcess(Landroid/content/Context;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1f

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1f
    invoke-static {}, Lcom/engagelab/privates/common/z0;->a()Lcom/engagelab/privates/common/z0;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0, p0, p1}, Lcom/engagelab/privates/common/z0;->a(Landroid/content/Context;Z)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public static setGeofenceCount(Landroid/content/Context;I)V
    .registers 4

    .line 1
    const-string v0, "MTPushPrivatesApi"

    .line 2
    .line 3
    if-nez p0, :cond_a

    .line 4
    .line 5
    const-string p0, "setGeofenceCount context can\'t be null, please check it"

    .line 6
    .line 7
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    if-lez p1, :cond_30

    .line 12
    .line 13
    const/16 v1, 0x64

    .line 14
    .line 15
    if-lt p1, v1, :cond_11

    .line 16
    .line 17
    goto :goto_30

    .line 18
    :cond_11
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1c

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1c
    new-instance v0, Landroid/os/Bundle;

    .line 30
    .line 31
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v1, "count"

    .line 35
    .line 36
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const/16 p1, 0xf2b

    .line 44
    .line 45
    invoke-static {p0, p1, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_30
    :goto_30
    const-string p0, "setGeofenceCount count must between 0~100, please check it"

    .line 50
    .line 51
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public static setGeofenceInterval(Landroid/content/Context;J)V
    .registers 6

    .line 1
    const-string v0, "MTPushPrivatesApi"

    .line 2
    .line 3
    if-nez p0, :cond_a

    .line 4
    .line 5
    const-string p0, "setGeofenceInterval context can\'t be null, please check it"

    .line 6
    .line 7
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    const-wide/32 v1, 0x2bf20

    .line 12
    .line 13
    .line 14
    cmp-long v1, p1, v1

    .line 15
    .line 16
    if-ltz v1, :cond_38

    .line 17
    .line 18
    const-wide/32 v1, 0x5265c00

    .line 19
    .line 20
    .line 21
    cmp-long v1, p1, v1

    .line 22
    .line 23
    if-lez v1, :cond_19

    .line 24
    .line 25
    goto :goto_38

    .line 26
    :cond_19
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_24

    .line 35
    .line 36
    return-void

    .line 37
    :cond_24
    new-instance v0, Landroid/os/Bundle;

    .line 38
    .line 39
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v1, "interval"

    .line 43
    .line 44
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const/16 p1, 0xf2a

    .line 52
    .line 53
    invoke-static {p0, p1, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_38
    :goto_38
    const-string p0, "setGeofenceInterval interval must between 3 * 60 * 1000 ~ 24 * 60 * 60 * 1000, please check it"

    .line 58
    .line 59
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public static setNotificationBadge(Landroid/content/Context;I)V
    .registers 4

    .line 1
    if-nez p0, :cond_a

    .line 2
    .line 3
    const-string p0, "MTPushPrivatesApi"

    .line 4
    .line 5
    const-string p1, "setNotificationBadge context can\'t be null, please check it"

    .line 6
    .line 7
    invoke-static {p0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_15

    .line 20
    .line 21
    return-void

    .line 22
    :cond_15
    new-instance v0, Landroid/os/Bundle;

    .line 23
    .line 24
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v1, "notification_badge"

    .line 28
    .line 29
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const/16 p1, 0xf2d

    .line 37
    .line 38
    invoke-static {p0, p1, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public static setNotificationCount(Landroid/content/Context;I)V
    .registers 4

    .line 1
    const-string v0, "MTPushPrivatesApi"

    .line 2
    .line 3
    if-nez p0, :cond_a

    .line 4
    .line 5
    const-string p0, "setNotificationCount context can\'t be null, please check it"

    .line 6
    .line 7
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    if-gez p1, :cond_12

    .line 12
    .line 13
    const-string p0, "setNotificationCount count can\'t small than 0, please check it"

    .line 14
    .line 15
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_12
    if-nez p1, :cond_1a

    .line 20
    .line 21
    const-string p0, "setNotificationCount count can\'t equal with 0, please check it"

    .line 22
    .line 23
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1a
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_25

    .line 36
    .line 37
    return-void

    .line 38
    :cond_25
    new-instance v0, Landroid/os/Bundle;

    .line 39
    .line 40
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v1, "notification_count"

    .line 44
    .line 45
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const/16 p1, 0xf2f

    .line 53
    .line 54
    invoke-static {p0, p1, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public static setNotificationLayout(Landroid/content/Context;ILcom/engagelab/privates/push/api/NotificationLayout;)V
    .registers 5

    .line 1
    const-string v0, "MTPushPrivatesApi"

    .line 2
    .line 3
    if-nez p0, :cond_a

    .line 4
    .line 5
    const-string p0, "setNotificationLayout context can\'t be null, please check it"

    .line 6
    .line 7
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    if-nez p2, :cond_12

    .line 12
    .line 13
    const-string p0, "setNotificationLayout notificationLayout can\'t be null, please check it"

    .line 14
    .line 15
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_12
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1d

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1d
    new-instance v0, Landroid/os/Bundle;

    .line 31
    .line 32
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v1, "id"

    .line 36
    .line 37
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    const-string p1, "notification_layout"

    .line 41
    .line 42
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const/16 p1, 0xf31

    .line 50
    .line 51
    invoke-static {p0, p1, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public static varargs setNotificationShowTime(Landroid/content/Context;II[I)V
    .registers 7

    .line 1
    const-string v0, "MTPushPrivatesApi"

    .line 2
    .line 3
    if-nez p0, :cond_a

    .line 4
    .line 5
    const-string p0, "setNotificationShowTime context can\'t be null, please check it"

    .line 6
    .line 7
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    if-ltz p1, :cond_5f

    .line 12
    .line 13
    const/16 v1, 0x17

    .line 14
    .line 15
    if-le p1, v1, :cond_11

    .line 16
    .line 17
    goto :goto_5f

    .line 18
    :cond_11
    if-ltz p2, :cond_59

    .line 19
    .line 20
    if-le p2, v1, :cond_16

    .line 21
    .line 22
    goto :goto_59

    .line 23
    :cond_16
    if-le p1, p2, :cond_1e

    .line 24
    .line 25
    const-string p0, "setNotificationShowTime beginHour can\'t large than endHour, please check it"

    .line 26
    .line 27
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1e
    if-ne p1, p2, :cond_26

    .line 32
    .line 33
    const-string p0, "setNotificationShowTime beginHour can\'t equal with endHour, please check it"

    .line 34
    .line 35
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_26
    array-length v1, p3

    .line 40
    const/4 v2, 0x7

    .line 41
    if-le v1, v2, :cond_30

    .line 42
    .line 43
    const-string p0, "setNotificationShowTime weekDays.length must between 0~7, please check it"

    .line 44
    .line 45
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_30
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_3b

    .line 58
    .line 59
    return-void

    .line 60
    :cond_3b
    new-instance v0, Landroid/os/Bundle;

    .line 61
    .line 62
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v1, "begin_hour"

    .line 66
    .line 67
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 68
    .line 69
    .line 70
    const-string p1, "end_hour"

    .line 71
    .line 72
    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 73
    .line 74
    .line 75
    const-string p1, "day"

    .line 76
    .line 77
    invoke-virtual {v0, p1, p3}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    const/16 p1, 0xf35

    .line 85
    .line 86
    invoke-static {p0, p1, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_59
    :goto_59
    const-string p0, "setNotificationShowTime endHour must between 0~23, please check it"

    .line 91
    .line 92
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_5f
    :goto_5f
    const-string p0, "setNotificationShowTime beginHour must between 0~23, please check it"

    .line 97
    .line 98
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public static setNotificationSilenceTime(Landroid/content/Context;IIII)V
    .registers 8

    .line 1
    const-string v0, "MTPushPrivatesApi"

    .line 2
    .line 3
    if-nez p0, :cond_a

    .line 4
    .line 5
    const-string p0, "setNotificationSilenceTime context can\'t be null, please check it"

    .line 6
    .line 7
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    if-ltz p1, :cond_62

    .line 12
    .line 13
    const/16 v1, 0x17

    .line 14
    .line 15
    if-le p1, v1, :cond_11

    .line 16
    .line 17
    goto :goto_62

    .line 18
    :cond_11
    if-ltz p2, :cond_5c

    .line 19
    .line 20
    const/16 v2, 0x3b

    .line 21
    .line 22
    if-le p2, v2, :cond_18

    .line 23
    .line 24
    goto :goto_5c

    .line 25
    :cond_18
    if-ltz p3, :cond_56

    .line 26
    .line 27
    if-le p3, v1, :cond_1d

    .line 28
    .line 29
    goto :goto_56

    .line 30
    :cond_1d
    if-ltz p4, :cond_50

    .line 31
    .line 32
    if-le p4, v2, :cond_22

    .line 33
    .line 34
    goto :goto_50

    .line 35
    :cond_22
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_2d

    .line 44
    .line 45
    return-void

    .line 46
    :cond_2d
    new-instance v0, Landroid/os/Bundle;

    .line 47
    .line 48
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v1, "begin_hour"

    .line 52
    .line 53
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    const-string p1, "begin_minute"

    .line 57
    .line 58
    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    const-string p1, "end_hour"

    .line 62
    .line 63
    invoke-virtual {v0, p1, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    const-string p1, "end_minute"

    .line 67
    .line 68
    invoke-virtual {v0, p1, p4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    const/16 p1, 0xf33

    .line 76
    .line 77
    invoke-static {p0, p1, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_50
    :goto_50
    const-string p0, "setNotificationSilenceTime endMinute must between 0~59, please check it"

    .line 82
    .line 83
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_56
    :goto_56
    const-string p0, "setNotificationSilenceTime endHour must between 0~23, please check it"

    .line 88
    .line 89
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_5c
    :goto_5c
    const-string p0, "setNotificationSilenceTime beginMinute must between 0~59, please check it"

    .line 94
    .line 95
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_62
    :goto_62
    const-string p0, "setNotificationSilenceTime beginHour must between 0~23, please check it"

    .line 100
    .line 101
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method public static showNotification(Landroid/content/Context;Lcom/engagelab/privates/push/api/NotificationMessage;)V
    .registers 4

    .line 1
    if-nez p0, :cond_a

    .line 2
    .line 3
    const-string p0, "MTPushPrivatesApi"

    .line 4
    .line 5
    const-string p1, "showNotification context can\'t be null, please check it"

    .line 6
    .line 7
    invoke-static {p0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_15

    .line 20
    .line 21
    return-void

    .line 22
    :cond_15
    new-instance v0, Landroid/os/Bundle;

    .line 23
    .line 24
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v1, "message"

    .line 28
    .line 29
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 30
    .line 31
    .line 32
    const-string p1, "message_limit"

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    const/16 p1, 0xf37

    .line 43
    .line 44
    invoke-static {p0, p1, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public static turnOffGeofenceSwitch(Landroid/content/Context;)V
    .registers 3

    .line 1
    const-string v0, "MTCommonPrivatesApi"

    .line 2
    .line 3
    if-nez p0, :cond_a

    .line 4
    .line 5
    const-string p0, "turnOffGeofenceSwitch context can\'t be null, please check it"

    .line 6
    .line 7
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1a

    .line 20
    .line 21
    const-string p0, "turnOffGeofenceSwitch should be called in main process"

    .line 22
    .line 23
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1a
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const/16 v0, 0xed5

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-static {p0, v0, v1}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public static turnOffPush(Landroid/content/Context;)V
    .registers 3

    .line 1
    if-nez p0, :cond_a

    .line 2
    .line 3
    const-string p0, "MTPushPrivatesApi"

    .line 4
    .line 5
    const-string v0, "turnOffPush context can\'t be null, please check it"

    .line 6
    .line 7
    invoke-static {p0, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_15

    .line 20
    .line 21
    return-void

    .line 22
    :cond_15
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const/16 v0, 0xf3a

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-static {p0, v0, v1}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public static turnOnGeofenceSwitch(Landroid/content/Context;)V
    .registers 3

    .line 1
    const-string v0, "MTCommonPrivatesApi"

    .line 2
    .line 3
    if-nez p0, :cond_a

    .line 4
    .line 5
    const-string p0, "turnOnGeofenceSwitch context can\'t be null, please check it"

    .line 6
    .line 7
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1a

    .line 20
    .line 21
    const-string p0, "turnOnGeofenceSwitch should be called in main process"

    .line 22
    .line 23
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1a
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const/16 v0, 0xed6

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-static {p0, v0, v1}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public static turnOnPush(Landroid/content/Context;)V
    .registers 3

    .line 1
    if-nez p0, :cond_a

    .line 2
    .line 3
    const-string p0, "MTPushPrivatesApi"

    .line 4
    .line 5
    const-string v0, "turnOnPush context can\'t be null, please check it"

    .line 6
    .line 7
    invoke-static {p0, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_15

    .line 20
    .line 21
    return-void

    .line 22
    :cond_15
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const/16 v0, 0xf3b

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-static {p0, v0, v1}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public static varargs updateTag(Landroid/content/Context;I[Ljava/lang/String;)V
    .registers 5

    .line 1
    const-string v0, "MTPushPrivatesApi"

    .line 2
    .line 3
    if-nez p0, :cond_a

    .line 4
    .line 5
    const-string p0, "updateTag context can\'t be null, please check it"

    .line 6
    .line 7
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    if-nez p1, :cond_12

    .line 12
    .line 13
    const-string p0, "updateTag sequence can\'t be 0, please check it"

    .line 14
    .line 15
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_12
    if-nez p2, :cond_1a

    .line 20
    .line 21
    const-string p0, "updateTag tag can\'t be null, please check it"

    .line 22
    .line 23
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1a
    array-length v1, p2

    .line 28
    if-nez v1, :cond_23

    .line 29
    .line 30
    const-string p0, "updateTag tag can\'t be empty, please check it"

    .line 31
    .line 32
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_23
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_2e

    .line 45
    .line 46
    return-void

    .line 47
    :cond_2e
    new-instance v0, Landroid/os/Bundle;

    .line 48
    .line 49
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v1, "sequence"

    .line 53
    .line 54
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    const-string p1, "tag"

    .line 58
    .line 59
    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    const/16 p1, 0xf93

    .line 67
    .line 68
    invoke-static {p0, p1, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public static uploadMobileNumber(Landroid/content/Context;ILjava/lang/String;)V
    .registers 5

    .line 1
    const-string v0, "MTPushPrivatesApi"

    .line 2
    .line 3
    if-nez p0, :cond_a

    .line 4
    .line 5
    const-string p0, "uploadMobileNumber context can\'t be null, please check it"

    .line 6
    .line 7
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_16

    .line 16
    .line 17
    const-string p0, "uploadMobileNumber mobileNumber can\'t be empty, please check it"

    .line 18
    .line 19
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_16
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_21

    .line 32
    .line 33
    return-void

    .line 34
    :cond_21
    new-instance v0, Landroid/os/Bundle;

    .line 35
    .line 36
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v1, "sequence"

    .line 40
    .line 41
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    const-string p1, "mobileNumber"

    .line 45
    .line 46
    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    const/16 p1, 0xf8a

    .line 54
    .line 55
    invoke-static {p0, p1, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public static uploadPlatformToken(Landroid/content/Context;BLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    if-nez p0, :cond_a

    .line 2
    .line 3
    const-string p0, "MTPushPrivatesApi"

    .line 4
    .line 5
    const-string p1, "onPlatformToken context can\'t be null, please check it"

    .line 6
    .line 7
    invoke-static {p0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_15

    .line 20
    .line 21
    return-void

    .line 22
    :cond_15
    new-instance v0, Lcom/engagelab/privates/push/api/PlatformTokenMessage;

    .line 23
    .line 24
    invoke-direct {v0}, Lcom/engagelab/privates/push/api/PlatformTokenMessage;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->setPlatform(B)Lcom/engagelab/privates/push/api/PlatformTokenMessage;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1, p2}, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->setToken(Ljava/lang/String;)Lcom/engagelab/privates/push/api/PlatformTokenMessage;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const/4 p2, 0x1

    .line 36
    invoke-virtual {p1, p2}, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->setIsUserSettings(Z)Lcom/engagelab/privates/push/api/PlatformTokenMessage;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    if-nez p2, :cond_30

    .line 45
    .line 46
    invoke-virtual {p1, p3}, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->setRegion(Ljava/lang/String;)Lcom/engagelab/privates/push/api/PlatformTokenMessage;

    .line 47
    .line 48
    .line 49
    :cond_30
    new-instance p2, Landroid/os/Bundle;

    .line 50
    .line 51
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string p3, "message"

    .line 55
    .line 56
    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    const/16 p1, 0xf8b

    .line 64
    .line 65
    invoke-static {p0, p1, p2}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

###### Class com.engagelab.privates.push.api.MTPushPrivatesApi.Code (com.engagelab.privates.push.api.MTPushPrivatesApi$Code)
.class public Lcom/engagelab/privates/push/api/MTPushPrivatesApi$Code;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/engagelab/privates/push/api/MTPushPrivatesApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Code"
.end annotation


# static fields
.field public static CONNECT_NOT_ENABLE:I = 0x177c

.field public static INVALID_ALIAS:I = 0x1773

.field public static INVALID_JSON:I = 0x177a

.field public static INVALID_MOBILE_NUMBER:I = 0x1787

.field public static INVALID_TAGS:I = 0x1775

.field public static INVOKE_TOO_SOON:I = 0x177b

.field public static NULL_TAG_AND_ALIAS:I = 0x1771

.field public static final SUCCESS:I = 0x0

.field public static TIMEOUT:I = 0x1772

.field public static TOO_LONG_ALIAS:I = 0x1774

.field public static TOO_LONG_TAG:I = 0x1776

.field public static TOO_LONG_TAGS:I = 0x1778

.field public static TOO_MANY_TAGS:I = 0x1777

.field public static UNKNOWN_ERROR:I = 0x1779


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
