###### Class j2.g (j2.g)
.class public final Lj2/g;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Lj2/g;

.field public static b:Z

.field public static c:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lj2/g;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lj2/g;->a:Lj2/g;

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lj2/g;->c:Ljava/util/HashMap;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 9

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    const-string v1, "key"

    .line 4
    .line 5
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_b

    .line 10
    .line 11
    goto :goto_59

    .line 12
    :cond_b
    :try_start_b
    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-static {v2, v3}, Lq2/w;->k(Ljava/lang/String;Z)Lq2/t;

    .line 18
    .line 19
    .line 20
    move-result-object v2
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_54

    .line 21
    if-nez v2, :cond_17

    .line 22
    .line 23
    goto :goto_59

    .line 24
    :cond_17
    :try_start_17
    new-instance v4, Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 27
    .line 28
    .line 29
    sput-object v4, Lj2/g;->c:Ljava/util/HashMap;

    .line 30
    .line 31
    iget-object v2, v2, Lq2/t;->p:Lorg/json/JSONArray;

    .line 32
    .line 33
    if-eqz v2, :cond_59

    .line 34
    .line 35
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_59

    .line 40
    .line 41
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    :goto_2c
    if-ge v3, v4, :cond_59

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    if-eqz v6, :cond_56

    .line 60
    .line 61
    if-eqz v7, :cond_56

    .line 62
    .line 63
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    if-eqz v6, :cond_56

    .line 72
    .line 73
    invoke-static {v5}, Lq2/g0;->f(Lorg/json/JSONArray;)Ljava/util/HashSet;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    if-eqz v5, :cond_56

    .line 78
    .line 79
    sget-object v7, Lj2/g;->c:Ljava/util/HashMap;

    .line 80
    .line 81
    invoke-virtual {v7, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_53} :catch_59
    .catchall {:try_start_17 .. :try_end_53} :catchall_54

    .line 82
    .line 83
    .line 84
    goto :goto_56

    .line 85
    :catchall_54
    move-exception v0

    .line 86
    goto :goto_5a

    .line 87
    :cond_56
    :goto_56
    add-int/lit8 v3, v3, 0x1

    .line 88
    .line 89
    goto :goto_2c

    .line 90
    :catch_59
    :cond_59
    :goto_59
    return-void

    .line 91
    :goto_5a
    invoke-static {v0, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    return-void
.end method
