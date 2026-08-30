###### Class n2.b (n2.b)
.class public final Ln2/b;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Ln2/b;

.field public static b:Z

.field public static final c:Ljava/util/ArrayList;

.field public static final d:Ljava/util/concurrent/CopyOnWriteArraySet;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ln2/b;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ln2/b;->a:Ln2/b;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Ln2/b;->c:Ljava/util/ArrayList;

    .line 14
    .line 15
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Ln2/b;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    .line 1
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

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
    goto :goto_58

    .line 9
    :cond_8
    :try_start_8
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    sget-object v2, Ln2/b;->c:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x0

    .line 21
    :cond_14
    :goto_14
    if-ge v3, v2, :cond_58

    .line 22
    .line 23
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    add-int/lit8 v3, v3, 0x1

    .line 28
    .line 29
    check-cast v4, Ln2/a;

    .line 30
    .line 31
    if-nez v4, :cond_21

    .line 32
    .line 33
    goto :goto_14

    .line 34
    :cond_21
    iget-object v5, v4, Ln2/a;->a:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {p1, v5}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_14

    .line 41
    .line 42
    iget-object v5, v4, Ln2/a;->b:Ljava/util/HashMap;

    .line 43
    .line 44
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    :cond_33
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    if-eqz v6, :cond_14

    .line 57
    .line 58
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    check-cast v6, Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {p2, v6}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    if-eqz v7, :cond_33

    .line 69
    .line 70
    iget-object p1, v4, Ln2/a;->b:Ljava/util/HashMap;

    .line 71
    .line 72
    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Ljava/lang/String;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_4d} :catch_50
    .catchall {:try_start_8 .. :try_end_4d} :catchall_4e

    .line 77
    .line 78
    return-object p1

    .line 79
    :catchall_4e
    move-exception p1

    .line 80
    goto :goto_59

    .line 81
    :catch_50
    move-exception p1

    .line 82
    :try_start_51
    const-string p2, "n2.b"

    .line 83
    .line 84
    const-string v0, "getMatchedRuleType failed"

    .line 85
    .line 86
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_58
    .catchall {:try_start_51 .. :try_end_58} :catchall_4e

    .line 87
    .line 88
    .line 89
    :cond_58
    :goto_58
    return-object v1

    .line 90
    :goto_59
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    return-object v1
.end method

.method public final b()V
    .registers 10

    .line 1
    sget-object v0, Ln2/b;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2
    .line 3
    sget-object v1, Ln2/b;->c:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_c

    .line 10
    .line 11
    goto/16 :goto_7a

    .line 12
    .line 13
    :cond_c
    :try_start_c
    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-static {v2, v3}, Lq2/w;->k(Ljava/lang/String;Z)Lq2/t;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-nez v2, :cond_18

    .line 23
    .line 24
    goto :goto_7a

    .line 25
    :cond_18
    iget-object v2, v2, Lq2/t;->l:Ljava/lang/String;

    .line 26
    .line 27
    if-eqz v2, :cond_7a

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_23

    .line 34
    .line 35
    goto :goto_7a

    .line 36
    :cond_23
    new-instance v3, Lorg/json/JSONObject;

    .line 37
    .line 38
    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    :cond_32
    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_7a

    .line 56
    .line 57
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    check-cast v4, Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    if-eqz v5, :cond_32

    .line 68
    .line 69
    const-string v6, "restrictive_param"

    .line 70
    .line 71
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    new-instance v7, Ln2/a;

    .line 76
    .line 77
    const-string v8, "key"

    .line 78
    .line 79
    invoke-static {v8, v4}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    new-instance v8, Ljava/util/HashMap;

    .line 83
    .line 84
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 88
    .line 89
    .line 90
    iput-object v4, v7, Ln2/a;->a:Ljava/lang/String;

    .line 91
    .line 92
    iput-object v8, v7, Ln2/a;->b:Ljava/util/HashMap;

    .line 93
    .line 94
    if-eqz v6, :cond_6b

    .line 95
    .line 96
    invoke-static {v6}, Lq2/g0;->i(Lorg/json/JSONObject;)Ljava/util/HashMap;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    iput-object v6, v7, Ln2/a;->b:Ljava/util/HashMap;

    .line 101
    .line 102
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    goto :goto_6b

    .line 106
    :catchall_69
    move-exception v0

    .line 107
    goto :goto_77

    .line 108
    :cond_6b
    :goto_6b
    const-string v6, "process_event_name"

    .line 109
    .line 110
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    if-eqz v5, :cond_32

    .line 115
    .line 116
    invoke-virtual {v0, v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_76} :catch_7a
    .catchall {:try_start_c .. :try_end_76} :catchall_69

    .line 117
    .line 118
    .line 119
    goto :goto_32

    .line 120
    :goto_77
    invoke-static {v0, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    :catch_7a
    :cond_7a
    :goto_7a
    return-void
.end method
