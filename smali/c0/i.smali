###### Class c0.i (c0.i)
.class public Lc0/i;
.super Lc0/g;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final f:Ljava/lang/Class;

.field public final g:Ljava/lang/reflect/Constructor;

.field public final h:Ljava/lang/reflect/Method;

.field public final i:Ljava/lang/reflect/Method;

.field public final j:Ljava/lang/reflect/Method;

.field public final k:Ljava/lang/reflect/Method;

.field public final l:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .registers 11

    .line 1
    invoke-direct {p0}, Lx2/a;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :try_start_4
    const-string v1, "android.graphics.FontFamily"

    .line 6
    .line 7
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-static {v1}, Lc0/i;->w(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const-string v4, "addFontFromBuffer"

    .line 20
    .line 21
    const/4 v5, 0x5

    .line 22
    new-array v5, v5, [Ljava/lang/Class;

    .line 23
    .line 24
    const-class v6, Ljava/nio/ByteBuffer;

    .line 25
    .line 26
    const/4 v7, 0x0

    .line 27
    aput-object v6, v5, v7

    .line 28
    .line 29
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 30
    .line 31
    const/4 v7, 0x1

    .line 32
    aput-object v6, v5, v7

    .line 33
    .line 34
    const-class v7, [Landroid/graphics/fonts/FontVariationAxis;

    .line 35
    .line 36
    const/4 v8, 0x2

    .line 37
    aput-object v7, v5, v8

    .line 38
    .line 39
    const/4 v7, 0x3

    .line 40
    aput-object v6, v5, v7

    .line 41
    .line 42
    const/4 v7, 0x4

    .line 43
    aput-object v6, v5, v7

    .line 44
    .line 45
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    const-string v5, "freeze"

    .line 50
    .line 51
    invoke-virtual {v1, v5, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    const-string v6, "abortCreation"

    .line 56
    .line 57
    invoke-virtual {v1, v6, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    invoke-virtual {p0, v1}, Lc0/i;->x(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 62
    .line 63
    .line 64
    move-result-object v0
    :try_end_40
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_40} :catch_46
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_40} :catch_44

    .line 65
    move-object v9, v1

    .line 66
    move-object v1, v0

    .line 67
    move-object v0, v9

    .line 68
    goto :goto_60

    .line 69
    :catch_44
    move-exception v1

    .line 70
    goto :goto_47

    .line 71
    :catch_46
    move-exception v1

    .line 72
    :goto_47
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    const-string v3, "Unable to collect necessary methods for class "

    .line 81
    .line 82
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    const-string v3, "TypefaceCompatApi26Impl"

    .line 87
    .line 88
    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    .line 90
    .line 91
    move-object v1, v0

    .line 92
    move-object v2, v1

    .line 93
    move-object v3, v2

    .line 94
    move-object v4, v3

    .line 95
    move-object v5, v4

    .line 96
    move-object v6, v5

    .line 97
    :goto_60
    iput-object v0, p0, Lc0/i;->f:Ljava/lang/Class;

    .line 98
    .line 99
    iput-object v2, p0, Lc0/i;->g:Ljava/lang/reflect/Constructor;

    .line 100
    .line 101
    iput-object v3, p0, Lc0/i;->h:Ljava/lang/reflect/Method;

    .line 102
    .line 103
    iput-object v4, p0, Lc0/i;->i:Ljava/lang/reflect/Method;

    .line 104
    .line 105
    iput-object v5, p0, Lc0/i;->j:Ljava/lang/reflect/Method;

    .line 106
    .line 107
    iput-object v6, p0, Lc0/i;->k:Ljava/lang/reflect/Method;

    .line 108
    .line 109
    iput-object v1, p0, Lc0/i;->l:Ljava/lang/reflect/Method;

    .line 110
    .line 111
    return-void
.end method

.method public static w(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 5

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v0, v0, [Ljava/lang/Class;

    .line 4
    .line 5
    const-class v1, Landroid/content/res/AssetManager;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object v1, v0, v2

    .line 9
    .line 10
    const-class v1, Ljava/lang/String;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 17
    .line 18
    aput-object v2, v0, v1

    .line 19
    .line 20
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 21
    .line 22
    const/4 v3, 0x3

    .line 23
    aput-object v1, v0, v3

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    aput-object v2, v0, v1

    .line 27
    .line 28
    const/4 v1, 0x5

    .line 29
    aput-object v2, v0, v1

    .line 30
    .line 31
    const/4 v1, 0x6

    .line 32
    aput-object v2, v0, v1

    .line 33
    .line 34
    const-class v1, [Landroid/graphics/fonts/FontVariationAxis;

    .line 35
    .line 36
    const/4 v2, 0x7

    .line 37
    aput-object v1, v0, v2

    .line 38
    .line 39
    const-string v1, "addFontFromAssetManager"

    .line 40
    .line 41
    invoke-virtual {p0, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lb0/f;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .registers 14

    .line 1
    iget-object v0, p0, Lc0/i;->h:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    if-nez v0, :cond_b

    .line 4
    .line 5
    const-string v1, "TypefaceCompatApi26Impl"

    .line 6
    .line 7
    const-string v2, "Unable to collect necessary private methods. Fallback to legacy implementation."

    .line 8
    .line 9
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_b
    if-eqz v0, :cond_51

    .line 13
    .line 14
    const/4 p3, 0x0

    .line 15
    :try_start_e
    iget-object p4, p0, Lc0/i;->g:Ljava/lang/reflect/Constructor;

    .line 16
    .line 17
    invoke-virtual {p4, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p4
    :try_end_14
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_14} :catch_16
    .catch Ljava/lang/InstantiationException; {:try_start_e .. :try_end_14} :catch_16
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_e .. :try_end_14} :catch_16

    .line 21
    move-object v2, p4

    .line 22
    goto :goto_17

    .line 23
    :catch_16
    move-object v2, p3

    .line 24
    :goto_17
    if-nez v2, :cond_1b

    .line 25
    .line 26
    move-object v0, p0

    .line 27
    goto :goto_4b

    .line 28
    :cond_1b
    iget-object p2, p2, Lb0/f;->a:[Lb0/g;

    .line 29
    .line 30
    array-length p4, p2

    .line 31
    const/4 v0, 0x0

    .line 32
    move v8, v0

    .line 33
    :goto_20
    if-ge v8, p4, :cond_44

    .line 34
    .line 35
    aget-object v0, p2, v8

    .line 36
    .line 37
    iget-object v3, v0, Lb0/g;->a:Ljava/lang/String;

    .line 38
    .line 39
    iget v4, v0, Lb0/g;->e:I

    .line 40
    .line 41
    iget v5, v0, Lb0/g;->b:I

    .line 42
    .line 43
    iget-boolean v6, v0, Lb0/g;->c:Z

    .line 44
    .line 45
    iget-object v0, v0, Lb0/g;->d:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v0}, Landroid/graphics/fonts/FontVariationAxis;->fromFontVariationSettings(Ljava/lang/String;)[Landroid/graphics/fonts/FontVariationAxis;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    move-object v0, p0

    .line 52
    move-object v1, p1

    .line 53
    invoke-virtual/range {v0 .. v7}, Lc0/i;->t(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;III[Landroid/graphics/fonts/FontVariationAxis;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_40

    .line 58
    .line 59
    :try_start_3a
    iget-object p1, v0, Lc0/i;->k:Ljava/lang/reflect/Method;

    .line 60
    .line 61
    invoke-virtual {p1, v2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f
    .catch Ljava/lang/IllegalAccessException; {:try_start_3a .. :try_end_3f} :catch_4b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3a .. :try_end_3f} :catch_4b

    .line 62
    .line 63
    .line 64
    goto :goto_4b

    .line 65
    :cond_40
    add-int/lit8 v8, v8, 0x1

    .line 66
    .line 67
    move-object p1, v1

    .line 68
    goto :goto_20

    .line 69
    :cond_44
    move-object v0, p0

    .line 70
    invoke-virtual {p0, v2}, Lc0/i;->v(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-nez p1, :cond_4c

    .line 75
    .line 76
    :catch_4b
    :goto_4b
    return-object p3

    .line 77
    :cond_4c
    invoke-virtual {p0, v2}, Lc0/i;->u(Ljava/lang/Object;)Landroid/graphics/Typeface;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    return-object p1

    .line 82
    :cond_51
    move-object v0, p0

    .line 83
    move-object v1, p1

    .line 84
    invoke-super {p0, v1, p2, p3, p4}, Lc0/g;->a(Landroid/content/Context;Lb0/f;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    return-object p1
.end method

.method public final b(Landroid/content/Context;[Lg0/j;I)Landroid/graphics/Typeface;
    .registers 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    array-length v3, v0

    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x1

    .line 10
    if-ge v3, v5, :cond_d

    .line 11
    .line 12
    goto/16 :goto_104

    .line 13
    .line 14
    :cond_d
    iget-object v3, v1, Lc0/i;->h:Ljava/lang/reflect/Method;

    .line 15
    .line 16
    if-nez v3, :cond_18

    .line 17
    .line 18
    const-string v6, "TypefaceCompatApi26Impl"

    .line 19
    .line 20
    const-string v7, "Unable to collect necessary private methods. Fallback to legacy implementation."

    .line 21
    .line 22
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    :cond_18
    if-eqz v3, :cond_c2

    .line 26
    .line 27
    new-instance v3, Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 30
    .line 31
    .line 32
    array-length v6, v0

    .line 33
    const/4 v7, 0x0

    .line 34
    move v8, v7

    .line 35
    :goto_22
    if-ge v8, v6, :cond_42

    .line 36
    .line 37
    aget-object v9, v0, v8

    .line 38
    .line 39
    iget v10, v9, Lg0/j;->e:I

    .line 40
    .line 41
    if-eqz v10, :cond_2d

    .line 42
    .line 43
    :goto_2a
    move-object/from16 v10, p1

    .line 44
    .line 45
    goto :goto_3f

    .line 46
    :cond_2d
    iget-object v9, v9, Lg0/j;->a:Landroid/net/Uri;

    .line 47
    .line 48
    invoke-virtual {v3, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v10

    .line 52
    if-eqz v10, :cond_36

    .line 53
    .line 54
    goto :goto_2a

    .line 55
    :cond_36
    move-object/from16 v10, p1

    .line 56
    .line 57
    invoke-static {v10, v9}, Ly1/g;->s(Landroid/content/Context;Landroid/net/Uri;)Ljava/nio/MappedByteBuffer;

    .line 58
    .line 59
    .line 60
    move-result-object v11

    .line 61
    invoke-virtual {v3, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    :goto_3f
    add-int/lit8 v8, v8, 0x1

    .line 65
    .line 66
    goto :goto_22

    .line 67
    :cond_42
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    :try_start_46
    iget-object v6, v1, Lc0/i;->g:Ljava/lang/reflect/Constructor;

    .line 72
    .line 73
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v6
    :try_end_4c
    .catch Ljava/lang/IllegalAccessException; {:try_start_46 .. :try_end_4c} :catch_4d
    .catch Ljava/lang/InstantiationException; {:try_start_46 .. :try_end_4c} :catch_4d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_46 .. :try_end_4c} :catch_4d

    .line 77
    goto :goto_4e

    .line 78
    :catch_4d
    move-object v6, v4

    .line 79
    :goto_4e
    if-nez v6, :cond_52

    .line 80
    .line 81
    goto/16 :goto_104

    .line 82
    .line 83
    :cond_52
    array-length v8, v0

    .line 84
    move v9, v7

    .line 85
    move v10, v9

    .line 86
    :goto_55
    iget-object v11, v1, Lc0/i;->k:Ljava/lang/reflect/Method;

    .line 87
    .line 88
    if-ge v9, v8, :cond_a9

    .line 89
    .line 90
    aget-object v12, v0, v9

    .line 91
    .line 92
    iget-object v13, v12, Lg0/j;->a:Landroid/net/Uri;

    .line 93
    .line 94
    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v13

    .line 98
    check-cast v13, Ljava/nio/ByteBuffer;

    .line 99
    .line 100
    if-nez v13, :cond_68

    .line 101
    .line 102
    move/from16 v16, v5

    .line 103
    .line 104
    goto :goto_a4

    .line 105
    :cond_68
    iget v10, v12, Lg0/j;->b:I

    .line 106
    .line 107
    iget v14, v12, Lg0/j;->c:I

    .line 108
    .line 109
    iget-boolean v12, v12, Lg0/j;->d:Z

    .line 110
    .line 111
    :try_start_6e
    iget-object v15, v1, Lc0/i;->i:Ljava/lang/reflect/Method;

    .line 112
    .line 113
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v10

    .line 117
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object v14

    .line 121
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object v12
    :try_end_7c
    .catch Ljava/lang/IllegalAccessException; {:try_start_6e .. :try_end_7c} :catch_99
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6e .. :try_end_7c} :catch_99

    .line 125
    move/from16 v16, v5

    .line 126
    .line 127
    const/4 v5, 0x5

    .line 128
    :try_start_7f
    new-array v5, v5, [Ljava/lang/Object;

    .line 129
    .line 130
    aput-object v13, v5, v7

    .line 131
    .line 132
    aput-object v10, v5, v16

    .line 133
    .line 134
    const/4 v10, 0x2

    .line 135
    aput-object v4, v5, v10

    .line 136
    .line 137
    const/4 v10, 0x3

    .line 138
    aput-object v14, v5, v10

    .line 139
    .line 140
    const/4 v10, 0x4

    .line 141
    aput-object v12, v5, v10

    .line 142
    .line 143
    invoke-virtual {v15, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    check-cast v5, Ljava/lang/Boolean;

    .line 148
    .line 149
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 150
    .line 151
    .line 152
    move-result v5
    :try_end_98
    .catch Ljava/lang/IllegalAccessException; {:try_start_7f .. :try_end_98} :catch_9b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7f .. :try_end_98} :catch_9b

    .line 153
    goto :goto_9c

    .line 154
    :catch_99
    move/from16 v16, v5

    .line 155
    .line 156
    :catch_9b
    move v5, v7

    .line 157
    :goto_9c
    if-nez v5, :cond_a2

    .line 158
    .line 159
    :try_start_9e
    invoke-virtual {v11, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    goto :goto_104

    .line 163
    :cond_a2
    move/from16 v10, v16

    .line 164
    .line 165
    :goto_a4
    add-int/lit8 v9, v9, 0x1

    .line 166
    .line 167
    move/from16 v5, v16

    .line 168
    .line 169
    goto :goto_55

    .line 170
    :cond_a9
    if-nez v10, :cond_af

    .line 171
    .line 172
    invoke-virtual {v11, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ae
    .catch Ljava/lang/IllegalAccessException; {:try_start_9e .. :try_end_ae} :catch_104
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9e .. :try_end_ae} :catch_104

    .line 173
    .line 174
    .line 175
    goto :goto_104

    .line 176
    :cond_af
    invoke-virtual {v1, v6}, Lc0/i;->v(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-nez v0, :cond_b6

    .line 181
    .line 182
    goto :goto_104

    .line 183
    :cond_b6
    invoke-virtual {v1, v6}, Lc0/i;->u(Ljava/lang/Object;)Landroid/graphics/Typeface;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    if-nez v0, :cond_bd

    .line 188
    .line 189
    goto :goto_104

    .line 190
    :cond_bd
    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    return-object v0

    .line 195
    :cond_c2
    move-object/from16 v10, p1

    .line 196
    .line 197
    invoke-virtual {v1, v0, v2}, Lx2/a;->f([Lg0/j;I)Lg0/j;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    :try_start_cc
    iget-object v3, v0, Lg0/j;->a:Landroid/net/Uri;

    .line 206
    .line 207
    const-string v5, "r"

    .line 208
    .line 209
    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    if-nez v2, :cond_dc

    .line 214
    .line 215
    if-eqz v2, :cond_104

    .line 216
    .line 217
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_db
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_db} :catch_104

    .line 218
    .line 219
    .line 220
    return-object v4

    .line 221
    :cond_dc
    :try_start_dc
    new-instance v3, Landroid/graphics/Typeface$Builder;

    .line 222
    .line 223
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 224
    .line 225
    .line 226
    move-result-object v5

    .line 227
    invoke-direct {v3, v5}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/io/FileDescriptor;)V

    .line 228
    .line 229
    .line 230
    iget v5, v0, Lg0/j;->c:I

    .line 231
    .line 232
    invoke-virtual {v3, v5}, Landroid/graphics/Typeface$Builder;->setWeight(I)Landroid/graphics/Typeface$Builder;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    iget-boolean v0, v0, Lg0/j;->d:Z

    .line 237
    .line 238
    invoke-virtual {v3, v0}, Landroid/graphics/Typeface$Builder;->setItalic(Z)Landroid/graphics/Typeface$Builder;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-virtual {v0}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    .line 243
    .line 244
    .line 245
    move-result-object v0
    :try_end_f5
    .catchall {:try_start_dc .. :try_end_f5} :catchall_f9

    .line 246
    :try_start_f5
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_f8
    .catch Ljava/io/IOException; {:try_start_f5 .. :try_end_f8} :catch_104

    .line 247
    .line 248
    .line 249
    return-object v0

    .line 250
    :catchall_f9
    move-exception v0

    .line 251
    move-object v3, v0

    .line 252
    :try_start_fb
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_fe
    .catchall {:try_start_fb .. :try_end_fe} :catchall_ff

    .line 253
    .line 254
    .line 255
    goto :goto_103

    .line 256
    :catchall_ff
    move-exception v0

    .line 257
    :try_start_100
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 258
    .line 259
    .line 260
    :goto_103
    throw v3
    :try_end_104
    .catch Ljava/io/IOException; {:try_start_100 .. :try_end_104} :catch_104

    .line 261
    :catch_104
    :cond_104
    :goto_104
    return-object v4
.end method

.method public final e(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .registers 15

    .line 1
    iget-object v0, p0, Lc0/i;->h:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    if-nez v0, :cond_b

    .line 4
    .line 5
    const-string v1, "TypefaceCompatApi26Impl"

    .line 6
    .line 7
    const-string v2, "Unable to collect necessary private methods. Fallback to legacy implementation."

    .line 8
    .line 9
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_b
    if-eqz v0, :cond_3a

    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    :try_start_e
    iget-object p3, p0, Lc0/i;->g:Ljava/lang/reflect/Constructor;

    .line 16
    .line 17
    invoke-virtual {p3, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p3
    :try_end_14
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_14} :catch_16
    .catch Ljava/lang/InstantiationException; {:try_start_e .. :try_end_14} :catch_16
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_e .. :try_end_14} :catch_16

    .line 21
    move-object v2, p3

    .line 22
    goto :goto_17

    .line 23
    :catch_16
    move-object v2, p2

    .line 24
    :goto_17
    if-nez v2, :cond_1b

    .line 25
    .line 26
    move-object v0, p0

    .line 27
    goto :goto_34

    .line 28
    :cond_1b
    const/4 v6, -0x1

    .line 29
    const/4 v7, 0x0

    .line 30
    const/4 v4, 0x0

    .line 31
    const/4 v5, -0x1

    .line 32
    move-object v0, p0

    .line 33
    move-object v1, p1

    .line 34
    move-object v3, p4

    .line 35
    invoke-virtual/range {v0 .. v7}, Lc0/i;->t(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;III[Landroid/graphics/fonts/FontVariationAxis;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_2e

    .line 40
    .line 41
    :try_start_28
    iget-object p1, v0, Lc0/i;->k:Ljava/lang/reflect/Method;

    .line 42
    .line 43
    invoke-virtual {p1, v2, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catch Ljava/lang/IllegalAccessException; {:try_start_28 .. :try_end_2d} :catch_34
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_28 .. :try_end_2d} :catch_34

    .line 44
    .line 45
    .line 46
    goto :goto_34

    .line 47
    :cond_2e
    invoke-virtual {p0, v2}, Lc0/i;->v(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_35

    .line 52
    .line 53
    :catch_34
    :goto_34
    return-object p2

    .line 54
    :cond_35
    invoke-virtual {p0, v2}, Lc0/i;->u(Ljava/lang/Object;)Landroid/graphics/Typeface;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    return-object p1

    .line 59
    :cond_3a
    move-object v3, p0

    .line 60
    move-object v4, p1

    .line 61
    move-object v5, p2

    .line 62
    move v6, p3

    .line 63
    move-object v7, p4

    .line 64
    move v8, p5

    .line 65
    invoke-super/range {v3 .. v8}, Lx2/a;->e(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    return-object p1
.end method

.method public final t(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;III[Landroid/graphics/fonts/FontVariationAxis;)Z
    .registers 12

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    iget-object v1, p0, Lc0/i;->h:Ljava/lang/reflect/Method;

    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p4

    .line 16
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object p5

    .line 20
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p6

    .line 24
    const/16 v3, 0x8

    .line 25
    .line 26
    new-array v3, v3, [Ljava/lang/Object;

    .line 27
    .line 28
    aput-object p1, v3, v0

    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    aput-object p3, v3, p1

    .line 32
    .line 33
    const/4 p1, 0x2

    .line 34
    aput-object v2, v3, p1

    .line 35
    .line 36
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 37
    .line 38
    const/4 p3, 0x3

    .line 39
    aput-object p1, v3, p3

    .line 40
    .line 41
    const/4 p1, 0x4

    .line 42
    aput-object p4, v3, p1

    .line 43
    .line 44
    const/4 p1, 0x5

    .line 45
    aput-object p5, v3, p1

    .line 46
    .line 47
    const/4 p1, 0x6

    .line 48
    aput-object p6, v3, p1

    .line 49
    .line 50
    const/4 p1, 0x7

    .line 51
    aput-object p7, v3, p1

    .line 52
    .line 53
    invoke-virtual {v1, p2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Ljava/lang/Boolean;

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 60
    .line 61
    .line 62
    move-result p1
    :try_end_3e
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_3e} :catch_3f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_3e} :catch_3f

    .line 63
    return p1

    .line 64
    :catch_3f
    return v0
.end method

.method public u(Ljava/lang/Object;)Landroid/graphics/Typeface;
    .registers 8

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_6
    iget-object v2, p0, Lc0/i;->f:Ljava/lang/Class;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-static {v2, v4, p1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lc0/i;->l:Ljava/lang/reflect/Method;

    .line 19
    .line 20
    const/4 v5, 0x3

    .line 21
    new-array v5, v5, [Ljava/lang/Object;

    .line 22
    .line 23
    aput-object v2, v5, v4

    .line 24
    .line 25
    aput-object v0, v5, v3

    .line 26
    .line 27
    const/4 v2, 0x2

    .line 28
    aput-object v0, v5, v2

    .line 29
    .line 30
    invoke-virtual {p1, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Landroid/graphics/Typeface;
    :try_end_23
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_23} :catch_24
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_23} :catch_24

    .line 35
    .line 36
    return-object p1

    .line 37
    :catch_24
    return-object v1
.end method

.method public final v(Ljava/lang/Object;)Z
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lc0/i;->j:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Ljava/lang/Boolean;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 11
    .line 12
    .line 13
    move-result p1
    :try_end_d
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_d} :catch_e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_d} :catch_e

    .line 14
    return p1

    .line 15
    :catch_e
    const/4 p1, 0x0

    .line 16
    return p1
.end method

.method public x(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v1, 0x3

    .line 11
    new-array v1, v1, [Ljava/lang/Class;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    aput-object p1, v1, v2

    .line 15
    .line 16
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 17
    .line 18
    aput-object p1, v1, v0

    .line 19
    .line 20
    const/4 v2, 0x2

    .line 21
    aput-object p1, v1, v2

    .line 22
    .line 23
    const-class p1, Landroid/graphics/Typeface;

    .line 24
    .line 25
    const-string v2, "createFromFamiliesWithDefault"

    .line 26
    .line 27
    invoke-virtual {p1, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 32
    .line 33
    .line 34
    return-object p1
.end method
