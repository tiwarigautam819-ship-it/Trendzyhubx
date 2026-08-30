###### Class com.engagelab.privates.common.utils.DeviceUtil (com.engagelab.privates.common.utils.DeviceUtil)
.class public Lcom/engagelab/privates/common/utils/DeviceUtil;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static ANDROID_ID:Ljava/lang/String; = null

.field private static final CPU_FILTER:Ljava/io/FileFilter;

.field private static CPU_HARDWARE:Ljava/lang/String; = ""

.field private static CPU_INFO:Ljava/lang/String; = ""

.field public static GAID:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "DeviceUtil"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/engagelab/privates/common/utils/DeviceUtil$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/engagelab/privates/common/utils/DeviceUtil$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/engagelab/privates/common/utils/DeviceUtil;->CPU_FILTER:Ljava/io/FileFilter;

    .line 7
    .line 8
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

.method private static extractValue([BI)I
    .registers 7

    .line 1
    :goto_0
    const/4 v0, -0x1

    .line 2
    :try_start_1
    array-length v1, p0

    .line 3
    if-ge p1, v1, :cond_2f

    .line 4
    .line 5
    aget-byte v1, p0, p1

    .line 6
    .line 7
    const/16 v2, 0xa

    .line 8
    .line 9
    if-eq v1, v2, :cond_2f

    .line 10
    .line 11
    const/16 v2, 0x30

    .line 12
    .line 13
    if-lt v1, v2, :cond_2c

    .line 14
    .line 15
    const/16 v3, 0x39

    .line 16
    .line 17
    if-gt v1, v3, :cond_2c

    .line 18
    .line 19
    add-int/lit8 v1, p1, 0x1

    .line 20
    .line 21
    :goto_14
    array-length v4, p0

    .line 22
    if-ge v1, v4, :cond_20

    .line 23
    .line 24
    aget-byte v4, p0, v1

    .line 25
    .line 26
    if-lt v4, v2, :cond_20

    .line 27
    .line 28
    if-gt v4, v3, :cond_20

    .line 29
    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_14

    .line 33
    :cond_20
    new-instance v2, Ljava/lang/String;

    .line 34
    .line 35
    sub-int/2addr v1, p1

    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-direct {v2, p0, v3, p1, v1}, Ljava/lang/String;-><init>([BIII)V

    .line 38
    .line 39
    .line 40
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result p0
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2f

    .line 44
    return p0

    .line 45
    :cond_2c
    add-int/lit8 p1, p1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_2f
    :cond_2f
    return v0
.end method

.method public static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {}, Lcom/engagelab/privates/common/helper/CollectControlHelper;->getInstance()Lcom/engagelab/privates/common/helper/CollectControlHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "aid"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/engagelab/privates/common/helper/CollectControlHelper;->getCollectControl(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_f

    .line 12
    .line 13
    const-string p0, ""

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_f
    sget-object v0, Lcom/engagelab/privates/common/utils/DeviceUtil;->ANDROID_ID:Ljava/lang/String;

    .line 17
    .line 18
    if-eqz v0, :cond_14

    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_14
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const-string v0, "android_id"

    .line 26
    .line 27
    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    sput-object p0, Lcom/engagelab/privates/common/utils/DeviceUtil;->ANDROID_ID:Ljava/lang/String;

    .line 32
    .line 33
    return-object p0
.end method

.method public static getBrand()Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 2
    .line 3
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    new-array v2, v2, [Ljava/lang/Object;

    .line 7
    .line 8
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public static getCPUMaxFreqKHz()I
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_2
    const/4 v2, -0x1

    .line 4
    const/4 v3, 0x0

    .line 5
    :try_start_4
    invoke-static {}, Lcom/engagelab/privates/common/utils/DeviceUtil;->getCpuCoreCount()I

    .line 6
    .line 7
    .line 8
    move-result v4
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_80

    .line 9
    if-ge v1, v4, :cond_6c

    .line 10
    .line 11
    :try_start_a
    new-instance v4, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v5, "/sys/devices/system/cpu/cpu"

    .line 17
    .line 18
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v5, "/cpufreq/cpuinfo_max_freq"

    .line 25
    .line 26
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    new-instance v5, Ljava/io/File;

    .line 34
    .line 35
    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-nez v4, :cond_2e

    .line 43
    .line 44
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2e
    const/16 v1, 0x80

    .line 48
    .line 49
    new-array v1, v1, [B

    .line 50
    .line 51
    new-instance v4, Ljava/io/FileInputStream;

    .line 52
    .line 53
    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_37
    .catchall {:try_start_a .. :try_end_37} :catchall_65

    .line 54
    .line 55
    .line 56
    :try_start_37
    invoke-virtual {v4, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 57
    .line 58
    .line 59
    move-result v3
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_62

    .line 60
    if-ne v2, v3, :cond_44

    .line 61
    .line 62
    :try_start_3d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_40

    .line 63
    .line 64
    .line 65
    :catchall_40
    :try_start_40
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_43

    .line 66
    .line 67
    .line 68
    :catchall_43
    return v2

    .line 69
    :cond_44
    move v3, v0

    .line 70
    :goto_45
    :try_start_45
    aget-byte v5, v1, v3

    .line 71
    .line 72
    const/16 v6, 0x30

    .line 73
    .line 74
    if-lt v5, v6, :cond_52

    .line 75
    .line 76
    const/16 v6, 0x39

    .line 77
    .line 78
    if-gt v5, v6, :cond_52

    .line 79
    .line 80
    add-int/lit8 v3, v3, 0x1

    .line 81
    .line 82
    goto :goto_45

    .line 83
    :cond_52
    new-instance v5, Ljava/lang/String;

    .line 84
    .line 85
    invoke-direct {v5, v1, v0, v3}, Ljava/lang/String;-><init>([BII)V

    .line 86
    .line 87
    .line 88
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v0
    :try_end_5b
    .catchall {:try_start_45 .. :try_end_5b} :catchall_62

    .line 92
    :try_start_5b
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_5e

    .line 93
    .line 94
    .line 95
    :catchall_5e
    :try_start_5e
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_61

    .line 96
    .line 97
    .line 98
    :catchall_61
    return v0

    .line 99
    :catchall_62
    move-exception v0

    .line 100
    move-object v3, v4

    .line 101
    goto :goto_66

    .line 102
    :catchall_65
    move-exception v0

    .line 103
    :goto_66
    if-eqz v3, :cond_6b

    .line 104
    .line 105
    :try_start_68
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_6b

    .line 106
    .line 107
    .line 108
    :catchall_6b
    :cond_6b
    :try_start_6b
    throw v0

    .line 109
    :cond_6c
    new-instance v0, Ljava/io/FileInputStream;

    .line 110
    .line 111
    const-string v1, "/proc/cpuinfo"

    .line 112
    .line 113
    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_73
    .catchall {:try_start_6b .. :try_end_73} :catchall_80

    .line 114
    .line 115
    .line 116
    :try_start_73
    const-string v1, "cpu MHz"

    .line 117
    .line 118
    invoke-static {v1, v0}, Lcom/engagelab/privates/common/utils/DeviceUtil;->parseFileForValue(Ljava/lang/String;Ljava/io/FileInputStream;)I

    .line 119
    .line 120
    .line 121
    move-result v1
    :try_end_79
    .catchall {:try_start_73 .. :try_end_79} :catchall_7f

    .line 122
    mul-int/lit16 v1, v1, 0x3e8

    .line 123
    .line 124
    :try_start_7b
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_7e

    .line 125
    .line 126
    .line 127
    :catchall_7e
    return v1

    .line 128
    :catchall_7f
    move-object v3, v0

    .line 129
    :catchall_80
    if-eqz v3, :cond_85

    .line 130
    .line 131
    :try_start_82
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_85
    .catchall {:try_start_82 .. :try_end_85} :catchall_85

    .line 132
    .line 133
    .line 134
    :catchall_85
    :cond_85
    return v2
.end method

.method public static getCarrier(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    :try_start_0
    const-string v0, "phone"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    .line 13
    return-object p0

    .line 14
    :catchall_d
    const-string p0, ""

    .line 15
    .line 16
    return-object p0
.end method

.method public static getCountryCodeByLocale()Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static getCpuCoreCount()I
    .registers 3

    .line 1
    const/4 v0, -0x1

    .line 2
    :try_start_1
    new-instance v1, Ljava/io/File;

    .line 3
    .line 4
    const-string v2, "/sys/devices/system/cpu/"

    .line 5
    .line 6
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_f

    .line 14
    .line 15
    return v0

    .line 16
    :cond_f
    sget-object v2, Lcom/engagelab/privates/common/utils/DeviceUtil;->CPU_FILTER:Ljava/io/FileFilter;

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_1c

    .line 23
    .line 24
    array-length v2, v1

    .line 25
    if-nez v2, :cond_1b

    .line 26
    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    array-length v0, v1
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1c

    .line 29
    :catchall_1c
    :cond_1c
    :goto_1c
    return v0
.end method

.method public static getCpuHardwareInfo()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/engagelab/privates/common/utils/DeviceUtil;->CPU_HARDWARE:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_b

    .line 8
    .line 9
    sget-object v0, Lcom/engagelab/privates/common/utils/DeviceUtil;->CPU_HARDWARE:Ljava/lang/String;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_b
    invoke-static {}, Lcom/engagelab/privates/common/utils/DeviceUtil;->matchCpuInfo()V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lcom/engagelab/privates/common/utils/DeviceUtil;->CPU_HARDWARE:Ljava/lang/String;

    .line 16
    .line 17
    return-object v0
.end method

.method public static getCpuInfo()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/engagelab/privates/common/utils/DeviceUtil;->CPU_INFO:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_b

    .line 8
    .line 9
    sget-object v0, Lcom/engagelab/privates/common/utils/DeviceUtil;->CPU_INFO:Ljava/lang/String;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_b
    invoke-static {}, Lcom/engagelab/privates/common/utils/DeviceUtil;->matchCpuInfo()V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lcom/engagelab/privates/common/utils/DeviceUtil;->CPU_INFO:Ljava/lang/String;

    .line 16
    .line 17
    return-object v0
.end method

.method public static getGAID(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {}, Lcom/engagelab/privates/common/helper/CollectControlHelper;->getInstance()Lcom/engagelab/privates/common/helper/CollectControlHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "gaid"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/engagelab/privates/common/helper/CollectControlHelper;->getCollectControl(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_f

    .line 12
    .line 13
    const-string p0, ""

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_f
    sget-object v0, Lcom/engagelab/privates/common/utils/DeviceUtil;->GAID:Ljava/lang/String;

    .line 17
    .line 18
    if-eqz v0, :cond_14

    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_14
    invoke-static {p0}, Lcom/engagelab/privates/common/ids/IdHelper;->getGaid(Landroid/content/Context;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    sput-object p0, Lcom/engagelab/privates/common/utils/DeviceUtil;->GAID:Ljava/lang/String;

    .line 26
    .line 27
    return-object p0
.end method

.method public static getLanguage(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static getManufacturer()Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 2
    .line 3
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    new-array v2, v2, [Ljava/lang/Object;

    .line 7
    .line 8
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public static getModel()Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 2
    .line 3
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    new-array v2, v2, [Ljava/lang/Object;

    .line 7
    .line 8
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public static getNetworkOperator(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    :try_start_0
    const-string v0, "phone"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    .line 13
    return-object p0

    .line 14
    :catchall_d
    const-string p0, ""

    .line 15
    .line 16
    return-object p0
.end method

.method public static getProduct()Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 2
    .line 3
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    new-array v2, v2, [Ljava/lang/Object;

    .line 7
    .line 8
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public static getRamSize(Landroid/content/Context;)J
    .registers 5

    .line 1
    :try_start_0
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/app/ActivityManager;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    filled-new-array {v0}, [I

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    .line 15
    .line 16
    .line 17
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    .line 18
    .line 19
    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 23
    .line 24
    .line 25
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 26
    .line 27
    const-wide/16 v2, 0x400

    .line 28
    .line 29
    div-long/2addr v0, v2
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_1e

    .line 30
    return-wide v0

    .line 31
    :catchall_1e
    const-wide/16 v0, -0x1

    .line 32
    .line 33
    return-wide v0
.end method

.method public static getResolution(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "0*0"

    .line 2
    .line 3
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_9

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

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
    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 22
    .line 23
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 24
    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, "*"

    .line 34
    .line 35
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0
    :try_end_2c
    .catchall {:try_start_2 .. :try_end_2c} :catchall_2d

    .line 45
    return-object p0

    .line 46
    :catchall_2d
    return-object v0
.end method

.method public static getRomSize(Landroid/content/Context;)J
    .registers 6

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v0, Landroid/os/StatFs;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    int-to-long v1, p0

    .line 19
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    int-to-long v3, p0

    .line 24
    mul-long/2addr v3, v1

    .line 25
    const-wide/16 v0, 0x400

    .line 26
    .line 27
    div-long/2addr v3, v0
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    .line 28
    return-wide v3

    .line 29
    :catchall_1c
    const-wide/16 v0, -0x1

    .line 30
    .line 31
    return-wide v0
.end method

.method public static getScreenSize(Landroid/content/Context;)D
    .registers 7

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 10
    .line 11
    int-to-float v0, v0

    .line 12
    iget v1, p0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 13
    .line 14
    div-float/2addr v0, v1

    .line 15
    float-to-double v0, v0

    .line 16
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 17
    .line 18
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    iget v4, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 23
    .line 24
    int-to-float v4, v4

    .line 25
    iget p0, p0, Landroid/util/DisplayMetrics;->ydpi:F

    .line 26
    .line 27
    div-float/2addr v4, p0

    .line 28
    float-to-double v4, v4

    .line 29
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    add-double/2addr v0, v2

    .line 34
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 35
    .line 36
    .line 37
    move-result-wide v0
    :try_end_25
    .catchall {:try_start_0 .. :try_end_25} :catchall_26

    .line 38
    return-wide v0

    .line 39
    :catchall_26
    const-wide/16 v0, 0x0

    .line 40
    .line 41
    return-wide v0
.end method

.method public static getSystemDevice()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static getSystemVersionRelease()Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 2
    .line 3
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    new-array v2, v2, [Ljava/lang/Object;

    .line 7
    .line 8
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public static getSystemVersionSdkInt()I
    .registers 1

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    return v0
.end method

.method public static getTimeZone()Ljava/lang/String;
    .registers 5

    .line 1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const v1, 0x36ee80

    .line 10
    .line 11
    .line 12
    div-int/2addr v0, v1

    .line 13
    int-to-long v0, v0

    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    cmp-long v2, v0, v2

    .line 17
    .line 18
    const-string v3, "-"

    .line 19
    .line 20
    if-lez v2, :cond_24

    .line 21
    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v4, "+"

    .line 25
    .line 26
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    goto :goto_41

    .line 37
    :cond_24
    if-gez v2, :cond_33

    .line 38
    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    goto :goto_41

    .line 52
    :cond_33
    new-instance v2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v4, ""

    .line 55
    .line 56
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    :goto_41
    const-string v1, "--"

    .line 67
    .line 68
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    return-object v0
.end method

.method public static getTimeZoneId()Ljava/lang/String;
    .registers 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-lt v0, v1, :cond_f

    .line 6
    .line 7
    invoke-static {}, Lr1/a;->j()Ljava/time/ZoneId;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lr1/a;->i(Ljava/time/ZoneId;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_f
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method

.method public static hasGAIDPermission(Landroid/content/Context;)Z
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/engagelab/privates/common/ids/IdHelper;->hasGAIDPermission(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static isAdTrackingEnabled(Landroid/content/Context;)Z
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/engagelab/privates/common/ids/IdHelper;->isLimitAdTrackingEnabled(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    xor-int/lit8 p0, p0, 0x1

    .line 6
    .line 7
    return p0
.end method

.method private static matchCpuInfo()V
    .registers 6

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const-string v1, "/proc/cpuinfo"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_e

    .line 13
    .line 14
    goto :goto_6d

    .line 15
    :cond_e
    new-instance v1, Ljava/io/FileReader;

    .line 16
    .line 17
    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Ljava/io/BufferedReader;

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_67

    .line 23
    .line 24
    .line 25
    :cond_18
    :goto_18
    :try_start_18
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-eqz v1, :cond_6a

    .line 30
    .line 31
    const-string v2, "Processor"

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v2
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_68

    .line 37
    const-string v3, ":"

    .line 38
    .line 39
    if-eqz v2, :cond_4e

    .line 40
    .line 41
    :try_start_28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-ltz v4, :cond_48

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    add-int/lit8 v5, v5, -0x1

    .line 57
    .line 58
    if-ge v4, v5, :cond_48

    .line 59
    .line 60
    add-int/lit8 v4, v4, 0x1

    .line 61
    .line 62
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    :cond_48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    sput-object v2, Lcom/engagelab/privates/common/utils/DeviceUtil;->CPU_INFO:Ljava/lang/String;

    .line 78
    .line 79
    :cond_4e
    const-string v2, "Hardware"

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_18

    .line 86
    .line 87
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    add-int/lit8 v2, v2, 0x1

    .line 92
    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    sput-object v1, Lcom/engagelab/privates/common/utils/DeviceUtil;->CPU_HARDWARE:Ljava/lang/String;
    :try_end_66
    .catchall {:try_start_28 .. :try_end_66} :catchall_68

    .line 102
    .line 103
    goto :goto_18

    .line 104
    :catchall_67
    const/4 v0, 0x0

    .line 105
    :catchall_68
    if-eqz v0, :cond_6d

    .line 106
    .line 107
    :cond_6a
    :try_start_6a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_6d

    .line 108
    .line 109
    .line 110
    :catchall_6d
    :cond_6d
    :goto_6d
    return-void
.end method

.method private static parseFileForValue(Ljava/lang/String;Ljava/io/FileInputStream;)I
    .registers 9

    .line 1
    const/16 v0, 0x400

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    :try_start_3
    new-array v0, v0, [B

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_a
    if-ge v2, p1, :cond_3a

    .line 12
    .line 13
    aget-byte v3, v0, v2

    .line 14
    .line 15
    const/16 v4, 0xa

    .line 16
    .line 17
    if-eq v3, v4, :cond_15

    .line 18
    .line 19
    if-eqz v2, :cond_15

    .line 20
    .line 21
    goto :goto_37

    .line 22
    :cond_15
    if-ne v3, v4, :cond_19

    .line 23
    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    :cond_19
    move v3, v2

    .line 27
    :goto_1a
    if-ge v3, p1, :cond_37

    .line 28
    .line 29
    sub-int v4, v3, v2

    .line 30
    .line 31
    aget-byte v5, v0, v3

    .line 32
    .line 33
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    if-eq v5, v6, :cond_27

    .line 38
    .line 39
    goto :goto_37

    .line 40
    :cond_27
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    add-int/lit8 v5, v5, -0x1

    .line 45
    .line 46
    if-ne v4, v5, :cond_34

    .line 47
    .line 48
    invoke-static {v0, v3}, Lcom/engagelab/privates/common/utils/DeviceUtil;->extractValue([BI)I

    .line 49
    .line 50
    .line 51
    move-result p0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_3a

    .line 52
    return p0

    .line 53
    :cond_34
    add-int/lit8 v3, v3, 0x1

    .line 54
    .line 55
    goto :goto_1a

    .line 56
    :cond_37
    :goto_37
    add-int/lit8 v2, v2, 0x1

    .line 57
    .line 58
    goto :goto_a

    .line 59
    :catchall_3a
    :cond_3a
    return v1
.end method

###### Class com.engagelab.privates.common.utils.DeviceUtil.a (com.engagelab.privates.common.utils.DeviceUtil$a)
.class public final Lcom/engagelab/privates/common/utils/DeviceUtil$a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/engagelab/privates/common/utils/DeviceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
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


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 6

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "cpu"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_2b

    .line 13
    .line 14
    const/4 v0, 0x3

    .line 15
    :goto_e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-ge v0, v2, :cond_29

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const/16 v3, 0x30

    .line 26
    .line 27
    if-lt v2, v3, :cond_28

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/16 v3, 0x39

    .line 34
    .line 35
    if-le v2, v3, :cond_25

    .line 36
    .line 37
    goto :goto_28

    .line 38
    :cond_25
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    goto :goto_e

    .line 41
    :cond_28
    :goto_28
    return v1

    .line 42
    :cond_29
    const/4 p1, 0x1

    .line 43
    return p1

    .line 44
    :cond_2b
    return v1
.end method
