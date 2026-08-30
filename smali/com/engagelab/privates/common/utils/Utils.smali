###### Class com.engagelab.privates.common.utils.Utils (com.engagelab.privates.common.utils.Utils)
.class public Lcom/engagelab/privates/common/utils/Utils;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field private static final TAG:Ljava/lang/String; = "Utils"

.field private static cacheCurrentType:Ljava/util/LinkedHashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final dateLock:Ljava/lang/Object;

.field private static final regEx:Ljava/lang/String; = "[^0-9]"

.field private static sdfMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/SimpleDateFormat;",
            ">;>;"
        }
    .end annotation
.end field

.field private static supportImageType:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static windowManagerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/WindowManager;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/engagelab/privates/common/utils/Utils;->dateLock:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/engagelab/privates/common/utils/Utils;->sdfMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    new-instance v0, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/engagelab/privates/common/utils/Utils;->windowManagerMap:Ljava/util/HashMap;

    .line 21
    .line 22
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/engagelab/privates/common/utils/Utils;->cacheCurrentType:Ljava/util/LinkedHashMap;

    .line 28
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lcom/engagelab/privates/common/utils/Utils;->supportImageType:Ljava/util/List;

    .line 35
    .line 36
    const-string v1, "image/png"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    sget-object v0, Lcom/engagelab/privates/common/utils/Utils;->supportImageType:Ljava/util/List;

    .line 42
    .line 43
    const-string v1, "image/jpg"

    .line 44
    .line 45
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    sget-object v0, Lcom/engagelab/privates/common/utils/Utils;->supportImageType:Ljava/util/List;

    .line 49
    .line 50
    const-string v1, "image/jpeg"

    .line 51
    .line 52
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
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

