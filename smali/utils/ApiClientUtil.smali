###### Class utils.ApiClientUtil (utils.ApiClientUtil)
.class public Lutils/ApiClientUtil;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final JSON:Lr7/p;


# instance fields
.field private final baseUrl:Ljava/lang/String;

.field private final gson:Lq5/l;

.field private final http:Lr7/r;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Lr7/p;->e:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    const-string v0, "application/json; charset=utf-8"

    .line 4
    .line 5
    invoke-static {v0}, Ly1/j;->i(Ljava/lang/String;)Lr7/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lutils/ApiClientUtil;->JSON:Lr7/p;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-static {}, Lutils/ApiClientUtil;->defaultHttp()Lr7/r;

    move-result-object v0

    new-instance v1, Lq5/m;

    invoke-direct {v1}, Lq5/m;-><init>()V

    const/4 v2, 0x0

    .line 2
    iput-boolean v2, v1, Lq5/m;->j:Z

    .line 3
    invoke-virtual {v1}, Lq5/m;->a()Lq5/l;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lutils/ApiClientUtil;-><init>(Ljava/lang/String;Lr7/r;Lq5/l;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lr7/r;Lq5/l;)V
    .registers 4

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p1}, Lutils/ApiClientUtil;->trimTrailingSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lutils/ApiClientUtil;->baseUrl:Ljava/lang/String;

    if-eqz p2, :cond_c

    goto :goto_10

    .line 6
    :cond_c
    invoke-static {}, Lutils/ApiClientUtil;->defaultHttp()Lr7/r;

    move-result-object p2

    :goto_10
    iput-object p2, p0, Lutils/ApiClientUtil;->http:Lr7/r;

    if-eqz p3, :cond_15

    goto :goto_21

    .line 7
    :cond_15
    new-instance p1, Lq5/m;

    invoke-direct {p1}, Lq5/m;-><init>()V

    const/4 p2, 0x0

    .line 8
    iput-boolean p2, p1, Lq5/m;->j:Z

    .line 9
    invoke-virtual {p1}, Lq5/m;->a()Lq5/l;

    move-result-object p3

    :goto_21
    iput-object p3, p0, Lutils/ApiClientUtil;->gson:Lq5/l;

    return-void
.end method

.method public static synthetic a(Lw7/f;)Lr7/u;
    .registers 1

    .line 1
    invoke-static {p0}, Lutils/ApiClientUtil;->lambda$defaultHttp$1(Lr7/n;)Lr7/u;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lutils/ApiClientUtil;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Li8/c;
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lutils/ApiClientUtil;->lambda$postSignedWithFallbackConcurrent$2(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Li8/d;)Li8/c;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method private static defaultHttp()Lr7/r;
    .registers 5

    .line 1
    new-instance v0, Lr7/q;

    .line 2
    .line 3
    invoke-direct {v0}, Lr7/q;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Li8/a;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, v0, Lr7/q;->c:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 17
    .line 18
    const-string v2, "unit"

    .line 19
    .line 20
    invoke-static {v2, v1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    const-wide/16 v2, 0x6

    .line 24
    .line 25
    invoke-static {v2, v3, v1}, Ls7/b;->b(JLjava/util/concurrent/TimeUnit;)I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    iput v4, v0, Lr7/q;->r:I

    .line 30
    .line 31
    invoke-static {v2, v3, v1}, Ls7/b;->b(JLjava/util/concurrent/TimeUnit;)I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    iput v4, v0, Lr7/q;->s:I

    .line 36
    .line 37
    invoke-static {v2, v3, v1}, Ls7/b;->b(JLjava/util/concurrent/TimeUnit;)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    iput v1, v0, Lr7/q;->t:I

    .line 42
    .line 43
    new-instance v1, Lr7/r;

    .line 44
    .line 45
    invoke-direct {v1, v0}, Lr7/r;-><init>(Lr7/q;)V

    .line 46
    .line 47
    .line 48
    return-object v1
.end method

.method private doRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Li8/d;)Li8/c;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Li8/d;",
            ")",
            "Li8/c;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lutils/ApiClientUtil;->trimTrailingSlash(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    :try_start_5
    invoke-virtual {p0, p1, p2, p3}, Lutils/ApiClientUtil;->postSignedToBase(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    if-eqz p4, :cond_23

    .line 10
    .line 11
    invoke-interface {p4}, Li8/d;->a()Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_11

    .line 16
    .line 17
    goto :goto_23

    .line 18
    :cond_11
    new-instance p2, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string p3, "Business check failed"

    .line 24
    .line 25
    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    new-instance p2, Li8/c;

    .line 29
    .line 30
    invoke-direct {p2, v0}, Li8/c;-><init>(Z)V

    .line 31
    .line 32
    .line 33
    return-object p2

    .line 34
    :catch_21
    move-exception p2

    .line 35
    goto :goto_2c

    .line 36
    :cond_23
    :goto_23
    new-instance p2, Li8/c;

    .line 37
    .line 38
    sget-object p3, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 39
    .line 40
    const/4 p3, 0x1

    .line 41
    invoke-direct {p2, p3}, Li8/c;-><init>(Z)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2b} :catch_21

    .line 42
    .line 43
    .line 44
    return-object p2

    .line 45
    :goto_2c
    new-instance p3, Ljava/util/HashMap;

    .line 46
    .line 47
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 48
    .line 49
    .line 50
    new-instance p4, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, ": "

    .line 67
    .line 68
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    new-instance p1, Li8/c;

    .line 86
    .line 87
    invoke-direct {p1, v0}, Li8/c;-><init>(Z)V

    .line 88
    .line 89
    .line 90
    return-object p1
