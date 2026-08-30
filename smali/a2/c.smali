###### Class a2.c (a2.c)
.class public abstract La2/c;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static a:Z


# direct methods
.method public static a(Ll7/u;)Lu/k;
    .registers 7

    .line 1
    const-string v0, "Deferred.asListenableFuture"

    .line 2
    .line 3
    new-instance v1, Lu/i;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Lu/l;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v2, v1, Lu/i;->c:Lu/l;

    .line 14
    .line 15
    new-instance v2, Lu/k;

    .line 16
    .line 17
    invoke-direct {v2, v1}, Lu/k;-><init>(Lu/i;)V

    .line 18
    .line 19
    .line 20
    iput-object v2, v1, Lu/i;->b:Lu/k;

    .line 21
    .line 22
    const-class v3, La1/a;

    .line 23
    .line 24
    iput-object v3, v1, Lu/i;->a:Ljava/lang/Object;

    .line 25
    .line 26
    :try_start_19
    new-instance v3, La1/b;

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-direct {v3, v1, v4, p0}, La1/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    const/4 v5, 0x1

    .line 34
    invoke-virtual {p0, v4, v5, v3}, Ll7/s0;->r(ZZLc7/l;)Ll7/y;

    .line 35
    .line 36
    .line 37
    iput-object v0, v1, Lu/i;->a:Ljava/lang/Object;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_26} :catch_27

    .line 38
    .line 39
    return-object v2

    .line 40
    :catch_27
    move-exception p0

    .line 41
    iget-object v0, v2, Lu/k;->b:Lu/j;

    .line 42
    .line 43
    invoke-virtual {v0, p0}, Lu/h;->k(Ljava/lang/Throwable;)Z

    .line 44
    .line 45
    .line 46
    return-object v2
.end method

