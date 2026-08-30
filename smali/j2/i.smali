###### Class j2.i (j2.i)
.class public final Lj2/i;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Lj2/i;

.field public static b:Z

.field public static final c:Ljava/util/HashMap;

.field public static final d:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lj2/i;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lj2/i;->a:Lj2/i;

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lj2/i;->c:Ljava/util/HashMap;

    .line 14
    .line 15
    new-instance v0, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lj2/i;->d:Ljava/util/HashMap;

    .line 21
    .line 22
    return-void
.end method

.method public static final d(Landroid/os/Bundle;)V
    .registers 12

    .line 1
    const-class v0, Lj2/i;

    .line 2
    .line 3
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_a

    .line 8
    .line 9
    goto/16 :goto_85

    .line 10
    .line 11
    :cond_a
    :try_start_a
    sget-boolean v1, Lj2/i;->b:Z

    .line 12
    .line 13
    if-eqz v1, :cond_85

    .line 14
    .line 15
    if-nez p0, :cond_12

    .line 16
    .line 17
    goto/16 :goto_85

    .line 18
    .line 19
    :cond_12
    new-instance v1, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    :cond_1f
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const/4 v4, 0x0

    .line 37
    if-eqz v3, :cond_73

    .line 38
    .line 39
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    sget-object v6, Lj2/i;->c:Ljava/util/HashMap;

    .line 54
    .line 55
    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    const/4 v8, 0x1

    .line 60
    if-eqz v7, :cond_3f

    .line 61
    .line 62
    move v7, v8

    .line 63
    goto :goto_40

    .line 64
    :cond_3f
    move v7, v4

    .line 65
    :goto_40
    sget-object v9, Lj2/i;->d:Ljava/util/HashMap;

    .line 66
    .line 67
    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v10

    .line 71
    if-eqz v10, :cond_49

    .line 72
    .line 73
    move v4, v8

    .line 74
    :cond_49
    if-nez v7, :cond_4e

    .line 75
    .line 76
    if-nez v4, :cond_4e

    .line 77
    .line 78
    goto :goto_1f

    .line 79
    :cond_4e
    sget-object v4, Lj2/i;->a:Lj2/i;

    .line 80
    .line 81
    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    check-cast v6, Ljava/util/Set;

    .line 86
    .line 87
    invoke-virtual {v4, v5, v6}, Lj2/i;->c(Ljava/lang/String;Ljava/util/Set;)Z

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    check-cast v7, Ljava/util/Set;

    .line 96
    .line 97
    invoke-virtual {v4, v5, v7}, Lj2/i;->b(Ljava/lang/String;Ljava/util/Set;)Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-nez v6, :cond_1f

    .line 102
    .line 103
    if-nez v4, :cond_1f

    .line 104
    .line 105
    const-string v4, "key"

    .line 106
    .line 107
    invoke-static {v4, v3}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    goto :goto_1f

    .line 114
    :catchall_71
    move-exception p0

    .line 115
    goto :goto_86

    .line 116
    :cond_73
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    :goto_77
    if-ge v4, v2, :cond_85

    .line 121
    .line 122
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    add-int/lit8 v4, v4, 0x1

    .line 127
    .line 128
    check-cast v3, Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_84
    .catchall {:try_start_a .. :try_end_84} :catchall_71

    .line 131
    .line 132
    .line 133
    goto :goto_77

    .line 134
    :cond_85
    :goto_85
    return-void

    .line 135
    :goto_86
    invoke-static {p0, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONArray;)V
    .registers 16

    .line 1
    sget-object v0, Lj2/i;->c:Ljava/util/HashMap;

    .line 2
    .line 3
    sget-object v1, Lj2/i;->d:Ljava/util/HashMap;

    .line 4
    .line 5
    const-string v2, "key"

    .line 6
    .line 7
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-eqz v3, :cond_e

    .line 12
    .line 13
    goto/16 :goto_a5

    .line 14
    .line 15
    :cond_e
    if-eqz p1, :cond_a5

    .line 16
    .line 17
    :try_start_10
    sget-boolean v3, Lj2/i;->b:Z

    .line 18
    .line 19
    if-eqz v3, :cond_16

    .line 20
    .line 21
    goto/16 :goto_a5

    .line 22
    .line 23
    :cond_16
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const/4 v4, 0x0

    .line 28
    move v5, v4

    .line 29
    :goto_1c
    if-ge v5, v3, :cond_a5

    .line 30
    .line 31
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    if-eqz v7, :cond_9e

    .line 40
    .line 41
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 42
    .line 43
    .line 44
    move-result v8
    :try_end_2c
    .catchall {:try_start_10 .. :try_end_2c} :catchall_80

    .line 45
    if-nez v8, :cond_30

    .line 46
    .line 47
    goto/16 :goto_9e

    .line 48
    .line 49
    :cond_30
    :try_start_30
    const-string v8, "value"

    .line 50
    .line 51
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    .line 56
    .line 57
    .line 58
    move-result v8

    .line 59
    move v9, v4

    .line 60
    :goto_3b
    if-ge v9, v8, :cond_9e

    .line 61
    .line 62
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 63
    .line 64
    .line 65
    move-result-object v10

    .line 66
    const-string v11, "require_exact_match"

    .line 67
    .line 68
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v10

    .line 72
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 73
    .line 74
    .line 75
    move-result-object v11

    .line 76
    const-string v12, "potential_matches"

    .line 77
    .line 78
    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 79
    .line 80
    .line 81
    move-result-object v11

    .line 82
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v12
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_55} :catch_98
    .catchall {:try_start_30 .. :try_end_55} :catchall_80

    .line 86
    const/4 v13, 0x0

    .line 87
    if-eqz v12, :cond_59

    .line 88
    .line 89
    goto :goto_71

    .line 90
    :cond_59
    :try_start_59
    invoke-static {v11}, Lq2/g0;->f(Lorg/json/JSONArray;)Ljava/util/HashSet;

    .line 91
    .line 92
    .line 93
    move-result-object v11

    .line 94
    if-nez v11, :cond_64

    .line 95
    .line 96
    new-instance v11, Ljava/util/HashSet;

    .line 97
    .line 98
    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_64} :catch_68
    .catchall {:try_start_59 .. :try_end_64} :catchall_66

    .line 99
    .line 100
    .line 101
    :cond_64
    :goto_64
    move-object v13, v11

    .line 102
    goto :goto_71

    .line 103
    :catchall_66
    move-exception v11

    .line 104
    goto :goto_6e

    .line 105
    :catch_68
    :try_start_68
    new-instance v11, Ljava/util/HashSet;

    .line 106
    .line 107
    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V
    :try_end_6d
    .catchall {:try_start_68 .. :try_end_6d} :catchall_66

    .line 108
    .line 109
    .line 110
    goto :goto_64

    .line 111
    :goto_6e
    :try_start_6e
    invoke-static {v11, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    :goto_71
    if-eqz v10, :cond_86

    .line 115
    .line 116
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v10

    .line 120
    check-cast v10, Ljava/util/HashSet;

    .line 121
    .line 122
    if-eqz v10, :cond_82

    .line 123
    .line 124
    invoke-virtual {v10, v13}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 125
    .line 126
    .line 127
    move-object v13, v10

    .line 128
    goto :goto_82

    .line 129
    :catchall_80
    move-exception p1

    .line 130
    goto :goto_a2

    .line 131
    :cond_82
    :goto_82
    invoke-virtual {v1, v7, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    goto :goto_95

    .line 135
    :cond_86
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v10

    .line 139
    check-cast v10, Ljava/util/HashSet;

    .line 140
    .line 141
    if-eqz v10, :cond_92

    .line 142
    .line 143
    invoke-virtual {v10, v13}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 144
    .line 145
    .line 146
    move-object v13, v10

    .line 147
    :cond_92
    invoke-virtual {v0, v7, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_95} :catch_98
    .catchall {:try_start_6e .. :try_end_95} :catchall_80

    .line 148
    .line 149
    .line 150
    :goto_95
    add-int/lit8 v9, v9, 0x1

    .line 151
    .line 152
    goto :goto_3b

    .line 153
    :catch_98
    :try_start_98
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9e
    .catchall {:try_start_98 .. :try_end_9e} :catchall_80

    .line 157
    .line 158
    .line 159
    :cond_9e
    :goto_9e
    add-int/lit8 v5, v5, 0x1

    .line 160
    .line 161
    goto/16 :goto_1c

    .line 162
    .line 163
    :goto_a2
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    :cond_a5
    :goto_a5
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/util/Set;)Z
    .registers 7

    .line 1
    const-string v0, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    .line 2
    .line 3
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_a

    .line 9
    .line 10
    goto :goto_49

    .line 11
    :cond_a
    if-eqz p2, :cond_49

    .line 12
    .line 13
    :try_start_c
    check-cast p2, Ljava/lang/Iterable;

    .line 14
    .line 15
    instance-of v1, p2, Ljava/util/Collection;

    .line 16
    .line 17
    if-eqz v1, :cond_1e

    .line 18
    .line 19
    move-object v1, p2

    .line 20
    check-cast v1, Ljava/util/Collection;

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1e

    .line 27
    .line 28
    goto :goto_49

    .line 29
    :catchall_1c
    move-exception p1

    .line 30
    goto :goto_46

    .line 31
    :cond_1e
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    :cond_22
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_49

    .line 40
    .line 41
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Ljava/lang/String;

    .line 46
    .line 47
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 48
    .line 49
    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v0, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-static {v0, v3}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v1
    :try_end_42
    .catchall {:try_start_c .. :try_end_42} :catchall_1c

    .line 67
    if-eqz v1, :cond_22

    .line 68
    .line 69
    const/4 p1, 0x1

    .line 70
    return p1

    .line 71
    :goto_46
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :cond_49
    :goto_49
    return v2
.end method

.method public final c(Ljava/lang/String;Ljava/util/Set;)Z
    .registers 6

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
    goto :goto_49

    .line 9
    :cond_8
    if-eqz p2, :cond_49

    .line 10
    .line 11
    :try_start_a
    check-cast p2, Ljava/lang/Iterable;

    .line 12
    .line 13
    instance-of v0, p2, Ljava/util/Collection;

    .line 14
    .line 15
    if-eqz v0, :cond_1c

    .line 16
    .line 17
    move-object v0, p2

    .line 18
    check-cast v0, Ljava/util/Collection;

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1c

    .line 25
    .line 26
    goto :goto_49

    .line 27
    :catchall_1a
    move-exception p1

    .line 28
    goto :goto_46

    .line 29
    :cond_1c
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    :cond_20
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_49

    .line 38
    .line 39
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Ljava/lang/String;

    .line 44
    .line 45
    const-string v2, "pattern"

    .line 46
    .line 47
    invoke-static {v2, v0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const-string v2, "compile(...)"

    .line 55
    .line 56
    invoke-static {v2, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 64
    .line 65
    .line 66
    move-result v0
    :try_end_42
    .catchall {:try_start_a .. :try_end_42} :catchall_1a

    .line 67
    if-eqz v0, :cond_20

    .line 68
    .line 69
    const/4 p1, 0x1

    .line 70
    return p1

    .line 71
    :goto_46
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :cond_49
    :goto_49
    return v1
.end method
