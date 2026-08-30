###### Class com.google.firebase.analytics.connector.internal.AnalyticsConnectorRegistrar (com.google.firebase.analytics.connector.internal.AnalyticsConnectorRegistrar)
.class public Lcom/google/firebase/analytics/connector/internal/AnalyticsConnectorRegistrar;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


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

.method public static synthetic lambda$getComponents$0(Lv4/c;)Lcom/google/firebase/analytics/connector/AnalyticsConnector;
    .registers 4

    .line 1
    const-class v0, Lt4/g;

    .line 2
    .line 3
    invoke-interface {p0, v0}, Lv4/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lt4/g;

    .line 8
    .line 9
    const-class v1, Landroid/content/Context;

    .line 10
    .line 11
    invoke-interface {p0, v1}, Lv4/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroid/content/Context;

    .line 16
    .line 17
    const-class v2, Ld5/d;

    .line 18
    .line 19
    invoke-interface {p0, v2}, Lv4/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Ld5/d;

    .line 24
    .line 25
    invoke-static {v0, v1, p0}, Lcom/google/firebase/analytics/connector/AnalyticsConnectorImpl;->getInstance(Lt4/g;Landroid/content/Context;Ld5/d;)Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lv4/b;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    .line 2
    .line 3
    invoke-static {v0}, Lv4/b;->a(Ljava/lang/Class;)Lv4/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Lt4/g;

    .line 8
    .line 9
    invoke-static {v1}, Lv4/h;->a(Ljava/lang/Class;)Lv4/h;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lv4/a;->a(Lv4/h;)V

    .line 14
    .line 15
    .line 16
    const-class v1, Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {v1}, Lv4/h;->a(Ljava/lang/Class;)Lv4/h;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lv4/a;->a(Lv4/h;)V

    .line 23
    .line 24
    .line 25
    const-class v1, Ld5/d;

    .line 26
    .line 27
    invoke-static {v1}, Lv4/h;->a(Ljava/lang/Class;)Lv4/h;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lv4/a;->a(Lv4/h;)V

    .line 32
    .line 33
    .line 34
    new-instance v1, Lcom/google/firebase/analytics/connector/internal/zzc;

    .line 35
    .line 36
    invoke-direct {v1}, Lcom/google/firebase/analytics/connector/internal/zzc;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v1, v0, Lv4/a;->f:Lv4/d;

    .line 40
    .line 41
    iget v1, v0, Lv4/a;->d:I

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    const/4 v3, 0x1

    .line 45
    if-nez v1, :cond_30

    .line 46
    .line 47
    move v1, v3

    .line 48
    goto :goto_31

    .line 49
    :cond_30
    move v1, v2

    .line 50
    :goto_31
    if-eqz v1, :cond_4d

    .line 51
    .line 52
    const/4 v1, 0x2

    .line 53
    iput v1, v0, Lv4/a;->d:I

    .line 54
    .line 55
    invoke-virtual {v0}, Lv4/a;->b()Lv4/b;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const-string v4, "fire-analytics"

    .line 60
    .line 61
    const-string v5, "22.1.2"

    .line 62
    .line 63
    invoke-static {v4, v5}, Lm1/j;->e(Ljava/lang/String;Ljava/lang/String;)Lv4/b;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    new-array v1, v1, [Lv4/b;

    .line 68
    .line 69
    aput-object v0, v1, v2

    .line 70
    .line 71
    aput-object v4, v1, v3

    .line 72
    .line 73
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    return-object v0

    .line 78
    :cond_4d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 79
    .line 80
    const-string v1, "Instantiation type has already been set."

    .line 81
    .line 82
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw v0
.end method

###### Class com.google.firebase.analytics.connector.internal.zzc (com.google.firebase.analytics.connector.internal.zzc)
.class public final synthetic Lcom/google/firebase/analytics/connector/internal/zzc;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lv4/d;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final create(Lv4/c;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/google/firebase/analytics/connector/internal/AnalyticsConnectorRegistrar;->lambda$getComponents$0(Lv4/c;)Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