.method public static final b(Ljava/lang/String;Ljava/lang/String;)Ls2/d;
    .registers 7

    .line 1
    new-instance v0, Ls2/d;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Ls2/b;->c:Ls2/b;

    .line 7
    .line 8
    iput-object v1, v0, Ls2/d;->b:Ls2/b;

    .line 9
    .line 10
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const/4 v3, 0x0

    .line 19
    :try_start_12
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-nez v1, :cond_1e

    .line 29
    .line 30
    goto :goto_20

    .line 31
    :cond_1e
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_20
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_20} :catch_20

    .line 32
    .line 33
    :catch_20
    :goto_20
    iput-object v3, v0, Ls2/d;->d:Ljava/lang/String;

    .line 34
    .line 35
    iput-object p0, v0, Ls2/d;->e:Ljava/lang/String;

    .line 36
    .line 37
    iput-object p1, v0, Ls2/d;->f:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 40
    .line 41
    .line 42
    move-result-wide p0

    .line 43
    const/16 v1, 0x3e8

    .line 44
    .line 45
    int-to-long v1, v1

    .line 46
    div-long/2addr p0, v1

    .line 47
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    iput-object p0, v0, Ls2/d;->g:Ljava/lang/Long;

    .line 52
    .line 53
    new-instance p1, Ljava/lang/StringBuffer;

    .line 54
    .line 55
    const-string v1, "anr_log_"

    .line 56
    .line 57
    invoke-direct {p1, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    .line 66
    .line 67
    const-string p0, ".json"

    .line 68
    .line 69
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    const-string p1, "StringBuffer()\n         \u2026)\n            .toString()"

    .line 77
    .line 78
    invoke-static {p1, p0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    iput-object p0, v0, Ls2/d;->a:Ljava/lang/String;

    .line 82
    .line 83
    return-object v0
.end method

.method public static final c(Ljava/lang/Throwable;Ls2/b;)Ls2/d;
    .registers 9

    .line 1
    new-instance v0, Ls2/d;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, v0, Ls2/d;->b:Ls2/b;

    .line 7
    .line 8
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    :try_start_11
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-nez v1, :cond_1d

    .line 27
    .line 28
    :catch_1b
    move-object v1, v4

    .line 29
    goto :goto_1f

    .line 30
    :cond_1d
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_1f} :catch_1b

    .line 31
    .line 32
    :goto_1f
    iput-object v1, v0, Ls2/d;->d:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-nez v1, :cond_2c

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    goto :goto_34

    .line 45
    :cond_2c
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    :goto_34
    iput-object v1, v0, Ls2/d;->e:Ljava/lang/String;

    .line 54
    .line 55
    new-instance v1, Lorg/json/JSONArray;

    .line 56
    .line 57
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 58
    .line 59
    .line 60
    :goto_3b
    if-eqz p0, :cond_5f

    .line 61
    .line 62
    if-eq p0, v4, :cond_5f

    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    const-string v4, "t.stackTrace"

    .line 69
    .line 70
    invoke-static {v4, v2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    array-length v4, v2

    .line 74
    move v5, v3

    .line 75
    :goto_4a
    if-ge v5, v4, :cond_58

    .line 76
    .line 77
    aget-object v6, v2, v5

    .line 78
    .line 79
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 84
    .line 85
    .line 86
    add-int/lit8 v5, v5, 0x1

    .line 87
    .line 88
    goto :goto_4a

    .line 89
    :cond_58
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    move-object v4, p0

    .line 94
    move-object p0, v2

    .line 95
    goto :goto_3b

    .line 96
    :cond_5f
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    iput-object p0, v0, Ls2/d;->f:Ljava/lang/String;

    .line 101
    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 103
    .line 104
    .line 105
    move-result-wide v1

    .line 106
    const/16 p0, 0x3e8

    .line 107
    .line 108
    int-to-long v3, p0

    .line 109
    div-long/2addr v1, v3

    .line 110
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    iput-object p0, v0, Ls2/d;->g:Ljava/lang/Long;

    .line 115
    .line 116
    new-instance v1, Ljava/lang/StringBuffer;

    .line 117
    .line 118
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    const/4 v2, 0x1

    .line 126
    if-eq p1, v2, :cond_9a

    .line 127
    .line 128
    const/4 v2, 0x2

    .line 129
    if-eq p1, v2, :cond_97

    .line 130
    .line 131
    const/4 v2, 0x3

    .line 132
    if-eq p1, v2, :cond_94

    .line 133
    .line 134
    const/4 v2, 0x4

    .line 135
    if-eq p1, v2, :cond_91

    .line 136
    .line 137
    const/4 v2, 0x5

    .line 138
    if-eq p1, v2, :cond_8e

    .line 139
    .line 140
    const-string p1, "Unknown"

    .line 141
    .line 142
    goto :goto_9c

    .line 143
    :cond_8e
    const-string p1, "thread_check_log_"

    .line 144
    .line 145
    goto :goto_9c

    .line 146
    :cond_91
    const-string p1, "shield_log_"

    .line 147
    .line 148
    goto :goto_9c

    .line 149
    :cond_94
    const-string p1, "crash_log_"

    .line 150
    .line 151
    goto :goto_9c

    .line 152
    :cond_97
    const-string p1, "anr_log_"

    .line 153
    .line 154
    goto :goto_9c

    .line 155
    :cond_9a
    const-string p1, "analysis_log_"

    .line 156
    .line 157
    :goto_9c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    .line 159
    .line 160
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    .line 166
    .line 167
    const-string p0, ".json"

    .line 168
    .line 169
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    const-string p1, "StringBuffer().append(t.\u2026ppend(\".json\").toString()"

    .line 177
    .line 178
    invoke-static {p1, p0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    iput-object p0, v0, Ls2/d;->a:Ljava/lang/String;

    .line 182
    .line 183
    return-object v0
.end method

.method public static d(I)V
    .registers 7

    .line 1
    new-instance v0, Lh7/c;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/16 v2, 0x24

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lh7/a;-><init>(III)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0}, Lh7/c;->a(I)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_10

    .line 15
    .line 16
    return-void

    .line 17
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    new-instance v4, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v5, "radix "

    .line 22
    .line 23
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p0, " was not in valid range "

    .line 30
    .line 31
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    new-instance p0, Lh7/c;

    .line 35
    .line 36
    invoke-direct {p0, v1, v2, v3}, Lh7/a;-><init>(III)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw v0
.end method

.method public static final e(CCZ)Z
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_4

    .line 3
    .line 4
    return v0

    .line 5
    :cond_4
    const/4 v1, 0x0

    .line 6
    if-nez p2, :cond_8

    .line 7
    .line 8
    return v1

    .line 9
    :cond_8
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eq p0, p1, :cond_1e

    .line 18
    .line 19
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-ne p0, p1, :cond_1d

    .line 28
    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    return v1

    .line 31
    :cond_1e
    :goto_1e
    return v0
.end method

.method public static f(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_7

    .line 6
    .line 7
    goto :goto_8

    .line 8
    :cond_7
    move-object p0, v0

    .line 9
    :goto_8
    const-string v0, "com.google.firebase.messaging"

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static g(Lu6/f;)Lu6/f;
    .registers 3

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p0, Lw6/e;

    .line 7
    .line 8
    if-eqz v0, :cond_d

    .line 9
    .line 10
    move-object v0, p0

    .line 11
    check-cast v0, Lw6/e;

    .line 12
    .line 13
    goto :goto_e

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    :goto_e
    if-eqz v0, :cond_2f

    .line 16
    .line 17
    iget-object p0, v0, Lw6/e;->c:Lu6/f;

    .line 18
    .line 19
    if-nez p0, :cond_2f

    .line 20
    .line 21
    iget-object p0, v0, Lw6/e;->b:Lu6/k;

    .line 22
    .line 23
    invoke-static {p0}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    sget-object v1, Lu6/g;->a:Lu6/g;

    .line 27
    .line 28
    invoke-interface {p0, v1}, Lu6/k;->g(Lu6/j;)Lu6/i;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Lu6/h;

    .line 33
    .line 34
    if-eqz p0, :cond_2b

    .line 35
    .line 36
    check-cast p0, Ll7/n;

    .line 37
    .line 38
    new-instance v1, Lp7/g;

    .line 39
    .line 40
    invoke-direct {v1, p0, v0}, Lp7/g;-><init>(Ll7/n;Lw6/e;)V

    .line 41
    .line 42
    .line 43
    goto :goto_2c

    .line 44
    :cond_2b
    move-object v1, v0

    .line 45
    :goto_2c
    iput-object v1, v0, Lw6/e;->c:Lu6/f;

    .line 46
    .line 47
    return-object v1

    .line 48
    :cond_2f
    return-object p0
.end method

.method public static varargs h(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 12

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_2
    array-length v2, p1

    .line 4
    if-ge v1, v2, :cond_a3

    .line 5
    .line 6
    aget-object v2, p1, v1

    .line 7
    .line 8
    if-nez v2, :cond_d

    .line 9
    .line 10
    const-string v2, "null"

    .line 11
    .line 12
    goto/16 :goto_9d

    .line 13
    .line 14
    :cond_d
    :try_start_d
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_11} :catch_13

    .line 18
    goto/16 :goto_9d

    .line 19
    .line 20
    :catch_13
    move-exception v3

    .line 21
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    add-int/lit8 v5, v5, 0x1

    .line 42
    .line 43
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    add-int/2addr v6, v5

    .line 52
    new-instance v5, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const/16 v4, 0x40

    .line 61
    .line 62
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    const-string v4, "com.google.common.base.Strings"

    .line 73
    .line 74
    invoke-static {v4}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 79
    .line 80
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    const-string v8, "Exception during lenientFormat for "

    .line 89
    .line 90
    if-eqz v7, :cond_60

    .line 91
    .line 92
    invoke-virtual {v8, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    goto :goto_65

    .line 97
    :cond_60
    new-instance v6, Ljava/lang/String;

    .line 98
    .line 99
    invoke-direct {v6, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :goto_65
    invoke-virtual {v4, v5, v6, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    add-int/lit8 v4, v4, 0x9

    .line 122
    .line 123
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    add-int/2addr v5, v4

    .line 128
    new-instance v4, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 131
    .line 132
    .line 133
    const-string v5, "<"

    .line 134
    .line 135
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string v2, " threw "

    .line 142
    .line 143
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string v2, ">"

    .line 150
    .line 151
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    :goto_9d
    aput-object v2, p1, v1

    .line 159
    .line 160
    add-int/lit8 v1, v1, 0x1

    .line 161
    .line 162
    goto/16 :goto_2

    .line 163
    .line 164
    :cond_a3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    array-length v3, p1

    .line 171
    mul-int/lit8 v3, v3, 0x10

    .line 172
    .line 173
    add-int/2addr v3, v2

    .line 174
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 175
    .line 176
    .line 177
    move v2, v0

    .line 178
    :goto_b1
    array-length v3, p1

    .line 179
    if-ge v0, v3, :cond_ce

    .line 180
    .line 181
    const-string v3, "%s"

    .line 182
    .line 183
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    const/4 v4, -0x1

    .line 188
    if-ne v3, v4, :cond_be

    .line 189
    .line 190
    goto :goto_ce

    .line 191
    :cond_be
    invoke-virtual {v1, p0, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    add-int/lit8 v2, v0, 0x1

    .line 195
    .line 196
    aget-object v0, p1, v0

    .line 197
    .line 198
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    add-int/lit8 v0, v3, 0x2

    .line 202
    .line 203
    move v9, v2

    .line 204
    move v2, v0

    .line 205
    move v0, v9

    .line 206
    goto :goto_b1

    .line 207
    :cond_ce
    :goto_ce
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 208
    .line 209
    .line 210
    move-result v3

    .line 211
    invoke-virtual {v1, p0, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    array-length p0, p1

    .line 215
    if-ge v0, p0, :cond_fa

    .line 216
    .line 217
    const-string p0, " ["

    .line 218
    .line 219
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    add-int/lit8 p0, v0, 0x1

    .line 223
    .line 224
    aget-object v0, p1, v0

    .line 225
    .line 226
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    :goto_e4
    array-length v0, p1

    .line 230
    if-ge p0, v0, :cond_f5

    .line 231
    .line 232
    const-string v0, ", "

    .line 233
    .line 234
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    add-int/lit8 v0, p0, 0x1

    .line 238
    .line 239
    aget-object p0, p1, p0

    .line 240
    .line 241
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    move p0, v0

    .line 245
    goto :goto_e4

    .line 246
    :cond_f5
    const/16 p0, 0x5d

    .line 247
    .line 248
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    :cond_fa
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p0

    .line 255
    return-object p0
.end method

.method public static final i(Ljava/io/File;)Ls2/d;
    .registers 5

    .line 1
    const-string v0, "file"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ls2/d;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string v1, "file.name"

    .line 16
    .line 17
    invoke-static {v1, p0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iput-object p0, v0, Ls2/d;->a:Ljava/lang/String;

    .line 21
    .line 22
    const-string v1, "crash_log_"

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-static {p0, v1, v2}, Lk7/o;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_21

    .line 30
    .line 31
    sget-object v1, Ls2/b;->d:Ls2/b;

    .line 32
    .line 33
    goto :goto_4f

    .line 34
    :cond_21
    const-string v1, "shield_log_"

    .line 35
    .line 36
    invoke-static {p0, v1, v2}, Lk7/o;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_2c

    .line 41
    .line 42
    sget-object v1, Ls2/b;->e:Ls2/b;

    .line 43
    .line 44
    goto :goto_4f

    .line 45
    :cond_2c
    const-string v1, "thread_check_log_"

    .line 46
    .line 47
    invoke-static {p0, v1, v2}, Lk7/o;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_37

    .line 52
    .line 53
    sget-object v1, Ls2/b;->f:Ls2/b;

    .line 54
    .line 55
    goto :goto_4f

    .line 56
    :cond_37
    const-string v1, "analysis_log_"

    .line 57
    .line 58
    invoke-static {p0, v1, v2}, Lk7/o;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_42

    .line 63
    .line 64
    sget-object v1, Ls2/b;->b:Ls2/b;

    .line 65
    .line 66
    goto :goto_4f

    .line 67
    :cond_42
    const-string v1, "anr_log_"

    .line 68
    .line 69
    invoke-static {p0, v1, v2}, Lk7/o;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_4d

    .line 74
    .line 75
    sget-object v1, Ls2/b;->c:Ls2/b;

    .line 76
    .line 77
    goto :goto_4f

    .line 78
    :cond_4d
    sget-object v1, Ls2/b;->a:Ls2/b;

    .line 79
    .line 80
    :goto_4f
    iput-object v1, v0, Ls2/d;->b:Ls2/b;

    .line 81
    .line 82
    invoke-static {p0}, Landroid/support/v4/media/session/a;->h(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    if-eqz p0, :cond_86

    .line 87
    .line 88
    const-string v1, "timestamp"

    .line 89
    .line 90
    const-wide/16 v2, 0x0

    .line 91
    .line 92
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 93
    .line 94
    .line 95
    move-result-wide v1

    .line 96
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    iput-object v1, v0, Ls2/d;->g:Ljava/lang/Long;

    .line 101
    .line 102
    const-string v1, "app_version"

    .line 103
    .line 104
    const/4 v2, 0x0

    .line 105
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    iput-object v1, v0, Ls2/d;->d:Ljava/lang/String;

    .line 110
    .line 111
    const-string v1, "reason"

    .line 112
    .line 113
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    iput-object v1, v0, Ls2/d;->e:Ljava/lang/String;

    .line 118
    .line 119
    const-string v1, "callstack"

    .line 120
    .line 121
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    iput-object v1, v0, Ls2/d;->f:Ljava/lang/String;

    .line 126
    .line 127
    const-string v1, "feature_names"

    .line 128
    .line 129
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    iput-object p0, v0, Ls2/d;->c:Lorg/json/JSONArray;

    .line 134
    .line 135
    :cond_86
    return-object v0
.end method

.method public static j(Landroid/content/Context;Lcom/google/android/gms/common/internal/g;Z)V
    .registers 8

    .line 1
    const-string v0, "proxy_retention"

    .line 2
    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    .line 5
    const/16 v2, 0x1d

    .line 6
    .line 7
    if-lt v1, v2, :cond_66

    .line 8
    .line 9
    invoke-static {p0}, La2/c;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_1a

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-ne v1, p2, :cond_1a

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1a
    iget-object p1, p1, Lcom/google/android/gms/common/internal/g;->d:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p1, Lu3/b;

    .line 30
    .line 31
    iget-object v1, p1, Lu3/b;->c:Lk6/b;

    .line 32
    .line 33
    invoke-virtual {v1}, Lk6/b;->d()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const v2, 0xe5ee4e0

    .line 38
    .line 39
    .line 40
    if-lt v1, v2, :cond_4e

    .line 41
    .line 42
    new-instance v1, Landroid/os/Bundle;

    .line 43
    .line 44
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v0, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p1, Lu3/b;->b:Landroid/content/Context;

    .line 51
    .line 52
    invoke-static {p1}, Lu3/n;->a(Landroid/content/Context;)Lu3/n;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    new-instance v0, Lu3/m;

    .line 57
    .line 58
    monitor-enter p1

    .line 59
    :try_start_3a
    iget v2, p1, Lu3/n;->d:I

    .line 60
    .line 61
    add-int/lit8 v3, v2, 0x1

    .line 62
    .line 63
    iput v3, p1, Lu3/n;->d:I
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_4b

    .line 64
    .line 65
    monitor-exit p1

    .line 66
    const/4 v3, 0x0

    .line 67
    const/4 v4, 0x4

    .line 68
    invoke-direct {v0, v2, v4, v1, v3}, Lu3/m;-><init>(IILandroid/os/Bundle;I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Lu3/n;->b(Lu3/m;)Lp4/q;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    goto :goto_59

    .line 76
    :catchall_4b
    move-exception p0

    .line 77
    :try_start_4c
    monitor-exit p1
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    .line 78
    throw p0

    .line 79
    :cond_4e
    new-instance p1, Ljava/io/IOException;

    .line 80
    .line 81
    const-string v0, "SERVICE_NOT_AVAILABLE"

    .line 82
    .line 83
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-static {p1}, Lj7/g;->k(Ljava/lang/Exception;)Lp4/q;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    :goto_59
    new-instance v0, Lc1/c;

    .line 91
    .line 92
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 93
    .line 94
    .line 95
    new-instance v1, Lcom/google/firebase/messaging/v;

    .line 96
    .line 97
    invoke-direct {v1, p0, p2}, Lcom/google/firebase/messaging/v;-><init>(Landroid/content/Context;Z)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v0, v1}, Lp4/q;->c(Ljava/util/concurrent/Executor;Lp4/f;)Lp4/q;

    .line 101
    .line 102
    .line 103
    :cond_66
    return-void
.end method

.method public static k(Ljava/util/HashMap;)V
    .registers 9

    .line 1
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "com.facebook.sdk.CloudBridgeSavedCredentials"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_e

    .line 13
    .line 14
    goto :goto_5d

    .line 15
    :cond_e
    const-string v1, "dataset_id"

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const-string v4, "endpoint"

    .line 22
    .line 23
    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    const-string v6, "access_key"

    .line 28
    .line 29
    invoke-virtual {p0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    if-eqz v3, :cond_5d

    .line 34
    .line 35
    if-eqz v5, :cond_5d

    .line 36
    .line 37
    if-nez p0, :cond_27

    .line 38
    .line 39
    goto :goto_5d

    .line 40
    :cond_27
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 63
    .line 64
    .line 65
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 66
    .line 67
    .line 68
    sget-object v0, Lq2/z;->c:Lo3/a;

    .line 69
    .line 70
    const-string v0, "a2.c"

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const/4 v1, 0x3

    .line 77
    new-array v1, v1, [Ljava/lang/Object;

    .line 78
    .line 79
    aput-object v3, v1, v2

    .line 80
    .line 81
    const/4 v2, 0x1

    .line 82
    aput-object v5, v1, v2

    .line 83
    .line 84
    const/4 v2, 0x2

    .line 85
    aput-object p0, v1, v2

    .line 86
    .line 87
    sget-object p0, Lx1/e0;->d:Lx1/e0;

    .line 88
    .line 89
    const-string v2, " \n\nSaving Cloudbridge settings from saved Prefs: \n================\n DATASETID: %s\n URL: %s \n ACCESSKEY: %s \n\n "

    .line 90
    .line 91
    invoke-static {p0, v0, v2, v1}, Lo3/a;->j(Lx1/e0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    :cond_5d
    :goto_5d
    return-void
.end method

.method public static l(Lh7/c;I)Lh7/a;
    .registers 4

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    if-lez p1, :cond_9

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v0, :cond_20

    .line 16
    .line 17
    iget v0, p0, Lh7/a;->a:I

    .line 18
    .line 19
    iget v1, p0, Lh7/a;->b:I

    .line 20
    .line 21
    iget p0, p0, Lh7/a;->c:I

    .line 22
    .line 23
    if-lez p0, :cond_19

    .line 24
    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    neg-int p1, p1

    .line 27
    :goto_1a
    new-instance p0, Lh7/a;

    .line 28
    .line 29
    invoke-direct {p0, v0, v1, p1}, Lh7/a;-><init>(III)V

    .line 30
    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 34
    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v0, "Step must be positive, was: "

    .line 38
    .line 39
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const/16 v0, 0x2e

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p0
.end method

.method public static m(II)Lh7/c;
    .registers 4

    .line 1
    const/high16 v0, -0x80000000

    .line 2
    .line 3
    if-gt p1, v0, :cond_9

    .line 4
    .line 5
    sget-object p0, Lh7/c;->d:Lh7/c;

    .line 6
    .line 7
    sget-object p0, Lh7/c;->d:Lh7/c;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_9
    new-instance v0, Lh7/c;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    sub-int/2addr p1, v1

    .line 14
    invoke-direct {v0, p0, p1, v1}, Lh7/a;-><init>(III)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

###### Class com.google.firebase.messaging.v (com.google.firebase.messaging.v)
.class public final synthetic Lcom/google/firebase/messaging/v;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lp4/f;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Z)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/firebase/messaging/v;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/google/firebase/messaging/v;->b:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 4

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/google/firebase/messaging/v;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {p1}, La2/c;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v0, "proxy_retention"

    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/google/firebase/messaging/v;->b:Z

    .line 16
    .line 17
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 21
    .line 22
    .line 23
    return-void
.end method
