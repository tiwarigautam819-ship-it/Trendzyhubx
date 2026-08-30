###### Class j2.h (j2.h)
.class public final Lj2/h;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Lj2/h;

.field public static b:Z

.field public static c:Ljava/util/HashSet;

.field public static d:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lj2/h;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lj2/h;->a:Lj2/h;

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashSet;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lj2/h;->c:Ljava/util/HashSet;

    .line 14
    .line 15
    new-instance v0, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lj2/h;->d:Ljava/util/HashMap;

    .line 21
    .line 22
    return-void
.end method

.method public static final b(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 10

    .line 1
    const-class v0, Lj2/h;

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
    goto/16 :goto_95

    .line 10
    .line 11
    :cond_a
    :try_start_a
    const-string v1, "eventName"

    .line 12
    .line 13
    invoke-static {v1, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    sget-boolean v1, Lj2/h;->b:Z

    .line 17
    .line 18
    if-eqz v1, :cond_95

    .line 19
    .line 20
    if-nez p0, :cond_17

    .line 21
    .line 22
    goto/16 :goto_95

    .line 23
    .line 24
    :cond_17
    sget-object v1, Lj2/h;->c:Ljava/util/HashSet;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_2c

    .line 31
    .line 32
    sget-object v1, Lj2/h;->d:Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_2c

    .line 39
    .line 40
    goto/16 :goto_95

    .line 41
    .line 42
    :catchall_29
    move-exception p0

    .line 43
    goto/16 :goto_96

    .line 44
    .line 45
    :cond_2c
    new-instance v1, Lorg/json/JSONArray;

    .line 46
    .line 47
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V
    :try_end_31
    .catchall {:try_start_a .. :try_end_31} :catchall_29

    .line 48
    .line 49
    .line 50
    :try_start_31
    sget-object v2, Lj2/h;->d:Ljava/util/HashMap;

    .line 51
    .line 52
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Ljava/util/HashSet;

    .line 57
    .line 58
    new-instance v2, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    check-cast v3, Ljava/util/Collection;

    .line 65
    .line 66
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    const/4 v4, 0x0

    .line 74
    :cond_49
    :goto_49
    if-ge v4, v3, :cond_86

    .line 75
    .line 76
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    add-int/lit8 v4, v4, 0x1

    .line 81
    .line 82
    check-cast v5, Ljava/lang/String;

    .line 83
    .line 84
    sget-object v6, Lj2/h;->a:Lj2/h;

    .line 85
    .line 86
    const-string v7, "key"

    .line 87
    .line 88
    invoke-static {v7, v5}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    invoke-static {v6}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v7
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_5e} :catch_86
    .catchall {:try_start_31 .. :try_end_5e} :catchall_29

    .line 95
    if-eqz v7, :cond_61

    .line 96
    .line 97
    goto :goto_49

    .line 98
    :cond_61
    :try_start_61
    sget-object v7, Lj2/h;->c:Ljava/util/HashSet;

    .line 99
    .line 100
    invoke-virtual {v7, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    if-nez v7, :cond_7b

    .line 105
    .line 106
    if-eqz p1, :cond_49

    .line 107
    .line 108
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 109
    .line 110
    .line 111
    move-result v7

    .line 112
    if-eqz v7, :cond_72

    .line 113
    .line 114
    goto :goto_49

    .line 115
    :cond_72
    invoke-virtual {p1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v6
    :try_end_76
    .catchall {:try_start_61 .. :try_end_76} :catchall_79

    .line 119
    if-eqz v6, :cond_49

    .line 120
    .line 121
    goto :goto_7b

    .line 122
    :catchall_79
    move-exception v5

    .line 123
    goto :goto_82

    .line 124
    :cond_7b
    :goto_7b
    :try_start_7b
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 128
    .line 129
    .line 130
    goto :goto_49

    .line 131
    :goto_82
    invoke-static {v5, v6}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_85} :catch_86
    .catchall {:try_start_7b .. :try_end_85} :catchall_29

    .line 132
    .line 133
    .line 134
    goto :goto_49

    .line 135
    :catch_86
    :cond_86
    :try_start_86
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    if-lez p1, :cond_95

    .line 140
    .line 141
    const-string p1, "_filteredKey"

    .line 142
    .line 143
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-virtual {p0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_95
    .catchall {:try_start_86 .. :try_end_95} :catchall_29

    .line 148
    .line 149
    .line 150
    :cond_95
    :goto_95
    return-void

    .line 151
    :goto_96
    invoke-static {p0, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
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
    goto :goto_6a

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
    .catchall {:try_start_b .. :try_end_14} :catchall_60

    .line 21
    if-nez v2, :cond_17

    .line 22
    .line 23
    goto :goto_6a

    .line 24
    :cond_17
    :try_start_17
    new-instance v4, Ljava/util/HashSet;

    .line 25
    .line 26
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 27
    .line 28
    .line 29
    sput-object v4, Lj2/h;->c:Ljava/util/HashSet;

    .line 30
    .line 31
    new-instance v4, Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 34
    .line 35
    .line 36
    sput-object v4, Lj2/h;->d:Ljava/util/HashMap;

    .line 37
    .line 38
    iget-object v2, v2, Lq2/t;->q:Lorg/json/JSONArray;

    .line 39
    .line 40
    if-eqz v2, :cond_6a

    .line 41
    .line 42
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_6a

    .line 47
    .line 48
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    :goto_33
    if-ge v3, v4, :cond_6a

    .line 53
    .line 54
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    if-eqz v6, :cond_67

    .line 67
    .line 68
    if-eqz v7, :cond_67

    .line 69
    .line 70
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    if-eqz v5, :cond_67

    .line 79
    .line 80
    invoke-static {v5}, Lq2/g0;->f(Lorg/json/JSONArray;)Ljava/util/HashSet;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    if-eqz v5, :cond_67

    .line 85
    .line 86
    const-string v7, "_MTSDK_Default_"

    .line 87
    .line 88
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    if-eqz v7, :cond_62

    .line 93
    .line 94
    sput-object v5, Lj2/h;->c:Ljava/util/HashSet;

    .line 95
    .line 96
    goto :goto_67

    .line 97
    :catchall_60
    move-exception v0

    .line 98
    goto :goto_6b

    .line 99
    :cond_62
    sget-object v7, Lj2/h;->d:Ljava/util/HashMap;

    .line 100
    .line 101
    invoke-virtual {v7, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_67} :catch_6a
    .catchall {:try_start_17 .. :try_end_67} :catchall_60

    .line 102
    .line 103
    .line 104
    :cond_67
    :goto_67
    add-int/lit8 v3, v3, 0x1

    .line 105
    .line 106
    goto :goto_33

    .line 107
    :catch_6a
    :cond_6a
    :goto_6a
    return-void

    .line 108
    :goto_6b
    invoke-static {v0, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    return-void
.end method
