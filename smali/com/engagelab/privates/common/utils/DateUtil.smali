###### Class com.engagelab.privates.common.utils.DateUtil (com.engagelab.privates.common.utils.DateUtil)
.class public Lcom/engagelab/privates/common/utils/DateUtil;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/engagelab/privates/common/utils/DateUtil$a;
    }
.end annotation


# static fields
.field public static PATTERN_DATETIME_FILENAME:Ljava/lang/String;

.field private static volatile dateFormatThreadLocal:Lcom/engagelab/privates/common/utils/DateUtil$a;

.field private static final lock:Ljava/lang/Object;

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


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/engagelab/privates/common/utils/DateUtil;->lock:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/engagelab/privates/common/utils/DateUtil;->sdfMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    const-string v0, "yyyyMMdd_HHmm"

    .line 16
    .line 17
    sput-object v0, Lcom/engagelab/privates/common/utils/DateUtil;->PATTERN_DATETIME_FILENAME:Ljava/lang/String;

    .line 18
    .line 19
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

.method public static getSdf(Ljava/lang/String;)Ljava/text/SimpleDateFormat;
    .registers 4

    .line 1
    sget-object v0, Lcom/engagelab/privates/common/utils/DateUtil;->sdfMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/ThreadLocal;

    .line 8
    .line 9
    if-nez v0, :cond_38

    .line 10
    .line 11
    sget-object v1, Lcom/engagelab/privates/common/utils/DateUtil;->lock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v1

    .line 14
    :try_start_d
    sget-object v0, Lcom/engagelab/privates/common/utils/DateUtil;->sdfMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/ThreadLocal;

    .line 21
    .line 22
    if-nez v0, :cond_34

    .line 23
    .line 24
    new-instance v0, Lcom/engagelab/privates/common/utils/DateUtil$a;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/engagelab/privates/common/utils/DateUtil$a;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/engagelab/privates/common/utils/DateUtil;->dateFormatThreadLocal:Lcom/engagelab/privates/common/utils/DateUtil$a;

    .line 30
    .line 31
    sget-object v0, Lcom/engagelab/privates/common/utils/DateUtil;->sdfMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 32
    .line 33
    sget-object v2, Lcom/engagelab/privates/common/utils/DateUtil;->dateFormatThreadLocal:Lcom/engagelab/privates/common/utils/DateUtil$a;

    .line 34
    .line 35
    invoke-virtual {v0, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    sput-object v0, Lcom/engagelab/privates/common/utils/DateUtil;->dateFormatThreadLocal:Lcom/engagelab/privates/common/utils/DateUtil$a;

    .line 40
    .line 41
    sget-object v0, Lcom/engagelab/privates/common/utils/DateUtil;->sdfMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 42
    .line 43
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    check-cast p0, Ljava/lang/ThreadLocal;

    .line 48
    .line 49
    move-object v0, p0

    .line 50
    goto :goto_34

    .line 51
    :catchall_32
    move-exception p0

    .line 52
    goto :goto_36

    .line 53
    :cond_34
    :goto_34
    monitor-exit v1

    .line 54
    goto :goto_38

    .line 55
    :goto_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_d .. :try_end_37} :catchall_32

    .line 56
    throw p0

    .line 57
    :cond_38
    :goto_38
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    check-cast p0, Ljava/text/SimpleDateFormat;

    .line 62
    .line 63
    return-object p0
.end method

.method public static getTodayDateTime()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "yyyyMMddHHmmss"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/engagelab/privates/common/utils/DateUtil;->getSdf(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/util/Date;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public static getTodayDateTimeForFilename()Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/engagelab/privates/common/utils/DateUtil;->PATTERN_DATETIME_FILENAME:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/engagelab/privates/common/utils/DateUtil;->getSdf(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/util/Date;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public static getTodayDateTimeForReport()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "yyyy-MM-dd_HH:mm:ss"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/engagelab/privates/common/utils/DateUtil;->getSdf(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/util/Date;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public static isDaysAgo(Ljava/util/Date;I)Z
    .registers 6

    .line 1
    if-nez p0, :cond_4

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 18
    .line 19
    .line 20
    neg-int p0, p1

    .line 21
    const/4 p1, 0x6

    .line 22
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->roll(II)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0
.end method

.method public static parseDateInFilename(Ljava/lang/String;)Ljava/util/Date;
    .registers 2

    .line 1
    sget-object v0, Lcom/engagelab/privates/common/utils/DateUtil;->PATTERN_DATETIME_FILENAME:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/engagelab/privates/common/utils/DateUtil;->getSdf(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :try_start_6
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 8
    .line 9
    .line 10
    move-result-object p0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_b

    .line 11
    return-object p0

    .line 12
    :catchall_b
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method

###### Class com.engagelab.privates.common.utils.DateUtil.a (com.engagelab.privates.common.utils.DateUtil$a)
.class public Lcom/engagelab/privates/common/utils/DateUtil$a;
.super Ljava/lang/ThreadLocal;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/engagelab/privates/common/utils/DateUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/text/SimpleDateFormat;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/engagelab/privates/common/utils/DateUtil$a;->a:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()Ljava/text/SimpleDateFormat;
    .registers 4

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/engagelab/privates/common/utils/DateUtil$a;->a:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/engagelab/privates/common/utils/DateUtil$a;->a()Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
