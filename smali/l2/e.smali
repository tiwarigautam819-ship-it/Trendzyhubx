###### Class l2.e (l2.e)
.class public abstract Ll2/e;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static a:Z = false

.field public static b:Ljava/lang/reflect/Method; = null

.field public static c:Z = false

.field public static d:Ljava/lang/reflect/Field;


# direct methods
.method public static final a(Ll2/a;Ll2/a;)V
    .registers 13

    .line 1
    const-class v0, Ll2/e;

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
    goto :goto_44

    .line 10
    :cond_9
    :try_start_9
    const-string v1, "x"

    .line 11
    .line 12
    invoke-static {v1, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "b"

    .line 16
    .line 17
    invoke-static {v1, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Ll2/a;->a:[I

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    aget v3, v1, v2

    .line 24
    .line 25
    const/4 v4, 0x1

    .line 26
    aget v4, v1, v4

    .line 27
    .line 28
    const/4 v5, 0x2

    .line 29
    aget v1, v1, v5

    .line 30
    .line 31
    iget-object p0, p0, Ll2/a;->c:[F

    .line 32
    .line 33
    iget-object p1, p1, Ll2/a;->c:[F

    .line 34
    .line 35
    move v5, v2

    .line 36
    :goto_23
    if-ge v5, v3, :cond_44

    .line 37
    .line 38
    move v6, v2

    .line 39
    :goto_26
    if-ge v6, v4, :cond_41

    .line 40
    .line 41
    move v7, v2

    .line 42
    :goto_29
    if-ge v7, v1, :cond_3e

    .line 43
    .line 44
    mul-int v8, v5, v4

    .line 45
    .line 46
    mul-int/2addr v8, v1

    .line 47
    mul-int v9, v6, v1

    .line 48
    .line 49
    add-int/2addr v9, v8

    .line 50
    add-int/2addr v9, v7

    .line 51
    aget v8, p0, v9

    .line 52
    .line 53
    aget v10, p1, v7

    .line 54
    .line 55
    add-float/2addr v8, v10

    .line 56
    aput v8, p0, v9
    :try_end_39
    .catchall {:try_start_9 .. :try_end_39} :catchall_3c

    .line 57
    .line 58
    add-int/lit8 v7, v7, 0x1

    .line 59
    .line 60
    goto :goto_29

    .line 61
    :catchall_3c
    move-exception p0

    .line 62
    goto :goto_45

    .line 63
    :cond_3e
    add-int/lit8 v6, v6, 0x1

    .line 64
    .line 65
    goto :goto_26

    .line 66
    :cond_41
    add-int/lit8 v5, v5, 0x1

    .line 67
    .line 68
    goto :goto_23

    .line 69
    :cond_44
    :goto_44
    return-void

    .line 70
    :goto_45
    invoke-static {p0, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public static b(Ljava/lang/String;Lx1/a;Ljava/lang/String;)Lx1/z;
    .registers 7

    .line 1
    sget-object v0, Lx1/z;->j:Ljava/lang/String;

    .line 2
    .line 3
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v2, v1, [Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object p2, v2, v3

    .line 10
    .line 11
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    const-string v2, "%s/app_indexing"

    .line 16
    .line 17
    invoke-static {v0, v2, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-static {p1, p2, v0, v0}, Lx1/w;->v(Lx1/a;Ljava/lang/String;Lorg/json/JSONObject;Lx1/v;)Lx1/z;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object p2, p1, Lx1/z;->d:Landroid/os/Bundle;

    .line 27
    .line 28
    if-nez p2, :cond_22

    .line 29
    .line 30
    new-instance p2, Landroid/os/Bundle;

    .line 31
    .line 32
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 33
    .line 34
    .line 35
    :cond_22
    const-string v0, "tree"

    .line 36
    .line 37
    invoke-virtual {p2, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    :try_start_2b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {v0, p0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 57
    .line 58
    const-string v0, "{\n      val packageInfo \u2026ageInfo.versionName\n    }"

    .line 59
    .line 60
    invoke-static {v0, p0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2b .. :try_end_3e} :catch_3f

    .line 61
    .line 62
    .line 63
    goto :goto_41

    .line 64
    :catch_3f
    const-string p0, ""

    .line 65
    .line 66
    :goto_41
    const-string v0, "app_version"

    .line 67
    .line 68
    invoke-virtual {p2, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string p0, "platform"

    .line 72
    .line 73
    const-string v0, "android"

    .line 74
    .line 75
    invoke-virtual {p2, p0, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const-string p0, "request_type"

    .line 79
    .line 80
    const-string v0, "app_indexing"

    .line 81
    .line 82
    invoke-virtual {p2, p0, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-string p0, "device_session_id"

    .line 86
    .line 87
    invoke-static {}, Lb2/f;->a()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {p2, p0, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iput-object p2, p1, Lx1/z;->d:Landroid/os/Bundle;

    .line 95
    .line 96
    new-instance p0, La2/b;

    .line 97
    .line 98
    invoke-direct {p0, v1}, La2/b;-><init>(I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, p0}, Lx1/z;->j(Lx1/v;)V

    .line 102
    .line 103
    .line 104
    return-object p1
.end method

.method public static final f([Ll2/a;)Ll2/a;
    .registers 16

    .line 1
    const-class v0, Ll2/e;

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
    const/4 v1, 0x0

    .line 12
    :try_start_b
    aget-object v3, p0, v1

    .line 13
    .line 14
    iget-object v3, v3, Ll2/a;->a:[I

    .line 15
    .line 16
    aget v3, v3, v1

    .line 17
    .line 18
    array-length v4, p0

    .line 19
    move v5, v1

    .line 20
    move v6, v5

    .line 21
    :goto_14
    const/4 v7, 0x1

    .line 22
    if-ge v5, v4, :cond_23

    .line 23
    .line 24
    aget-object v8, p0, v5

    .line 25
    .line 26
    iget-object v8, v8, Ll2/a;->a:[I

    .line 27
    .line 28
    aget v7, v8, v7

    .line 29
    .line 30
    add-int/2addr v6, v7

    .line 31
    add-int/lit8 v5, v5, 0x1

    .line 32
    .line 33
    goto :goto_14

    .line 34
    :catchall_21
    move-exception p0

    .line 35
    goto :goto_4c

    .line 36
    :cond_23
    new-instance v4, Ll2/a;

    .line 37
    .line 38
    filled-new-array {v3, v6}, [I

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-direct {v4, v5}, Ll2/a;-><init>([I)V

    .line 43
    .line 44
    .line 45
    iget-object v5, v4, Ll2/a;->c:[F

    .line 46
    .line 47
    move v8, v1

    .line 48
    :goto_2f
    if-ge v8, v3, :cond_4b

    .line 49
    .line 50
    mul-int v9, v8, v6

    .line 51
    .line 52
    array-length v10, p0

    .line 53
    move v11, v1

    .line 54
    :goto_35
    if-ge v11, v10, :cond_48

    .line 55
    .line 56
    aget-object v12, p0, v11

    .line 57
    .line 58
    iget-object v13, v12, Ll2/a;->c:[F

    .line 59
    .line 60
    iget-object v12, v12, Ll2/a;->a:[I

    .line 61
    .line 62
    aget v12, v12, v7

    .line 63
    .line 64
    mul-int v14, v8, v12

    .line 65
    .line 66
    invoke-static {v13, v14, v5, v9, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_44
    .catchall {:try_start_b .. :try_end_44} :catchall_21

    .line 67
    .line 68
    .line 69
    add-int/2addr v9, v12

    .line 70
    add-int/lit8 v11, v11, 0x1

    .line 71
    .line 72
    goto :goto_35

    .line 73
    :cond_48
    add-int/lit8 v8, v8, 0x1

    .line 74
    .line 75
    goto :goto_2f

    .line 76
    :cond_4b
    return-object v4

    .line 77
    :goto_4c
    invoke-static {p0, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    return-object v2
.end method

.method public static final g(Ll2/a;Ll2/a;)Ll2/a;
    .registers 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-class v2, Ll2/e;

    .line 6
    .line 7
    invoke-static {v2}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x0

    .line 12
    if-eqz v3, :cond_e

    .line 13
    .line 14
    return-object v4

    .line 15
    :cond_e
    :try_start_e
    const-string v3, "x"

    .line 16
    .line 17
    invoke-static {v3, v0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    const-string v3, "w"

    .line 21
    .line 22
    invoke-static {v3, v1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object v3, v0, Ll2/a;->a:[I

    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    aget v6, v3, v5

    .line 29
    .line 30
    const/4 v7, 0x1

    .line 31
    aget v8, v3, v7

    .line 32
    .line 33
    const/4 v9, 0x2

    .line 34
    aget v3, v3, v9

    .line 35
    .line 36
    iget-object v10, v1, Ll2/a;->a:[I

    .line 37
    .line 38
    aget v11, v10, v5

    .line 39
    .line 40
    sub-int v12, v8, v11

    .line 41
    .line 42
    add-int/2addr v12, v7

    .line 43
    aget v7, v10, v9

    .line 44
    .line 45
    new-instance v9, Ll2/a;

    .line 46
    .line 47
    filled-new-array {v6, v12, v7}, [I

    .line 48
    .line 49
    .line 50
    move-result-object v10

    .line 51
    invoke-direct {v9, v10}, Ll2/a;-><init>([I)V

    .line 52
    .line 53
    .line 54
    iget-object v0, v0, Ll2/a;->c:[F

    .line 55
    .line 56
    iget-object v10, v9, Ll2/a;->c:[F

    .line 57
    .line 58
    iget-object v1, v1, Ll2/a;->c:[F
    :try_end_3b
    .catchall {:try_start_e .. :try_end_3b} :catchall_8e

    .line 59
    .line 60
    move v13, v5

    .line 61
    :goto_3c
    if-ge v13, v6, :cond_8d

    .line 62
    .line 63
    move v14, v5

    .line 64
    :goto_3f
    if-ge v14, v7, :cond_87

    .line 65
    .line 66
    move v15, v5

    .line 67
    :goto_42
    if-ge v15, v12, :cond_81

    .line 68
    .line 69
    const/16 v16, 0x0

    .line 70
    .line 71
    move-object/from16 v17, v4

    .line 72
    .line 73
    move v4, v5

    .line 74
    :goto_49
    if-ge v4, v11, :cond_72

    .line 75
    .line 76
    :goto_4b
    if-ge v5, v3, :cond_6e

    .line 77
    .line 78
    mul-int v18, v8, v3

    .line 79
    .line 80
    mul-int v18, v18, v13

    .line 81
    .line 82
    add-int v19, v4, v15

    .line 83
    .line 84
    mul-int v19, v19, v3

    .line 85
    .line 86
    add-int v19, v19, v18

    .line 87
    .line 88
    add-int v19, v19, v5

    .line 89
    .line 90
    :try_start_59
    aget v18, v0, v19

    .line 91
    .line 92
    mul-int v19, v4, v3

    .line 93
    .line 94
    add-int v19, v19, v5

    .line 95
    .line 96
    mul-int v19, v19, v7

    .line 97
    .line 98
    add-int v19, v19, v14

    .line 99
    .line 100
    aget v19, v1, v19

    .line 101
    .line 102
    mul-float v18, v18, v19

    .line 103
    .line 104
    add-float v16, v18, v16

    .line 105
    .line 106
    add-int/lit8 v5, v5, 0x1

    .line 107
    .line 108
    goto :goto_4b

    .line 109
    :catchall_6c
    move-exception v0

    .line 110
    goto :goto_91

    .line 111
    :cond_6e
    add-int/lit8 v4, v4, 0x1

    .line 112
    .line 113
    const/4 v5, 0x0

    .line 114
    goto :goto_49

    .line 115
    :cond_72
    mul-int v4, v12, v7

    .line 116
    .line 117
    mul-int/2addr v4, v13

    .line 118
    mul-int v5, v15, v7

    .line 119
    .line 120
    add-int/2addr v5, v4

    .line 121
    add-int/2addr v5, v14

    .line 122
    aput v16, v10, v5
    :try_end_7b
    .catchall {:try_start_59 .. :try_end_7b} :catchall_6c

    .line 123
    .line 124
    add-int/lit8 v15, v15, 0x1

    .line 125
    .line 126
    move-object/from16 v4, v17

    .line 127
    .line 128
    const/4 v5, 0x0

    .line 129
    goto :goto_42

    .line 130
    :cond_81
    move-object/from16 v17, v4

    .line 131
    .line 132
    add-int/lit8 v14, v14, 0x1

    .line 133
    .line 134
    const/4 v5, 0x0

    .line 135
    goto :goto_3f

    .line 136
    :cond_87
    move-object/from16 v17, v4

    .line 137
    .line 138
    add-int/lit8 v13, v13, 0x1

    .line 139
    .line 140
    const/4 v5, 0x0

    .line 141
    goto :goto_3c

    .line 142
    :cond_8d
    return-object v9

    .line 143
    :catchall_8e
    move-exception v0

    .line 144
    move-object/from16 v17, v4

    .line 145
    .line 146
    :goto_91
    invoke-static {v0, v2}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    return-object v17
.end method

.method public static final h(Ll2/a;Ll2/a;Ll2/a;)Ll2/a;
    .registers 13

    .line 1
    const-class v0, Ll2/e;

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
    const-string v1, "x"

    .line 12
    .line 13
    invoke-static {v1, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "w"

    .line 17
    .line 18
    invoke-static {v1, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    const-string v1, "b"

    .line 22
    .line 23
    invoke-static {v1, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Ll2/a;->a:[I

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    aget v1, v1, v3

    .line 30
    .line 31
    iget-object v4, p2, Ll2/a;->a:[I

    .line 32
    .line 33
    aget v4, v4, v3

    .line 34
    .line 35
    invoke-static {p0, p1}, Ll2/e;->p(Ll2/a;Ll2/a;)Ll2/a;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    iget-object p1, p2, Ll2/a;->c:[F

    .line 40
    .line 41
    iget-object p2, p0, Ll2/a;->c:[F

    .line 42
    .line 43
    move v5, v3

    .line 44
    :goto_2b
    if-ge v5, v1, :cond_42

    .line 45
    .line 46
    move v6, v3

    .line 47
    :goto_2e
    if-ge v6, v4, :cond_3f

    .line 48
    .line 49
    mul-int v7, v5, v4

    .line 50
    .line 51
    add-int/2addr v7, v6

    .line 52
    aget v8, p2, v7

    .line 53
    .line 54
    aget v9, p1, v6

    .line 55
    .line 56
    add-float/2addr v8, v9

    .line 57
    aput v8, p2, v7
    :try_end_3a
    .catchall {:try_start_a .. :try_end_3a} :catchall_3d

    .line 58
    .line 59
    add-int/lit8 v6, v6, 0x1

    .line 60
    .line 61
    goto :goto_2e

    .line 62
    :catchall_3d
    move-exception p0

    .line 63
    goto :goto_43

    .line 64
    :cond_3f
    add-int/lit8 v5, v5, 0x1

    .line 65
    .line 66
    goto :goto_2b

    .line 67
    :cond_42
    return-object p0

    .line 68
    :goto_43
    invoke-static {p0, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    return-object v2
.end method

.method public static i(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .registers 5

    .line 1
    sget-object v0, Lj0/k0;->a:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    .line 5
    const/16 v1, 0x1c

    .line 6
    .line 7
    if-lt v0, v1, :cond_a

    .line 8
    .line 9
    goto/16 :goto_9d

    .line 10
    .line 11
    :cond_a
    sget-object v0, Lj0/j0;->d:Ljava/util/ArrayList;

    .line 12
    .line 13
    const v0, 0x7f0900e0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lj0/j0;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    if-nez v1, :cond_26

    .line 24
    .line 25
    new-instance v1, Lj0/j0;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v2, v1, Lj0/j0;->a:Ljava/util/WeakHashMap;

    .line 31
    .line 32
    iput-object v2, v1, Lj0/j0;->b:Landroid/util/SparseArray;

    .line 33
    .line 34
    iput-object v2, v1, Lj0/j0;->c:Ljava/lang/ref/WeakReference;

    .line 35
    .line 36
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :cond_26
    iget-object p0, v1, Lj0/j0;->c:Ljava/lang/ref/WeakReference;

    .line 40
    .line 41
    if-eqz p0, :cond_31

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    if-ne p0, p1, :cond_31

    .line 48
    .line 49
    goto :goto_9d

    .line 50
    :cond_31
    new-instance p0, Ljava/lang/ref/WeakReference;

    .line 51
    .line 52
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iput-object p0, v1, Lj0/j0;->c:Ljava/lang/ref/WeakReference;

    .line 56
    .line 57
    iget-object p0, v1, Lj0/j0;->b:Landroid/util/SparseArray;

    .line 58
    .line 59
    if-nez p0, :cond_43

    .line 60
    .line 61
    new-instance p0, Landroid/util/SparseArray;

    .line 62
    .line 63
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object p0, v1, Lj0/j0;->b:Landroid/util/SparseArray;

    .line 67
    .line 68
    :cond_43
    iget-object p0, v1, Lj0/j0;->b:Landroid/util/SparseArray;

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    const/4 v1, 0x1

    .line 75
    if-ne v0, v1, :cond_5f

    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-ltz v0, :cond_5f

    .line 86
    .line 87
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 92
    .line 93
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 94
    .line 95
    .line 96
    :cond_5f
    if-nez v2, :cond_6c

    .line 97
    .line 98
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    move-object v2, p0

    .line 107
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 108
    .line 109
    :cond_6c
    if-eqz v2, :cond_9d

    .line 110
    .line 111
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    check-cast p0, Landroid/view/View;

    .line 116
    .line 117
    if-eqz p0, :cond_9c

    .line 118
    .line 119
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-eqz p1, :cond_9c

    .line 124
    .line 125
    const p1, 0x7f0900e1

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    check-cast p0, Ljava/util/ArrayList;

    .line 133
    .line 134
    if-eqz p0, :cond_9c

    .line 135
    .line 136
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    sub-int/2addr p1, v1

    .line 141
    if-gez p1, :cond_8f

    .line 142
    .line 143
    goto :goto_9c

    .line 144
    :cond_8f
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    new-instance p0, Ljava/lang/ClassCastException;

    .line 152
    .line 153
    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    .line 154
    .line 155
    .line 156
    throw p0

    .line 157
    :cond_9c
    :goto_9c
    return v1

    .line 158
    :cond_9d
    :goto_9d
    const/4 p0, 0x0

    .line 159
    return p0
.end method

.method public static j(Lj0/i;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z
    .registers 11

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_5

    .line 3
    .line 4
    goto/16 :goto_e4

    .line 5
    .line 6
    :cond_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v2, 0x1c

    .line 9
    .line 10
    if-lt v1, v2, :cond_10

    .line 11
    .line 12
    invoke-interface {p0, p3}, Lj0/i;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0

    .line 17
    :cond_10
    instance-of v1, p2, Landroid/app/Activity;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x1

    .line 21
    if-eqz v1, :cond_82

    .line 22
    .line 23
    check-cast p2, Landroid/app/Activity;

    .line 24
    .line 25
    invoke-virtual {p2}, Landroid/app/Activity;->onUserInteraction()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const/16 p1, 0x8

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroid/view/Window;->hasFeature(I)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_65

    .line 39
    .line 40
    invoke-virtual {p2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    const/16 v4, 0x52

    .line 49
    .line 50
    if-ne v1, v4, :cond_65

    .line 51
    .line 52
    if-eqz p1, :cond_65

    .line 53
    .line 54
    sget-boolean v1, Ll2/e;->a:Z

    .line 55
    .line 56
    if-nez v1, :cond_4d

    .line 57
    .line 58
    :try_start_39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const-string v4, "onMenuKeyEvent"

    .line 63
    .line 64
    new-array v5, v3, [Ljava/lang/Class;

    .line 65
    .line 66
    const-class v6, Landroid/view/KeyEvent;

    .line 67
    .line 68
    aput-object v6, v5, v0

    .line 69
    .line 70
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    sput-object v1, Ll2/e;->b:Ljava/lang/reflect/Method;
    :try_end_4b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_39 .. :try_end_4b} :catch_4b

    .line 75
    .line 76
    :catch_4b
    sput-boolean v3, Ll2/e;->a:Z

    .line 77
    .line 78
    :cond_4d
    sget-object v1, Ll2/e;->b:Ljava/lang/reflect/Method;

    .line 79
    .line 80
    if-eqz v1, :cond_62

    .line 81
    .line 82
    :try_start_51
    new-array v4, v3, [Ljava/lang/Object;

    .line 83
    .line 84
    aput-object p3, v4, v0

    .line 85
    .line 86
    invoke-virtual {v1, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    if-nez p1, :cond_5c

    .line 91
    .line 92
    goto :goto_62

    .line 93
    :cond_5c
    check-cast p1, Ljava/lang/Boolean;

    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 96
    .line 97
    .line 98
    move-result v0
    :try_end_62
    .catch Ljava/lang/IllegalAccessException; {:try_start_51 .. :try_end_62} :catch_62
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_51 .. :try_end_62} :catch_62

    .line 99
    :catch_62
    :cond_62
    :goto_62
    if-eqz v0, :cond_65

    .line 100
    .line 101
    goto :goto_81

    .line 102
    :cond_65
    invoke-virtual {p0, p3}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-eqz p1, :cond_6c

    .line 107
    .line 108
    goto :goto_81

    .line 109
    :cond_6c
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-static {p0, p3}, Lj0/k0;->b(Landroid/view/View;Landroid/view/KeyEvent;)Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    if-eqz p1, :cond_77

    .line 118
    .line 119
    goto :goto_81

    .line 120
    :cond_77
    if-eqz p0, :cond_7d

    .line 121
    .line 122
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    :cond_7d
    invoke-virtual {p3, p2, v2, p2}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    :goto_81
    return v3

    .line 131
    :cond_82
    instance-of v1, p2, Landroid/app/Dialog;

    .line 132
    .line 133
    if-eqz v1, :cond_d5

    .line 134
    .line 135
    check-cast p2, Landroid/app/Dialog;

    .line 136
    .line 137
    sget-boolean p0, Ll2/e;->c:Z

    .line 138
    .line 139
    if-nez p0, :cond_9b

    .line 140
    .line 141
    :try_start_8c
    const-class p0, Landroid/app/Dialog;

    .line 142
    .line 143
    const-string p1, "mOnKeyListener"

    .line 144
    .line 145
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    sput-object p0, Ll2/e;->d:Ljava/lang/reflect/Field;

    .line 150
    .line 151
    invoke-virtual {p0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_99
    .catch Ljava/lang/NoSuchFieldException; {:try_start_8c .. :try_end_99} :catch_99

    .line 152
    .line 153
    .line 154
    :catch_99
    sput-boolean v3, Ll2/e;->c:Z

    .line 155
    .line 156
    :cond_9b
    sget-object p0, Ll2/e;->d:Ljava/lang/reflect/Field;

    .line 157
    .line 158
    if-eqz p0, :cond_a6

    .line 159
    .line 160
    :try_start_9f
    invoke-virtual {p0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    check-cast p0, Landroid/content/DialogInterface$OnKeyListener;
    :try_end_a5
    .catch Ljava/lang/IllegalAccessException; {:try_start_9f .. :try_end_a5} :catch_a6

    .line 165
    .line 166
    goto :goto_a7

    .line 167
    :catch_a6
    :cond_a6
    move-object p0, v2

    .line 168
    :goto_a7
    if-eqz p0, :cond_b4

    .line 169
    .line 170
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    invoke-interface {p0, p2, p1, p3}, Landroid/content/DialogInterface$OnKeyListener;->onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    .line 175
    .line 176
    .line 177
    move-result p0

    .line 178
    if-eqz p0, :cond_b4

    .line 179
    .line 180
    goto :goto_d4

    .line 181
    :cond_b4
    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    invoke-virtual {p0, p3}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    if-eqz p1, :cond_bf

    .line 190
    .line 191
    goto :goto_d4

    .line 192
    :cond_bf
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    invoke-static {p0, p3}, Lj0/k0;->b(Landroid/view/View;Landroid/view/KeyEvent;)Z

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    if-eqz p1, :cond_ca

    .line 201
    .line 202
    goto :goto_d4

    .line 203
    :cond_ca
    if-eqz p0, :cond_d0

    .line 204
    .line 205
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    :cond_d0
    invoke-virtual {p3, p2, v2, p2}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v3

    .line 213
    :goto_d4
    return v3

    .line 214
    :cond_d5
    if-eqz p1, :cond_dd

    .line 215
    .line 216
    invoke-static {p1, p3}, Lj0/k0;->b(Landroid/view/View;Landroid/view/KeyEvent;)Z

    .line 217
    .line 218
    .line 219
    move-result p1

    .line 220
    if-nez p1, :cond_e3

    .line 221
    .line 222
    :cond_dd
    invoke-interface {p0, p3}, Lj0/i;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 223
    .line 224
    .line 225
    move-result p0

    .line 226
    if-eqz p0, :cond_e4

    .line 227
    .line 228
    :cond_e3
    return v3

    .line 229
    :cond_e4
    :goto_e4
    return v0
.end method

.method public static final k([Ljava/lang/String;Ll2/a;)Ll2/a;
    .registers 16

    .line 1
    const-class v0, Ll2/e;

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
    const-string v1, "w"

    .line 12
    .line 13
    invoke-static {v1, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    array-length v1, p0

    .line 17
    iget-object v3, p1, Ll2/a;->a:[I

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    aget v3, v3, v4

    .line 21
    .line 22
    new-instance v4, Ll2/a;

    .line 23
    .line 24
    const/16 v5, 0x80

    .line 25
    .line 26
    filled-new-array {v1, v5, v3}, [I

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    invoke-direct {v4, v6}, Ll2/a;-><init>([I)V

    .line 31
    .line 32
    .line 33
    iget-object v6, v4, Ll2/a;->c:[F

    .line 34
    .line 35
    iget-object p1, p1, Ll2/a;->c:[F

    .line 36
    .line 37
    const/4 v7, 0x0

    .line 38
    move v8, v7

    .line 39
    :goto_26
    if-ge v8, v1, :cond_47

    .line 40
    .line 41
    sget-object v9, Ll2/f;->a:Ll2/f;

    .line 42
    .line 43
    aget-object v10, p0, v8

    .line 44
    .line 45
    invoke-virtual {v9, v10}, Ll2/f;->d(Ljava/lang/String;)[I

    .line 46
    .line 47
    .line 48
    move-result-object v9

    .line 49
    move v10, v7

    .line 50
    :goto_31
    if-ge v10, v5, :cond_44

    .line 51
    .line 52
    aget v11, v9, v10

    .line 53
    .line 54
    mul-int/2addr v11, v3

    .line 55
    mul-int/lit16 v12, v3, 0x80

    .line 56
    .line 57
    mul-int/2addr v12, v8

    .line 58
    mul-int v13, v3, v10

    .line 59
    .line 60
    add-int/2addr v13, v12

    .line 61
    invoke-static {p1, v11, v6, v13, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3f
    .catchall {:try_start_a .. :try_end_3f} :catchall_42

    .line 62
    .line 63
    .line 64
    add-int/lit8 v10, v10, 0x1

    .line 65
    .line 66
    goto :goto_31

    .line 67
    :catchall_42
    move-exception p0

    .line 68
    goto :goto_48

    .line 69
    :cond_44
    add-int/lit8 v8, v8, 0x1

    .line 70
    .line 71
    goto :goto_26

    .line 72
    :cond_47
    return-object v4

    .line 73
    :goto_48
    invoke-static {p0, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    return-object v2
.end method

.method public static final l(Ll2/a;)V
    .registers 7

    .line 1
    const-class v0, Ll2/e;

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
    goto :goto_14

    .line 10
    :cond_9
    :try_start_9
    const-string v1, "x"

    .line 11
    .line 12
    invoke-static {v1, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Ll2/a;->a:[I

    .line 16
    .line 17
    array-length v2, v1

    .line 18
    const/4 v3, 0x1

    .line 19
    if-lt v3, v2, :cond_15

    .line 20
    .line 21
    :goto_14
    return-void

    .line 22
    :cond_15
    array-length v1, v1

    .line 23
    move v2, v3

    .line 24
    move v4, v2

    .line 25
    :goto_18
    if-ge v2, v1, :cond_22

    .line 26
    .line 27
    iget-object v5, p0, Ll2/a;->a:[I

    .line 28
    .line 29
    aget v5, v5, v2

    .line 30
    .line 31
    mul-int/2addr v4, v5

    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_18

    .line 35
    :cond_22
    const/4 v1, 0x2

    .line 36
    new-array v1, v1, [I

    .line 37
    .line 38
    iget-object v2, p0, Ll2/a;->a:[I

    .line 39
    .line 40
    const/4 v5, 0x0

    .line 41
    aget v2, v2, v5

    .line 42
    .line 43
    aput v2, v1, v5

    .line 44
    .line 45
    aput v4, v1, v3

    .line 46
    .line 47
    iput-object v1, p0, Ll2/a;->a:[I

    .line 48
    .line 49
    invoke-static {v1}, Ll2/f;->a([I)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    new-array v2, v1, [F

    .line 54
    .line 55
    iget-object v3, p0, Ll2/a;->c:[F

    .line 56
    .line 57
    iget v4, p0, Ll2/a;->b:I

    .line 58
    .line 59
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    .line 65
    .line 66
    iput-object v2, p0, Ll2/a;->c:[F

    .line 67
    .line 68
    iput v1, p0, Ll2/a;->b:I
    :try_end_45
    .catchall {:try_start_9 .. :try_end_45} :catchall_46

    .line 69
    .line 70
    return-void

    .line 71
    :catchall_46
    move-exception p0

    .line 72
    invoke-static {p0, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public static final m(III)I
    .registers 4

    .line 1
    if-lez p2, :cond_18

    .line 2
    .line 3
    if-lt p0, p1, :cond_5

    .line 4
    .line 5
    goto :goto_1c

    .line 6
    :cond_5
    rem-int v0, p1, p2

    .line 7
    .line 8
    if-ltz v0, :cond_a

    .line 9
    .line 10
    goto :goto_b

    .line 11
    :cond_a
    add-int/2addr v0, p2

    .line 12
    :goto_b
    rem-int/2addr p0, p2

    .line 13
    if-ltz p0, :cond_f

    .line 14
    .line 15
    goto :goto_10

    .line 16
    :cond_f
    add-int/2addr p0, p2

    .line 17
    :goto_10
    sub-int/2addr v0, p0

    .line 18
    rem-int/2addr v0, p2

    .line 19
    if-ltz v0, :cond_15

    .line 20
    .line 21
    goto :goto_16

    .line 22
    :cond_15
    add-int/2addr v0, p2

    .line 23
    :goto_16
    sub-int/2addr p1, v0

    .line 24
    return p1

    .line 25
    :cond_18
    if-gez p2, :cond_31

    .line 26
    .line 27
    if-gt p0, p1, :cond_1d

    .line 28
    .line 29
    :goto_1c
    return p1

    .line 30
    :cond_1d
    neg-int p2, p2

    .line 31
    rem-int/2addr p0, p2

    .line 32
    if-ltz p0, :cond_22

    .line 33
    .line 34
    goto :goto_23

    .line 35
    :cond_22
    add-int/2addr p0, p2

    .line 36
    :goto_23
    rem-int v0, p1, p2

    .line 37
    .line 38
    if-ltz v0, :cond_28

    .line 39
    .line 40
    goto :goto_29

    .line 41
    :cond_28
    add-int/2addr v0, p2

    .line 42
    :goto_29
    sub-int/2addr p0, v0

    .line 43
    rem-int/2addr p0, p2

    .line 44
    if-ltz p0, :cond_2e

    .line 45
    .line 46
    goto :goto_2f

    .line 47
    :cond_2e
    add-int/2addr p0, p2

    .line 48
    :goto_2f
    add-int/2addr p0, p1

    .line 49
    return p0

    .line 50
    :cond_31
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 51
    .line 52
    const-string p1, "Step is zero."

    .line 53
    .line 54
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p0
.end method

.method public static final n(Ljava/lang/AssertionError;)Z
    .registers 3

    .line 1
    sget-object v0, Le8/n;->a:Ljava/util/logging/Logger;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_1b

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_16

    .line 15
    .line 16
    const-string v0, "getsockname failed"

    .line 17
    .line 18
    invoke-static {p0, v0}, Lk7/g;->x(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    move p0, v1

    .line 24
    :goto_17
    if-eqz p0, :cond_1b

    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    return p0

    .line 28
    :cond_1b
    return v1
.end method

.method public static final o(Ll2/a;I)Ll2/a;
    .registers 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    const-class v2, Ll2/e;

    .line 6
    .line 7
    invoke-static {v2}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x0

    .line 12
    if-eqz v3, :cond_e

    .line 13
    .line 14
    return-object v4

    .line 15
    :cond_e
    :try_start_e
    const-string v3, "x"

    .line 16
    .line 17
    invoke-static {v3, v0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-object v3, v0, Ll2/a;->a:[I

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    aget v6, v3, v5

    .line 24
    .line 25
    const/4 v7, 0x1

    .line 26
    aget v8, v3, v7

    .line 27
    .line 28
    const/4 v9, 0x2

    .line 29
    aget v3, v3, v9

    .line 30
    .line 31
    sub-int v9, v8, v1

    .line 32
    .line 33
    add-int/2addr v9, v7

    .line 34
    new-instance v7, Ll2/a;

    .line 35
    .line 36
    filled-new-array {v6, v9, v3}, [I

    .line 37
    .line 38
    .line 39
    move-result-object v10

    .line 40
    invoke-direct {v7, v10}, Ll2/a;-><init>([I)V

    .line 41
    .line 42
    .line 43
    iget-object v0, v0, Ll2/a;->c:[F

    .line 44
    .line 45
    iget-object v10, v7, Ll2/a;->c:[F

    .line 46
    .line 47
    move v11, v5

    .line 48
    :goto_2f
    if-ge v11, v6, :cond_7a

    .line 49
    .line 50
    move v12, v5

    .line 51
    :goto_32
    if-ge v12, v3, :cond_74

    .line 52
    .line 53
    move v13, v5

    .line 54
    :goto_35
    if-ge v13, v9, :cond_6e

    .line 55
    .line 56
    mul-int v14, v11, v9

    .line 57
    .line 58
    mul-int/2addr v14, v3

    .line 59
    mul-int v15, v13, v3

    .line 60
    .line 61
    add-int/2addr v14, v15

    .line 62
    add-int/2addr v14, v12

    .line 63
    mul-int v16, v11, v8

    .line 64
    .line 65
    mul-int v16, v16, v3

    .line 66
    .line 67
    add-int v16, v16, v15

    .line 68
    .line 69
    add-int v16, v16, v12

    .line 70
    .line 71
    const/4 v15, 0x1

    .line 72
    aput v15, v10, v14
    :try_end_49
    .catchall {:try_start_e .. :try_end_49} :catchall_6a

    .line 73
    .line 74
    move v15, v5

    .line 75
    :goto_4a
    if-ge v15, v1, :cond_64

    .line 76
    .line 77
    move-object/from16 v17, v4

    .line 78
    .line 79
    :try_start_4e
    aget v4, v10, v14

    .line 80
    .line 81
    mul-int v18, v15, v3

    .line 82
    .line 83
    add-int v18, v18, v16

    .line 84
    .line 85
    aget v5, v0, v18

    .line 86
    .line 87
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    aput v4, v10, v14
    :try_end_5c
    .catchall {:try_start_4e .. :try_end_5c} :catchall_62

    .line 92
    .line 93
    add-int/lit8 v15, v15, 0x1

    .line 94
    .line 95
    move-object/from16 v4, v17

    .line 96
    .line 97
    const/4 v5, 0x0

    .line 98
    goto :goto_4a

    .line 99
    :catchall_62
    move-exception v0

    .line 100
    goto :goto_7b

    .line 101
    :cond_64
    move-object/from16 v17, v4

    .line 102
    .line 103
    add-int/lit8 v13, v13, 0x1

    .line 104
    .line 105
    const/4 v5, 0x0

    .line 106
    goto :goto_35

    .line 107
    :catchall_6a
    move-exception v0

    .line 108
    move-object/from16 v17, v4

    .line 109
    .line 110
    goto :goto_7b

    .line 111
    :cond_6e
    move-object/from16 v17, v4

    .line 112
    .line 113
    add-int/lit8 v12, v12, 0x1

    .line 114
    .line 115
    const/4 v5, 0x0

    .line 116
    goto :goto_32

    .line 117
    :cond_74
    move-object/from16 v17, v4

    .line 118
    .line 119
    add-int/lit8 v11, v11, 0x1

    .line 120
    .line 121
    const/4 v5, 0x0

    .line 122
    goto :goto_2f

    .line 123
    :cond_7a
    return-object v7

    .line 124
    :goto_7b
    invoke-static {v0, v2}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    return-object v17
.end method

.method public static final p(Ll2/a;Ll2/a;)Ll2/a;
    .registers 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-class v2, Ll2/e;

    .line 6
    .line 7
    invoke-static {v2}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x0

    .line 12
    if-eqz v3, :cond_e

    .line 13
    .line 14
    return-object v4

    .line 15
    :cond_e
    :try_start_e
    const-string v3, "x"

    .line 16
    .line 17
    invoke-static {v3, v0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    const-string v3, "w"

    .line 21
    .line 22
    invoke-static {v3, v1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object v3, v0, Ll2/a;->a:[I

    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    aget v3, v3, v5

    .line 29
    .line 30
    iget-object v6, v1, Ll2/a;->a:[I

    .line 31
    .line 32
    aget v7, v6, v5

    .line 33
    .line 34
    const/4 v8, 0x1

    .line 35
    aget v6, v6, v8

    .line 36
    .line 37
    new-instance v8, Ll2/a;

    .line 38
    .line 39
    filled-new-array {v3, v6}, [I

    .line 40
    .line 41
    .line 42
    move-result-object v9

    .line 43
    invoke-direct {v8, v9}, Ll2/a;-><init>([I)V

    .line 44
    .line 45
    .line 46
    iget-object v0, v0, Ll2/a;->c:[F

    .line 47
    .line 48
    iget-object v1, v1, Ll2/a;->c:[F

    .line 49
    .line 50
    iget-object v9, v8, Ll2/a;->c:[F

    .line 51
    .line 52
    move v10, v5

    .line 53
    :goto_34
    if-ge v10, v3, :cond_5f

    .line 54
    .line 55
    move v11, v5

    .line 56
    :goto_37
    if-ge v11, v6, :cond_5c

    .line 57
    .line 58
    mul-int v12, v10, v6

    .line 59
    .line 60
    add-int/2addr v12, v11

    .line 61
    const/4 v13, 0x0

    .line 62
    aput v13, v9, v12

    .line 63
    .line 64
    move v13, v5

    .line 65
    :goto_40
    if-ge v13, v7, :cond_59

    .line 66
    .line 67
    aget v14, v9, v12

    .line 68
    .line 69
    mul-int v15, v10, v7

    .line 70
    .line 71
    add-int/2addr v15, v13

    .line 72
    aget v15, v0, v15

    .line 73
    .line 74
    mul-int v16, v13, v6

    .line 75
    .line 76
    add-int v16, v16, v11

    .line 77
    .line 78
    aget v16, v1, v16

    .line 79
    .line 80
    mul-float v15, v15, v16

    .line 81
    .line 82
    add-float/2addr v15, v14

    .line 83
    aput v15, v9, v12
    :try_end_54
    .catchall {:try_start_e .. :try_end_54} :catchall_57

    .line 84
    .line 85
    add-int/lit8 v13, v13, 0x1

    .line 86
    .line 87
    goto :goto_40

    .line 88
    :catchall_57
    move-exception v0

    .line 89
    goto :goto_60

    .line 90
    :cond_59
    add-int/lit8 v11, v11, 0x1

    .line 91
    .line 92
    goto :goto_37

    .line 93
    :cond_5c
    add-int/lit8 v10, v10, 0x1

    .line 94
    .line 95
    goto :goto_34

    .line 96
    :cond_5f
    return-object v8

    .line 97
    :goto_60
    invoke-static {v0, v2}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    return-object v4
.end method

.method public static final s(Ll2/a;)V
    .registers 6

    .line 1
    const-class v0, Ll2/e;

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
    goto :goto_23

    .line 10
    :cond_9
    :try_start_9
    const-string v1, "x"

    .line 11
    .line 12
    invoke-static {v1, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Ll2/a;->c:[F

    .line 16
    .line 17
    array-length v1, p0

    .line 18
    const/4 v2, 0x0

    .line 19
    :goto_12
    if-ge v2, v1, :cond_23

    .line 20
    .line 21
    aget v3, p0, v2

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    cmpg-float v3, v3, v4

    .line 25
    .line 26
    if-gez v3, :cond_20

    .line 27
    .line 28
    aput v4, p0, v2
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_1e

    .line 29
    .line 30
    goto :goto_20

    .line 31
    :catchall_1e
    move-exception p0

    .line 32
    goto :goto_24

    .line 33
    :cond_20
    :goto_20
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    goto :goto_12

    .line 36
    :cond_23
    :goto_23
    return-void

    .line 37
    :goto_24
    invoke-static {p0, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public static final t(Ljava/net/Socket;)Le8/c;
    .registers 4

    .line 1
    sget-object v0, Le8/n;->a:Ljava/util/logging/Logger;

    .line 2
    .line 3
    new-instance v0, Le8/v;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Le8/v;-><init>(Ljava/net/Socket;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Le8/c;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string v2, "getOutputStream(...)"

    .line 15
    .line 16
    invoke-static {v2, p0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, p0, v0}, Le8/c;-><init>(Ljava/io/OutputStream;Le8/v;)V

    .line 20
    .line 21
    .line 22
    new-instance p0, Le8/c;

    .line 23
    .line 24
    invoke-direct {p0, v0, v1}, Le8/c;-><init>(Le8/v;Le8/c;)V

    .line 25
    .line 26
    .line 27
    return-object p0
.end method

.method public static final u(Ll2/a;)V
    .registers 12

    .line 1
    const-class v0, Ll2/e;

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
    goto :goto_4e

    .line 10
    :cond_9
    :try_start_9
    const-string v1, "x"

    .line 11
    .line 12
    invoke-static {v1, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Ll2/a;->a:[I

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    aget v3, v1, v2

    .line 19
    .line 20
    const/4 v4, 0x1

    .line 21
    aget v1, v1, v4

    .line 22
    .line 23
    iget-object p0, p0, Ll2/a;->c:[F

    .line 24
    .line 25
    :goto_18
    if-ge v2, v3, :cond_4e

    .line 26
    .line 27
    mul-int v4, v2, v1

    .line 28
    .line 29
    add-int v5, v4, v1

    .line 30
    .line 31
    const/4 v6, 0x1

    .line 32
    move v7, v4

    .line 33
    :goto_20
    if-ge v7, v5, :cond_2e

    .line 34
    .line 35
    aget v8, p0, v7

    .line 36
    .line 37
    cmpl-float v9, v8, v6

    .line 38
    .line 39
    if-lez v9, :cond_29

    .line 40
    .line 41
    move v6, v8

    .line 42
    :cond_29
    add-int/lit8 v7, v7, 0x1

    .line 43
    .line 44
    goto :goto_20

    .line 45
    :catchall_2c
    move-exception p0

    .line 46
    goto :goto_4f

    .line 47
    :cond_2e
    const/4 v7, 0x0

    .line 48
    move v8, v4

    .line 49
    :goto_30
    if-ge v8, v5, :cond_41

    .line 50
    .line 51
    aget v9, p0, v8

    .line 52
    .line 53
    sub-float/2addr v9, v6

    .line 54
    float-to-double v9, v9

    .line 55
    invoke-static {v9, v10}, Ljava/lang/Math;->exp(D)D

    .line 56
    .line 57
    .line 58
    move-result-wide v9

    .line 59
    double-to-float v9, v9

    .line 60
    aput v9, p0, v8

    .line 61
    .line 62
    add-float/2addr v7, v9

    .line 63
    add-int/lit8 v8, v8, 0x1

    .line 64
    .line 65
    goto :goto_30

    .line 66
    :cond_41
    :goto_41
    if-ge v4, v5, :cond_4b

    .line 67
    .line 68
    aget v6, p0, v4

    .line 69
    .line 70
    div-float/2addr v6, v7

    .line 71
    aput v6, p0, v4
    :try_end_48
    .catchall {:try_start_9 .. :try_end_48} :catchall_2c

    .line 72
    .line 73
    add-int/lit8 v4, v4, 0x1

    .line 74
    .line 75
    goto :goto_41

    .line 76
    :cond_4b
    add-int/lit8 v2, v2, 0x1

    .line 77
    .line 78
    goto :goto_18

    .line 79
    :cond_4e
    :goto_4e
    return-void

    .line 80
    :goto_4f
    invoke-static {p0, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public static final v(Ljava/net/Socket;)Le8/d;
    .registers 4

    .line 1
    sget-object v0, Le8/n;->a:Ljava/util/logging/Logger;

    .line 2
    .line 3
    new-instance v0, Le8/v;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Le8/v;-><init>(Ljava/net/Socket;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Le8/d;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string v2, "getInputStream(...)"

    .line 15
    .line 16
    invoke-static {v2, p0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-direct {v1, p0, v2, v0}, Le8/d;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    new-instance p0, Le8/d;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-direct {p0, v0, v2, v1}, Le8/d;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-object p0
.end method

.method public static w(Landroid/app/Activity;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lo2/e;->d:Ljava/util/HashMap;

    .line 6
    .line 7
    const-class v1, Lo2/e;

    .line 8
    .line 9
    invoke-static {v1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v2, :cond_10

    .line 15
    .line 16
    goto :goto_17

    .line 17
    :cond_10
    :try_start_10
    sget-object v3, Lo2/e;->d:Ljava/util/HashMap;
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_13

    .line 18
    .line 19
    goto :goto_17

    .line 20
    :catchall_13
    move-exception v2

    .line 21
    invoke-static {v2, v1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :goto_17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    if-nez v2, :cond_29

    .line 33
    .line 34
    new-instance v2, Lo2/e;

    .line 35
    .line 36
    invoke-direct {v2, p0}, Lo2/e;-><init>(Landroid/app/Activity;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    :cond_29
    check-cast v2, Lo2/e;

    .line 43
    .line 44
    invoke-static {v1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-eqz p0, :cond_32

    .line 49
    .line 50
    goto :goto_6c

    .line 51
    :cond_32
    :try_start_32
    invoke-static {v2}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p0
    :try_end_36
    .catchall {:try_start_32 .. :try_end_36} :catchall_68

    .line 55
    if-eqz p0, :cond_39

    .line 56
    .line 57
    goto :goto_6c

    .line 58
    :cond_39
    :try_start_39
    iget-object p0, v2, Lo2/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    .line 60
    const/4 v0, 0x1

    .line 61
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    if-eqz p0, :cond_43

    .line 66
    .line 67
    goto :goto_6c

    .line 68
    :cond_43
    iget-object p0, v2, Lo2/e;->a:Ljava/lang/ref/WeakReference;

    .line 69
    .line 70
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    check-cast p0, Landroid/app/Activity;

    .line 75
    .line 76
    invoke-static {p0}, Lk2/e;->i(Landroid/app/Activity;)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    if-nez p0, :cond_52

    .line 81
    .line 82
    goto :goto_6c

    .line 83
    :cond_52
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {p0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_6c

    .line 92
    .line 93
    invoke-virtual {p0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2}, Lo2/e;->a()V
    :try_end_62
    .catchall {:try_start_39 .. :try_end_62} :catchall_63

    .line 97
    .line 98
    .line 99
    goto :goto_6c

    .line 100
    :catchall_63
    move-exception p0

    .line 101
    :try_start_64
    invoke-static {p0, v2}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_68

    .line 102
    .line 103
    .line 104
    goto :goto_6c

    .line 105
    :catchall_68
    move-exception p0

    .line 106
    invoke-static {p0, v1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    :cond_6c
    :goto_6c
    return-void
.end method

.method public static x(Landroid/app/Activity;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    sget-object v0, Lo2/e;->d:Ljava/util/HashMap;

    .line 6
    .line 7
    const-class v0, Lo2/e;

    .line 8
    .line 9
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_10

    .line 15
    .line 16
    goto :goto_17

    .line 17
    :cond_10
    :try_start_10
    sget-object v2, Lo2/e;->d:Ljava/util/HashMap;
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_13

    .line 18
    .line 19
    goto :goto_17

    .line 20
    :catchall_13
    move-exception v1

    .line 21
    invoke-static {v1, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :goto_17
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {v2, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Lo2/e;

    .line 33
    .line 34
    if-eqz p0, :cond_62

    .line 35
    .line 36
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_2a

    .line 41
    .line 42
    goto :goto_62

    .line 43
    :cond_2a
    :try_start_2a
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v1
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_5e

    .line 47
    if-eqz v1, :cond_31

    .line 48
    .line 49
    goto :goto_62

    .line 50
    :cond_31
    :try_start_31
    iget-object v1, p0, Lo2/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    .line 52
    const/4 v2, 0x0

    .line 53
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_3b

    .line 58
    .line 59
    goto :goto_62

    .line 60
    :cond_3b
    iget-object v1, p0, Lo2/e;->a:Ljava/lang/ref/WeakReference;

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Landroid/app/Activity;

    .line 67
    .line 68
    invoke-static {v1}, Lk2/e;->i(Landroid/app/Activity;)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    if-nez v1, :cond_4a

    .line 73
    .line 74
    goto :goto_62

    .line 75
    :cond_4a
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-nez v2, :cond_55

    .line 84
    .line 85
    goto :goto_62

    .line 86
    :cond_55
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_58
    .catchall {:try_start_31 .. :try_end_58} :catchall_59

    .line 87
    .line 88
    .line 89
    goto :goto_62

    .line 90
    :catchall_59
    move-exception v1

    .line 91
    :try_start_5a
    invoke-static {v1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_5e

    .line 92
    .line 93
    .line 94
    goto :goto_62

    .line 95
    :catchall_5e
    move-exception p0

    .line 96
    invoke-static {p0, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    :cond_62
    :goto_62
    return-void
.end method

.method public static final y(Ll2/a;)Ll2/a;
    .registers 12

    .line 1
    const-class v0, Ll2/e;

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
    iget-object v1, p0, Ll2/a;->a:[I

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    aget v4, v1, v3

    .line 15
    .line 16
    const/4 v5, 0x1

    .line 17
    aget v1, v1, v5

    .line 18
    .line 19
    new-instance v5, Ll2/a;

    .line 20
    .line 21
    filled-new-array {v1, v4}, [I

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    invoke-direct {v5, v6}, Ll2/a;-><init>([I)V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Ll2/a;->c:[F

    .line 29
    .line 30
    iget-object v6, v5, Ll2/a;->c:[F

    .line 31
    .line 32
    move v7, v3

    .line 33
    :goto_20
    if-ge v7, v4, :cond_37

    .line 34
    .line 35
    move v8, v3

    .line 36
    :goto_23
    if-ge v8, v1, :cond_34

    .line 37
    .line 38
    mul-int v9, v8, v4

    .line 39
    .line 40
    add-int/2addr v9, v7

    .line 41
    mul-int v10, v7, v1

    .line 42
    .line 43
    add-int/2addr v10, v8

    .line 44
    aget v10, p0, v10

    .line 45
    .line 46
    aput v10, v6, v9
    :try_end_2f
    .catchall {:try_start_a .. :try_end_2f} :catchall_32

    .line 47
    .line 48
    add-int/lit8 v8, v8, 0x1

    .line 49
    .line 50
    goto :goto_23

    .line 51
    :catchall_32
    move-exception p0

    .line 52
    goto :goto_38

    .line 53
    :cond_34
    add-int/lit8 v7, v7, 0x1

    .line 54
    .line 55
    goto :goto_20

    .line 56
    :cond_37
    return-object v5

    .line 57
    :goto_38
    invoke-static {p0, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    return-object v2
.end method

.method public static final z(Ll2/a;)Ll2/a;
    .registers 15

    .line 1
    const-class v0, Ll2/e;

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
    iget-object v1, p0, Ll2/a;->a:[I

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    aget v4, v1, v3

    .line 15
    .line 16
    const/4 v5, 0x1

    .line 17
    aget v5, v1, v5

    .line 18
    .line 19
    const/4 v6, 0x2

    .line 20
    aget v1, v1, v6

    .line 21
    .line 22
    new-instance v6, Ll2/a;

    .line 23
    .line 24
    filled-new-array {v1, v5, v4}, [I

    .line 25
    .line 26
    .line 27
    move-result-object v7

    .line 28
    invoke-direct {v6, v7}, Ll2/a;-><init>([I)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Ll2/a;->c:[F

    .line 32
    .line 33
    iget-object v7, v6, Ll2/a;->c:[F

    .line 34
    .line 35
    move v8, v3

    .line 36
    :goto_23
    if-ge v8, v4, :cond_48

    .line 37
    .line 38
    move v9, v3

    .line 39
    :goto_26
    if-ge v9, v5, :cond_45

    .line 40
    .line 41
    move v10, v3

    .line 42
    :goto_29
    if-ge v10, v1, :cond_42

    .line 43
    .line 44
    mul-int v11, v10, v4

    .line 45
    .line 46
    mul-int/2addr v11, v5

    .line 47
    mul-int v12, v9, v4

    .line 48
    .line 49
    add-int/2addr v12, v11

    .line 50
    add-int/2addr v12, v8

    .line 51
    mul-int v11, v8, v5

    .line 52
    .line 53
    mul-int/2addr v11, v1

    .line 54
    mul-int v13, v9, v1

    .line 55
    .line 56
    add-int/2addr v13, v11

    .line 57
    add-int/2addr v13, v10

    .line 58
    aget v11, p0, v13

    .line 59
    .line 60
    aput v11, v7, v12
    :try_end_3d
    .catchall {:try_start_a .. :try_end_3d} :catchall_40

    .line 61
    .line 62
    add-int/lit8 v10, v10, 0x1

    .line 63
    .line 64
    goto :goto_29

    .line 65
    :catchall_40
    move-exception p0

    .line 66
    goto :goto_49

    .line 67
    :cond_42
    add-int/lit8 v9, v9, 0x1

    .line 68
    .line 69
    goto :goto_26

    .line 70
    :cond_45
    add-int/lit8 v8, v8, 0x1

    .line 71
    .line 72
    goto :goto_23

    .line 73
    :cond_48
    return-object v6

    .line 74
    :goto_49
    invoke-static {p0, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    return-object v2
.end method


# virtual methods
.method public abstract c(Lu/h;Lu/d;Lu/d;)Z
.end method

.method public abstract d(Lu/h;Ljava/lang/Object;Ljava/lang/Object;)Z
.end method

.method public abstract e(Lu/h;Lu/g;Lu/g;)Z
.end method

.method public abstract q(Lu/g;Lu/g;)V
.end method

.method public abstract r(Lu/g;Ljava/lang/Thread;)V
.end method
