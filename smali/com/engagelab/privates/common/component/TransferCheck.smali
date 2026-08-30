###### Class com.engagelab.privates.common.component.TransferCheck (com.engagelab.privates.common.component.TransferCheck)
.class public Lcom/engagelab/privates/common/component/TransferCheck;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field private static final TAG:Ljava/lang/String; = "TransferCheck"


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

.method public static isAllowTransfer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_16

    .line 7
    .line 8
    :try_start_7
    invoke-static {p1}, Lcom/engagelab/privates/common/utils/StringUtil;->get16MD5String(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {p2}, Lcom/engagelab/privates/common/utils/RsaUitl;->deRsa(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p2
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_13} :catch_15

    .line 20
    if-nez p2, :cond_16

    .line 21
    .line 22
    :catch_15
    return v1

    .line 23
    :cond_16
    invoke-static {p0}, Lcom/engagelab/privates/common/global/MTGlobal;->getTransfer(Landroid/content/Context;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    const-string v0, "null"

    .line 28
    .line 29
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v2, 0x1

    .line 34
    if-nez v0, :cond_60

    .line 35
    .line 36
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_2a

    .line 41
    .line 42
    goto :goto_60

    .line 43
    :cond_2a
    :try_start_2a
    const-string v0, "/"

    .line 44
    .line 45
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    move v0, v1

    .line 50
    :goto_31
    array-length v3, p2

    .line 51
    if-ge v0, v3, :cond_52

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-static {p1}, Lcom/engagelab/privates/common/component/TransferCheck;->parseUri(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v3, v4, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 66
    .line 67
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 68
    .line 69
    aget-object v4, p2, v0

    .line 70
    .line 71
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v3
    :try_end_4a
    .catchall {:try_start_2a .. :try_end_4a} :catchall_50

    .line 75
    if-eqz v3, :cond_4d

    .line 76
    .line 77
    return v2

    .line 78
    :cond_4d
    add-int/lit8 v0, v0, 0x1

    .line 79
    .line 80
    goto :goto_31

    .line 81
    :catchall_50
    move-exception p0

    .line 82
    goto :goto_53

    .line 83
    :cond_52
    return v1

    .line 84
    :goto_53
    new-instance p1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string p2, "isAllowTransfer failed "

    .line 87
    .line 88
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-string p2, "TransferCheck"

    .line 92
    .line 93
    invoke-static {p0, p1, p2}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    return v1

    .line 97
    :cond_60
    :goto_60
    return v2
.end method

.method private static parseUri(Ljava/lang/String;)Landroid/content/Intent;
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
    if-eqz v0, :cond_f

    .line 7
    .line 8
    const-string p0, "TransferCheck"

    .line 9
    .line 10
    const-string v0, "intent uri is null"

    .line 11
    .line 12
    invoke-static {p0, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_f
    const/4 v0, 0x4

    .line 17
    invoke-static {p0, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    new-instance v0, Landroid/content/Intent;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 24
    .line 25
    .line 26
    const-string v2, "android.intent.category.BROWSABLE"

    .line 27
    .line 28
    invoke-virtual {p0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v1}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 35
    .line 36
    .line 37
    return-object v0
.end method