.end method

.method private static synthetic lambda$defaultHttp$0(Ljava/lang/String;)V
    .registers 2

    .line 1
    const-string v0, "\ud83c\udf10ApiClient"

    .line 2
    .line 3
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static lambda$defaultHttp$1(Lr7/n;)Lr7/u;
    .registers 6

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Lw7/f;

    .line 3
    .line 4
    iget-object v0, v0, Lw7/f;->e:Lcom/google/android/gms/common/internal/g;

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v2, "\u27a1\ufe0f "

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v2, v0, Lcom/google/android/gms/common/internal/g;->d:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v2, Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, " "

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v3, v0, Lcom/google/android/gms/common/internal/g;->b:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v3, Lr7/m;

    .line 28
    .line 29
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v4, "\ud83c\udf10ApiClient"

    .line 37
    .line 38
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    check-cast p0, Lw7/f;

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lw7/f;->b(Lcom/google/android/gms/common/internal/g;)Lr7/u;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v1, "\u2b05\ufe0f "

    .line 50
    .line 51
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget v1, p0, Lr7/u;->d:I

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    return-object p0
.end method

.method private synthetic lambda$postSignedWithFallbackConcurrent$2(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Li8/d;)Li8/c;
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lutils/ApiClientUtil;->doRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Li8/d;)Li8/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method private static makeUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    if-nez p0, :cond_3

    .line 2
    .line 3
    return-object p1

    .line 4
    :cond_3
    if-eqz p1, :cond_3e

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_c

    .line 11
    .line 12
    goto :goto_3e

    .line 13
    :cond_c
    const-string v0, "http://"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_3d

    .line 20
    .line 21
    const-string v0, "https://"

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1d

    .line 28
    .line 29
    goto :goto_3d

    .line 30
    :cond_1d
    const-string v0, "/"

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_38

    .line 37
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0

    .line 57
    :cond_38
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0

    .line 62
    :cond_3d
    :goto_3d
    return-object p1

    .line 63
    :cond_3e
    :goto_3e
    return-object p0
.end method

