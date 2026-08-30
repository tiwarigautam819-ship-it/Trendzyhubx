###### Class y1.t (y1.t)
.class public final Ly1/t;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Ly1/t;

.field public static b:Landroid/content/SharedPreferences;

.field public static final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final d:Ljava/util/concurrent/ConcurrentHashMap;

.field public static final e:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ly1/t;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ly1/t;->a:Ly1/t;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Ly1/t;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    sput-object v0, Ly1/t;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 22
    .line 23
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 26
    .line 27
    .line 28
    sput-object v0, Ly1/t;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .registers 8

    .line 1
    sget-object v0, Ly1/t;->e:Ljava/util/concurrent/ConcurrentHashMap;

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
    return-object v2

    .line 11
    :cond_a
    :try_start_a
    new-instance v1, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    sget-object v3, Lz1/c;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 17
    .line 18
    new-instance v3, Ljava/util/HashSet;

    .line 19
    .line 20
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lz1/c;->a()Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    :goto_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-eqz v5, :cond_32

    .line 36
    .line 37
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    check-cast v5, Lz1/c;

    .line 42
    .line 43
    invoke-virtual {v5}, Lz1/c;->c()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_1e

    .line 51
    :cond_32
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    :cond_3a
    :goto_3a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-eqz v5, :cond_56

    .line 64
    .line 65
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    check-cast v5, Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    if-eqz v6, :cond_3a

    .line 76
    .line 77
    invoke-virtual {v0, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_53
    .catchall {:try_start_a .. :try_end_53} :catchall_54

    .line 82
    .line 83
    .line 84
    goto :goto_3a

    .line 85
    :catchall_54
    move-exception v0

    .line 86
    goto :goto_57

    .line 87
    :cond_56
    return-object v1

    .line 88
    :goto_57
    invoke-static {v0, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    return-object v2
.end method

.method public final declared-synchronized b()V
    .registers 6

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
    .catchall {:try_start_1 .. :try_end_5} :catchall_65

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
    sget-object v0, Ly1/t;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 13
    .line 14
    .line 15
    move-result v1
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_2f

    .line 16
    if-eqz v1, :cond_13

    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :cond_13
    :try_start_13
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "getDefaultSharedPreferen\u2026.getApplicationContext())"

    .line 29
    .line 30
    invoke-static {v2, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    sput-object v1, Ly1/t;->b:Landroid/content/SharedPreferences;

    .line 34
    .line 35
    const-string v2, "com.facebook.appevents.UserDataStore.userData"

    .line 36
    .line 37
    const-string v3, ""

    .line 38
    .line 39
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-nez v1, :cond_31

    .line 44
    .line 45
    const-string v1, ""

    .line 46
    .line 47
    goto :goto_31

    .line 48
    :catchall_2f
    move-exception v0

    .line 49
    goto :goto_60

    .line 50
    :cond_31
    :goto_31
    sget-object v2, Ly1/t;->b:Landroid/content/SharedPreferences;

    .line 51
    .line 52
    if-eqz v2, :cond_59

    .line 53
    .line 54
    const-string v3, "com.facebook.appevents.UserDataStore.internalUserData"

    .line 55
    .line 56
    const-string v4, ""

    .line 57
    .line 58
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    if-nez v2, :cond_41

    .line 63
    .line 64
    const-string v2, ""

    .line 65
    .line 66
    :cond_41
    sget-object v3, Ly1/t;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 67
    .line 68
    invoke-static {v1}, Lq2/g0;->E(Ljava/lang/String;)Ljava/util/HashMap;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 73
    .line 74
    .line 75
    sget-object v1, Ly1/t;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 76
    .line 77
    invoke-static {v2}, Lq2/g0;->E(Ljava/lang/String;)Ljava/util/HashMap;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 82
    .line 83
    .line 84
    const/4 v1, 0x1

    .line 85
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_57
    .catchall {:try_start_13 .. :try_end_57} :catchall_2f

    .line 86
    .line 87
    .line 88
    monitor-exit p0

    .line 89
    return-void

    .line 90
    :cond_59
    :try_start_59
    const-string v0, "sharedPreferences"

    .line 91
    .line 92
    invoke-static {v0}, Ld7/g;->i(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    const/4 v0, 0x0

    .line 96
    throw v0
    :try_end_60
    .catchall {:try_start_59 .. :try_end_60} :catchall_2f

    .line 97
    :goto_60
    :try_start_60
    invoke-static {v0, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_65

    .line 98
    .line 99
    .line 100
    monitor-exit p0

    .line 101
    return-void

    .line 102
    :catchall_65
    move-exception v0

    .line 103
    :try_start_66
    monitor-exit p0
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    .line 104
    throw v0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
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
    return-object v1

    .line 9
    :cond_8
    :try_start_8
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x1

    .line 14
    sub-int/2addr v0, v2

    .line 15
    const/4 v3, 0x0

    .line 16
    move v4, v3

    .line 17
    move v5, v4

    .line 18
    :goto_11
    if-gt v4, v0, :cond_39

    .line 19
    .line 20
    if-nez v5, :cond_17

    .line 21
    .line 22
    move v6, v4

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    move v6, v0

    .line 25
    :goto_18
    invoke-interface {p2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    const/16 v7, 0x20

    .line 30
    .line 31
    invoke-static {v6, v7}, Ld7/g;->g(II)I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    if-gtz v6, :cond_26

    .line 36
    .line 37
    move v6, v2

    .line 38
    goto :goto_27

    .line 39
    :cond_26
    move v6, v3

    .line 40
    :goto_27
    if-nez v5, :cond_30

    .line 41
    .line 42
    if-nez v6, :cond_2d

    .line 43
    .line 44
    move v5, v2

    .line 45
    goto :goto_11

    .line 46
    :cond_2d
    add-int/lit8 v4, v4, 0x1

    .line 47
    .line 48
    goto :goto_11

    .line 49
    :cond_30
    if-nez v6, :cond_33

    .line 50
    .line 51
    goto :goto_39

    .line 52
    :cond_33
    add-int/lit8 v0, v0, -0x1

    .line 53
    .line 54
    goto :goto_11

    .line 55
    :catchall_36
    move-exception p1

    .line 56
    goto/16 :goto_bd

    .line 57
    .line 58
    :cond_39
    :goto_39
    add-int/2addr v0, v2

    .line 59
    invoke-interface {p2, v4, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    const-string v0, "this as java.lang.String).toLowerCase()"

    .line 72
    .line 73
    invoke-static {v0, p2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    const-string v0, "em"

    .line 77
    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v0
    :try_end_51
    .catchall {:try_start_8 .. :try_end_51} :catchall_36

    .line 82
    const-string v4, "t"

    .line 83
    .line 84
    const-string v5, ""

    .line 85
    .line 86
    if-eqz v0, :cond_6a

    .line 87
    .line 88
    :try_start_57
    sget-object p1, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    .line 89
    .line 90
    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-eqz p1, :cond_64

    .line 99
    .line 100
    goto :goto_bc

    .line 101
    :cond_64
    const-string p1, "Setting email failure: this is not a valid email address"

    .line 102
    .line 103
    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    return-object v5

    .line 107
    :cond_6a
    const-string v0, "ph"

    .line 108
    .line 109
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_8b

    .line 114
    .line 115
    const-string p1, "[^0-9]"

    .line 116
    .line 117
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    const-string v0, "compile(...)"

    .line 122
    .line 123
    invoke-static {v0, p1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {p1, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    const-string p2, "replaceAll(...)"

    .line 135
    .line 136
    invoke-static {p2, p1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    return-object p1

    .line 140
    :cond_8b
    const-string v0, "ge"

    .line 141
    .line 142
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    if-eqz p1, :cond_bc

    .line 147
    .line 148
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    if-lez p1, :cond_a3

    .line 153
    .line 154
    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    const-string p2, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 159
    .line 160
    invoke-static {p2, p1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    goto :goto_a4

    .line 164
    :cond_a3
    move-object p1, v5

    .line 165
    :goto_a4
    const-string p2, "f"

    .line 166
    .line 167
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result p2

    .line 171
    if-nez p2, :cond_bb

    .line 172
    .line 173
    const-string p2, "m"

    .line 174
    .line 175
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result p2

    .line 179
    if-eqz p2, :cond_b5

    .line 180
    .line 181
    goto :goto_bb

    .line 182
    :cond_b5
    const-string p1, "Setting gender failure: the supported value for gender is f or m"

    .line 183
    .line 184
    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ba
    .catchall {:try_start_57 .. :try_end_ba} :catchall_36

    .line 185
    .line 186
    .line 187
    return-object v5

    .line 188
    :cond_bb
    :goto_bb
    return-object p1

    .line 189
    :cond_bc
    :goto_bc
    return-object p2

    .line 190
    :goto_bd
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    return-object v1
.end method
