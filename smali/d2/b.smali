###### Class d2.b (d2.b)
.class public final Ld2/b;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Ld2/b;

.field public static b:Z

.field public static final c:Ljava/util/ArrayList;

.field public static final d:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ld2/b;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ld2/b;->a:Ld2/b;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Ld2/b;->c:Ljava/util/ArrayList;

    .line 14
    .line 15
    new-instance v0, Ljava/util/HashSet;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Ld2/b;->d:Ljava/util/HashSet;

    .line 21
    .line 22
    return-void
.end method

.method public static final b(Ljava/util/ArrayList;)V
    .registers 4

    .line 1
    const-class v0, Ld2/b;

    .line 2
    .line 3
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_9

    .line 8
    .line 9
    goto :goto_33

    .line 10
    :cond_9
    :try_start_9
    const-string v1, "events"

    .line 11
    .line 12
    invoke-static {v1, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    sget-boolean v1, Ld2/b;->b:Z

    .line 16
    .line 17
    if-nez v1, :cond_13

    .line 18
    .line 19
    goto :goto_33

    .line 20
    :cond_13
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :cond_17
    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_33

    .line 29
    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ly1/e;

    .line 35
    .line 36
    sget-object v2, Ld2/b;->d:Ljava/util/HashSet;

    .line 37
    .line 38
    iget-object v1, v1, Ly1/e;->e:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_17

    .line 45
    .line 46
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V
    :try_end_30
    .catchall {:try_start_9 .. :try_end_30} :catchall_31

    .line 47
    .line 48
    .line 49
    goto :goto_17

    .line 50
    :catchall_31
    move-exception p0

    .line 51
    goto :goto_34

    .line 52
    :cond_33
    :goto_33
    return-void

    .line 53
    :goto_34
    invoke-static {p0, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .registers 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 3
    .line 4
    .line 5
    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_81

    .line 6
    if-eqz v0, :cond_9

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :cond_9
    :try_start_9
    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-static {v0, v1}, Lq2/w;->k(Ljava/lang/String;Z)Lq2/t;

    .line 16
    .line 17
    .line 18
    move-result-object v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_12} :catch_83
    .catchall {:try_start_9 .. :try_end_12} :catchall_53

    .line 19
    if-nez v0, :cond_16

    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :cond_16
    :try_start_16
    iget-object v0, v0, Lq2/t;->l:Ljava/lang/String;

    .line 24
    .line 25
    if-eqz v0, :cond_83

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-lez v1, :cond_83

    .line 32
    .line 33
    new-instance v1, Lorg/json/JSONObject;

    .line 34
    .line 35
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    sget-object v0, Ld2/b;->c:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    :cond_2e
    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_83

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    if-eqz v3, :cond_2e

    .line 64
    .line 65
    const-string v4, "is_deprecated_event"

    .line 66
    .line 67
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-eqz v4, :cond_55

    .line 72
    .line 73
    sget-object v3, Ld2/b;->d:Ljava/util/HashSet;

    .line 74
    .line 75
    const-string v4, "key"

    .line 76
    .line 77
    invoke-static {v4, v2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    goto :goto_2e

    .line 84
    :catchall_53
    move-exception v0

    .line 85
    goto :goto_7c

    .line 86
    :cond_55
    const-string v4, "deprecated_param"

    .line 87
    .line 88
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    new-instance v4, Ld2/a;

    .line 93
    .line 94
    const-string v5, "key"

    .line 95
    .line 96
    invoke-static {v5, v2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    new-instance v5, Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 105
    .line 106
    .line 107
    iput-object v2, v4, Ld2/a;->a:Ljava/lang/String;

    .line 108
    .line 109
    iput-object v5, v4, Ld2/a;->b:Ljava/util/ArrayList;

    .line 110
    .line 111
    if-eqz v3, :cond_76

    .line 112
    .line 113
    invoke-static {v3}, Lq2/g0;->g(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    iput-object v2, v4, Ld2/a;->b:Ljava/util/ArrayList;

    .line 118
    .line 119
    :cond_76
    sget-object v2, Ld2/b;->c:Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_7b} :catch_83
    .catchall {:try_start_16 .. :try_end_7b} :catchall_53

    .line 122
    .line 123
    .line 124
    goto :goto_2e

    .line 125
    :goto_7c
    :try_start_7c
    invoke-static {v0, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_81

    .line 126
    .line 127
    .line 128
    monitor-exit p0

    .line 129
    return-void

    .line 130
    :catchall_81
    move-exception v0

    .line 131
    goto :goto_85

    .line 132
    :catch_83
    :cond_83
    monitor-exit p0

    .line 133
    return-void

    .line 134
    :goto_85
    :try_start_85
    monitor-exit p0
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_81

    .line 135
    throw v0
.end method