.method private static trimTrailingSlash(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    if-nez p0, :cond_4

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_4
    const-string v0, "/"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_17

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    add-int/lit8 v0, v0, -0x1

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :cond_17
    return-object p0
.end method


# virtual methods
.method public getBaseUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lutils/ApiClientUtil;->baseUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public postSigned(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lutils/ApiClientUtil;->baseUrl:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    invoke-virtual {p0, v0, p1, p2}, Lutils/ApiClientUtil;->postSignedToBase(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string p2, "baseUrl is null"

    .line 13
    .line 14
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1
.end method

.method public postSignedToBase(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lutils/ApiClientUtil;->trimTrailingSlash(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1, p2}, Lutils/ApiClientUtil;->makeUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance p2, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    if-eqz p3, :cond_12

    .line 15
    .line 16
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 17
    .line 18
    .line 19
    :cond_12
    const-string p3, "random"

    .line 20
    .line 21
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    instance-of v1, v0, Ljava/lang/String;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    if-eqz v1, :cond_25

    .line 29
    .line 30
    check-cast v0, Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_67

    .line 37
    .line 38
    :cond_25
    sget-object v0, Li8/m;->a:Ljava/util/HashSet;

    .line 39
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const/16 v1, 0x20

    .line 43
    .line 44
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 45
    .line 46
    .line 47
    new-instance v3, Ljava/util/Random;

    .line 48
    .line 49
    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 50
    .line 51
    .line 52
    move v4, v2

    .line 53
    :goto_34
    if-ge v4, v1, :cond_60

    .line 54
    .line 55
    const-string v5, "xxxxxxxxxxxx4xxxyxxxxxxxxxxxxxxx"

    .line 56
    .line 57
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    const/16 v6, 0x78

    .line 62
    .line 63
    if-eq v5, v6, :cond_49

    .line 64
    .line 65
    const/16 v7, 0x79

    .line 66
    .line 67
    if-ne v5, v7, :cond_45

    .line 68
    .line 69
    goto :goto_49

    .line 70
    :cond_45
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    goto :goto_5d

    .line 74
    :cond_49
    :goto_49
    const/16 v7, 0x10

    .line 75
    .line 76
    invoke-virtual {v3, v7}, Ljava/util/Random;->nextInt(I)I

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    if-ne v5, v6, :cond_52

    .line 81
    .line 82
    goto :goto_56

    .line 83
    :cond_52
    and-int/lit8 v5, v7, 0x3

    .line 84
    .line 85
    or-int/lit8 v7, v5, 0x8

    .line 86
    .line 87
    :goto_56
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    :goto_5d
    add-int/lit8 v4, v4, 0x1

    .line 95
    .line 96
    goto :goto_34

    .line 97
    :cond_60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {p2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    :cond_67
    sget-object p3, Li8/m;->a:Ljava/util/HashSet;

    .line 105
    .line 106
    new-instance p3, Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 113
    .line 114
    .line 115
    invoke-static {p3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 116
    .line 117
    .line 118
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 119
    .line 120
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    move v3, v2

    .line 128
    :goto_7f
    if-ge v3, v1, :cond_ab

    .line 129
    .line 130
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    add-int/lit8 v3, v3, 0x1

    .line 135
    .line 136
    check-cast v4, Ljava/lang/String;

    .line 137
    .line 138
    sget-object v5, Li8/m;->a:Ljava/util/HashSet;

    .line 139
    .line 140
    invoke-virtual {v5, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v5

    .line 144
    if-eqz v5, :cond_92

    .line 145
    .line 146
    goto :goto_7f

    .line 147
    :cond_92
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    if-nez v5, :cond_99

    .line 152
    .line 153
    goto :goto_7f

    .line 154
    :cond_99
    instance-of v6, v5, Ljava/lang/String;

    .line 155
    .line 156
    if-eqz v6, :cond_a7

    .line 157
    .line 158
    move-object v6, v5

    .line 159
    check-cast v6, Ljava/lang/String;

    .line 160
    .line 161
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 162
    .line 163
    .line 164
    move-result v6

    .line 165
    if-eqz v6, :cond_a7

    .line 166
    .line 167
    goto :goto_7f

    .line 168
    :cond_a7
    invoke-virtual {v0, v4, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    goto :goto_7f

    .line 172
    :cond_ab
    sget-object p3, Li8/m;->b:Lq5/l;

    .line 173
    .line 174
    invoke-virtual {p3, v0}, Lq5/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p3

    .line 178
    :try_start_b1
    const-string v0, "MD5"

    .line 179
    .line 180
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 185
    .line 186
    invoke-virtual {p3, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 187
    .line 188
    .line 189
    move-result-object p3

    .line 190
    invoke-virtual {v0, p3}, Ljava/security/MessageDigest;->digest([B)[B

    .line 191
    .line 192
    .line 193
    move-result-object p3

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    array-length v1, p3

    .line 197
    mul-int/lit8 v1, v1, 0x2

    .line 198
    .line 199
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 200
    .line 201
    .line 202
    array-length v1, p3

    .line 203
    move v3, v2

    .line 204
    :goto_cb
    const/4 v4, 0x1

    .line 205
    if-ge v3, v1, :cond_eb

    .line 206
    .line 207
    aget-byte v5, p3, v3

    .line 208
    .line 209
    and-int/lit16 v5, v5, 0xff

    .line 210
    .line 211
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v5

    .line 215
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 216
    .line 217
    .line 218
    move-result v6

    .line 219
    if-ne v6, v4, :cond_e5

    .line 220
    .line 221
    const/16 v4, 0x30

    .line 222
    .line 223
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    goto :goto_e5

    .line 227
    :catch_e2
    move-exception p1

    .line 228
    goto/16 :goto_19e

    .line 229
    .line 230
    :cond_e5
    :goto_e5
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    add-int/lit8 v3, v3, 0x1

    .line 234
    .line 235
    goto :goto_cb

    .line 236
    :cond_eb
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p3

    .line 240
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 241
    .line 242
    invoke-virtual {p3, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object p3
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_f5} :catch_e2

    .line 246
    new-instance v0, Ljava/util/HashMap;

    .line 247
    .line 248
    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 249
    .line 250
    .line 251
    const-string p2, "signature"

    .line 252
    .line 253
    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 257
    .line 258
    .line 259
    move-result-wide p2

    .line 260
    const-wide/16 v5, 0x3e8

    .line 261
    .line 262
    div-long/2addr p2, v5

    .line 263
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 264
    .line 265
    .line 266
    move-result-object p2

    .line 267
    const-string p3, "timestamp"

    .line 268
    .line 269
    invoke-virtual {v0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    iget-object p2, p0, Lutils/ApiClientUtil;->gson:Lq5/l;

    .line 273
    .line 274
    invoke-virtual {p2, v0}, Lq5/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object p2

    .line 278
    sget-object p3, Lutils/ApiClientUtil;->JSON:Lr7/p;

    .line 279
    .line 280
    invoke-static {p2, p3}, Lb0/d;->c(Ljava/lang/String;Lr7/p;)Lb0/d;

    .line 281
    .line 282
    .line 283
    move-result-object p2

    .line 284
    new-instance p3, Lcom/google/firebase/messaging/z;

    .line 285
    .line 286
    invoke-direct {p3}, Lcom/google/firebase/messaging/z;-><init>()V

    .line 287
    .line 288
    .line 289
    invoke-virtual {p3, p1}, Lcom/google/firebase/messaging/z;->g(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    const-string v0, "POST"

    .line 293
    .line 294
    invoke-virtual {p3, v0, p2}, Lcom/google/firebase/messaging/z;->d(Ljava/lang/String;Lb0/d;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {p3}, Lcom/google/firebase/messaging/z;->a()Lcom/google/android/gms/common/internal/g;

    .line 298
    .line 299
    .line 300
    move-result-object p2

    .line 301
    iget-object p3, p0, Lutils/ApiClientUtil;->http:Lr7/r;

    .line 302
    .line 303
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 304
    .line 305
    .line 306
    new-instance v0, Lv7/i;

    .line 307
    .line 308
    invoke-direct {v0, p3, p2}, Lv7/i;-><init>(Lr7/r;Lcom/google/android/gms/common/internal/g;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0}, Lv7/i;->f()Lr7/u;

    .line 312
    .line 313
    .line 314
    move-result-object p2

    .line 315
    iget p3, p2, Lr7/u;->d:I

    .line 316
    .line 317
    :try_start_13c
    iget-object v0, p2, Lr7/u;->g:Lr7/w;

    .line 318
    .line 319
    if-eqz v0, :cond_147

    .line 320
    .line 321
    invoke-virtual {v0}, Lr7/w;->o()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    goto :goto_149

    .line 326
    :catchall_145
    move-exception p1

    .line 327
    goto :goto_195

    .line 328
    :cond_147
    const-string v0, ""

    .line 329
    .line 330
    :goto_149
    const-string v1, "\ud83c\udf10ApiClient"

    .line 331
    .line 332
    new-instance v3, Ljava/lang/StringBuilder;

    .line 333
    .line 334
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    .line 336
    .line 337
    const-string v5, "POST "

    .line 338
    .line 339
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    const-string p1, " -> HTTP "

    .line 346
    .line 347
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object p1

    .line 357
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_167
    .catchall {:try_start_13c .. :try_end_167} :catchall_145

    .line 358
    .line 359
    .line 360
    const/16 p1, 0xc8

    .line 361
    .line 362
    if-gt p1, p3, :cond_170

    .line 363
    .line 364
    const/16 p1, 0x12c

    .line 365
    .line 366
    if-ge p3, p1, :cond_170

    .line 367
    .line 368
    move v2, v4

    .line 369
    :cond_170
    if-eqz v2, :cond_176

    .line 370
    .line 371
    invoke-virtual {p2}, Lr7/u;->close()V

    .line 372
    .line 373
    .line 374
    return-object v0

    .line 375
    :cond_176
    :try_start_176
    new-instance p1, Ljava/lang/RuntimeException;

    .line 376
    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    .line 378
    .line 379
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 380
    .line 381
    .line 382
    const-string v2, "HTTP "

    .line 383
    .line 384
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    const-string p3, " : "

    .line 391
    .line 392
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object p3

    .line 402
    invoke-direct {p1, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    throw p1
    :try_end_195
    .catchall {:try_start_176 .. :try_end_195} :catchall_145

    .line 406
    :goto_195
    :try_start_195
    invoke-virtual {p2}, Lr7/u;->close()V
    :try_end_198
    .catchall {:try_start_195 .. :try_end_198} :catchall_199

    .line 407
    .line 408
    .line 409
    goto :goto_19d

    .line 410
    :catchall_199
    move-exception p2

    .line 411
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 412
    .line 413
    .line 414
    :goto_19d
    throw p1

    .line 415
    :goto_19e
    new-instance p2, Ljava/lang/RuntimeException;

    .line 416
    .line 417
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 418
    .line 419
    .line 420
    throw p2
.end method

.method public postSignedWithFallbackConcurrent(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Li8/d;I)Li8/c;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Li8/d;",
            "I)",
            "Li8/c;"
        }
    .end annotation

    .line 1
    invoke-static {p5}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object p4

    .line 5
    new-instance p5, Ljava/util/concurrent/ExecutorCompletionService;

    .line 6
    .line 7
    invoke-direct {p5, p4}, Ljava/util/concurrent/ExecutorCompletionService;-><init>(Ljava/util/concurrent/Executor;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_22

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/lang/String;

    .line 25
    .line 26
    new-instance v2, Li8/b;

    .line 27
    .line 28
    invoke-direct {v2, p0, v1, p2, p3}, Li8/b;-><init>(Lutils/ApiClientUtil;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p5, v2}, Ljava/util/concurrent/ExecutorCompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 32
    .line 33
    .line 34
    goto :goto_d

    .line 35
    :cond_22
    const/4 p2, 0x0

    .line 36
    move p3, p2

    .line 37
    :goto_24
    :try_start_24
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-ge p3, v0, :cond_46

    .line 42
    .line 43
    invoke-virtual {p5}, Ljava/util/concurrent/ExecutorCompletionService;->take()Ljava/util/concurrent/Future;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Li8/c;

    .line 52
    .line 53
    iget-boolean v1, v0, Li8/c;->a:Z

    .line 54
    .line 55
    if-eqz v1, :cond_43

    .line 56
    .line 57
    invoke-interface {p4}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_3b} :catch_41
    .catchall {:try_start_24 .. :try_end_3b} :catchall_3f

    .line 58
    .line 59
    .line 60
    invoke-interface {p4}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 61
    .line 62
    .line 63
    return-object v0

    .line 64
    :catchall_3f
    move-exception p1

    .line 65
    goto :goto_66

    .line 66
    :catch_41
    move-exception p1

    .line 67
    goto :goto_4a

    .line 68
    :cond_43
    add-int/lit8 p3, p3, 0x1

    .line 69
    .line 70
    goto :goto_24

    .line 71
    :cond_46
    :goto_46
    invoke-interface {p4}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 72
    .line 73
    .line 74
    goto :goto_54

    .line 75
    :goto_4a
    :try_start_4a
    const-string p3, "\u9a8c\u8bc1\u5730\u5740\u88ab\u5c01"

    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catchall {:try_start_4a .. :try_end_53} :catchall_3f

    .line 82
    .line 83
    .line 84
    goto :goto_46

    .line 85
    :goto_54
    new-instance p1, Ljava/util/HashMap;

    .line 86
    .line 87
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string p3, "all"

    .line 91
    .line 92
    const-string p4, "\u5168\u90e8\u5931\u8d25"

    .line 93
    .line 94
    invoke-virtual {p1, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    new-instance p1, Li8/c;

    .line 98
    .line 99
    invoke-direct {p1, p2}, Li8/c;-><init>(Z)V

    .line 100
    .line 101
    .line 102
    return-object p1

    .line 103
    :goto_66
    invoke-interface {p4}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 104
    .line 105
    .line 106
    throw p1
.end method

.method public postSignedWithFallbackSequential(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Li8/d;)Li8/c;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Li8/d;",
            ")",
            "Li8/c;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz p1, :cond_68

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_f

    .line 14
    .line 15
    goto :goto_68

    .line 16
    :cond_f
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_62

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v2}, Lutils/ApiClientUtil;->trimTrailingSlash(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    :try_start_23
    invoke-virtual {p0, v2, p2, p3}, Lutils/ApiClientUtil;->postSignedToBase(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    if-eqz p4, :cond_37

    .line 40
    .line 41
    invoke-interface {p4}, Li8/d;->a()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_2f

    .line 46
    .line 47
    goto :goto_37

    .line 48
    :cond_2f
    const-string v3, "Business check failed"

    .line 49
    .line 50
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    goto :goto_13

    .line 54
    :catch_35
    move-exception v3

    .line 55
    goto :goto_3e

    .line 56
    :cond_37
    :goto_37
    new-instance v3, Li8/c;

    .line 57
    .line 58
    const/4 v4, 0x1

    .line 59
    invoke-direct {v3, v4}, Li8/c;-><init>(Z)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_3d} :catch_35

    .line 60
    .line 61
    .line 62
    return-object v3

    .line 63
    :goto_3e
    new-instance v4, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v5, ": "

    .line 80
    .line 81
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    goto :goto_13

    .line 99
    :cond_62
    new-instance p1, Li8/c;

    .line 100
    .line 101
    invoke-direct {p1, v1}, Li8/c;-><init>(Z)V

    .line 102
    .line 103
    .line 104
    return-object p1

    .line 105
    :cond_68
    :goto_68
    const-string p1, "all"

    .line 106
    .line 107
    const-string p2, "empty baseUrls"

    .line 108
    .line 109
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    new-instance p1, Li8/c;

    .line 113
    .line 114
    invoke-direct {p1, v1}, Li8/c;-><init>(Z)V

    .line 115
    .line 116
    .line 117
    return-object p1
.end method

###### Class i8.b (i8.b)
.class public final synthetic Li8/b;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lutils/ApiClientUtil;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lutils/ApiClientUtil;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Li8/b;->a:Lutils/ApiClientUtil;

    .line 5
    .line 6
    iput-object p2, p0, Li8/b;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Li8/b;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Li8/b;->d:Ljava/util/Map;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 5

    .line 1
    iget-object v0, p0, Li8/b;->c:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Li8/b;->d:Ljava/util/Map;

    .line 4
    .line 5
    iget-object v2, p0, Li8/b;->a:Lutils/ApiClientUtil;

    .line 6
    .line 7
    iget-object v3, p0, Li8/b;->b:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v2, v3, v0, v1}, Lutils/ApiClientUtil;->b(Lutils/ApiClientUtil;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Li8/c;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method