.method public static checkValidImageUrl(Ljava/lang/String;Z)Z
    .registers 6

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
    return v1

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :try_start_9
    new-instance v2, Ljava/net/URL;

    .line 11
    .line 12
    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_29

    .line 20
    .line 21
    :try_start_14
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/engagelab/privates/common/utils/Utils;->isSupportType(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_2c

    .line 30
    .line 31
    if-eqz p1, :cond_23

    .line 32
    .line 33
    invoke-static {p0, v0}, Lcom/engagelab/privates/common/utils/Utils;->saveCurrentType(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_28

    .line 34
    .line 35
    .line 36
    :cond_23
    const/4 p0, 0x1

    .line 37
    :try_start_24
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_27

    .line 38
    .line 39
    .line 40
    :catchall_27
    return p0

    .line 41
    :catchall_28
    move-object v0, v2

    .line 42
    :catchall_29
    if-eqz v0, :cond_2f

    .line 43
    .line 44
    move-object v2, v0

    .line 45
    :cond_2c
    :try_start_2c
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_2f

    .line 46
    .line 47
    .line 48
    :catchall_2f
    :cond_2f
    return v1
.end method

.method public static clearWindowManagerForActivity(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    sget-object v0, Lcom/engagelab/privates/common/utils/Utils;->windowManagerMap:Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .registers 1

    .line 1
    if-eqz p0, :cond_5

    .line 2
    .line 3
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_5

    .line 4
    .line 5
    .line 6
    :catch_5
    :cond_5
    return-void
.end method

.method public static dpToPx(Landroid/content/Context;I)I
    .registers 3

    .line 1
    if-nez p0, :cond_3

    .line 2
    .line 3
    return p1

    .line 4
    :cond_3
    int-to-float p1, p1

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    float-to-int p0, p0

    .line 19
    return p0
.end method

.method private static getBasicHeight(Landroid/content/Context;)F
    .registers 2

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
    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    if-ne p0, v0, :cond_11

    .line 13
    .line 14
    const p0, 0x43bb8000    # 375.0f

    .line 15
    .line 16
    .line 17
    return p0

    .line 18
    :cond_11
    const p0, 0x4426c000    # 667.0f

    .line 19
    .line 20
    .line 21
    return p0
.end method

.method private static getBasicWidth(Landroid/content/Context;)F
    .registers 2

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
    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    if-ne p0, v0, :cond_11

    .line 13
    .line 14
    const p0, 0x4426c000    # 667.0f

    .line 15
    .line 16
    .line 17
    return p0

    .line 18
    :cond_11
    const p0, 0x43bb8000    # 375.0f

    .line 19
    .line 20
    .line 21
    return p0
.end method

.method public static getDistance(DDDD)D
    .registers 12

    .line 1
    const-wide v0, 0x3f81df46a2529d39L    # 0.008726646259971648

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    mul-double/2addr p2, v0

    .line 7
    mul-double/2addr p6, v0

    .line 8
    sub-double v2, p2, p6

    .line 9
    .line 10
    sub-double/2addr p0, p4

    .line 11
    mul-double/2addr p0, v0

    .line 12
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 13
    .line 14
    .line 15
    move-result-wide p4

    .line 16
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 17
    .line 18
    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 19
    .line 20
    .line 21
    move-result-wide p4

    .line 22
    mul-double/2addr p2, v0

    .line 23
    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    .line 24
    .line 25
    .line 26
    move-result-wide p2

    .line 27
    mul-double/2addr p6, v0

    .line 28
    invoke-static {p6, p7}, Ljava/lang/Math;->cos(D)D

    .line 29
    .line 30
    .line 31
    move-result-wide p6

    .line 32
    mul-double/2addr p6, p2

    .line 33
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    .line 34
    .line 35
    .line 36
    move-result-wide p0

    .line 37
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 38
    .line 39
    .line 40
    move-result-wide p0

    .line 41
    mul-double/2addr p0, p6

    .line 42
    add-double/2addr p0, p4

    .line 43
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    .line 44
    .line 45
    .line 46
    move-result-wide p0

    .line 47
    invoke-static {p0, p1}, Ljava/lang/Math;->asin(D)D

    .line 48
    .line 49
    .line 50
    move-result-wide p0

    .line 51
    const-wide p2, 0x416854a640000000L    # 1.2756274E7

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    mul-double/2addr p0, p2

    .line 57
    const-wide p2, 0x40c3880000000000L    # 10000.0

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    mul-double/2addr p0, p2

    .line 63
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    .line 64
    .line 65
    .line 66
    move-result-wide p0

    .line 67
    const-wide/16 p2, 0x2710

    .line 68
    .line 69
    div-long/2addr p0, p2

    .line 70
    long-to-double p0, p0

    .line 71
    return-wide p0
.end method

.method public static getHeight(Landroid/content/Context;I)I
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/engagelab/privates/common/utils/Utils;->providesDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 6
    .line 7
    int-to-float v0, v0

    .line 8
    int-to-float p1, p1

    .line 9
    invoke-static {p0}, Lcom/engagelab/privates/common/utils/Utils;->getBasicHeight(Landroid/content/Context;)F

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    div-float/2addr p1, p0

    .line 14
    mul-float/2addr p1, v0

    .line 15
    float-to-int p0, p1

    .line 16
    return p0
.end method

.method public static getNumber(Ljava/lang/String;)I
    .registers 2

    .line 1
    :try_start_0
    const-string v0, "[^0-9]"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string v0, ""

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result p0
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_1d

    .line 29
    return p0

    .line 30
    :catchall_1d
    const/4 p0, -0x1

    .line 31
    return p0
.end method

.method public static getTypeFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/engagelab/privates/common/utils/Utils;->cacheCurrentType:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    sget-object v1, Lcom/engagelab/privates/common/utils/Utils;->cacheCurrentType:Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    invoke-virtual {v1, p0}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_e

    .line 12
    .line 13
    .line 14
    return-object v0

    .line 15
    :catchall_e
    const-string p0, ""

    .line 16
    .line 17
    return-object p0
.end method

.method public static getWidth(Landroid/content/Context;I)I
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/engagelab/privates/common/utils/Utils;->providesDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 6
    .line 7
    int-to-float v0, v0

    .line 8
    int-to-float p1, p1

    .line 9
    invoke-static {p0}, Lcom/engagelab/privates/common/utils/Utils;->getBasicWidth(Landroid/content/Context;)F

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    div-float/2addr p1, p0

    .line 14
    mul-float/2addr p1, v0

    .line 15
    float-to-int p0, p1

    .line 16
    return p0
.end method

.method public static getWindowManagerForActivity(Ljava/lang/String;)Landroid/view/WindowManager;
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    sget-object v0, Lcom/engagelab/privates/common/utils/Utils;->windowManagerMap:Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/lang/ref/WeakReference;

    .line 16
    .line 17
    if-eqz p0, :cond_19

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Landroid/view/WindowManager;

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_19
    const/4 p0, 0x0

    .line 27
    return-object p0
.end method

.method public static invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p3, :cond_5

    .line 3
    .line 4
    array-length v1, p3

    .line 5
    goto :goto_6

    .line 6
    :cond_5
    move v1, v0

    .line 7
    :goto_6
    if-eqz p2, :cond_a

    .line 8
    .line 9
    array-length v2, p2

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    move v2, v0

    .line 12
    :goto_b
    if-ne v1, v2, :cond_32

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-nez p2, :cond_1f

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-virtual {p1, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 30
    .line 31
    .line 32
    :cond_1f
    const/4 v1, 0x0

    .line 33
    :try_start_20
    invoke-virtual {p1, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_24} :catch_25

    .line 37
    goto :goto_29

    .line 38
    :catch_25
    move-exception p0

    .line 39
    move-object v3, v1

    .line 40
    move-object v1, p0

    .line 41
    move-object p0, v3

    .line 42
    :goto_29
    if-nez p2, :cond_2e

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 45
    .line 46
    .line 47
    :cond_2e
    if-nez v1, :cond_31

    .line 48
    .line 49
    return-object p0

    .line 50
    :cond_31
    throw v1

    .line 51
    :cond_32
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 52
    .line 53
    const-string p1, "argClasses\' size is not equal to args\' size"

    .line 54
    .line 55
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p0
.end method

.method private static isSupportType(Ljava/lang/String;)Z
    .registers 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/engagelab/privates/common/utils/Utils;->supportImageType:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    .line 7
    return p0

    .line 8
    :catchall_7
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public static jsonArray2StringList(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p0, :cond_25

    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_e

    .line 13
    .line 14
    goto :goto_25

    .line 15
    :cond_e
    const/4 v1, 0x0

    .line 16
    :goto_f
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-ge v1, v2, :cond_25

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_22

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    :cond_22
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    goto :goto_f

    .line 38
    :cond_25
    :goto_25
    return-object v0
.end method

.method public static listToString(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1c

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    goto :goto_9

    .line 29
    :cond_1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-lez p0, :cond_2b

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    add-int/lit8 p0, p0, -0x1

    .line 40
    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0
.end method

.method public static providesDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .registers 3

    .line 1
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p0, :cond_18

    .line 7
    .line 8
    const-string v1, "window"

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Landroid/view/WindowManager;

    .line 15
    .line 16
    if-eqz p0, :cond_18

    .line 17
    .line 18
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 23
    .line 24
    .line 25
    :cond_18
    return-object v0
.end method

.method public static read1024(Ljava/io/InputStream;)[B
    .registers 5

    .line 1
    if-eqz p0, :cond_27

    .line 2
    .line 3
    :try_start_2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_21

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x400

    .line 9
    .line 10
    :try_start_9
    new-array v1, v1, [B

    .line 11
    .line 12
    :goto_b
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, -0x1

    .line 17
    if-eq v2, v3, :cond_19

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 21
    .line 22
    .line 23
    goto :goto_b

    .line 24
    :catchall_17
    move-exception p0

    .line 25
    goto :goto_23

    .line 26
    :cond_19
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 27
    .line 28
    .line 29
    move-result-object p0
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_17

    .line 30
    invoke-static {v0}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 31
    .line 32
    .line 33
    return-object p0

    .line 34
    :catchall_21
    move-exception p0

    .line 35
    const/4 v0, 0x0

    .line 36
    :goto_23
    invoke-static {v0}, Lcom/engagelab/privates/common/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 37
    .line 38
    .line 39
    throw p0

    .line 40
    :cond_27
    new-instance p0, Ljava/io/IOException;

    .line 41
    .line 42
    const-string v0, "InputStream is null"

    .line 43
    .line 44
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p0
.end method

.method public static readAvailable(Ljava/io/InputStream;)[B
    .registers 2

    .line 1
    if-eqz p0, :cond_c

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-array v0, v0, [B

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_c
    new-instance p0, Ljava/io/IOException;

    .line 14
    .line 15
    const-string v0, "InputStream is null"

    .line 16
    .line 17
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method

.method private static saveCurrentType(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/engagelab/privates/common/utils/Utils;->cacheCurrentType:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_d

    .line 8
    .line 9
    sget-object v0, Lcom/engagelab/privates/common/utils/Utils;->cacheCurrentType:Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    invoke-virtual {v0, p0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_d

    .line 12
    .line 13
    .line 14
    :catchall_d
    :cond_d
    return-void
.end method

.method public static setViewMargin(Landroid/content/Context;Landroid/view/View;ZIIII)Landroid/view/ViewGroup$LayoutParams;
    .registers 9

    .line 1
    if-eqz p0, :cond_3b

    .line 2
    .line 3
    if-eqz p1, :cond_3b

    .line 4
    .line 5
    :try_start_4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 10
    .line 11
    if-eqz v1, :cond_f

    .line 12
    .line 13
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 14
    .line 15
    goto :goto_15

    .line 16
    :cond_f
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 17
    .line 18
    invoke-direct {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    .line 20
    .line 21
    move-object v0, v1

    .line 22
    :goto_15
    if-eqz p2, :cond_27

    .line 23
    .line 24
    invoke-static {p0, p3}, Lcom/engagelab/privates/common/utils/Utils;->dpToPx(Landroid/content/Context;I)I

    .line 25
    .line 26
    .line 27
    move-result p3

    .line 28
    invoke-static {p0, p5}, Lcom/engagelab/privates/common/utils/Utils;->dpToPx(Landroid/content/Context;I)I

    .line 29
    .line 30
    .line 31
    move-result p5

    .line 32
    invoke-static {p0, p4}, Lcom/engagelab/privates/common/utils/Utils;->dpToPx(Landroid/content/Context;I)I

    .line 33
    .line 34
    .line 35
    move-result p4

    .line 36
    invoke-static {p0, p6}, Lcom/engagelab/privates/common/utils/Utils;->dpToPx(Landroid/content/Context;I)I

    .line 37
    .line 38
    .line 39
    move-result p6

    .line 40
    :cond_27
    invoke-virtual {v0, p3, p4, p5, p6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_2e

    .line 44
    .line 45
    .line 46
    return-object v0

    .line 47
    :catchall_2e
    move-exception p0

    .line 48
    new-instance p1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string p2, "[setViewMargin] failed. err: "

    .line 51
    .line 52
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string p2, "Utils"

    .line 56
    .line 57
    invoke-static {p0, p1, p2}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_3b
    const/4 p0, 0x0

    .line 61
    return-object p0
.end method

.method public static setWindowManager(Ljava/lang/String;Landroid/view/WindowManager;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    sget-object v0, Lcom/engagelab/privates/common/utils/Utils;->windowManagerMap:Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_35

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Ljava/util/Map$Entry;

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 42
    .line 43
    if-eq v2, p0, :cond_e

    .line 44
    .line 45
    if-eqz v1, :cond_31

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    .line 48
    .line 49
    .line 50
    :cond_31
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 51
    .line 52
    .line 53
    goto :goto_e

    .line 54
    :cond_35
    sget-object v0, Lcom/engagelab/privates/common/utils/Utils;->windowManagerMap:Ljava/util/HashMap;

    .line 55
    .line 56
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 61
    .line 62
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    return-void
.end method
