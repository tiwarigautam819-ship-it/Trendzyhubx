###### Class h8.b (h8.b)
.class public abstract Lh8/b;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# direct methods
.method public static b(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;
    .registers 5

    .line 1
    if-nez p1, :cond_4

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_4
    const-class v0, Lh8/b;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x1

    .line 12
    new-array v1, v1, [Ljava/lang/Class;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    aput-object p0, v1, v2

    .line 16
    .line 17
    invoke-static {v0, v1, p1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public static c(I[Ljava/lang/Object;)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    if-ge v0, p0, :cond_23

    .line 3
    .line 4
    aget-object v1, p1, v0

    .line 5
    .line 6
    if-eqz v1, :cond_a

    .line 7
    .line 8
    add-int/lit8 v0, v0, 0x1

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_a
    new-instance p0, Ljava/lang/NullPointerException;

    .line 12
    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const/16 v1, 0x14

    .line 16
    .line 17
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 18
    .line 19
    .line 20
    const-string v1, "at index "

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p0

    .line 36
    :cond_23
    return-void
.end method

.method public static d(Lorg/json/JSONObject;)Lx1/a;
    .registers 15

    .line 1
    const-string v0, "version"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-gt v0, v1, :cond_9e

    .line 9
    .line 10
    const-string v0, "token"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    new-instance v9, Ljava/util/Date;

    .line 17
    .line 18
    const-string v1, "expires_at"

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    invoke-direct {v9, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 25
    .line 26
    .line 27
    const-string v1, "permissions"

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v3, "declined_permissions"

    .line 34
    .line 35
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const-string v4, "expired_permissions"

    .line 40
    .line 41
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    new-instance v10, Ljava/util/Date;

    .line 46
    .line 47
    const-string v5, "last_refresh"

    .line 48
    .line 49
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 50
    .line 51
    .line 52
    move-result-wide v5

    .line 53
    invoke-direct {v10, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 54
    .line 55
    .line 56
    const-string v5, "source"

    .line 57
    .line 58
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    const-string v6, "jsonObject.getString(SOURCE_KEY)"

    .line 63
    .line 64
    invoke-static {v6, v5}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    invoke-static {v5}, Lx1/f;->valueOf(Ljava/lang/String;)Lx1/f;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    const-string v5, "application_id"

    .line 72
    .line 73
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    const-string v6, "user_id"

    .line 78
    .line 79
    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    new-instance v11, Ljava/util/Date;

    .line 84
    .line 85
    const-string v7, "data_access_expiration_time"

    .line 86
    .line 87
    const-wide/16 v12, 0x0

    .line 88
    .line 89
    invoke-virtual {p0, v7, v12, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 90
    .line 91
    .line 92
    move-result-wide v12

    .line 93
    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 94
    .line 95
    .line 96
    const-string v7, "graph_domain"

    .line 97
    .line 98
    const/4 v12, 0x0

    .line 99
    invoke-virtual {p0, v7, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v12

    .line 103
    move-object p0, v1

    .line 104
    new-instance v1, Lx1/a;

    .line 105
    .line 106
    invoke-static {v0, v2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    const-string v0, "applicationId"

    .line 110
    .line 111
    invoke-static {v0, v5}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    const-string v0, "userId"

    .line 115
    .line 116
    invoke-static {v0, v6}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    const-string v0, "permissionsArray"

    .line 120
    .line 121
    invoke-static {v0, p0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    invoke-static {p0}, Lq2/g0;->D(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    const-string v0, "declinedPermissionsArray"

    .line 129
    .line 130
    invoke-static {v0, v3}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    invoke-static {v3}, Lq2/g0;->D(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    if-nez v4, :cond_95

    .line 138
    .line 139
    new-instance v3, Ljava/util/ArrayList;

    .line 140
    .line 141
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .line 143
    .line 144
    :goto_8f
    move-object v7, v3

    .line 145
    move-object v3, v5

    .line 146
    move-object v4, v6

    .line 147
    move-object v5, p0

    .line 148
    move-object v6, v0

    .line 149
    goto :goto_9a

    .line 150
    :cond_95
    invoke-static {v4}, Lq2/g0;->D(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    goto :goto_8f

    .line 155
    :goto_9a
    invoke-direct/range {v1 .. v12}, Lx1/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lx1/f;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    return-object v1

    .line 159
    :cond_9e
    new-instance p0, Lx1/l;

    .line 160
    .line 161
    const-string v0, "Unknown AccessToken serialization format."

    .line 162
    .line 163
    invoke-direct {p0, v0}, Lx1/l;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw p0
.end method

.method public static e([F[I[B)I
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p2, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 3
    .line 4
    .line 5
    const v1, 0x7fffffff

    .line 6
    .line 7
    .line 8
    move v2, v0

    .line 9
    :goto_8
    const/4 v3, 0x6

    .line 10
    if-ge v2, v3, :cond_27

    .line 11
    .line 12
    aget v3, p0, v2

    .line 13
    .line 14
    float-to-double v3, v3

    .line 15
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    double-to-int v3, v3

    .line 20
    aput v3, p1, v2

    .line 21
    .line 22
    if-le v1, v3, :cond_1b

    .line 23
    .line 24
    invoke-static {p2, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 25
    .line 26
    .line 27
    move v1, v3

    .line 28
    :cond_1b
    if-ne v1, v3, :cond_24

    .line 29
    .line 30
    aget-byte v3, p2, v2

    .line 31
    .line 32
    add-int/lit8 v3, v3, 0x1

    .line 33
    .line 34
    int-to-byte v3, v3

    .line 35
    aput-byte v3, p2, v2

    .line 36
    .line 37
    :cond_24
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    goto :goto_8

    .line 40
    :cond_27
    return v1
.end method

.method public static f()Lx1/a;
    .registers 1

    .line 1
    sget-object v0, Lx1/e;->f:Lo3/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lo3/a;->d()Lx1/e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lx1/e;->c:Lx1/a;

    .line 8
    .line 9
    return-object v0
.end method

.method public static g(Landroid/widget/EdgeEffect;)F
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    if-lt v0, v1, :cond_b

    .line 6
    .line 7
    invoke-static {p0}, Lm0/c;->b(Landroid/widget/EdgeEffect;)F

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_b
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method public static h(C)V
    .registers 6

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    rsub-int/lit8 v2, v2, 0x4

    .line 15
    .line 16
    const-string v3, "0000"

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 34
    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v3, "Illegal character: "

    .line 38
    .line 39
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p0, " (0x"

    .line 46
    .line 47
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const/16 p0, 0x29

    .line 54
    .line 55
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v1
.end method

.method public static i()Z
    .registers 2

    .line 1
    sget-object v0, Lx1/e;->f:Lo3/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lo3/a;->d()Lx1/e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lx1/e;->c:Lx1/a;

    .line 8
    .line 9
    if-eqz v0, :cond_19

    .line 10
    .line 11
    new-instance v1, Ljava/util/Date;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v0, v0, Lx1/a;->a:Ljava/util/Date;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_19

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    return v0

    .line 26
    :cond_19
    const/4 v0, 0x0

    .line 27
    return v0
.end method

.method public static j(C)Z
    .registers 2

    .line 1
    const/16 v0, 0x30

    .line 2
    .line 3
    if-lt p0, v0, :cond_a

    .line 4
    .line 5
    const/16 v0, 0x39

    .line 6
    .line 7
    if-gt p0, v0, :cond_a

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_a
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public static k(C)Z
    .registers 2

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    if-lt p0, v0, :cond_a

    .line 4
    .line 5
    const/16 v0, 0xff

    .line 6
    .line 7
    if-gt p0, v0, :cond_a

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_a
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public static l(C)Z
    .registers 2

    .line 1
    const/16 v0, 0xd

    .line 2
    .line 3
    if-eq p0, v0, :cond_24

    .line 4
    .line 5
    const/16 v0, 0x2a

    .line 6
    .line 7
    if-eq p0, v0, :cond_24

    .line 8
    .line 9
    const/16 v0, 0x3e

    .line 10
    .line 11
    if-ne p0, v0, :cond_d

    .line 12
    .line 13
    goto :goto_24

    .line 14
    :cond_d
    const/16 v0, 0x20

    .line 15
    .line 16
    if-eq p0, v0, :cond_24

    .line 17
    .line 18
    const/16 v0, 0x30

    .line 19
    .line 20
    if-lt p0, v0, :cond_19

    .line 21
    .line 22
    const/16 v0, 0x39

    .line 23
    .line 24
    if-le p0, v0, :cond_24

    .line 25
    .line 26
    :cond_19
    const/16 v0, 0x41

    .line 27
    .line 28
    if-lt p0, v0, :cond_22

    .line 29
    .line 30
    const/16 v0, 0x5a

    .line 31
    .line 32
    if-gt p0, v0, :cond_22

    .line 33
    .line 34
    goto :goto_24

    .line 35
    :cond_22
    const/4 p0, 0x0

    .line 36
    return p0

    .line 37
    :cond_24
    :goto_24
    const/4 p0, 0x1

    .line 38
    return p0
.end method

.method public static m(Ljava/lang/CharSequence;II)I
    .registers 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-lt v1, v2, :cond_b

    .line 10
    .line 11
    return p2

    .line 12
    :cond_b
    const/4 v2, 0x0

    .line 13
    const/high16 v3, 0x40000000    # 2.0f

    .line 14
    .line 15
    const/4 v4, 0x6

    .line 16
    const/4 v5, 0x5

    .line 17
    const/high16 v6, 0x3f800000    # 1.0f

    .line 18
    .line 19
    const/4 v7, 0x2

    .line 20
    const/4 v8, 0x4

    .line 21
    const/4 v9, 0x3

    .line 22
    const/4 v10, 0x0

    .line 23
    const/4 v11, 0x1

    .line 24
    if-nez p2, :cond_2a

    .line 25
    .line 26
    new-array v12, v4, [F

    .line 27
    .line 28
    aput v2, v12, v10

    .line 29
    .line 30
    aput v6, v12, v11

    .line 31
    .line 32
    aput v6, v12, v7

    .line 33
    .line 34
    aput v6, v12, v9

    .line 35
    .line 36
    aput v6, v12, v8

    .line 37
    .line 38
    const/high16 v2, 0x3fa00000    # 1.25f

    .line 39
    .line 40
    aput v2, v12, v5

    .line 41
    .line 42
    goto :goto_3c

    .line 43
    :cond_2a
    new-array v12, v4, [F

    .line 44
    .line 45
    aput v6, v12, v10

    .line 46
    .line 47
    aput v3, v12, v11

    .line 48
    .line 49
    aput v3, v12, v7

    .line 50
    .line 51
    aput v3, v12, v9

    .line 52
    .line 53
    aput v3, v12, v8

    .line 54
    .line 55
    const/high16 v13, 0x40100000    # 2.25f

    .line 56
    .line 57
    aput v13, v12, v5

    .line 58
    .line 59
    aput v2, v12, p2

    .line 60
    .line 61
    :goto_3c
    move v2, v10

    .line 62
    :goto_3d
    add-int v13, v1, v2

    .line 63
    .line 64
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 65
    .line 66
    .line 67
    move-result v14

    .line 68
    if-ne v13, v14, :cond_81

    .line 69
    .line 70
    new-array v0, v4, [B

    .line 71
    .line 72
    new-array v1, v4, [I

    .line 73
    .line 74
    invoke-static {v12, v1, v0}, Lh8/b;->e([F[I[B)I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    move v3, v10

    .line 79
    move v6, v3

    .line 80
    :goto_4f
    if-ge v3, v4, :cond_57

    .line 81
    .line 82
    aget-byte v12, v0, v3

    .line 83
    .line 84
    add-int/2addr v6, v12

    .line 85
    add-int/lit8 v3, v3, 0x1

    .line 86
    .line 87
    goto :goto_4f

    .line 88
    :cond_57
    aget v1, v1, v10

    .line 89
    .line 90
    if-ne v1, v2, :cond_5d

    .line 91
    .line 92
    goto/16 :goto_193

    .line 93
    .line 94
    :cond_5d
    if-ne v6, v11, :cond_67

    .line 95
    .line 96
    aget-byte v1, v0, v5

    .line 97
    .line 98
    if-lez v1, :cond_67

    .line 99
    .line 100
    move/from16 v16, v5

    .line 101
    .line 102
    goto/16 :goto_1ef

    .line 103
    .line 104
    :cond_67
    if-ne v6, v11, :cond_6f

    .line 105
    .line 106
    aget-byte v1, v0, v8

    .line 107
    .line 108
    if-lez v1, :cond_6f

    .line 109
    .line 110
    goto/16 :goto_1a9

    .line 111
    .line 112
    :cond_6f
    if-ne v6, v11, :cond_79

    .line 113
    .line 114
    aget-byte v1, v0, v7

    .line 115
    .line 116
    if-lez v1, :cond_79

    .line 117
    .line 118
    move/from16 v19, v7

    .line 119
    .line 120
    goto/16 :goto_1ae

    .line 121
    .line 122
    :cond_79
    if-ne v6, v11, :cond_1ee

    .line 123
    .line 124
    aget-byte v0, v0, v9

    .line 125
    .line 126
    if-lez v0, :cond_1ee

    .line 127
    .line 128
    goto/16 :goto_1b3

    .line 129
    .line 130
    :cond_81
    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    .line 131
    .line 132
    .line 133
    move-result v13

    .line 134
    add-int/lit8 v2, v2, 0x1

    .line 135
    .line 136
    invoke-static {v13}, Lh8/b;->j(C)Z

    .line 137
    .line 138
    .line 139
    move-result v14

    .line 140
    if-eqz v14, :cond_95

    .line 141
    .line 142
    aget v14, v12, v10

    .line 143
    .line 144
    const/high16 v15, 0x3f000000    # 0.5f

    .line 145
    .line 146
    add-float/2addr v14, v15

    .line 147
    aput v14, v12, v10

    .line 148
    .line 149
    goto :goto_b6

    .line 150
    :cond_95
    invoke-static {v13}, Lh8/b;->k(C)Z

    .line 151
    .line 152
    .line 153
    move-result v14

    .line 154
    if-eqz v14, :cond_a9

    .line 155
    .line 156
    aget v14, v12, v10

    .line 157
    .line 158
    float-to-double v14, v14

    .line 159
    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    .line 160
    .line 161
    .line 162
    move-result-wide v14

    .line 163
    double-to-float v14, v14

    .line 164
    aput v14, v12, v10

    .line 165
    .line 166
    add-float/2addr v14, v3

    .line 167
    aput v14, v12, v10

    .line 168
    .line 169
    goto :goto_b6

    .line 170
    :cond_a9
    aget v14, v12, v10

    .line 171
    .line 172
    float-to-double v14, v14

    .line 173
    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    .line 174
    .line 175
    .line 176
    move-result-wide v14

    .line 177
    double-to-float v14, v14

    .line 178
    aput v14, v12, v10

    .line 179
    .line 180
    add-float/2addr v14, v6

    .line 181
    aput v14, v12, v10

    .line 182
    .line 183
    :goto_b6
    const v14, 0x3faaaaab

    .line 184
    .line 185
    .line 186
    const v15, 0x402aaaab

    .line 187
    .line 188
    .line 189
    const/16 v3, 0x39

    .line 190
    .line 191
    move/from16 v16, v5

    .line 192
    .line 193
    const/16 v5, 0x30

    .line 194
    .line 195
    const v17, 0x3f2aaaab

    .line 196
    .line 197
    .line 198
    move/from16 v18, v6

    .line 199
    .line 200
    const/16 v6, 0x20

    .line 201
    .line 202
    if-eq v13, v6, :cond_d2

    .line 203
    .line 204
    if-lt v13, v5, :cond_cf

    .line 205
    .line 206
    if-le v13, v3, :cond_d2

    .line 207
    .line 208
    :cond_cf
    move/from16 v19, v7

    .line 209
    .line 210
    goto :goto_d5

    .line 211
    :cond_d2
    move/from16 v19, v7

    .line 212
    .line 213
    goto :goto_f0

    .line 214
    :goto_d5
    const/16 v7, 0x41

    .line 215
    .line 216
    if-lt v13, v7, :cond_de

    .line 217
    .line 218
    const/16 v7, 0x5a

    .line 219
    .line 220
    if-gt v13, v7, :cond_de

    .line 221
    .line 222
    goto :goto_f0

    .line 223
    :cond_de
    invoke-static {v13}, Lh8/b;->k(C)Z

    .line 224
    .line 225
    .line 226
    move-result v7

    .line 227
    if-eqz v7, :cond_ea

    .line 228
    .line 229
    aget v7, v12, v11

    .line 230
    .line 231
    add-float/2addr v7, v15

    .line 232
    aput v7, v12, v11

    .line 233
    .line 234
    goto :goto_f6

    .line 235
    :cond_ea
    aget v7, v12, v11

    .line 236
    .line 237
    add-float/2addr v7, v14

    .line 238
    aput v7, v12, v11

    .line 239
    .line 240
    goto :goto_f6

    .line 241
    :goto_f0
    aget v7, v12, v11

    .line 242
    .line 243
    add-float v7, v7, v17

    .line 244
    .line 245
    aput v7, v12, v11

    .line 246
    .line 247
    :goto_f6
    if-eq v13, v6, :cond_117

    .line 248
    .line 249
    if-lt v13, v5, :cond_fc

    .line 250
    .line 251
    if-le v13, v3, :cond_117

    .line 252
    .line 253
    :cond_fc
    const/16 v3, 0x61

    .line 254
    .line 255
    if-lt v13, v3, :cond_105

    .line 256
    .line 257
    const/16 v3, 0x7a

    .line 258
    .line 259
    if-gt v13, v3, :cond_105

    .line 260
    .line 261
    goto :goto_117

    .line 262
    :cond_105
    invoke-static {v13}, Lh8/b;->k(C)Z

    .line 263
    .line 264
    .line 265
    move-result v3

    .line 266
    if-eqz v3, :cond_111

    .line 267
    .line 268
    aget v3, v12, v19

    .line 269
    .line 270
    add-float/2addr v3, v15

    .line 271
    aput v3, v12, v19

    .line 272
    .line 273
    goto :goto_11d

    .line 274
    :cond_111
    aget v3, v12, v19

    .line 275
    .line 276
    add-float/2addr v3, v14

    .line 277
    aput v3, v12, v19

    .line 278
    .line 279
    goto :goto_11d

    .line 280
    :cond_117
    :goto_117
    aget v3, v12, v19

    .line 281
    .line 282
    add-float v3, v3, v17

    .line 283
    .line 284
    aput v3, v12, v19

    .line 285
    .line 286
    :goto_11d
    invoke-static {v13}, Lh8/b;->l(C)Z

    .line 287
    .line 288
    .line 289
    move-result v3

    .line 290
    if-eqz v3, :cond_12a

    .line 291
    .line 292
    aget v3, v12, v9

    .line 293
    .line 294
    add-float v3, v3, v17

    .line 295
    .line 296
    aput v3, v12, v9

    .line 297
    .line 298
    goto :goto_141

    .line 299
    :cond_12a
    invoke-static {v13}, Lh8/b;->k(C)Z

    .line 300
    .line 301
    .line 302
    move-result v3

    .line 303
    if-eqz v3, :cond_139

    .line 304
    .line 305
    aget v3, v12, v9

    .line 306
    .line 307
    const v5, 0x408aaaab

    .line 308
    .line 309
    .line 310
    add-float/2addr v3, v5

    .line 311
    aput v3, v12, v9

    .line 312
    .line 313
    goto :goto_141

    .line 314
    :cond_139
    aget v3, v12, v9

    .line 315
    .line 316
    const v5, 0x40555555

    .line 317
    .line 318
    .line 319
    add-float/2addr v3, v5

    .line 320
    aput v3, v12, v9

    .line 321
    .line 322
    :goto_141
    if-lt v13, v6, :cond_14f

    .line 323
    .line 324
    const/16 v3, 0x5e

    .line 325
    .line 326
    if-gt v13, v3, :cond_14f

    .line 327
    .line 328
    aget v3, v12, v8

    .line 329
    .line 330
    const/high16 v5, 0x3f400000    # 0.75f

    .line 331
    .line 332
    add-float/2addr v3, v5

    .line 333
    aput v3, v12, v8

    .line 334
    .line 335
    goto :goto_164

    .line 336
    :cond_14f
    invoke-static {v13}, Lh8/b;->k(C)Z

    .line 337
    .line 338
    .line 339
    move-result v3

    .line 340
    if-eqz v3, :cond_15d

    .line 341
    .line 342
    aget v3, v12, v8

    .line 343
    .line 344
    const/high16 v5, 0x40880000    # 4.25f

    .line 345
    .line 346
    add-float/2addr v3, v5

    .line 347
    aput v3, v12, v8

    .line 348
    .line 349
    goto :goto_164

    .line 350
    :cond_15d
    aget v3, v12, v8

    .line 351
    .line 352
    const/high16 v5, 0x40500000    # 3.25f

    .line 353
    .line 354
    add-float/2addr v3, v5

    .line 355
    aput v3, v12, v8

    .line 356
    .line 357
    :goto_164
    aget v3, v12, v16

    .line 358
    .line 359
    add-float v3, v3, v18

    .line 360
    .line 361
    aput v3, v12, v16

    .line 362
    .line 363
    if-lt v2, v8, :cond_1f0

    .line 364
    .line 365
    new-array v3, v4, [I

    .line 366
    .line 367
    new-array v5, v4, [B

    .line 368
    .line 369
    invoke-static {v12, v3, v5}, Lh8/b;->e([F[I[B)I

    .line 370
    .line 371
    .line 372
    move v6, v10

    .line 373
    move v7, v6

    .line 374
    :goto_175
    if-ge v6, v4, :cond_17d

    .line 375
    .line 376
    aget-byte v13, v5, v6

    .line 377
    .line 378
    add-int/2addr v7, v13

    .line 379
    add-int/lit8 v6, v6, 0x1

    .line 380
    .line 381
    goto :goto_175

    .line 382
    :cond_17d
    aget v6, v3, v10

    .line 383
    .line 384
    aget v13, v3, v16

    .line 385
    .line 386
    if-ge v6, v13, :cond_194

    .line 387
    .line 388
    aget v14, v3, v11

    .line 389
    .line 390
    if-ge v6, v14, :cond_194

    .line 391
    .line 392
    aget v14, v3, v19

    .line 393
    .line 394
    if-ge v6, v14, :cond_194

    .line 395
    .line 396
    aget v14, v3, v9

    .line 397
    .line 398
    if-ge v6, v14, :cond_194

    .line 399
    .line 400
    aget v14, v3, v8

    .line 401
    .line 402
    if-ge v6, v14, :cond_194

    .line 403
    .line 404
    :goto_193
    return v10

    .line 405
    :cond_194
    if-lt v13, v6, :cond_1ef

    .line 406
    .line 407
    aget-byte v14, v5, v11

    .line 408
    .line 409
    aget-byte v15, v5, v19

    .line 410
    .line 411
    add-int/2addr v14, v15

    .line 412
    aget-byte v17, v5, v9

    .line 413
    .line 414
    add-int v14, v14, v17

    .line 415
    .line 416
    aget-byte v5, v5, v8

    .line 417
    .line 418
    add-int/2addr v14, v5

    .line 419
    if-nez v14, :cond_1a5

    .line 420
    .line 421
    goto :goto_1ef

    .line 422
    :cond_1a5
    if-ne v7, v11, :cond_1aa

    .line 423
    .line 424
    if-lez v5, :cond_1aa

    .line 425
    .line 426
    :goto_1a9
    return v8

    .line 427
    :cond_1aa
    if-ne v7, v11, :cond_1af

    .line 428
    .line 429
    if-lez v15, :cond_1af

    .line 430
    .line 431
    :goto_1ae
    return v19

    .line 432
    :cond_1af
    if-ne v7, v11, :cond_1b4

    .line 433
    .line 434
    if-lez v17, :cond_1b4

    .line 435
    .line 436
    :goto_1b3
    return v9

    .line 437
    :cond_1b4
    aget v5, v3, v11

    .line 438
    .line 439
    add-int/lit8 v7, v5, 0x1

    .line 440
    .line 441
    if-ge v7, v6, :cond_1f0

    .line 442
    .line 443
    if-ge v7, v13, :cond_1f0

    .line 444
    .line 445
    aget v6, v3, v8

    .line 446
    .line 447
    if-ge v7, v6, :cond_1f0

    .line 448
    .line 449
    aget v6, v3, v19

    .line 450
    .line 451
    if-ge v7, v6, :cond_1f0

    .line 452
    .line 453
    aget v3, v3, v9

    .line 454
    .line 455
    if-ge v5, v3, :cond_1c9

    .line 456
    .line 457
    goto :goto_1ee

    .line 458
    :cond_1c9
    if-ne v5, v3, :cond_1f0

    .line 459
    .line 460
    add-int/2addr v1, v2

    .line 461
    add-int/2addr v1, v11

    .line 462
    :goto_1cd
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 463
    .line 464
    .line 465
    move-result v2

    .line 466
    if-ge v1, v2, :cond_1ee

    .line 467
    .line 468
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 469
    .line 470
    .line 471
    move-result v2

    .line 472
    const/16 v3, 0xd

    .line 473
    .line 474
    if-eq v2, v3, :cond_1ed

    .line 475
    .line 476
    const/16 v3, 0x2a

    .line 477
    .line 478
    if-eq v2, v3, :cond_1ed

    .line 479
    .line 480
    const/16 v3, 0x3e

    .line 481
    .line 482
    if-ne v2, v3, :cond_1e4

    .line 483
    .line 484
    goto :goto_1ed

    .line 485
    :cond_1e4
    invoke-static {v2}, Lh8/b;->l(C)Z

    .line 486
    .line 487
    .line 488
    move-result v2

    .line 489
    if-eqz v2, :cond_1ee

    .line 490
    .line 491
    add-int/lit8 v1, v1, 0x1

    .line 492
    .line 493
    goto :goto_1cd

    .line 494
    :cond_1ed
    :goto_1ed
    return v9

    .line 495
    :cond_1ee
    :goto_1ee
    return v11

    .line 496
    :cond_1ef
    :goto_1ef
    return v16

    .line 497
    :cond_1f0
    move/from16 v5, v16

    .line 498
    .line 499
    move/from16 v6, v18

    .line 500
    .line 501
    move/from16 v7, v19

    .line 502
    .line 503
    const/high16 v3, 0x40000000    # 2.0f

    .line 504
    .line 505
    goto/16 :goto_3d
.end method

.method public static p(Landroid/widget/EdgeEffect;FF)F
    .registers 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    if-lt v0, v1, :cond_b

    .line 6
    .line 7
    invoke-static {p0, p1, p2}, Lm0/c;->c(Landroid/widget/EdgeEffect;FF)F

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_b
    invoke-static {p0, p1, p2}, Lm0/b;->a(Landroid/widget/EdgeEffect;FF)V

    .line 13
    .line 14
    .line 15
    return p1
.end method

.method public static q(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 1
    const-string v0, "event_track.json"

    .line 2
    .line 3
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 8
    .line 9
    .line 10
    move-result-object p0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_a} :catch_58

    .line 11
    :try_start_a
    new-instance v0, Ljava/io/InputStreamReader;

    .line 12
    .line 13
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 14
    .line 15
    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_37

    .line 16
    .line 17
    .line 18
    :try_start_11
    new-instance v1, Ljava/io/BufferedReader;

    .line 19
    .line 20
    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_39

    .line 21
    .line 22
    .line 23
    :try_start_16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    :goto_1b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    if-eqz v3, :cond_27

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    goto :goto_1b

    .line 38
    :catchall_25
    move-exception v2

    .line 39
    goto :goto_3b

    .line 40
    :cond_27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2
    :try_end_2b
    .catchall {:try_start_16 .. :try_end_2b} :catchall_25

    .line 44
    :try_start_2b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_39

    .line 45
    .line 46
    .line 47
    :try_start_2e
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_37

    .line 48
    .line 49
    .line 50
    if-eqz p0, :cond_36

    .line 51
    .line 52
    :try_start_33
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_58

    .line 53
    .line 54
    .line 55
    :cond_36
    return-object v2

    .line 56
    :catchall_37
    move-exception v0

    .line 57
    goto :goto_4d

    .line 58
    :catchall_39
    move-exception v1

    .line 59
    goto :goto_44

    .line 60
    :goto_3b
    :try_start_3b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3f

    .line 61
    .line 62
    .line 63
    goto :goto_43

    .line 64
    :catchall_3f
    move-exception v1

    .line 65
    :try_start_40
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    :goto_43
    throw v2
    :try_end_44
    .catchall {:try_start_40 .. :try_end_44} :catchall_39

    .line 69
    :goto_44
    :try_start_44
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    .line 70
    .line 71
    .line 72
    goto :goto_4c

    .line 73
    :catchall_48
    move-exception v0

    .line 74
    :try_start_49
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    :goto_4c
    throw v1
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_37

    .line 78
    :goto_4d
    if-eqz p0, :cond_57

    .line 79
    .line 80
    :try_start_4f
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_53

    .line 81
    .line 82
    .line 83
    goto :goto_57

    .line 84
    :catchall_53
    move-exception p0

    .line 85
    :try_start_54
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 86
    .line 87
    .line 88
    :cond_57
    :goto_57
    throw v0
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_58} :catch_58

    .line 89
    :catch_58
    move-exception p0

    .line 90
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 91
    .line 92
    .line 93
    const/4 p0, 0x0

    .line 94
    return-object p0
.end method


# virtual methods
.method public abstract n(I)Landroid/view/View;
.end method

.method public abstract o()Z
.end method
