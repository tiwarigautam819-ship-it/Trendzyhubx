###### Class com.engagelab.privates.push.utils.NotificationUtil (com.engagelab.privates.push.utils.NotificationUtil)
.class public Lcom/engagelab/privates/push/utils/NotificationUtil;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/engagelab/privates/push/utils/NotificationUtil$a;
    }
.end annotation


# static fields
.field private static final CHECK_OP_NO_THROW:Ljava/lang/String; = "checkOpNoThrow"

.field private static final JMESSAGE_EXTRA_KEY:Ljava/lang/String; = "MTInAppExtra"

.field public static final NOTIFICATION_ICON:Ljava/lang/String; = "mtpush_notification_icon"

.field private static final OP_POST_NOTIFICATION:Ljava/lang/String; = "OP_POST_NOTIFICATION"

.field private static final TAG:Ljava/lang/String; = "NotificationUtil"


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

.method public static checkValidUrl(Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string v0, "^[http|https]+://.*"

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1f

    .line 20
    .line 21
    const-string v1, "Invalid url - "

    .line 22
    .line 23
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const-string v1, "NotificationUtil"

    .line 28
    .line 29
    invoke-static {v1, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_1f
    return v0
.end method

.method public static convertJsonToArray(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_8

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_8
    new-instance v1, Lorg/json/JSONObject;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    new-array v2, v2, [Ljava/lang/String;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    :goto_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_2f

    .line 30
    .line 31
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    aput-object v4, v2, v3
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2d

    .line 42
    .line 43
    add-int/lit8 v3, v3, 0x1

    .line 44
    .line 45
    goto :goto_18

    .line 46
    :catchall_2d
    move-exception p0

    .line 47
    goto :goto_30

    .line 48
    :cond_2f
    return-object v2

    .line 49
    :goto_30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v2, "convertJsonToArray failed "

    .line 52
    .line 53
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string v2, "NotificationUtil"

    .line 57
    .line 58
    invoke-static {p0, v1, v2}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-object v0
.end method

.method public static convertJsonToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_4

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_f

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_f
    new-instance v1, Landroid/os/Bundle;

    .line 17
    .line 18
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_2e

    .line 30
    .line 31
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_4 .. :try_end_2b} :catchall_2c

    .line 42
    .line 43
    .line 44
    goto :goto_18

    .line 45
    :catchall_2c
    move-exception p0

    .line 46
    goto :goto_2f

    .line 47
    :cond_2e
    return-object v1

    .line 48
    :goto_2f
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v2, "convertJsonToBundle failed "

    .line 51
    .line 52
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string v2, "NotificationUtil"

    .line 56
    .line 57
    invoke-static {p0, v1, v2}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-object v0
.end method

.method public static convertMapToBundle(Ljava/util/Map;)Landroid/os/Bundle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_29

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/util/Map$Entry;

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/lang/String;

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    goto :goto_d

    .line 42
    :cond_29
    return-object v0
.end method

.method public static getBigPictureStyle(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$BigPictureStyle;
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_8

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_8
    new-instance v1, Landroid/app/Notification$BigPictureStyle;

    .line 10
    .line 11
    invoke-direct {v1}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {p0, p1}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getPictureBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-nez p0, :cond_14

    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_14
    invoke-virtual {v1, p0}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    .line 22
    .line 23
    .line 24
    move-result-object p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_19

    .line 25
    return-object p0

    .line 26
    :catchall_19
    move-exception p0

    .line 27
    new-instance p1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v1, "get bigPictureStyle failed "

    .line 30
    .line 31
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v1, "NotificationUtil"

    .line 35
    .line 36
    invoke-static {p0, p1, v1}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-object v0
.end method

.method public static getBigTextStyle(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$BigTextStyle;
    .registers 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_8

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_8
    new-instance p0, Landroid/app/Notification$BigTextStyle;

    .line 10
    .line 11
    invoke-direct {p0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static getContent(Landroid/content/Context;Lcom/engagelab/privates/push/api/NotificationMessage;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p1}, Lcom/engagelab/privates/push/api/NotificationMessage;->getContent()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1b

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p1, p0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_1b
    invoke-virtual {p1}, Lcom/engagelab/privates/push/api/NotificationMessage;->getContent()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method public static getDefaults(Landroid/content/Context;ZLcom/engagelab/privates/push/api/NotificationMessage;)I
    .registers 3

    .line 1
    if-eqz p1, :cond_16

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/NotificationMessage;->getDefaults()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    and-int/lit8 p0, p0, 0x1

    .line 8
    .line 9
    if-nez p0, :cond_f

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/NotificationMessage;->getDefaults()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_f
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/NotificationMessage;->getDefaults()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    add-int/lit8 p0, p0, -0x1

    .line 21
    .line 22
    return p0

    .line 23
    :cond_16
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/NotificationMessage;->getDefaults()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    packed-switch p0, :pswitch_data_24

    .line 28
    .line 29
    .line 30
    const/4 p0, -0x1

    .line 31
    return p0

    .line 32
    :pswitch_1f
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/NotificationMessage;->getDefaults()I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    return p0

    .line 37
    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
    .end packed-switch
.end method

.method public static getGroup(Landroid/content/Context;Lcom/engagelab/privates/push/api/NotificationMessage;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p1}, Lcom/engagelab/privates/push/api/NotificationMessage;->getGroupId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_d

    .line 10
    .line 11
    const-string p0, "group"

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_d
    invoke-virtual {p1}, Lcom/engagelab/privates/push/api/NotificationMessage;->getGroupId()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static getInboxStyle(Landroid/content/Context;[Ljava/lang/String;)Landroid/app/Notification$InboxStyle;
    .registers 6

    .line 1
    const/4 p0, 0x0

    .line 2
    if-eqz p1, :cond_41

    .line 3
    .line 4
    :try_start_3
    array-length v0, p1

    .line 5
    if-nez v0, :cond_7

    .line 6
    .line 7
    goto :goto_41

    .line 8
    :cond_7
    new-instance v0, Landroid/app/Notification$InboxStyle;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/app/Notification$InboxStyle;-><init>()V

    .line 11
    .line 12
    .line 13
    array-length v1, p1

    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_e
    if-ge v2, v1, :cond_1a

    .line 16
    .line 17
    aget-object v3, p1, v2

    .line 18
    .line 19
    invoke-virtual {v0, v3}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 20
    .line 21
    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    goto :goto_e

    .line 25
    :catchall_18
    move-exception p1

    .line 26
    goto :goto_35

    .line 27
    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v2, " + "

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    array-length p1, p1

    .line 38
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p1, " new messages"

    .line 42
    .line 43
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v0, p1}, Landroid/app/Notification$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_18

    .line 51
    .line 52
    .line 53
    return-object v0

    .line 54
    :goto_35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v1, "getInboxStyle failed "

    .line 57
    .line 58
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string v1, "NotificationUtil"

    .line 62
    .line 63
    invoke-static {p1, v0, v1}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_41
    :goto_41
    return-object p0
.end method

.method public static getLargeIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_8
    invoke-static {p0, p1}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getPictureBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method private static getLaunchActivityClassName(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_1d

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_1d

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_1d
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    new-instance v2, Landroid/content/Intent;

    .line 35
    .line 36
    const-string v3, "android.intent.action.MAIN"

    .line 37
    .line 38
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {v2, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    const-string p0, "android.intent.category.LAUNCHER"

    .line 49
    .line 50
    invoke-virtual {v2, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    const/high16 p0, 0x10000

    .line 54
    .line 55
    invoke-virtual {v1, v2, p0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    if-nez p0, :cond_41

    .line 60
    .line 61
    const/4 p0, 0x0

    .line 62
    invoke-virtual {v1, v0, p0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    :cond_41
    if-eqz p0, :cond_55

    .line 67
    .line 68
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 69
    .line 70
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;
    :try_end_47
    .catchall {:try_start_0 .. :try_end_47} :catchall_48

    .line 71
    .line 72
    return-object p0

    .line 73
    :catchall_48
    move-exception p0

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v1, "getLaunchActivityClassName failed "

    .line 77
    .line 78
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const-string v1, "NotificationUtil"

    .line 82
    .line 83
    invoke-static {p0, v0, v1}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :cond_55
    const-string p0, ""

    .line 87
    .line 88
    return-object p0
.end method

.method public static getMessageId(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "ad_id"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_12

    .line 12
    .line 13
    const-string v0, "msg_id"

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1f

    .line 24
    .line 25
    const-string v0, "_jmsgid_"

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :cond_1f
    return-object v0
.end method

.method public static getNotificationId(Ljava/lang/String;)I
    .registers 5

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    .line 5
    return p0

    .line 6
    :catchall_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "the messageId ["

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, "] will convert to adler32"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "NotificationUtil"

    .line 26
    .line 27
    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :try_start_1d
    new-instance v0, Ljava/util/zip/Adler32;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {v0, p0}, Ljava/util/zip/Adler32;->update([B)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    .line 43
    .line 44
    .line 45
    move-result-wide v2

    .line 46
    long-to-int p0, v2

    .line 47
    if-gez p0, :cond_37

    .line 48
    .line 49
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    .line 50
    .line 51
    .line 52
    move-result p0
    :try_end_34
    .catchall {:try_start_1d .. :try_end_34} :catchall_35

    .line 53
    return p0

    .line 54
    :catchall_35
    move-exception p0

    .line 55
    goto :goto_38

    .line 56
    :cond_37
    return p0

    .line 57
    :goto_38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v2, "getNotificationId failed "

    .line 60
    .line 61
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-static {p0, v0, v1}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const/4 p0, 0x0

    .line 68
    return p0
.end method

.method public static getNotificationImportance(Lorg/json/JSONObject;)I
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/engagelab/privates/push/utils/NotificationUtil$a;->a(Lorg/json/JSONObject;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static getNotificationLayout(Landroid/content/Context;Lcom/engagelab/privates/push/api/NotificationMessage;)Landroid/widget/RemoteViews;
    .registers 8

    .line 1
    const-string v0, "NotificationUtil"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_3
    invoke-static {}, Lcom/engagelab/privates/common/k0;->a()Lcom/engagelab/privates/common/k0;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    invoke-virtual {p1}, Lcom/engagelab/privates/push/api/NotificationMessage;->getBuilderId()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    invoke-virtual {v2, p0, v3}, Lcom/engagelab/privates/common/k0;->a(Landroid/content/Context;I)Lcom/engagelab/privates/push/api/NotificationLayout;

    .line 13
    .line 14
    .line 15
    move-result-object v2
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_2c

    .line 16
    const-string v3, "getNotificationLayout builderId:"

    .line 17
    .line 18
    if-nez v2, :cond_2f

    .line 19
    .line 20
    :try_start_13
    new-instance p0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/engagelab/privates/push/api/NotificationMessage;->getBuilderId()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p1, ", notificationLayout is null"

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-object v1

    .line 45
    :catchall_2c
    move-exception p0

    .line 46
    goto/16 :goto_af

    .line 47
    .line 48
    :cond_2f
    new-instance v4, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/engagelab/privates/push/api/NotificationMessage;->getBuilderId()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v3, ", notificationLayout:"

    .line 61
    .line 62
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/engagelab/privates/push/api/NotificationLayout;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-static {v0, v3}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    new-instance v3, Landroid/widget/RemoteViews;

    .line 80
    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-virtual {v2}, Lcom/engagelab/privates/push/api/NotificationLayout;->getLayoutId()I

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2}, Lcom/engagelab/privates/push/api/NotificationLayout;->getIconViewId()I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-lez v4, :cond_79

    .line 97
    .line 98
    invoke-virtual {v2}, Lcom/engagelab/privates/push/api/NotificationLayout;->getIconViewId()I

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    invoke-static {p0}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getSmallIcon(Landroid/content/Context;)I

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 107
    .line 108
    .line 109
    invoke-static {p0, p1}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getSmallIcon(Landroid/content/Context;Lcom/engagelab/privates/push/api/NotificationMessage;)Landroid/graphics/drawable/Icon;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    if-eqz v4, :cond_79

    .line 114
    .line 115
    invoke-virtual {v2}, Lcom/engagelab/privates/push/api/NotificationLayout;->getIconViewId()I

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    invoke-virtual {v3, v5, v4}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 120
    .line 121
    .line 122
    :cond_79
    invoke-virtual {v2}, Lcom/engagelab/privates/push/api/NotificationLayout;->getTitleViewId()I

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    if-lez v4, :cond_8a

    .line 127
    .line 128
    invoke-virtual {v2}, Lcom/engagelab/privates/push/api/NotificationLayout;->getTitleViewId()I

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    invoke-static {p0, p1}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getTitle(Landroid/content/Context;Lcom/engagelab/privates/push/api/NotificationMessage;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 137
    .line 138
    .line 139
    :cond_8a
    invoke-virtual {v2}, Lcom/engagelab/privates/push/api/NotificationLayout;->getContentViewId()I

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    if-lez v4, :cond_9b

    .line 144
    .line 145
    invoke-virtual {v2}, Lcom/engagelab/privates/push/api/NotificationLayout;->getContentViewId()I

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    invoke-static {p0, p1}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getContent(Landroid/content/Context;Lcom/engagelab/privates/push/api/NotificationMessage;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    invoke-virtual {v3, v4, p0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 154
    .line 155
    .line 156
    :cond_9b
    invoke-virtual {v2}, Lcom/engagelab/privates/push/api/NotificationLayout;->getTimeViewId()I

    .line 157
    .line 158
    .line 159
    move-result p0

    .line 160
    if-lez p0, :cond_ae

    .line 161
    .line 162
    invoke-virtual {v2}, Lcom/engagelab/privates/push/api/NotificationLayout;->getTimeViewId()I

    .line 163
    .line 164
    .line 165
    move-result p0
    :try_end_a5
    .catchall {:try_start_13 .. :try_end_a5} :catchall_2c

    .line 166
    const-string p1, "setTime"

    .line 167
    .line 168
    :try_start_a7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 169
    .line 170
    .line 171
    move-result-wide v4

    .line 172
    invoke-virtual {v3, p0, p1, v4, v5}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V
    :try_end_ae
    .catchall {:try_start_a7 .. :try_end_ae} :catchall_2c

    .line 173
    .line 174
    .line 175
    :cond_ae
    return-object v3

    .line 176
    :goto_af
    new-instance p1, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    const-string v2, "getNotificationLayout failed "

    .line 179
    .line 180
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-static {p0, p1, v0}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    return-object v1
.end method

.method public static getNotificationMessage(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;
    .registers 31

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_8

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_8
    new-instance v1, Lorg/json/JSONObject;

    .line 10
    .line 11
    move-object/from16 v2, p0

    .line 12
    .line 13
    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getMessageId(Lorg/json/JSONObject;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v3
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_21

    .line 24
    const-string v4, "NotificationUtil"

    .line 25
    .line 26
    if-eqz v3, :cond_25

    .line 27
    .line 28
    :try_start_1b
    const-string v1, "notificationMessage\'s messageId is null, can\'t show this notification"

    .line 29
    .line 30
    invoke-static {v4, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-object v0

    .line 34
    :catchall_21
    move-object/from16 v16, v0

    .line 35
    .line 36
    goto/16 :goto_1b3

    .line 37
    .line 38
    :cond_25
    const-string v3, "override_msg_id"

    .line 39
    .line 40
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_36

    .line 49
    .line 50
    invoke-static {v2}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getNotificationId(Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    goto :goto_3a

    .line 55
    :cond_36
    invoke-static {v3}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getNotificationId(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    :goto_3a
    const-string v6, "appkey"

    .line 60
    .line 61
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    const-string v7, "n_builder_id"

    .line 66
    .line 67
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    const-string v8, "m_content"

    .line 72
    .line 73
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    if-nez v8, :cond_54

    .line 78
    .line 79
    const-string v1, "onMessage failed, can\'t parse content"

    .line 80
    .line 81
    invoke-static {v4, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-object v0

    .line 85
    :cond_54
    const-string v4, "inapp"

    .line 86
    .line 87
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    const-wide/16 v9, 0x0

    .line 92
    .line 93
    if-eqz v1, :cond_64

    .line 94
    .line 95
    const-string v4, "inapp_end_time"

    .line 96
    .line 97
    invoke-virtual {v1, v4, v9, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 98
    .line 99
    .line 100
    move-result-wide v9

    .line 101
    :cond_64
    const-string v1, "n_target_event"

    .line 102
    .line 103
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    if-eqz v1, :cond_77

    .line 108
    .line 109
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    if-lez v4, :cond_77

    .line 114
    .line 115
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1
    :try_end_76
    .catchall {:try_start_1b .. :try_end_76} :catchall_21

    .line 119
    goto :goto_79

    .line 120
    :cond_77
    const-string v1, ""

    .line 121
    .line 122
    :goto_79
    :try_start_79
    const-string v4, "n_title"

    .line 123
    .line 124
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    const-string v11, "n_content"

    .line 129
    .line 130
    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v11

    .line 134
    const-string v12, "n_extras"

    .line 135
    .line 136
    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 137
    .line 138
    .line 139
    move-result-object v12

    .line 140
    invoke-static {v12}, Lcom/engagelab/privates/push/utils/NotificationUtil;->convertJsonToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    .line 141
    .line 142
    .line 143
    move-result-object v12

    .line 144
    const-string v13, "n_small_icon"

    .line 145
    .line 146
    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v13

    .line 150
    const-string v14, "n_color"

    .line 151
    .line 152
    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v14

    .line 156
    const-string v15, "n_large_icon"

    .line 157
    .line 158
    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v15
    :try_end_a1
    .catchall {:try_start_79 .. :try_end_a1} :catchall_21

    .line 162
    move-object/from16 v16, v0

    .line 163
    .line 164
    :try_start_a3
    const-string v0, "n_alert_type"

    .line 165
    .line 166
    move-object/from16 p0, v6

    .line 167
    .line 168
    const/4 v6, -0x1

    .line 169
    invoke-virtual {v8, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    invoke-static {v8}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getPriority(Lorg/json/JSONObject;)I

    .line 174
    .line 175
    .line 176
    move-result v6

    .line 177
    move-object/from16 v17, v1

    .line 178
    .line 179
    invoke-static {v8}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getNotificationImportance(Lorg/json/JSONObject;)I

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    move-wide/from16 v18, v9

    .line 184
    .line 185
    const-string v9, "n_category"

    .line 186
    .line 187
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v9

    .line 191
    const-string v10, "n_style"

    .line 192
    .line 193
    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    move-result v10

    .line 197
    move-object/from16 v20, v9

    .line 198
    .line 199
    const-string v9, "n_big_text"

    .line 200
    .line 201
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v9

    .line 205
    move/from16 v21, v1

    .line 206
    .line 207
    const-string v1, "n_big_pic_path"

    .line 208
    .line 209
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    move/from16 v22, v6

    .line 214
    .line 215
    const-string v6, "n_inbox"

    .line 216
    .line 217
    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v6

    .line 221
    invoke-static {v6}, Lcom/engagelab/privates/push/utils/NotificationUtil;->convertJsonToArray(Ljava/lang/String;)[Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v6

    .line 225
    move/from16 v23, v0

    .line 226
    .line 227
    const-string v0, "n_channel_id"

    .line 228
    .line 229
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    move-object/from16 v24, v0

    .line 234
    .line 235
    const-string v0, "n_group_id"

    .line 236
    .line 237
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    move-object/from16 v25, v0

    .line 242
    .line 243
    const-string v0, "n_is_fold"

    .line 244
    .line 245
    move-object/from16 v26, v1

    .line 246
    .line 247
    const/4 v1, 0x0

    .line 248
    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    const/4 v1, 0x1

    .line 253
    if-ne v0, v1, :cond_ff

    .line 254
    .line 255
    goto :goto_100

    .line 256
    :cond_ff
    const/4 v1, 0x0

    .line 257
    :goto_100
    const-string v0, "n_sound"

    .line 258
    .line 259
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    move/from16 v27, v1

    .line 264
    .line 265
    const-string v1, "n_badge_add_num"

    .line 266
    .line 267
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 268
    .line 269
    .line 270
    move-result v1

    .line 271
    move/from16 v28, v1

    .line 272
    .line 273
    const-string v1, "intent_uri"

    .line 274
    .line 275
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    move-object/from16 v29, v1

    .line 280
    .line 281
    const-string v1, "n_display_foreground"

    .line 282
    .line 283
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    new-instance v8, Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 288
    .line 289
    invoke-direct {v8}, Lcom/engagelab/privates/push/api/NotificationMessage;-><init>()V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v8, v2}, Lcom/engagelab/privates/push/api/NotificationMessage;->setMessageId(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    invoke-virtual {v2, v3}, Lcom/engagelab/privates/push/api/NotificationMessage;->setOverrideMessageId(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    invoke-virtual {v2, v1}, Lcom/engagelab/privates/push/api/NotificationMessage;->setDisplayForeground(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    const/4 v2, 0x0

    .line 305
    invoke-virtual {v1, v2}, Lcom/engagelab/privates/push/api/NotificationMessage;->setPlatform(B)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    invoke-virtual {v1, v5}, Lcom/engagelab/privates/push/api/NotificationMessage;->setNotificationId(I)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    invoke-virtual {v1, v13}, Lcom/engagelab/privates/push/api/NotificationMessage;->setSmallIcon(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    invoke-virtual {v1, v15}, Lcom/engagelab/privates/push/api/NotificationMessage;->setLargeIcon(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    invoke-virtual {v1, v4}, Lcom/engagelab/privates/push/api/NotificationMessage;->setTitle(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    invoke-virtual {v1, v11}, Lcom/engagelab/privates/push/api/NotificationMessage;->setContent(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    invoke-virtual {v1, v14}, Lcom/engagelab/privates/push/api/NotificationMessage;->setColor(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    invoke-virtual {v1, v7}, Lcom/engagelab/privates/push/api/NotificationMessage;->setBuilderId(I)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    invoke-virtual {v1, v12}, Lcom/engagelab/privates/push/api/NotificationMessage;->setExtras(Landroid/os/Bundle;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    invoke-virtual {v1, v10}, Lcom/engagelab/privates/push/api/NotificationMessage;->setStyle(I)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    invoke-virtual {v1, v9}, Lcom/engagelab/privates/push/api/NotificationMessage;->setBigText(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    invoke-virtual {v1, v6}, Lcom/engagelab/privates/push/api/NotificationMessage;->setInbox([Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    move-object/from16 v2, v26

    .line 354
    .line 355
    invoke-virtual {v1, v2}, Lcom/engagelab/privates/push/api/NotificationMessage;->setBigPicture(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    move/from16 v2, v23

    .line 360
    .line 361
    invoke-virtual {v1, v2}, Lcom/engagelab/privates/push/api/NotificationMessage;->setDefaults(I)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    move/from16 v2, v22

    .line 366
    .line 367
    invoke-virtual {v1, v2}, Lcom/engagelab/privates/push/api/NotificationMessage;->setPriority(I)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 368
    .line 369
    .line 370
    move-result-object v1

    .line 371
    move/from16 v2, v21

    .line 372
    .line 373
    invoke-virtual {v1, v2}, Lcom/engagelab/privates/push/api/NotificationMessage;->setImportance(I)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    move-object/from16 v2, v20

    .line 378
    .line 379
    invoke-virtual {v1, v2}, Lcom/engagelab/privates/push/api/NotificationMessage;->setCategory(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    invoke-virtual {v1, v0}, Lcom/engagelab/privates/push/api/NotificationMessage;->setSound(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    move-object/from16 v1, v24

    .line 388
    .line 389
    invoke-virtual {v0, v1}, Lcom/engagelab/privates/push/api/NotificationMessage;->setChannelId(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    move-object/from16 v1, v25

    .line 394
    .line 395
    invoke-virtual {v0, v1}, Lcom/engagelab/privates/push/api/NotificationMessage;->setGroupId(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    move/from16 v1, v27

    .line 400
    .line 401
    invoke-virtual {v0, v1}, Lcom/engagelab/privates/push/api/NotificationMessage;->setGroupSummary(Z)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    move-object/from16 v1, v29

    .line 406
    .line 407
    invoke-virtual {v0, v1}, Lcom/engagelab/privates/push/api/NotificationMessage;->setIntentUri(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    move/from16 v1, v28

    .line 412
    .line 413
    invoke-virtual {v0, v1}, Lcom/engagelab/privates/push/api/NotificationMessage;->setBadge(I)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    move-wide/from16 v9, v18

    .line 418
    .line 419
    invoke-virtual {v0, v9, v10}, Lcom/engagelab/privates/push/api/NotificationMessage;->setInAppEndTime(J)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    move-object/from16 v1, v17

    .line 424
    .line 425
    invoke-virtual {v0, v1}, Lcom/engagelab/privates/push/api/NotificationMessage;->setTargetEvent(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    move-object/from16 v1, p0

    .line 430
    .line 431
    invoke-virtual {v0, v1}, Lcom/engagelab/privates/push/api/NotificationMessage;->setAppkey(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 432
    .line 433
    .line 434
    move-result-object v0
    :try_end_1b2
    .catchall {:try_start_a3 .. :try_end_1b2} :catchall_1b3

    .line 435
    return-object v0

    .line 436
    :catchall_1b3
    :goto_1b3
    return-object v16
.end method

.method private static getNotificationMessageIntent(Landroid/content/Context;Ljava/lang/String;Lcom/engagelab/privates/push/api/NotificationMessage;)Landroid/content/Intent;
    .registers 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v1, Lcom/engagelab/privates/common/component/MTCommonActivity;

    .line 7
    .line 8
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    .line 13
    .line 14
    const/high16 p0, 0x10800000

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    new-instance p0, Landroid/os/Bundle;

    .line 20
    .line 21
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string p1, "message"

    .line 25
    .line 26
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    return-object v0
.end method

.method public static getNotificationState(Landroid/content/Context;)Z
    .registers 13

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    const-string v2, "NotificationUtil"

    .line 6
    .line 7
    const-string v3, "getNotificationState failed "

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-lt v0, v1, :cond_24

    .line 11
    .line 12
    :try_start_b
    const-string v0, "notification"

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/app/NotificationManager;

    .line 19
    .line 20
    if-nez v0, :cond_16

    .line 21
    .line 22
    return v4

    .line 23
    :cond_16
    invoke-static {v0}, Lt4/i;->b(Landroid/app/NotificationManager;)Z

    .line 24
    .line 25
    .line 26
    move-result p0
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_1b

    .line 27
    return p0

    .line 28
    :catchall_1b
    move-exception v0

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v1, v2}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_24
    :try_start_24
    const-string v0, "appops"

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Landroid/app/AppOpsManager;

    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 58
    .line 59
    const-class v5, Landroid/app/AppOpsManager;

    .line 60
    .line 61
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    move-result-object v5
    :try_end_44
    .catchall {:try_start_24 .. :try_end_44} :catchall_84

    .line 69
    const-string v6, "checkOpNoThrow"

    .line 70
    .line 71
    const/4 v7, 0x3

    .line 72
    :try_start_47
    new-array v8, v7, [Ljava/lang/Class;

    .line 73
    .line 74
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 75
    .line 76
    aput-object v9, v8, v4

    .line 77
    .line 78
    const/4 v10, 0x1

    .line 79
    aput-object v9, v8, v10

    .line 80
    .line 81
    const-class v9, Ljava/lang/String;

    .line 82
    .line 83
    const/4 v11, 0x2

    .line 84
    aput-object v9, v8, v11

    .line 85
    .line 86
    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    const-string v8, "OP_POST_NOTIFICATION"

    .line 91
    .line 92
    invoke-virtual {v5, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    const-class v8, Ljava/lang/Integer;

    .line 97
    .line 98
    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    check-cast v5, Ljava/lang/Integer;

    .line 103
    .line 104
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    new-array v7, v7, [Ljava/lang/Object;

    .line 112
    .line 113
    aput-object v5, v7, v4

    .line 114
    .line 115
    aput-object v1, v7, v10

    .line 116
    .line 117
    aput-object p0, v7, v11

    .line 118
    .line 119
    invoke-virtual {v6, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    check-cast p0, Ljava/lang/Integer;

    .line 124
    .line 125
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 126
    .line 127
    .line 128
    move-result p0
    :try_end_80
    .catchall {:try_start_47 .. :try_end_80} :catchall_84

    .line 129
    if-nez p0, :cond_83

    .line 130
    .line 131
    move v4, v10

    .line 132
    :cond_83
    return v4

    .line 133
    :catchall_84
    move-exception p0

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-static {p0, v0, v2}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    return v4
.end method

.method public static getPendingIntent(Landroid/content/Context;Ljava/lang/String;Lcom/engagelab/privates/push/api/NotificationMessage;)Landroid/app/PendingIntent;
    .registers 4

    .line 1
    invoke-static {p0, p1, p2}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getNotificationMessageIntent(Landroid/content/Context;Ljava/lang/String;Lcom/engagelab/privates/push/api/NotificationMessage;)Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/high16 v0, 0x4000000

    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/NotificationMessage;->getNotificationId()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    invoke-static {p0, p2, p1, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static getPictureBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 6

    .line 1
    const-string v0, "NotificationUtil"

    .line 2
    .line 3
    const-string v1, "get pictureBitmap failed "

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_5
    invoke-static {p1}, Lcom/engagelab/privates/push/utils/NotificationUtil;->checkValidUrl(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    if-eqz v3, :cond_2e

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-static {p0, p1, v3}, Lcom/engagelab/privates/push/utils/HttpUtils;->get(Landroid/content/Context;Ljava/lang/String;Z)[B

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-nez p0, :cond_21

    .line 18
    .line 19
    const-string p0, "getPicture bytes is null"

    .line 20
    .line 21
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_1f

    .line 22
    .line 23
    .line 24
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/Runtime;->gc()V

    .line 29
    .line 30
    .line 31
    return-object v2

    .line 32
    :catchall_1f
    move-exception p0

    .line 33
    goto :goto_3a

    .line 34
    :cond_21
    :try_start_21
    array-length p1, p0

    .line 35
    invoke-static {p0, v3, p1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 36
    .line 37
    .line 38
    move-result-object p0
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_1f

    .line 39
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Runtime;->gc()V

    .line 44
    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_2e
    :try_start_2e
    invoke-static {p0, p1}, Lcom/engagelab/privates/push/utils/ResourceHelper;->getBitmapFromLocalResource(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 48
    .line 49
    .line 50
    move-result-object p0
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_1f

    .line 51
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Ljava/lang/Runtime;->gc()V

    .line 56
    .line 57
    .line 58
    return-object p0

    .line 59
    :goto_3a
    :try_start_3a
    new-instance p1, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_3a .. :try_end_4d} :catchall_55

    .line 76
    .line 77
    .line 78
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {p0}, Ljava/lang/Runtime;->gc()V

    .line 83
    .line 84
    .line 85
    return-object v2

    .line 86
    :catchall_55
    move-exception p0

    .line 87
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p1}, Ljava/lang/Runtime;->gc()V

    .line 92
    .line 93
    .line 94
    throw p0
.end method

.method public static getPriority(Landroid/content/Context;ZLcom/engagelab/privates/push/api/NotificationMessage;)I
    .registers 4

    const/4 p0, -0x1

    if-eqz p1, :cond_4

    return p0

    .line 1
    :cond_4
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/NotificationMessage;->getPriority()I

    move-result p1

    const/4 v0, -0x2

    if-eq p1, v0, :cond_17

    if-eq p1, p0, :cond_17

    if-eqz p1, :cond_17

    const/4 p0, 0x1

    if-eq p1, p0, :cond_17

    const/4 p0, 0x2

    if-eq p1, p0, :cond_17

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_17
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/NotificationMessage;->getPriority()I

    move-result p0

    return p0
.end method

.method public static getPriority(Lorg/json/JSONObject;)I
    .registers 1

    .line 3
    invoke-static {p0}, Lcom/engagelab/privates/push/utils/NotificationUtil$a;->c(Lorg/json/JSONObject;)I

    move-result p0

    return p0
.end method

.method public static getSmallIcon(Landroid/content/Context;)I
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mtpush_notification_icon"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_13

    return v0

    :cond_13
    const/4 v0, 0x0

    .line 2
    :try_start_14
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 3
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->icon:I
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_23

    return p0

    :catchall_23
    move-exception p0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get getSmallIcon failed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "NotificationUtil"

    invoke-static {v1, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "please put icon [mtpush_notification_icon] in res/drawable"

    .line 5
    invoke-static {v1, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static getSmallIcon(Landroid/content/Context;Lcom/engagelab/privates/push/api/NotificationMessage;)Landroid/graphics/drawable/Icon;
    .registers 4

    const/4 v0, 0x0

    .line 6
    :try_start_1
    invoke-virtual {p1}, Lcom/engagelab/privates/push/api/NotificationMessage;->getSmallIcon()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    return-object v0

    .line 7
    :cond_c
    invoke-virtual {p1}, Lcom/engagelab/privates/push/api/NotificationMessage;->getSmallIcon()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getPictureBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_17

    return-object v0

    .line 8
    :cond_17
    invoke-static {p0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1c

    return-object p0

    :catchall_1c
    move-exception p0

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "getSmallIcon failed "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "NotificationUtil"

    .line 10
    invoke-static {p0, p1, v1}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getSoundUri(Landroid/content/Context;ZLcom/engagelab/privates/push/api/NotificationMessage;)Landroid/net/Uri;
    .registers 9

    .line 1
    const-string v0, "NotificationUtil"

    .line 2
    .line 3
    const-string v1, "android.resource://"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz p1, :cond_8

    .line 7
    .line 8
    return-object v2

    .line 9
    :cond_8
    :try_start_8
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/NotificationMessage;->getSound()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_13

    .line 18
    .line 19
    return-object v2

    .line 20
    :cond_13
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/NotificationMessage;->getSound()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_2d

    .line 28
    const-string v4, "raw"

    .line 29
    .line 30
    :try_start_1d
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-virtual {p1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_2f

    .line 39
    .line 40
    const-string p0, "there are no sound resource"

    .line 41
    .line 42
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-object v2

    .line 46
    :catchall_2d
    move-exception p0

    .line 47
    goto :goto_50

    .line 48
    :cond_2f
    new-instance p1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string p0, "/raw/"

    .line 61
    .line 62
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/NotificationMessage;->getSound()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 77
    .line 78
    .line 79
    move-result-object p0
    :try_end_4f
    .catchall {:try_start_1d .. :try_end_4f} :catchall_2d

    .line 80
    return-object p0

    .line 81
    :goto_50
    new-instance p1, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string p2, "getSoundUri failed "

    .line 84
    .line 85
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-static {p0, p1, v0}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    return-object v2
.end method

.method public static getStyle(Landroid/content/Context;Lcom/engagelab/privates/push/api/NotificationMessage;)Landroid/app/Notification$Style;
    .registers 4

    .line 1
    invoke-virtual {p1}, Lcom/engagelab/privates/push/api/NotificationMessage;->getStyle()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_21

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_18

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    if-eq v0, v1, :cond_f

    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return-object p0

    .line 16
    :cond_f
    invoke-virtual {p1}, Lcom/engagelab/privates/push/api/NotificationMessage;->getBigPicture()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p0, p1}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getBigPictureStyle(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$BigPictureStyle;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_18
    invoke-virtual {p1}, Lcom/engagelab/privates/push/api/NotificationMessage;->getInbox()[Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p0, p1}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getInboxStyle(Landroid/content/Context;[Ljava/lang/String;)Landroid/app/Notification$InboxStyle;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :cond_21
    invoke-virtual {p1}, Lcom/engagelab/privates/push/api/NotificationMessage;->getBigText()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p0, p1}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getBigTextStyle(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$BigTextStyle;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method

.method public static getTitle(Landroid/content/Context;Lcom/engagelab/privates/push/api/NotificationMessage;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p1}, Lcom/engagelab/privates/push/api/NotificationMessage;->getTitle()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1b

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p1, p0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_1b
    invoke-virtual {p1}, Lcom/engagelab/privates/push/api/NotificationMessage;->getTitle()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method public static getVisibility(Landroid/content/Context;ZLcom/engagelab/privates/push/api/NotificationMessage;)I
    .registers 3

    .line 1
    const/4 p0, -0x1

    .line 2
    if-eqz p1, :cond_4

    .line 3
    .line 4
    return p0

    .line 5
    :cond_4
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/NotificationMessage;->getPriority()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 p2, -0x2

    .line 10
    if-eq p1, p2, :cond_14

    .line 11
    .line 12
    if-eq p1, p0, :cond_14

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    if-eq p1, p0, :cond_14

    .line 16
    .line 17
    const/4 p2, 0x2

    .line 18
    if-eq p1, p2, :cond_14

    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    :cond_14
    return p0
.end method

.method public static goToAppNotificationSettings(Landroid/content/Context;)Z
    .registers 6

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catchall {:try_start_0 .. :try_end_2} :catchall_51

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/high16 v3, 0x10000000

    .line 7
    .line 8
    const-string v4, "android.settings.APP_NOTIFICATION_SETTINGS"

    .line 9
    .line 10
    if-lt v0, v1, :cond_2e

    .line 11
    .line 12
    :try_start_b
    new-instance v0, Landroid/content/Intent;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_51

    .line 18
    .line 19
    .line 20
    const-string v1, "android.provider.extra.APP_PACKAGE"

    .line 21
    .line 22
    :try_start_15
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_51

    .line 27
    .line 28
    .line 29
    const-string v1, "android.provider.extra.CHANNEL_ID"

    .line 30
    .line 31
    :try_start_1e
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 36
    .line 37
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 44
    .line 45
    .line 46
    return v2

    .line 47
    :cond_2e
    new-instance v0, Landroid/content/Intent;

    .line 48
    .line 49
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_36
    .catchall {:try_start_1e .. :try_end_36} :catchall_51

    .line 53
    .line 54
    .line 55
    const-string v1, "app_package"

    .line 56
    .line 57
    :try_start_38
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_51

    .line 62
    .line 63
    .line 64
    const-string v1, "app_uid"

    .line 65
    .line 66
    :try_start_41
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 71
    .line 72
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_50
    .catchall {:try_start_41 .. :try_end_50} :catchall_51

    .line 79
    .line 80
    .line 81
    return v2

    .line 82
    :catchall_51
    move-exception p0

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v1, "goToAppNotificationSettings failed "

    .line 86
    .line 87
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const-string v1, "NotificationUtil"

    .line 91
    .line 92
    invoke-static {p0, v0, v1}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    const/4 p0, 0x0

    .line 96
    return p0
.end method

.method public static isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 7
    .line 8
    return v1

    .line 9
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 14
    .line 15
    .line 16
    move-result-object p0
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_10} :catch_11

    .line 17
    goto :goto_12

    .line 18
    :catch_11
    const/4 p0, 0x0

    .line 19
    :goto_12
    if-eqz p0, :cond_15

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    :cond_15
    return v1
.end method

.method public static jumpDeepLink(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 7
    .line 8
    return v1

    .line 9
    :cond_8
    :try_start_8
    const-string v0, "http"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_15

    .line 16
    .line 17
    invoke-static {p0, p1, p2}, Lcom/engagelab/privates/push/utils/NotificationUtil;->jumpWebUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0

    .line 22
    :cond_15
    invoke-static {p0, p1, p2}, Lcom/engagelab/privates/push/utils/NotificationUtil;->jumpDeepLinkUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result p0
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1a

    .line 26
    return p0

    .line 27
    :catchall_1a
    return v1
.end method

.method private static jumpDeepLinkUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    invoke-static {p1}, Lcom/engagelab/privates/push/utils/NotificationUtil;->parseUri(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    const/high16 v1, 0x10000000

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-nez v1, :cond_15

    .line 20
    .line 21
    return v0

    .line 22
    :cond_15
    const-string v1, "MTInAppExtra"

    .line 23
    .line 24
    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    return p0

    .line 32
    :catchall_1f
    return v0
.end method

.method private static jumpWebUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 7
    .line 8
    return v1

    .line 9
    :cond_8
    const/4 v0, 0x1

    .line 10
    :try_start_9
    invoke-static {p1}, Lcom/engagelab/privates/push/utils/NotificationUtil;->parseUri(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-static {p0, v2, p2}, Lcom/engagelab/privates/push/utils/NotificationUtil;->webJumpIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/content/ActivityNotFoundException; {:try_start_9 .. :try_end_10} :catch_11
    .catchall {:try_start_9 .. :try_end_10} :catchall_19

    .line 15
    .line 16
    .line 17
    return v0

    .line 18
    :catch_11
    :try_start_11
    invoke-static {p1}, Lcom/engagelab/privates/push/utils/NotificationUtil;->parseUri(Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p0, p1, p2}, Lcom/engagelab/privates/push/utils/NotificationUtil;->webJumpIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_19

    .line 23
    .line 24
    .line 25
    return v0

    .line 26
    :catchall_19
    return v1
.end method

.method public static notificationMessageToInApp(Lcom/engagelab/privates/push/api/NotificationMessage;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 14

    .line 1
    const-string v0, "text"

    .line 2
    .line 3
    const-string v1, "type"

    .line 4
    .line 5
    const-string v2, "message"

    .line 6
    .line 7
    const-string v3, "NotificationUtil"

    .line 8
    .line 9
    const-string v4, "valueInApp:"

    .line 10
    .line 11
    const-string v5, "notificationMessageToInApp expired is "

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    :try_start_d
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v7

    .line 18
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v8

    .line 22
    if-eqz v8, :cond_20

    .line 23
    .line 24
    const-string p0, "notificationMessageToInApp message is null"

    .line 25
    .line 26
    invoke-static {v3, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-object v6

    .line 30
    :catchall_1d
    move-exception p0

    .line 31
    goto/16 :goto_dd

    .line 32
    .line 33
    :cond_20
    if-nez p0, :cond_28

    .line 34
    .line 35
    const-string p0, "notificationMessageToInApp notificationMessage is null"

    .line 36
    .line 37
    invoke-static {v3, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-object v6

    .line 41
    :cond_28
    invoke-virtual {p0}, Lcom/engagelab/privates/push/api/NotificationMessage;->getInAppEndTime()J

    .line 42
    .line 43
    .line 44
    move-result-wide v8

    .line 45
    const-wide/16 v10, 0x0

    .line 46
    .line 47
    cmp-long v10, v8, v10

    .line 48
    .line 49
    if-gtz v10, :cond_42

    .line 50
    .line 51
    new-instance p0, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-static {v3, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-object v6

    .line 67
    :cond_42
    new-instance v5, Lorg/json/JSONObject;

    .line 68
    .line 69
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v10, "is_notification"

    .line 73
    .line 74
    const/4 v11, 0x1

    .line 75
    invoke-virtual {v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 76
    .line 77
    .line 78
    const-string v10, "expired"

    .line 79
    .line 80
    invoke-virtual {v5, v10, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 81
    .line 82
    .line 83
    const-string v8, "delay"

    .line 84
    .line 85
    const/16 v9, 0xbb8

    .line 86
    .line 87
    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 88
    .line 89
    .line 90
    const-string v8, "interval"

    .line 91
    .line 92
    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 93
    .line 94
    .line 95
    const-string v8, "duration"

    .line 96
    .line 97
    const/16 v9, 0x2710

    .line 98
    .line 99
    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 100
    .line 101
    .line 102
    new-instance v8, Lorg/json/JSONObject;

    .line 103
    .line 104
    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 105
    .line 106
    .line 107
    const/4 v9, 0x2

    .line 108
    invoke-virtual {v8, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_6e
    .catchall {:try_start_d .. :try_end_6e} :catchall_1d

    .line 109
    .line 110
    .line 111
    const-string v9, "action"

    .line 112
    .line 113
    :try_start_70
    invoke-virtual {p0}, Lcom/engagelab/privates/push/api/NotificationMessage;->getIntentUri()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v10

    .line 117
    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    .line 119
    .line 120
    const-string v9, "click"

    .line 121
    .line 122
    invoke-virtual {v5, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    .line 124
    .line 125
    const/16 v8, 0xa

    .line 126
    .line 127
    invoke-virtual {v5, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 128
    .line 129
    .line 130
    new-instance v1, Lorg/json/JSONObject;

    .line 131
    .line 132
    invoke-direct {v1, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    const-string v7, "extras"

    .line 136
    .line 137
    invoke-virtual {v5, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    .line 139
    .line 140
    new-instance v1, Lorg/json/JSONObject;

    .line 141
    .line 142
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_90
    .catchall {:try_start_70 .. :try_end_90} :catchall_1d

    .line 143
    .line 144
    .line 145
    const-string v7, "small_image"

    .line 146
    .line 147
    :try_start_92
    invoke-virtual {p0}, Lcom/engagelab/privates/push/api/NotificationMessage;->getLargeIcon()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v8

    .line 151
    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    .line 153
    .line 154
    new-instance v7, Lorg/json/JSONObject;

    .line 155
    .line 156
    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Lcom/engagelab/privates/push/api/NotificationMessage;->getTitle()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v8

    .line 163
    invoke-virtual {v7, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    .line 165
    .line 166
    const-string v8, "title"

    .line 167
    .line 168
    invoke-virtual {v1, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    .line 170
    .line 171
    new-instance v7, Lorg/json/JSONObject;

    .line 172
    .line 173
    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0}, Lcom/engagelab/privates/push/api/NotificationMessage;->getContent()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    invoke-virtual {v7, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    .line 182
    .line 183
    const-string p0, "content"

    .line 184
    .line 185
    invoke-virtual {v1, p0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    .line 187
    .line 188
    const-string p0, "banner"

    .line 189
    .line 190
    invoke-virtual {v5, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    .line 192
    .line 193
    const-string p0, "location"

    .line 194
    .line 195
    const/4 v0, 0x0

    .line 196
    invoke-virtual {v5, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-static {v3, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1, v2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_dc
    .catchall {:try_start_92 .. :try_end_dc} :catchall_1d

    .line 219
    .line 220
    .line 221
    return-object p1

    .line 222
    :goto_dd
    new-instance p1, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    const-string v0, "notificationMessageToInApp failed:"

    .line 225
    .line 226
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p0

    .line 236
    invoke-static {v3, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    return-object v6
.end method

.method public static onClickInAppNotification(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 1
    const-string v0, "NotificationUtil"

    .line 2
    .line 3
    const/16 v1, 0xbbb

    .line 4
    .line 5
    :try_start_4
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {p1}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getNotificationMessage(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-nez p1, :cond_16

    .line 14
    .line 15
    const-string p0, "notificationMessage  is null, can\'t onClick notification"

    .line 16
    .line 17
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_14
    move-exception p0

    .line 22
    goto :goto_1e

    .line 23
    :cond_16
    invoke-static {p0, v1, p1}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getNotificationMessageIntent(Landroid/content/Context;Ljava/lang/String;Lcom/engagelab/privates/push/api/NotificationMessage;)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_14

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :goto_1e
    new-instance p1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v1, "onClickInAppNotification failed "

    .line 34
    .line 35
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public static parseUri(Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_8
    const/4 v0, 0x4

    .line 10
    invoke-static {p0, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    new-instance v0, Landroid/content/Intent;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 17
    .line 18
    .line 19
    const-string v2, "android.intent.category.BROWSABLE"

    .line 20
    .line 21
    invoke-virtual {p0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v1}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method public static setHonorBadge(Landroid/content/Context;I)Z
    .registers 9

    .line 1
    const-string v0, "NotificationUtil"

    .line 2
    .line 3
    const-string v1, "content://com.huawei.android.launcher.settings/badge/"

    .line 4
    .line 5
    const-string v2, "content://com.hihonor.android.launcher.settings/badge/"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v4, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    if-eqz v5, :cond_2f

    .line 25
    .line 26
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v4, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_2f

    .line 39
    .line 40
    const-string p0, " setHonorBadge fail, uri is null"

    .line 41
    .line 42
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return v3

    .line 46
    :catchall_2d
    move-exception p0

    .line 47
    goto :goto_53

    .line 48
    :cond_2f
    new-instance v1, Landroid/os/Bundle;

    .line 49
    .line 50
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_2d

    .line 51
    .line 52
    .line 53
    const-string v5, "package"

    .line 54
    .line 55
    :try_start_36
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    invoke-virtual {v1, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_2d

    .line 60
    .line 61
    .line 62
    const-string v5, "class"

    .line 63
    .line 64
    :try_start_3f
    invoke-static {p0}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getLaunchActivityClassName(Landroid/content/Context;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {v1, v5, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string p0, "badgenumber"

    .line 72
    .line 73
    invoke-virtual {v1, p0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 74
    .line 75
    .line 76
    const-string p0, "change_badge"

    .line 77
    .line 78
    const/4 p1, 0x0

    .line 79
    invoke-virtual {v4, v2, p0, p1, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_51
    .catchall {:try_start_3f .. :try_end_51} :catchall_2d

    .line 80
    .line 81
    .line 82
    const/4 p0, 0x1

    .line 83
    return p0

    .line 84
    :goto_53
    new-instance p1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v1, " setHonorBadge wrong error:"

    .line 87
    .line 88
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    return v3
.end method

.method public static setHuaweiBadgeNumber(Landroid/content/Context;I)V
    .registers 7

    .line 1
    const-string v0, "NotificationUtil"

    .line 2
    .line 3
    const-string v1, "setHuaweiBadgeNumber "

    .line 4
    .line 5
    :try_start_4
    new-instance v2, Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_47

    .line 8
    .line 9
    .line 10
    const-string v3, "package"

    .line 11
    .line 12
    :try_start_b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p0}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getLaunchActivityClassName(Landroid/content/Context;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_1d

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1d
    new-instance v4, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string v1, "class"

    .line 46
    .line 47
    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string v1, "badgenumber"

    .line 51
    .line 52
    invoke-virtual {v2, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    const-string p1, "content://com.huawei.android.launcher.settings/badge/"

    .line 56
    .line 57
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    const-string v1, "change_badge"

    .line 66
    .line 67
    const/4 v3, 0x0

    .line 68
    invoke-virtual {p0, p1, v1, v3, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_46
    .catchall {:try_start_b .. :try_end_46} :catchall_47

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :catchall_47
    move-exception p0

    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v1, "setHuaweiBadgeNumber failed "

    .line 76
    .line 77
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-static {p0, p1, v0}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public static setNotificationBadge(Landroid/content/Context;Landroid/app/Notification;I)V
    .registers 7

    .line 1
    if-nez p2, :cond_3

    .line 2
    .line 3
    goto :goto_65

    .line 4
    :cond_3
    invoke-static {}, Lcom/engagelab/privates/common/k0;->a()Lcom/engagelab/privates/common/k0;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lcom/engagelab/privates/common/k0;->a(Landroid/content/Context;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    add-int v1, v0, p2

    .line 13
    .line 14
    invoke-static {p0, v1}, Lcom/engagelab/privates/common/a1;->b(Landroid/content/Context;I)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v3, "setNotificationBadge cacheNotificationBadge["

    .line 20
    .line 21
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v0, "]+currentNotificationBadge["

    .line 28
    .line 29
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v0, "]"

    .line 36
    .line 37
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v2, "NotificationUtil"

    .line 45
    .line 46
    invoke-static {v2, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    const/4 v3, -0x1

    .line 63
    sparse-switch v2, :sswitch_data_72

    .line 64
    .line 65
    .line 66
    goto :goto_62

    .line 67
    :sswitch_42
    const-string v2, "honor"

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_4b

    .line 74
    .line 75
    goto :goto_62

    .line 76
    :cond_4b
    const/4 v3, 0x2

    .line 77
    goto :goto_62

    .line 78
    :sswitch_4d
    const-string v2, "xiaomi"

    .line 79
    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-nez v0, :cond_56

    .line 85
    .line 86
    goto :goto_62

    .line 87
    :cond_56
    const/4 v3, 0x1

    .line 88
    goto :goto_62

    .line 89
    :sswitch_58
    const-string v2, "huawei"

    .line 90
    .line 91
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-nez v0, :cond_61

    .line 96
    .line 97
    goto :goto_62

    .line 98
    :cond_61
    const/4 v3, 0x0

    .line 99
    :goto_62
    packed-switch v3, :pswitch_data_80

    .line 100
    .line 101
    .line 102
    :goto_65
    return-void

    .line 103
    :pswitch_66
    invoke-static {p0, v1}, Lcom/engagelab/privates/push/utils/NotificationUtil;->setHonorBadge(Landroid/content/Context;I)Z

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :pswitch_6a
    invoke-static {p0, p1, p2}, Lcom/engagelab/privates/push/utils/NotificationUtil;->setXiaomiBadgeNumber(Landroid/content/Context;Landroid/app/Notification;I)V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :pswitch_6e
    invoke-static {p0, v1}, Lcom/engagelab/privates/push/utils/NotificationUtil;->setHuaweiBadgeNumber(Landroid/content/Context;I)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :sswitch_data_72
    .sparse-switch
        -0x47e95e19 -> :sswitch_58
        -0x2d450b45 -> :sswitch_4d
        0x5edac6a -> :sswitch_42
    .end sparse-switch

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_6e
        :pswitch_6a
        :pswitch_66
    .end packed-switch
.end method

.method public static setXiaomiBadgeNumber(Landroid/content/Context;Landroid/app/Notification;I)V
    .registers 8

    .line 1
    if-nez p1, :cond_3

    .line 2
    .line 3
    return-void

    .line 4
    :cond_3
    const/4 p0, 0x0

    .line 5
    if-gtz p2, :cond_7

    .line 6
    .line 7
    move p2, p0

    .line 8
    :cond_7
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "extraNotification"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_32

    .line 26
    const-string v1, "setMessageCount"

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    :try_start_1c
    new-array v3, v2, [Ljava/lang/Class;

    .line 30
    .line 31
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 32
    .line 33
    aput-object v4, v3, p0

    .line 34
    .line 35
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    new-array v1, v2, [Ljava/lang/Object;

    .line 44
    .line 45
    aput-object p2, v1, p0

    .line 46
    .line 47
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catchall {:try_start_1c .. :try_end_31} :catchall_32

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :catchall_32
    move-exception p0

    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string p2, "setXiaomiBadgeNumber failed "

    .line 55
    .line 56
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string p2, "NotificationUtil"

    .line 60
    .line 61
    invoke-static {p0, p1, p2}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method private static webJumpIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .registers 4

    .line 1
    const/high16 v0, 0x10000000

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    const-string v0, "MTInAppExtra"

    .line 7
    .line 8
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

###### Class com.engagelab.privates.push.utils.NotificationUtil.a (com.engagelab.privates.push.utils.NotificationUtil$a)
.class public Lcom/engagelab/privates/push/utils/NotificationUtil$a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/engagelab/privates/push/utils/NotificationUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/engagelab/privates/push/utils/NotificationUtil$a;->a:Ljava/util/Map;

    .line 7
    .line 8
    invoke-static {}, Lcom/engagelab/privates/push/utils/NotificationUtil$a;->a()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static a(I)I
    .registers 3

    .line 1
    if-eqz p0, :cond_13

    const/4 v0, 0x1

    if-eq p0, v0, :cond_13

    const/4 v1, 0x2

    if-eq p0, v1, :cond_11

    const/4 v1, 0x4

    if-eq p0, v1, :cond_10

    const/4 v1, 0x5

    if-eq p0, v1, :cond_10

    const/4 p0, 0x0

    return p0

    :cond_10
    return v0

    :cond_11
    const/4 p0, -0x1

    return p0

    :cond_13
    const/4 p0, -0x2

    return p0
.end method

.method public static synthetic a(Lorg/json/JSONObject;)I
    .registers 1

    .line 3
    invoke-static {p0}, Lcom/engagelab/privates/push/utils/NotificationUtil$a;->b(Lorg/json/JSONObject;)I

    move-result p0

    return p0
.end method

.method public static a(Lorg/json/JSONObject;I)I
    .registers 2

    .line 2
    return p1
.end method

.method public static a()V
    .registers 3

    .line 4
    sget-object v0, Lcom/engagelab/privates/push/utils/NotificationUtil$a;->a:Ljava/util/Map;

    const-string v1, "google"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "huawei"

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "hw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "honor"

    .line 6
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "hn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "meizu"

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mz"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "vivo"

    .line 8
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "vi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "oppo"

    .line 9
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "op"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "realme"

    .line 10
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "oneplus"

    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "xiaomi"

    .line 12
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "xm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "blackshark"

    .line 13
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static b(Lorg/json/JSONObject;)I
    .registers 5

    .line 1
    const-string v0, "n_importance"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-eqz v0, :cond_38

    .line 9
    .line 10
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 11
    .line 12
    if-nez v2, :cond_12

    .line 13
    .line 14
    invoke-static {p0, v1}, Lcom/engagelab/privates/push/utils/NotificationUtil$a;->a(Lorg/json/JSONObject;I)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0

    .line 19
    :cond_12
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    sget-object v3, Lcom/engagelab/privates/push/utils/NotificationUtil$a;->a:Ljava/util/Map;

    .line 24
    .line 25
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/lang/String;

    .line 30
    .line 31
    if-eqz v2, :cond_38

    .line 32
    .line 33
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v1, "im_v:"

    .line 40
    .line 41
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v1, "NotificationUtil"

    .line 52
    .line 53
    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return p0

    .line 57
    :cond_38
    invoke-static {p0, v1}, Lcom/engagelab/privates/push/utils/NotificationUtil$a;->a(Lorg/json/JSONObject;I)I

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    return p0
.end method

.method public static c(Lorg/json/JSONObject;)I
    .registers 3

    .line 1
    const-string v0, "n_priority"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-static {p0}, Lcom/engagelab/privates/push/utils/NotificationUtil$a;->b(Lorg/json/JSONObject;)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    const/4 v1, -0x1

    .line 13
    if-ne v1, p0, :cond_f

    .line 14
    .line 15
    goto :goto_16

    .line 16
    :cond_f
    invoke-static {p0}, Lcom/engagelab/privates/push/utils/NotificationUtil$a;->a(I)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-le v0, p0, :cond_16

    .line 21
    .line 22
    return p0

    .line 23
    :cond_16
    :goto_16
    return v0
.end method
