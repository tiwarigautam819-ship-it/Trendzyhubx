###### Class j2.d (j2.d)
.class public final Lj2/d;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Lj2/d;

.field public static b:Z

.field public static c:Lorg/json/JSONArray;

.field public static final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 14

    .line 1
    new-instance v0, Lj2/d;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lj2/d;->a:Lj2/d;

    .line 7
    .line 8
    const-string v12, "_deviceOSVersion"

    .line 9
    .line 10
    const-string v13, "_remainingDiskGB"

    .line 11
    .line 12
    const-string v1, "event"

    .line 13
    .line 14
    const-string v2, "_locale"

    .line 15
    .line 16
    const-string v3, "_appVersion"

    .line 17
    .line 18
    const-string v4, "_deviceOS"

    .line 19
    .line 20
    const-string v5, "_platform"

    .line 21
    .line 22
    const-string v6, "_deviceModel"

    .line 23
    .line 24
    const-string v7, "_nativeAppID"

    .line 25
    .line 26
    const-string v8, "_nativeAppShortVersion"

    .line 27
    .line 28
    const-string v9, "_timezone"

    .line 29
    .line 30
    const-string v10, "_carrier"

    .line 31
    .line 32
    const-string v11, "_deviceOSTypeName"

    .line 33
    .line 34
    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Lj2/d;->d:[Ljava/lang/String;

    .line 39
    .line 40
    return-void
.end method

.method public static final a(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 8

    .line 1
    const-string v0, "ANDROID"

    .line 2
    .line 3
    const-string v1, "event"

    .line 4
    .line 5
    const-class v2, Lj2/d;

    .line 6
    .line 7
    invoke-static {v2}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-eqz v3, :cond_d

    .line 12
    .line 13
    return-void

    .line 14
    :cond_d
    :try_start_d
    const-string v3, "params"

    .line 15
    .line 16
    invoke-static {v3, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v1, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string p1, "_locale"

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    sget-object v3, Lq2/g0;->i:Ljava/util/Locale;

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    if-eqz v3, :cond_2c

    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3
    :try_end_28
    .catchall {:try_start_d .. :try_end_28} :catchall_29

    .line 41
    goto :goto_2d

    .line 42
    :catchall_29
    move-exception p0

    .line 43
    goto/16 :goto_a5

    .line 44
    .line 45
    :cond_2c
    move-object v3, v4

    .line 46
    :goto_2d
    const-string v5, ""

    .line 47
    .line 48
    if-nez v3, :cond_32

    .line 49
    .line 50
    move-object v3, v5

    .line 51
    :cond_32
    :try_start_32
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const/16 v3, 0x5f

    .line 55
    .line 56
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    sget-object v3, Lq2/g0;->i:Ljava/util/Locale;

    .line 60
    .line 61
    if-eqz v3, :cond_42

    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    :cond_42
    if-nez v4, :cond_45

    .line 68
    .line 69
    move-object v4, v5

    .line 70
    :cond_45
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {p0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-string p1, "_appVersion"

    .line 81
    .line 82
    sget-object v1, Lq2/g0;->h:Ljava/lang/String;

    .line 83
    .line 84
    if-nez v1, :cond_56

    .line 85
    .line 86
    move-object v1, v5

    .line 87
    :cond_56
    invoke-virtual {p0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const-string p1, "_deviceOS"

    .line 91
    .line 92
    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    const-string p1, "_platform"

    .line 96
    .line 97
    const-string v1, "mobile"

    .line 98
    .line 99
    invoke-virtual {p0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const-string p1, "_deviceModel"

    .line 103
    .line 104
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 105
    .line 106
    if-nez v1, :cond_6c

    .line 107
    .line 108
    move-object v1, v5

    .line 109
    :cond_6c
    invoke-virtual {p0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    const-string p1, "_nativeAppID"

    .line 113
    .line 114
    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {p0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    const-string p1, "_nativeAppShortVersion"

    .line 122
    .line 123
    sget-object v1, Lq2/g0;->h:Ljava/lang/String;

    .line 124
    .line 125
    if-nez v1, :cond_7f

    .line 126
    .line 127
    goto :goto_80

    .line 128
    :cond_7f
    move-object v5, v1

    .line 129
    :goto_80
    invoke-virtual {p0, p1, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    const-string p1, "_timezone"

    .line 133
    .line 134
    sget-object v1, Lq2/g0;->f:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {p0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    const-string p1, "_carrier"

    .line 140
    .line 141
    sget-object v1, Lq2/g0;->g:Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {p0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    const-string p1, "_deviceOSTypeName"

    .line 147
    .line 148
    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    const-string p1, "_deviceOSVersion"

    .line 152
    .line 153
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    const-string p1, "_remainingDiskGB"

    .line 159
    .line 160
    sget-wide v0, Lq2/g0;->d:J

    .line 161
    .line 162
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V
    :try_end_a4
    .catchall {:try_start_32 .. :try_end_a4} :catchall_29

    .line 163
    .line 164
    .line 165
    return-void

    .line 166
    :goto_a5
    invoke-static {p0, v2}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    return-void
.end method

.method public static final b(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 4

    .line 1
    const-class v0, Lj2/d;

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
    goto :goto_1d

    .line 11
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1d

    .line 20
    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Ljava/lang/String;
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_1b

    .line 26
    .line 27
    return-object p0

    .line 28
    :catchall_1b
    move-exception p0

    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    :goto_1d
    return-object v2

    .line 31
    :goto_1e
    invoke-static {p0, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    return-object v2
.end method

.method public static final c(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 13

    .line 1
    const-class v0, Lj2/d;

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
    return-object v2

    .line 11
    :cond_a
    :try_start_a
    sget-object v1, Lj2/d;->c:Lorg/json/JSONArray;

    .line 12
    .line 13
    if-eqz v1, :cond_6c

    .line 14
    .line 15
    if-eqz v1, :cond_19

    .line 16
    .line 17
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_19

    .line 22
    .line 23
    goto :goto_6c

    .line 24
    :catchall_17
    move-exception p0

    .line 25
    goto :goto_6f

    .line 26
    :cond_19
    sget-object v1, Lj2/d;->c:Lorg/json/JSONArray;

    .line 27
    .line 28
    const-string v3, "null cannot be cast to non-null type org.json.JSONArray"

    .line 29
    .line 30
    invoke-static {v3, v1}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    new-instance v3, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    const/4 v5, 0x0

    .line 43
    :goto_2a
    if-ge v5, v4, :cond_5d

    .line 44
    .line 45
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    if-nez v6, :cond_33

    .line 50
    .line 51
    goto :goto_5a

    .line 52
    :cond_33
    new-instance v7, Lorg/json/JSONObject;

    .line 53
    .line 54
    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string v6, "id"

    .line 58
    .line 59
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 60
    .line 61
    .line 62
    move-result-wide v8

    .line 63
    const-wide/16 v10, 0x0

    .line 64
    .line 65
    cmp-long v6, v8, v10

    .line 66
    .line 67
    if-eqz v6, :cond_5a

    .line 68
    .line 69
    const-string v6, "rule"

    .line 70
    .line 71
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    if-nez v6, :cond_4d

    .line 76
    .line 77
    goto :goto_5a

    .line 78
    :cond_4d
    invoke-static {p0, v6}, Lj2/d;->d(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    if-eqz v6, :cond_5a

    .line 83
    .line 84
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    :cond_5a
    :goto_5a
    add-int/lit8 v5, v5, 0x1

    .line 92
    .line 93
    goto :goto_2a

    .line 94
    :cond_5d
    new-instance p0, Lorg/json/JSONArray;

    .line 95
    .line 96
    invoke-direct {p0, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    const-string v1, "JSONArray(res).toString()"

    .line 104
    .line 105
    invoke-static {v1, p0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    return-object p0

    .line 109
    :cond_6c
    :goto_6c
    const-string p0, "[]"
    :try_end_6e
    .catchall {:try_start_a .. :try_end_6e} :catchall_17

    .line 110
    .line 111
    return-object p0

    .line 112
    :goto_6f
    invoke-static {p0, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    return-object v2
.end method

.method public static final d(Landroid/os/Bundle;Ljava/lang/String;)Z
    .registers 8

    .line 1
    const-class v0, Lj2/d;

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
    goto/16 :goto_a4

    .line 11
    .line 12
    :cond_b
    if-eqz p1, :cond_a4

    .line 13
    .line 14
    if-nez p0, :cond_11

    .line 15
    .line 16
    goto/16 :goto_a4

    .line 17
    .line 18
    :cond_11
    :try_start_11
    new-instance v1, Lorg/json/JSONObject;

    .line 19
    .line 20
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v1}, Lj2/d;->b(Lorg/json/JSONObject;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-nez p1, :cond_1e

    .line 28
    .line 29
    goto/16 :goto_a4

    .line 30
    .line 31
    :cond_1e
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    const/16 v4, 0xde3

    .line 40
    .line 41
    const/4 v5, 0x1

    .line 42
    if-eq v3, v4, :cond_71

    .line 43
    .line 44
    const v4, 0x179d7

    .line 45
    .line 46
    .line 47
    if-eq v3, v4, :cond_4b

    .line 48
    .line 49
    const v4, 0x1aad3

    .line 50
    .line 51
    .line 52
    if-eq v3, v4, :cond_36

    .line 53
    .line 54
    goto :goto_79

    .line 55
    :cond_36
    const-string v3, "not"

    .line 56
    .line 57
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-nez v3, :cond_3f

    .line 62
    .line 63
    goto :goto_79

    .line 64
    :cond_3f
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-static {p0, p1}, Lj2/d;->d(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    xor-int/2addr p0, v5

    .line 73
    return p0

    .line 74
    :catchall_49
    move-exception p0

    .line 75
    goto :goto_a1

    .line 76
    :cond_4b
    const-string v3, "and"

    .line 77
    .line 78
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_79

    .line 83
    .line 84
    check-cast v1, Lorg/json/JSONArray;

    .line 85
    .line 86
    if-nez v1, :cond_58

    .line 87
    .line 88
    goto :goto_a4

    .line 89
    :cond_58
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    move v3, v2

    .line 94
    :goto_5d
    if-ge v3, p1, :cond_9d

    .line 95
    .line 96
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-static {p0, v4}, Lj2/d;->d(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-nez v4, :cond_6e

    .line 109
    .line 110
    goto :goto_a4

    .line 111
    :cond_6e
    add-int/lit8 v3, v3, 0x1

    .line 112
    .line 113
    goto :goto_5d

    .line 114
    :cond_71
    const-string v3, "or"

    .line 115
    .line 116
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    if-nez v3, :cond_83

    .line 121
    .line 122
    :cond_79
    :goto_79
    check-cast v1, Lorg/json/JSONObject;

    .line 123
    .line 124
    if-nez v1, :cond_7e

    .line 125
    .line 126
    goto :goto_a4

    .line 127
    :cond_7e
    invoke-static {p1, v1, p0}, Lj2/d;->g(Ljava/lang/String;Lorg/json/JSONObject;Landroid/os/Bundle;)Z

    .line 128
    .line 129
    .line 130
    move-result p0

    .line 131
    return p0

    .line 132
    :cond_83
    check-cast v1, Lorg/json/JSONArray;

    .line 133
    .line 134
    if-nez v1, :cond_88

    .line 135
    .line 136
    goto :goto_a4

    .line 137
    :cond_88
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    move v3, v2

    .line 142
    :goto_8d
    if-ge v3, p1, :cond_a4

    .line 143
    .line 144
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    invoke-static {p0, v4}, Lj2/d;->d(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 153
    .line 154
    .line 155
    move-result v4
    :try_end_9b
    .catchall {:try_start_11 .. :try_end_9b} :catchall_49

    .line 156
    if-eqz v4, :cond_9e

    .line 157
    .line 158
    :cond_9d
    return v5

    .line 159
    :cond_9e
    add-int/lit8 v3, v3, 0x1

    .line 160
    .line 161
    goto :goto_8d

    .line 162
    :goto_a1
    invoke-static {p0, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    :cond_a4
    :goto_a4
    return v2
.end method

.method public static final e(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 4

    .line 1
    const-class v0, Lj2/d;

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
    goto :goto_2e

    .line 10
    :cond_9
    :try_start_9
    const-string v1, "event"

    .line 11
    .line 12
    invoke-static {v1, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    sget-boolean v1, Lj2/d;->b:Z
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_2c

    .line 16
    .line 17
    if-eqz v1, :cond_2e

    .line 18
    .line 19
    if-nez p0, :cond_15

    .line 20
    .line 21
    goto :goto_2e

    .line 22
    :cond_15
    :try_start_15
    invoke-static {p0, p1}, Lj2/d;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string p1, "_audiencePropertyIds"

    .line 26
    .line 27
    invoke-static {p0}, Lj2/d;->c(Landroid/os/Bundle;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {p0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string p1, "cs_maca"

    .line 35
    .line 36
    const-string v1, "1"

    .line 37
    .line 38
    invoke-virtual {p0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p0}, Lj2/d;->f(Landroid/os/Bundle;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2b} :catch_2e
    .catchall {:try_start_15 .. :try_end_2b} :catchall_2c

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :catchall_2c
    move-exception p0

    .line 46
    goto :goto_2f

    .line 47
    :catch_2e
    :cond_2e
    :goto_2e
    return-void

    .line 48
    :goto_2f
    invoke-static {p0, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public static final f(Landroid/os/Bundle;)V
    .registers 5

    .line 1
    const-class v0, Lj2/d;

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
    goto :goto_1f

    .line 10
    :cond_9
    :try_start_9
    const-string v1, "params"

    .line 11
    .line 12
    invoke-static {v1, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    sget-object v1, Lj2/d;->d:[Ljava/lang/String;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    :goto_11
    const/16 v3, 0xd

    .line 19
    .line 20
    if-ge v2, v3, :cond_1f

    .line 21
    .line 22
    aget-object v3, v1, v2

    .line 23
    .line 24
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_1d

    .line 25
    .line 26
    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_11

    .line 30
    :catchall_1d
    move-exception p0

    .line 31
    goto :goto_20

    .line 32
    :cond_1f
    :goto_1f
    return-void

    .line 33
    :goto_20
    invoke-static {p0, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public static final g(Ljava/lang/String;Lorg/json/JSONObject;Landroid/os/Bundle;)Z
    .registers 12

    .line 1
    const-class v0, Lj2/d;

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
    goto/16 :goto_34d

    .line 11
    .line 12
    :cond_b
    :try_start_b
    invoke-static {p1}, Lj2/d;->b(Lorg/json/JSONObject;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-nez v1, :cond_13

    .line 17
    .line 18
    goto/16 :goto_34d

    .line 19
    .line 20
    :cond_13
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v4
    :try_end_23
    .catchall {:try_start_b .. :try_end_23} :catchall_61

    .line 36
    const/4 v5, 0x0

    .line 37
    if-eqz v4, :cond_28

    .line 38
    .line 39
    :goto_26
    move-object v4, v5

    .line 40
    goto :goto_4a

    .line 41
    :cond_28
    if-nez p1, :cond_2b

    .line 42
    .line 43
    goto :goto_26

    .line 44
    :cond_2b
    :try_start_2b
    new-instance v4, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    move v7, v2

    .line 54
    :goto_35
    if-ge v7, v6, :cond_4a

    .line 55
    .line 56
    invoke-virtual {p1, v7}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_42
    .catchall {:try_start_2b .. :try_end_42} :catchall_45

    .line 65
    .line 66
    .line 67
    add-int/lit8 v7, v7, 0x1

    .line 68
    .line 69
    goto :goto_35

    .line 70
    :catchall_45
    move-exception p1

    .line 71
    :try_start_46
    invoke-static {p1, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    goto :goto_26

    .line 75
    :cond_4a
    :goto_4a
    const-string p1, "exists"

    .line 76
    .line 77
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    const/4 v6, 0x1

    .line 82
    if-eqz p1, :cond_65

    .line 83
    .line 84
    if-eqz p2, :cond_64

    .line 85
    .line 86
    invoke-virtual {p2, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result p1
    :try_end_5d
    .catchall {:try_start_46 .. :try_end_5d} :catchall_61

    .line 94
    if-ne p0, p1, :cond_64

    .line 95
    .line 96
    move v2, v6

    .line 97
    goto :goto_64

    .line 98
    :catchall_61
    move-exception p0

    .line 99
    goto/16 :goto_37d

    .line 100
    .line 101
    :cond_64
    :goto_64
    return v2

    .line 102
    :cond_65
    const-string p1, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    .line 103
    .line 104
    if-eqz p2, :cond_78

    .line 105
    .line 106
    :try_start_69
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 107
    .line 108
    invoke-virtual {p0, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    invoke-static {p1, v7}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2, v7}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    if-nez v7, :cond_83

    .line 120
    .line 121
    :cond_78
    if-eqz p2, :cond_7e

    .line 122
    .line 123
    invoke-virtual {p2, p0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    :cond_7e
    if-nez v5, :cond_82

    .line 128
    .line 129
    goto/16 :goto_34d

    .line 130
    .line 131
    :cond_82
    move-object v7, v5

    .line 132
    :cond_83
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 133
    .line 134
    .line 135
    move-result p0

    .line 136
    sparse-switch p0, :sswitch_data_382

    .line 137
    .line 138
    .line 139
    goto/16 :goto_37c

    .line 140
    .line 141
    :sswitch_8c
    const-string p0, "i_starts_with"

    .line 142
    .line 143
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result p0

    .line 147
    if-nez p0, :cond_96

    .line 148
    .line 149
    goto/16 :goto_37c

    .line 150
    .line 151
    :cond_96
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 156
    .line 157
    invoke-virtual {p0, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    invoke-static {p1, p0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v3, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    invoke-static {p1, p2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    invoke-static {p0, p2, v2}, Lk7/o;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    goto/16 :goto_37c

    .line 176
    .line 177
    :sswitch_b0
    const-string p0, "not_contains"

    .line 178
    .line 179
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result p0

    .line 183
    if-nez p0, :cond_ba

    .line 184
    .line 185
    goto/16 :goto_37c

    .line 186
    .line 187
    :cond_ba
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    invoke-static {p0, v3}, Lk7/g;->x(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 192
    .line 193
    .line 194
    move-result p0

    .line 195
    if-nez p0, :cond_37c

    .line 196
    .line 197
    :cond_c4
    :goto_c4
    move v2, v6

    .line 198
    goto/16 :goto_37c

    .line 199
    .line 200
    :sswitch_c7
    const-string p0, "i_is_not_any"

    .line 201
    .line 202
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result p0

    .line 206
    if-nez p0, :cond_235

    .line 207
    .line 208
    goto/16 :goto_37c

    .line 209
    .line 210
    :sswitch_d1
    const-string p0, "i_contains"

    .line 211
    .line 212
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result p0

    .line 216
    if-nez p0, :cond_db

    .line 217
    .line 218
    goto/16 :goto_37c

    .line 219
    .line 220
    :cond_db
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p0

    .line 224
    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 225
    .line 226
    invoke-virtual {p0, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p0

    .line 230
    invoke-static {p1, p0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v3, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p2

    .line 237
    invoke-static {p1, p2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    invoke-static {p0, p2}, Lk7/g;->x(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    goto/16 :goto_37c

    .line 245
    .line 246
    :sswitch_f5
    const-string p0, "i_str_in"

    .line 247
    .line 248
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result p0

    .line 252
    if-nez p0, :cond_276

    .line 253
    .line 254
    goto/16 :goto_37c

    .line 255
    .line 256
    :sswitch_ff
    const-string p0, "i_str_eq"

    .line 257
    .line 258
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result p0

    .line 262
    if-nez p0, :cond_109

    .line 263
    .line 264
    goto/16 :goto_37c

    .line 265
    .line 266
    :cond_109
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object p0

    .line 270
    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 271
    .line 272
    invoke-virtual {p0, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object p0

    .line 276
    invoke-static {p1, p0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v3, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object p2

    .line 283
    invoke-static {p1, p2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v2

    .line 290
    goto/16 :goto_37c

    .line 291
    .line 292
    :sswitch_123
    const-string p0, "neq"

    .line 293
    .line 294
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result p0

    .line 298
    if-nez p0, :cond_1d3

    .line 299
    .line 300
    goto/16 :goto_37c

    .line 301
    .line 302
    :sswitch_12d
    const-string p0, "lte"

    .line 303
    .line 304
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    move-result p0

    .line 308
    if-nez p0, :cond_1b7

    .line 309
    .line 310
    goto/16 :goto_37c

    .line 311
    .line 312
    :sswitch_137
    const-string p0, "gte"

    .line 313
    .line 314
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result p0

    .line 318
    if-nez p0, :cond_191

    .line 319
    .line 320
    goto/16 :goto_37c

    .line 321
    .line 322
    :sswitch_141
    const-string p0, "ne"

    .line 323
    .line 324
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result p0

    .line 328
    if-nez p0, :cond_1d3

    .line 329
    .line 330
    goto/16 :goto_37c

    .line 331
    .line 332
    :sswitch_14b
    const-string p0, "lt"

    .line 333
    .line 334
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    move-result p0

    .line 338
    if-nez p0, :cond_219

    .line 339
    .line 340
    goto/16 :goto_37c

    .line 341
    .line 342
    :sswitch_155
    const-string p0, "le"

    .line 343
    .line 344
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 345
    .line 346
    .line 347
    move-result p0

    .line 348
    if-nez p0, :cond_1b7

    .line 349
    .line 350
    goto/16 :goto_37c

    .line 351
    .line 352
    :sswitch_15f
    const-string p0, "in"

    .line 353
    .line 354
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    move-result p0

    .line 358
    if-nez p0, :cond_34b

    .line 359
    .line 360
    goto/16 :goto_37c

    .line 361
    .line 362
    :sswitch_169
    const-string p0, "gt"

    .line 363
    .line 364
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 365
    .line 366
    .line 367
    move-result p0

    .line 368
    if-nez p0, :cond_1e9

    .line 369
    .line 370
    goto/16 :goto_37c

    .line 371
    .line 372
    :sswitch_173
    const-string p0, "ge"

    .line 373
    .line 374
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    move-result p0

    .line 378
    if-nez p0, :cond_191

    .line 379
    .line 380
    goto/16 :goto_37c

    .line 381
    .line 382
    :sswitch_17d
    const-string p0, "eq"

    .line 383
    .line 384
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 385
    .line 386
    .line 387
    move-result p0

    .line 388
    if-nez p0, :cond_205

    .line 389
    .line 390
    goto/16 :goto_37c

    .line 391
    .line 392
    :sswitch_187
    const-string p0, ">="

    .line 393
    .line 394
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 395
    .line 396
    .line 397
    move-result p0

    .line 398
    if-nez p0, :cond_191

    .line 399
    .line 400
    goto/16 :goto_37c

    .line 401
    .line 402
    :cond_191
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object p0

    .line 406
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 407
    .line 408
    .line 409
    move-result-wide p0

    .line 410
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 411
    .line 412
    .line 413
    move-result-wide v0

    .line 414
    cmpl-double p0, p0, v0

    .line 415
    .line 416
    if-ltz p0, :cond_37c

    .line 417
    .line 418
    goto/16 :goto_c4

    .line 419
    .line 420
    :sswitch_1a3
    const-string p0, "=="

    .line 421
    .line 422
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 423
    .line 424
    .line 425
    move-result p0

    .line 426
    if-nez p0, :cond_205

    .line 427
    .line 428
    goto/16 :goto_37c

    .line 429
    .line 430
    :sswitch_1ad
    const-string p0, "<="

    .line 431
    .line 432
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 433
    .line 434
    .line 435
    move-result p0

    .line 436
    if-nez p0, :cond_1b7

    .line 437
    .line 438
    goto/16 :goto_37c

    .line 439
    .line 440
    :cond_1b7
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object p0

    .line 444
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 445
    .line 446
    .line 447
    move-result-wide p0

    .line 448
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 449
    .line 450
    .line 451
    move-result-wide v0

    .line 452
    cmpg-double p0, p0, v0

    .line 453
    .line 454
    if-gtz p0, :cond_37c

    .line 455
    .line 456
    goto/16 :goto_c4

    .line 457
    .line 458
    :sswitch_1c9
    const-string p0, "!="

    .line 459
    .line 460
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 461
    .line 462
    .line 463
    move-result p0

    .line 464
    if-nez p0, :cond_1d3

    .line 465
    .line 466
    goto/16 :goto_37c

    .line 467
    .line 468
    :cond_1d3
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object p0

    .line 472
    invoke-static {p0, v3}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 473
    .line 474
    .line 475
    move-result p0

    .line 476
    if-nez p0, :cond_37c

    .line 477
    .line 478
    goto/16 :goto_c4

    .line 479
    .line 480
    :sswitch_1df
    const-string p0, ">"

    .line 481
    .line 482
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 483
    .line 484
    .line 485
    move-result p0

    .line 486
    if-nez p0, :cond_1e9

    .line 487
    .line 488
    goto/16 :goto_37c

    .line 489
    .line 490
    :cond_1e9
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object p0

    .line 494
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 495
    .line 496
    .line 497
    move-result-wide p0

    .line 498
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 499
    .line 500
    .line 501
    move-result-wide v0

    .line 502
    cmpl-double p0, p0, v0

    .line 503
    .line 504
    if-lez p0, :cond_37c

    .line 505
    .line 506
    goto/16 :goto_c4

    .line 507
    .line 508
    :sswitch_1fb
    const-string p0, "="

    .line 509
    .line 510
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 511
    .line 512
    .line 513
    move-result p0

    .line 514
    if-nez p0, :cond_205

    .line 515
    .line 516
    goto/16 :goto_37c

    .line 517
    .line 518
    :cond_205
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object p0

    .line 522
    invoke-static {p0, v3}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 523
    .line 524
    .line 525
    move-result v2

    .line 526
    goto/16 :goto_37c

    .line 527
    .line 528
    :sswitch_20f
    const-string p0, "<"

    .line 529
    .line 530
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 531
    .line 532
    .line 533
    move-result p0

    .line 534
    if-nez p0, :cond_219

    .line 535
    .line 536
    goto/16 :goto_37c

    .line 537
    .line 538
    :cond_219
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object p0

    .line 542
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 543
    .line 544
    .line 545
    move-result-wide p0

    .line 546
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 547
    .line 548
    .line 549
    move-result-wide v0

    .line 550
    cmpg-double p0, p0, v0

    .line 551
    .line 552
    if-gez p0, :cond_37c

    .line 553
    .line 554
    goto/16 :goto_c4

    .line 555
    .line 556
    :sswitch_22b
    const-string p0, "i_str_not_in"

    .line 557
    .line 558
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 559
    .line 560
    .line 561
    move-result p0

    .line 562
    if-nez p0, :cond_235

    .line 563
    .line 564
    goto/16 :goto_37c

    .line 565
    .line 566
    :cond_235
    if-nez v4, :cond_239

    .line 567
    .line 568
    goto/16 :goto_34d

    .line 569
    .line 570
    :cond_239
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 571
    .line 572
    .line 573
    move-result p0

    .line 574
    if-eqz p0, :cond_241

    .line 575
    .line 576
    goto/16 :goto_c4

    .line 577
    .line 578
    :cond_241
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 579
    .line 580
    .line 581
    move-result p0

    .line 582
    move p2, v2

    .line 583
    :cond_246
    if-ge p2, p0, :cond_c4

    .line 584
    .line 585
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 586
    .line 587
    .line 588
    move-result-object v1

    .line 589
    add-int/lit8 p2, p2, 0x1

    .line 590
    .line 591
    check-cast v1, Ljava/lang/String;

    .line 592
    .line 593
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 594
    .line 595
    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v1

    .line 599
    invoke-static {p1, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 600
    .line 601
    .line 602
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object v5

    .line 606
    invoke-virtual {v5, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object v3

    .line 610
    invoke-static {p1, v3}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 611
    .line 612
    .line 613
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 614
    .line 615
    .line 616
    move-result v1

    .line 617
    if-eqz v1, :cond_246

    .line 618
    .line 619
    goto/16 :goto_37c

    .line 620
    .line 621
    :sswitch_26c
    const-string p0, "i_is_any"

    .line 622
    .line 623
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 624
    .line 625
    .line 626
    move-result p0

    .line 627
    if-nez p0, :cond_276

    .line 628
    .line 629
    goto/16 :goto_37c

    .line 630
    .line 631
    :cond_276
    if-nez v4, :cond_27a

    .line 632
    .line 633
    goto/16 :goto_34d

    .line 634
    .line 635
    :cond_27a
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 636
    .line 637
    .line 638
    move-result p0

    .line 639
    if-eqz p0, :cond_282

    .line 640
    .line 641
    goto/16 :goto_37c

    .line 642
    .line 643
    :cond_282
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 644
    .line 645
    .line 646
    move-result p0

    .line 647
    move p2, v2

    .line 648
    :cond_287
    if-ge p2, p0, :cond_37c

    .line 649
    .line 650
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 651
    .line 652
    .line 653
    move-result-object v1

    .line 654
    add-int/lit8 p2, p2, 0x1

    .line 655
    .line 656
    check-cast v1, Ljava/lang/String;

    .line 657
    .line 658
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 659
    .line 660
    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 661
    .line 662
    .line 663
    move-result-object v1

    .line 664
    invoke-static {p1, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 665
    .line 666
    .line 667
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object v5

    .line 671
    invoke-virtual {v5, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 672
    .line 673
    .line 674
    move-result-object v3

    .line 675
    invoke-static {p1, v3}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 676
    .line 677
    .line 678
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 679
    .line 680
    .line 681
    move-result v1

    .line 682
    if-eqz v1, :cond_287

    .line 683
    .line 684
    goto/16 :goto_c4

    .line 685
    .line 686
    :sswitch_2ad
    const-string p0, "i_str_neq"

    .line 687
    .line 688
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 689
    .line 690
    .line 691
    move-result p0

    .line 692
    if-nez p0, :cond_2b7

    .line 693
    .line 694
    goto/16 :goto_37c

    .line 695
    .line 696
    :cond_2b7
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 697
    .line 698
    .line 699
    move-result-object p0

    .line 700
    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 701
    .line 702
    invoke-virtual {p0, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 703
    .line 704
    .line 705
    move-result-object p0

    .line 706
    invoke-static {p1, p0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 707
    .line 708
    .line 709
    invoke-virtual {v3, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 710
    .line 711
    .line 712
    move-result-object p2

    .line 713
    invoke-static {p1, p2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 714
    .line 715
    .line 716
    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 717
    .line 718
    .line 719
    move-result p0

    .line 720
    if-nez p0, :cond_37c

    .line 721
    .line 722
    goto/16 :goto_c4

    .line 723
    .line 724
    :sswitch_2d3
    const-string p0, "contains"

    .line 725
    .line 726
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 727
    .line 728
    .line 729
    move-result p0

    .line 730
    if-nez p0, :cond_2dd

    .line 731
    .line 732
    goto/16 :goto_37c

    .line 733
    .line 734
    :cond_2dd
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 735
    .line 736
    .line 737
    move-result-object p0

    .line 738
    invoke-static {p0, v3}, Lk7/g;->x(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 739
    .line 740
    .line 741
    move-result v2

    .line 742
    goto/16 :goto_37c

    .line 743
    .line 744
    :sswitch_2e7
    const-string p0, "is_not_any"

    .line 745
    .line 746
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 747
    .line 748
    .line 749
    move-result p0

    .line 750
    if-nez p0, :cond_336

    .line 751
    .line 752
    goto/16 :goto_37c

    .line 753
    .line 754
    :sswitch_2f1
    const-string p0, "regex_match"

    .line 755
    .line 756
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 757
    .line 758
    .line 759
    move-result p0

    .line 760
    if-nez p0, :cond_2fb

    .line 761
    .line 762
    goto/16 :goto_37c

    .line 763
    .line 764
    :cond_2fb
    const-string p0, "pattern"

    .line 765
    .line 766
    invoke-static {p0, v3}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 767
    .line 768
    .line 769
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 770
    .line 771
    .line 772
    move-result-object p0

    .line 773
    const-string p1, "compile(...)"

    .line 774
    .line 775
    invoke-static {p1, p0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 776
    .line 777
    .line 778
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 779
    .line 780
    .line 781
    move-result-object p1

    .line 782
    const-string p2, "input"

    .line 783
    .line 784
    invoke-static {p2, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 785
    .line 786
    .line 787
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 788
    .line 789
    .line 790
    move-result-object p0

    .line 791
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    .line 792
    .line 793
    .line 794
    move-result v2

    .line 795
    goto :goto_37c

    .line 796
    :sswitch_31b
    const-string p0, "starts_with"

    .line 797
    .line 798
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 799
    .line 800
    .line 801
    move-result p0

    .line 802
    if-nez p0, :cond_324

    .line 803
    .line 804
    goto :goto_37c

    .line 805
    :cond_324
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 806
    .line 807
    .line 808
    move-result-object p0

    .line 809
    invoke-static {p0, v3, v2}, Lk7/o;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 810
    .line 811
    .line 812
    move-result v2

    .line 813
    goto :goto_37c

    .line 814
    :sswitch_32d
    const-string p0, "not_in"

    .line 815
    .line 816
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 817
    .line 818
    .line 819
    move-result p0

    .line 820
    if-nez p0, :cond_336

    .line 821
    .line 822
    goto :goto_37c

    .line 823
    :cond_336
    if-nez v4, :cond_339

    .line 824
    .line 825
    goto :goto_34d

    .line 826
    :cond_339
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 827
    .line 828
    .line 829
    move-result-object p0

    .line 830
    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 831
    .line 832
    .line 833
    move-result v2

    .line 834
    goto :goto_37c

    .line 835
    :sswitch_342
    const-string p0, "is_any"

    .line 836
    .line 837
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 838
    .line 839
    .line 840
    move-result p0

    .line 841
    if-nez p0, :cond_34b

    .line 842
    .line 843
    goto :goto_37c

    .line 844
    :cond_34b
    if-nez v4, :cond_34e

    .line 845
    .line 846
    :goto_34d
    return v2

    .line 847
    :cond_34e
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 848
    .line 849
    .line 850
    move-result-object p0

    .line 851
    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 852
    .line 853
    .line 854
    move-result v2

    .line 855
    goto :goto_37c

    .line 856
    :sswitch_357
    const-string p0, "i_not_contains"

    .line 857
    .line 858
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 859
    .line 860
    .line 861
    move-result p0

    .line 862
    if-nez p0, :cond_360

    .line 863
    .line 864
    goto :goto_37c

    .line 865
    :cond_360
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 866
    .line 867
    .line 868
    move-result-object p0

    .line 869
    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 870
    .line 871
    invoke-virtual {p0, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 872
    .line 873
    .line 874
    move-result-object p0

    .line 875
    invoke-static {p1, p0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 876
    .line 877
    .line 878
    invoke-virtual {v3, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 879
    .line 880
    .line 881
    move-result-object p2

    .line 882
    invoke-static {p1, p2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 883
    .line 884
    .line 885
    invoke-static {p0, p2}, Lk7/g;->x(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 886
    .line 887
    .line 888
    move-result p0
    :try_end_378
    .catchall {:try_start_69 .. :try_end_378} :catchall_61

    .line 889
    if-nez p0, :cond_37c

    .line 890
    .line 891
    goto/16 :goto_c4

    .line 892
    .line 893
    :cond_37c
    :goto_37c
    return v2

    .line 894
    :goto_37d
    invoke-static {p0, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 895
    .line 896
    .line 897
    return v2

    .line 898
    nop

    .line 899
    :sswitch_data_382
    .sparse-switch
        -0x671069df -> :sswitch_357
        -0x4651eea9 -> :sswitch_342
        -0x3df88def -> :sswitch_32d
        -0x39c5d40c -> :sswitch_31b
        -0x39996433 -> :sswitch_2f1
        -0x27ac6395 -> :sswitch_2e7
        -0x21d289e1 -> :sswitch_2d3
        -0x138cbb4a -> :sswitch_2ad
        -0x9868a13 -> :sswitch_26c
        -0x5874e8b -> :sswitch_22b
        0x3c -> :sswitch_20f
        0x3d -> :sswitch_1fb
        0x3e -> :sswitch_1df
        0x43c -> :sswitch_1c9
        0x781 -> :sswitch_1ad
        0x7a0 -> :sswitch_1a3
        0x7bf -> :sswitch_187
        0xcac -> :sswitch_17d
        0xcde -> :sswitch_173
        0xced -> :sswitch_169
        0xd25 -> :sswitch_15f
        0xd79 -> :sswitch_155
        0xd88 -> :sswitch_14b
        0xdb7 -> :sswitch_141
        0x19118 -> :sswitch_137
        0x1a3dd -> :sswitch_12d
        0x1a99a -> :sswitch_123
        0x7a09e10 -> :sswitch_ff
        0x7a09e89 -> :sswitch_f5
        0x15b20d35 -> :sswitch_d1
        0x410ec601 -> :sswitch_c7
        0x72587a0b -> :sswitch_b0
        0x74e4351e -> :sswitch_8c
    .end sparse-switch
.end method
