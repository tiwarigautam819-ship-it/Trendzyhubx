###### Class l2.d (l2.d)
.class public final Ll2/d;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Ll2/d;

.field public static final b:Ljava/util/concurrent/ConcurrentHashMap;

.field public static final c:Ljava/util/List;

.field public static final d:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    new-instance v0, Ll2/d;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ll2/d;->a:Ll2/d;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Ll2/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    const-string v0, "fb_mobile_purchase"

    .line 16
    .line 17
    const-string v1, "fb_mobile_initiated_checkout"

    .line 18
    .line 19
    const-string v2, "other"

    .line 20
    .line 21
    const-string v3, "fb_mobile_complete_registration"

    .line 22
    .line 23
    const-string v4, "fb_mobile_add_to_cart"

    .line 24
    .line 25
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Ls6/h;->k([Ljava/lang/Object;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Ll2/d;->c:Ljava/util/List;

    .line 34
    .line 35
    const-string v0, "address"

    .line 36
    .line 37
    const-string v1, "health"

    .line 38
    .line 39
    const-string v2, "none"

    .line 40
    .line 41
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Ls6/h;->k([Ljava/lang/Object;)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sput-object v0, Ll2/d;->d:Ljava/util/List;

    .line 50
    .line 51
    return-void
.end method

.method public static final d()Ljava/io/File;
    .registers 4

    .line 1
    const-class v0, Ll2/d;

    .line 2
    .line 3
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

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
    goto :goto_1e

    .line 11
    :cond_a
    :try_start_a
    const-string v1, "task"

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    invoke-static {v3, v1}, La1/a;->n(ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget-object v1, Ll2/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 18
    .line 19
    invoke-static {v3}, La1/a;->c(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ll2/c;

    .line 28
    .line 29
    if-nez v1, :cond_1f

    .line 30
    .line 31
    :goto_1e
    return-object v2

    .line 32
    :cond_1f
    iget-object v0, v1, Ll2/c;->f:Ljava/io/File;
    :try_end_21
    .catchall {:try_start_a .. :try_end_21} :catchall_22

    .line 33
    .line 34
    return-object v0

    .line 35
    :catchall_22
    move-exception v1

    .line 36
    invoke-static {v1, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-object v2
.end method

.method public static final f(I[[F[Ljava/lang/String;)[Ljava/lang/String;
    .registers 15

    .line 1
    const-class v0, Ll2/d;

    .line 2
    .line 3
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_b

    .line 9
    .line 10
    goto/16 :goto_75

    .line 11
    .line 12
    :cond_b
    :try_start_b
    const-string v1, "task"

    .line 13
    .line 14
    invoke-static {p0, v1}, La1/a;->n(ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget-object v1, Ll2/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 18
    .line 19
    invoke-static {p0}, La1/a;->c(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ll2/c;

    .line 28
    .line 29
    if-eqz v1, :cond_75

    .line 30
    .line 31
    iget-object v3, v1, Ll2/c;->g:Ll2/b;

    .line 32
    .line 33
    if-nez v3, :cond_23

    .line 34
    .line 35
    goto :goto_75

    .line 36
    :cond_23
    iget-object v1, v1, Ll2/c;->e:[F

    .line 37
    .line 38
    array-length v4, p2

    .line 39
    const/4 v5, 0x0

    .line 40
    aget-object v6, p1, v5

    .line 41
    .line 42
    array-length v6, v6

    .line 43
    new-instance v7, Ll2/a;

    .line 44
    .line 45
    filled-new-array {v4, v6}, [I

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    invoke-direct {v7, v8}, Ll2/a;-><init>([I)V

    .line 50
    .line 51
    .line 52
    move v8, v5

    .line 53
    :goto_34
    if-ge v8, v4, :cond_44

    .line 54
    .line 55
    aget-object v9, p1, v8

    .line 56
    .line 57
    iget-object v10, v7, Ll2/a;->c:[F

    .line 58
    .line 59
    mul-int v11, v8, v6

    .line 60
    .line 61
    invoke-static {v9, v5, v10, v11, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    .line 63
    .line 64
    add-int/lit8 v8, v8, 0x1

    .line 65
    .line 66
    goto :goto_34

    .line 67
    :catchall_42
    move-exception p0

    .line 68
    goto :goto_76

    .line 69
    :cond_44
    invoke-static {p0}, La1/a;->b(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {v3, v7, p2, p1}, Ll2/b;->a(Ll2/a;[Ljava/lang/String;Ljava/lang/String;)Ll2/a;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    if-eqz p1, :cond_75

    .line 78
    .line 79
    if-eqz v1, :cond_75

    .line 80
    .line 81
    iget-object p2, p1, Ll2/a;->c:[F

    .line 82
    .line 83
    array-length p2, p2

    .line 84
    if-nez p2, :cond_56

    .line 85
    .line 86
    goto :goto_75

    .line 87
    :cond_56
    array-length p2, v1

    .line 88
    if-nez p2, :cond_5a

    .line 89
    .line 90
    goto :goto_75

    .line 91
    :cond_5a
    invoke-static {p0}, Landroidx/fragment/app/m1;->e(I)I

    .line 92
    .line 93
    .line 94
    move-result p0
    :try_end_5e
    .catchall {:try_start_b .. :try_end_5e} :catchall_42

    .line 95
    sget-object p2, Ll2/d;->a:Ll2/d;

    .line 96
    .line 97
    if-eqz p0, :cond_70

    .line 98
    .line 99
    const/4 v3, 0x1

    .line 100
    if-ne p0, v3, :cond_6a

    .line 101
    .line 102
    :try_start_65
    invoke-virtual {p2, p1, v1}, Ll2/d;->h(Ll2/a;[F)[Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    return-object p0

    .line 107
    :cond_6a
    new-instance p0, Landroidx/fragment/app/a0;

    .line 108
    .line 109
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 110
    .line 111
    .line 112
    throw p0

    .line 113
    :cond_70
    invoke-virtual {p2, p1, v1}, Ll2/d;->g(Ll2/a;[F)[Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0
    :try_end_74
    .catchall {:try_start_65 .. :try_end_74} :catchall_42

    .line 117
    return-object p0

    .line 118
    :cond_75
    :goto_75
    return-object v2

    .line 119
    :goto_76
    invoke-static {p0, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    return-object v2
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)V
    .registers 6

    .line 1
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    goto :goto_2c

    .line 8
    :cond_7
    :try_start_7
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_2a

    .line 12
    :goto_b
    :try_start_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_2c

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v1}, Lb2/k;->a(Lorg/json/JSONObject;)Ll2/c;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-nez v1, :cond_22

    .line 33
    .line 34
    goto :goto_b

    .line 35
    :cond_22
    sget-object v2, Ll2/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    .line 37
    iget-object v3, v1, Ll2/c;->a:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_29} :catch_2c
    .catchall {:try_start_b .. :try_end_29} :catchall_2a

    .line 40
    .line 41
    .line 42
    goto :goto_b

    .line 43
    :catchall_2a
    move-exception p1

    .line 44
    goto :goto_2d

    .line 45
    :catch_2c
    :cond_2c
    :goto_2c
    return-void

    .line 46
    :goto_2d
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final b()V
    .registers 11

    .line 1
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8

    .line 6
    .line 7
    goto/16 :goto_cc

    .line 8
    .line 9
    :cond_8
    :try_start_8
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    sget-object v0, Ll2/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const/4 v0, 0x0

    .line 25
    const/4 v3, 0x0

    .line 26
    move v8, v0

    .line 27
    move-object v6, v3

    .line 28
    :cond_1b
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_b6

    .line 33
    .line 34
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Ljava/util/Map$Entry;

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    check-cast v4, Ljava/lang/String;

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    move-object v5, v0

    .line 51
    check-cast v5, Ll2/c;

    .line 52
    .line 53
    const/4 v0, 0x2

    .line 54
    invoke-static {v0}, La1/a;->c(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v4, v0}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_8e

    .line 63
    .line 64
    iget-object v6, v5, Ll2/c;->b:Ljava/lang/String;

    .line 65
    .line 66
    iget v0, v5, Ll2/c;->d:I

    .line 67
    .line 68
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    sget-object v0, Lq2/o;->j:Lq2/o;

    .line 73
    .line 74
    invoke-static {v0}, Lq2/q;->b(Lq2/o;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_8d

    .line 79
    .line 80
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v0
    :try_end_53
    .catchall {:try_start_8 .. :try_end_53} :catchall_8b

    .line 84
    if-eqz v0, :cond_56

    .line 85
    .line 86
    goto :goto_8d

    .line 87
    :cond_56
    :try_start_56
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_64} :catch_65
    .catchall {:try_start_56 .. :try_end_64} :catchall_7a

    .line 100
    .line 101
    goto :goto_66

    .line 102
    :catch_65
    move-object v0, v3

    .line 103
    :goto_66
    if-eqz v0, :cond_7f

    .line 104
    .line 105
    :try_start_68
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    const-string v8, "locale.language"

    .line 110
    .line 111
    invoke-static {v8, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    const-string v8, "en"

    .line 115
    .line 116
    invoke-static {v0, v8}, Lk7/g;->x(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 117
    .line 118
    .line 119
    move-result v0
    :try_end_77
    .catchall {:try_start_68 .. :try_end_77} :catchall_7a

    .line 120
    if-eqz v0, :cond_8d

    .line 121
    .line 122
    goto :goto_7f

    .line 123
    :catchall_7a
    move-exception v0

    .line 124
    :try_start_7b
    invoke-static {v0, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    goto :goto_8d

    .line 128
    :cond_7f
    :goto_7f
    new-instance v0, Li2/c;

    .line 129
    .line 130
    const/4 v8, 0x5

    .line 131
    invoke-direct {v0, v8}, Li2/c;-><init>(I)V

    .line 132
    .line 133
    .line 134
    iput-object v0, v5, Ll2/c;->h:Ljava/lang/Runnable;

    .line 135
    .line 136
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    goto :goto_8d

    .line 140
    :catchall_8b
    move-exception v0

    .line 141
    goto :goto_cd

    .line 142
    :cond_8d
    :goto_8d
    move v8, v7

    .line 143
    :cond_8e
    const/4 v0, 0x1

    .line 144
    invoke-static {v0}, La1/a;->c(I)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-static {v4, v0}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-eqz v0, :cond_1b

    .line 153
    .line 154
    iget-object v6, v5, Ll2/c;->b:Ljava/lang/String;

    .line 155
    .line 156
    iget v0, v5, Ll2/c;->d:I

    .line 157
    .line 158
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    .line 159
    .line 160
    .line 161
    move-result v8

    .line 162
    sget-object v0, Lq2/o;->k:Lq2/o;

    .line 163
    .line 164
    invoke-static {v0}, Lq2/q;->b(Lq2/o;)Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-eqz v0, :cond_1b

    .line 169
    .line 170
    new-instance v0, Li2/c;

    .line 171
    .line 172
    const/4 v4, 0x6

    .line 173
    invoke-direct {v0, v4}, Li2/c;-><init>(I)V

    .line 174
    .line 175
    .line 176
    iput-object v0, v5, Ll2/c;->h:Ljava/lang/Runnable;

    .line 177
    .line 178
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    goto/16 :goto_1b

    .line 182
    .line 183
    :cond_b6
    if-eqz v6, :cond_cc

    .line 184
    .line 185
    if-lez v8, :cond_cc

    .line 186
    .line 187
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    if-nez v0, :cond_cc

    .line 192
    .line 193
    new-instance v4, Ll2/c;

    .line 194
    .line 195
    const-string v5, "MTML"

    .line 196
    .line 197
    const/4 v7, 0x0

    .line 198
    const/4 v9, 0x0

    .line 199
    invoke-direct/range {v4 .. v9}, Ll2/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[F)V

    .line 200
    .line 201
    .line 202
    invoke-static {v4, v1}, Lb2/k;->d(Ll2/c;Ljava/util/ArrayList;)V
    :try_end_cc
    .catchall {:try_start_7b .. :try_end_cc} :catchall_8b

    .line 203
    .line 204
    .line 205
    :cond_cc
    :goto_cc
    return-void

    .line 206
    :goto_cd
    invoke-static {v0, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    return-void
.end method

.method public final c()Lorg/json/JSONObject;
    .registers 7

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
    goto :goto_38

    .line 9
    :cond_8
    :try_start_8
    const-string v0, "use_case"

    .line 10
    .line 11
    const-string v2, "version_id"

    .line 12
    .line 13
    const-string v3, "asset_uri"

    .line 14
    .line 15
    const-string v4, "rules_uri"

    .line 16
    .line 17
    const-string v5, "thresholds"

    .line 18
    .line 19
    filled-new-array {v0, v2, v3, v4, v5}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v2, Landroid/os/Bundle;

    .line 24
    .line 25
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v3, "fields"

    .line 29
    .line 30
    const-string v4, ","

    .line 31
    .line 32
    invoke-static {v4, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v2, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sget-object v0, Lx1/z;->j:Ljava/lang/String;

    .line 40
    .line 41
    const-string v0, "app/model_asset"

    .line 42
    .line 43
    invoke-static {v1, v0, v1}, Lx1/w;->u(Lx1/a;Ljava/lang/String;Lx1/v;)Lx1/z;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v2, v0, Lx1/z;->d:Landroid/os/Bundle;

    .line 48
    .line 49
    invoke-virtual {v0}, Lx1/z;->c()Lx1/c0;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v0, v0, Lx1/c0;->b:Lorg/json/JSONObject;

    .line 54
    .line 55
    if-nez v0, :cond_39

    .line 56
    .line 57
    :goto_38
    return-object v1

    .line 58
    :cond_39
    invoke-virtual {p0, v0}, Ll2/d;->e(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 59
    .line 60
    .line 61
    move-result-object v0
    :try_end_3d
    .catchall {:try_start_8 .. :try_end_3d} :catchall_3e

    .line 62
    return-object v0

    .line 63
    :catchall_3e
    move-exception v0

    .line 64
    invoke-static {v0, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    return-object v1
.end method

.method public final e(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 14

    .line 1
    const-string v0, "asset_uri"

    .line 2
    .line 3
    const-string v1, "thresholds"

    .line 4
    .line 5
    const-string v2, "version_id"

    .line 6
    .line 7
    const-string v3, "rules_uri"

    .line 8
    .line 9
    const-string v4, "use_case"

    .line 10
    .line 11
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    const/4 v6, 0x0

    .line 16
    if-eqz v5, :cond_12

    .line 17
    .line 18
    return-object v6

    .line 19
    :cond_12
    :try_start_12
    new-instance v5, Lorg/json/JSONObject;

    .line 20
    .line 21
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_57

    .line 22
    .line 23
    .line 24
    :try_start_17
    const-string v7, "data"

    .line 25
    .line 26
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    const/4 v8, 0x0

    .line 35
    :goto_22
    if-ge v8, v7, :cond_63

    .line 36
    .line 37
    invoke-virtual {p1, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 38
    .line 39
    .line 40
    move-result-object v9

    .line 41
    new-instance v10, Lorg/json/JSONObject;

    .line 42
    .line 43
    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v11

    .line 50
    invoke-virtual {v10, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v11

    .line 57
    invoke-virtual {v10, v4, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 61
    .line 62
    .line 63
    move-result-object v11

    .line 64
    invoke-virtual {v10, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v11

    .line 71
    invoke-virtual {v10, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v11

    .line 78
    if-eqz v11, :cond_59

    .line 79
    .line 80
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v11

    .line 84
    invoke-virtual {v10, v3, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    .line 86
    .line 87
    goto :goto_59

    .line 88
    :catchall_57
    move-exception p1

    .line 89
    goto :goto_6a

    .line 90
    :cond_59
    :goto_59
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v9

    .line 94
    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_60
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_60} :catch_64
    .catchall {:try_start_17 .. :try_end_60} :catchall_57

    .line 95
    .line 96
    .line 97
    add-int/lit8 v8, v8, 0x1

    .line 98
    .line 99
    goto :goto_22

    .line 100
    :cond_63
    return-object v5

    .line 101
    :catch_64
    :try_start_64
    new-instance p1, Lorg/json/JSONObject;

    .line 102
    .line 103
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V
    :try_end_69
    .catchall {:try_start_64 .. :try_end_69} :catchall_57

    .line 104
    .line 105
    .line 106
    return-object p1

    .line 107
    :goto_6a
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    return-object v6
.end method

.method public final g(Ll2/a;[F)[Ljava/lang/String;
    .registers 16

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
    goto :goto_15

    .line 9
    :cond_8
    :try_start_8
    iget-object v0, p1, Ll2/a;->a:[I

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    aget v3, v0, v2

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    aget v0, v0, v4

    .line 16
    .line 17
    iget-object p1, p1, Ll2/a;->c:[F

    .line 18
    .line 19
    array-length v4, p2

    .line 20
    if-eq v0, v4, :cond_16

    .line 21
    .line 22
    :goto_15
    return-object v1

    .line 23
    :cond_16
    invoke-static {v2, v3}, La2/c;->m(II)Lh7/c;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    new-instance v4, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-static {v3}, Ls6/i;->n(Ljava/lang/Iterable;)I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Lh7/a;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    :goto_27
    move-object v5, v3

    .line 41
    check-cast v5, Lh7/b;

    .line 42
    .line 43
    iget-boolean v5, v5, Lh7/b;->c:Z

    .line 44
    .line 45
    if-eqz v5, :cond_5c

    .line 46
    .line 47
    move-object v5, v3

    .line 48
    check-cast v5, Lh7/b;

    .line 49
    .line 50
    invoke-virtual {v5}, Lh7/b;->nextInt()I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    const-string v6, "none"

    .line 55
    .line 56
    array-length v7, p2

    .line 57
    move v8, v2

    .line 58
    move v9, v8

    .line 59
    :goto_3a
    if-ge v8, v7, :cond_56

    .line 60
    .line 61
    aget v10, p2, v8

    .line 62
    .line 63
    add-int/lit8 v11, v9, 0x1

    .line 64
    .line 65
    mul-int v12, v5, v0

    .line 66
    .line 67
    add-int/2addr v12, v9

    .line 68
    aget v12, p1, v12

    .line 69
    .line 70
    cmpl-float v10, v12, v10

    .line 71
    .line 72
    if-ltz v10, :cond_52

    .line 73
    .line 74
    sget-object v6, Ll2/d;->d:Ljava/util/List;

    .line 75
    .line 76
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    goto :goto_52

    .line 81
    :catchall_50
    move-exception p1

    .line 82
    goto :goto_65

    .line 83
    :cond_52
    :goto_52
    add-int/lit8 v8, v8, 0x1

    .line 84
    .line 85
    move v9, v11

    .line 86
    goto :goto_3a

    .line 87
    :cond_56
    check-cast v6, Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    goto :goto_27

    .line 93
    :cond_5c
    new-array p1, v2, [Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    check-cast p1, [Ljava/lang/String;
    :try_end_64
    .catchall {:try_start_8 .. :try_end_64} :catchall_50

    .line 100
    .line 101
    return-object p1

    .line 102
    :goto_65
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    return-object v1
.end method

.method public final h(Ll2/a;[F)[Ljava/lang/String;
    .registers 16

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
    goto :goto_15

    .line 9
    :cond_8
    :try_start_8
    iget-object v0, p1, Ll2/a;->a:[I

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    aget v3, v0, v2

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    aget v0, v0, v4

    .line 16
    .line 17
    iget-object p1, p1, Ll2/a;->c:[F

    .line 18
    .line 19
    array-length v4, p2

    .line 20
    if-eq v0, v4, :cond_16

    .line 21
    .line 22
    :goto_15
    return-object v1

    .line 23
    :cond_16
    invoke-static {v2, v3}, La2/c;->m(II)Lh7/c;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    new-instance v4, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-static {v3}, Ls6/i;->n(Ljava/lang/Iterable;)I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Lh7/a;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    :goto_27
    move-object v5, v3

    .line 41
    check-cast v5, Lh7/b;

    .line 42
    .line 43
    iget-boolean v5, v5, Lh7/b;->c:Z

    .line 44
    .line 45
    if-eqz v5, :cond_5c

    .line 46
    .line 47
    move-object v5, v3

    .line 48
    check-cast v5, Lh7/b;

    .line 49
    .line 50
    invoke-virtual {v5}, Lh7/b;->nextInt()I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    const-string v6, "other"

    .line 55
    .line 56
    array-length v7, p2

    .line 57
    move v8, v2

    .line 58
    move v9, v8

    .line 59
    :goto_3a
    if-ge v8, v7, :cond_56

    .line 60
    .line 61
    aget v10, p2, v8

    .line 62
    .line 63
    add-int/lit8 v11, v9, 0x1

    .line 64
    .line 65
    mul-int v12, v5, v0

    .line 66
    .line 67
    add-int/2addr v12, v9

    .line 68
    aget v12, p1, v12

    .line 69
    .line 70
    cmpl-float v10, v12, v10

    .line 71
    .line 72
    if-ltz v10, :cond_52

    .line 73
    .line 74
    sget-object v6, Ll2/d;->c:Ljava/util/List;

    .line 75
    .line 76
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    goto :goto_52

    .line 81
    :catchall_50
    move-exception p1

    .line 82
    goto :goto_65

    .line 83
    :cond_52
    :goto_52
    add-int/lit8 v8, v8, 0x1

    .line 84
    .line 85
    move v9, v11

    .line 86
    goto :goto_3a

    .line 87
    :cond_56
    check-cast v6, Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    goto :goto_27

    .line 93
    :cond_5c
    new-array p1, v2, [Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    check-cast p1, [Ljava/lang/String;
    :try_end_64
    .catchall {:try_start_8 .. :try_end_64} :catchall_50

    .line 100
    .line 101
    return-object p1

    .line 102
    :goto_65
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    return-object v1
.end method
