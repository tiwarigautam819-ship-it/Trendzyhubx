###### Class c0.h (c0.h)
.class public final Lc0/h;
.super Lx2/a;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Ljava/lang/Class;

.field public static final b:Ljava/lang/reflect/Constructor;

.field public static final c:Ljava/lang/reflect/Method;

.field public static final d:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    const-string v1, "android.graphics.FontFamily"

    .line 3
    .line 4
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-string v3, "addFontWeightStyle"

    .line 13
    .line 14
    const/4 v4, 0x5

    .line 15
    new-array v4, v4, [Ljava/lang/Class;

    .line 16
    .line 17
    const-class v5, Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    const/4 v6, 0x0

    .line 20
    aput-object v5, v4, v6

    .line 21
    .line 22
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 23
    .line 24
    const/4 v7, 0x1

    .line 25
    aput-object v5, v4, v7

    .line 26
    .line 27
    const-class v8, Ljava/util/List;

    .line 28
    .line 29
    const/4 v9, 0x2

    .line 30
    aput-object v8, v4, v9

    .line 31
    .line 32
    const/4 v8, 0x3

    .line 33
    aput-object v5, v4, v8

    .line 34
    .line 35
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 36
    .line 37
    const/4 v8, 0x4

    .line 38
    aput-object v5, v4, v8

    .line 39
    .line 40
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-static {v1, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    const-class v5, Landroid/graphics/Typeface;

    .line 49
    .line 50
    const-string v8, "createFromFamiliesWithDefault"

    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    new-array v7, v7, [Ljava/lang/Class;

    .line 57
    .line 58
    aput-object v4, v7, v6

    .line 59
    .line 60
    invoke-virtual {v5, v8, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 61
    .line 62
    .line 63
    move-result-object v0
    :try_end_3f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_3f} :catch_45
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_3f} :catch_43

    .line 64
    move-object v10, v2

    .line 65
    move-object v2, v0

    .line 66
    move-object v0, v10

    .line 67
    goto :goto_56

    .line 68
    :catch_43
    move-exception v1

    .line 69
    goto :goto_46

    .line 70
    :catch_45
    move-exception v1

    .line 71
    :goto_46
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    const-string v3, "TypefaceCompatApi24Impl"

    .line 80
    .line 81
    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    .line 83
    .line 84
    move-object v1, v0

    .line 85
    move-object v2, v1

    .line 86
    move-object v3, v2

    .line 87
    :goto_56
    sput-object v0, Lc0/h;->b:Ljava/lang/reflect/Constructor;

    .line 88
    .line 89
    sput-object v1, Lc0/h;->a:Ljava/lang/Class;

    .line 90
    .line 91
    sput-object v3, Lc0/h;->c:Ljava/lang/reflect/Method;

    .line 92
    .line 93
    sput-object v2, Lc0/h;->d:Ljava/lang/reflect/Method;

    .line 94
    .line 95
    return-void
.end method

.method public static r(Ljava/lang/Object;Ljava/nio/ByteBuffer;IIZ)Z
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    sget-object v1, Lc0/h;->c:Ljava/lang/reflect/Method;

    .line 3
    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object p3

    .line 12
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object p4

    .line 16
    const/4 v2, 0x5

    .line 17
    new-array v2, v2, [Ljava/lang/Object;

    .line 18
    .line 19
    aput-object p1, v2, v0

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    aput-object p2, v2, p1

    .line 23
    .line 24
    const/4 p1, 0x2

    .line 25
    const/4 p2, 0x0

    .line 26
    aput-object p2, v2, p1

    .line 27
    .line 28
    const/4 p1, 0x3

    .line 29
    aput-object p3, v2, p1

    .line 30
    .line 31
    const/4 p1, 0x4

    .line 32
    aput-object p4, v2, p1

    .line 33
    .line 34
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    .line 42
    .line 43
    move-result p0
    :try_end_2b
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_2b} :catch_2c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_2b} :catch_2c

    .line 44
    return p0

    .line 45
    :catch_2c
    return v0
.end method

.method public static s(Ljava/lang/Object;)Landroid/graphics/Typeface;
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    sget-object v1, Lc0/h;->a:Ljava/lang/Class;

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static {v1, v3, p0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lc0/h;->d:Ljava/lang/reflect/Method;

    .line 14
    .line 15
    new-array v2, v2, [Ljava/lang/Object;

    .line 16
    .line 17
    aput-object v1, v2, v3

    .line 18
    .line 19
    invoke-virtual {p0, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Landroid/graphics/Typeface;
    :try_end_18
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_18} :catch_19
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_18} :catch_19

    .line 24
    .line 25
    return-object p0

    .line 26
    :catch_19
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lb0/f;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .registers 21

    .line 1
    const/4 v1, 0x0

    .line 2
    :try_start_1
    sget-object v0, Lc0/h;->b:Ljava/lang/reflect/Constructor;

    .line 3
    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0
    :try_end_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_7} :catch_9
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_7} :catch_9
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_7} :catch_9

    .line 8
    move-object v2, v0

    .line 9
    goto :goto_a

    .line 10
    :catch_9
    move-object v2, v1

    .line 11
    :goto_a
    if-nez v2, :cond_d

    .line 12
    .line 13
    goto :goto_67

    .line 14
    :cond_d
    move-object/from16 v0, p2

    .line 15
    .line 16
    iget-object v3, v0, Lb0/f;->a:[Lb0/g;

    .line 17
    .line 18
    array-length v4, v3

    .line 19
    const/4 v0, 0x0

    .line 20
    move v5, v0

    .line 21
    :goto_14
    if-ge v5, v4, :cond_70

    .line 22
    .line 23
    aget-object v6, v3, v5

    .line 24
    .line 25
    iget v0, v6, Lb0/g;->f:I

    .line 26
    .line 27
    invoke-static/range {p1 .. p1}, Ly1/g;->q(Landroid/content/Context;)Ljava/io/File;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    if-nez v7, :cond_24

    .line 32
    .line 33
    move-object/from16 v8, p3

    .line 34
    .line 35
    :goto_22
    move-object v0, v1

    .line 36
    goto :goto_58

    .line 37
    :cond_24
    move-object/from16 v8, p3

    .line 38
    .line 39
    :try_start_26
    invoke-static {v7, v8, v0}, Ly1/g;->h(Ljava/io/File;Landroid/content/res/Resources;I)Z

    .line 40
    .line 41
    .line 42
    move-result v0
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_6b

    .line 43
    if-nez v0, :cond_30

    .line 44
    .line 45
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 46
    .line 47
    .line 48
    goto :goto_22

    .line 49
    :cond_30
    :try_start_30
    new-instance v9, Ljava/io/FileInputStream;

    .line 50
    .line 51
    invoke-direct {v9, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_35} :catch_54
    .catchall {:try_start_30 .. :try_end_35} :catchall_6b

    .line 52
    .line 53
    .line 54
    :try_start_35
    invoke-virtual {v9}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 55
    .line 56
    .line 57
    move-result-object v10

    .line 58
    invoke-virtual {v10}, Ljava/nio/channels/FileChannel;->size()J

    .line 59
    .line 60
    .line 61
    move-result-wide v14

    .line 62
    sget-object v11, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    .line 63
    .line 64
    const-wide/16 v12, 0x0

    .line 65
    .line 66
    invoke-virtual/range {v10 .. v15}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    .line 67
    .line 68
    .line 69
    move-result-object v0
    :try_end_45
    .catchall {:try_start_35 .. :try_end_45} :catchall_49

    .line 70
    :try_start_45
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_54
    .catchall {:try_start_45 .. :try_end_48} :catchall_6b

    .line 71
    .line 72
    .line 73
    goto :goto_55

    .line 74
    :catchall_49
    move-exception v0

    .line 75
    move-object v10, v0

    .line 76
    :try_start_4b
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_4f

    .line 77
    .line 78
    .line 79
    goto :goto_53

    .line 80
    :catchall_4f
    move-exception v0

    .line 81
    :try_start_50
    invoke-virtual {v10, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    :goto_53
    throw v10
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_54} :catch_54
    .catchall {:try_start_50 .. :try_end_54} :catchall_6b

    .line 85
    :catch_54
    move-object v0, v1

    .line 86
    :goto_55
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 87
    .line 88
    .line 89
    :goto_58
    if-nez v0, :cond_5b

    .line 90
    .line 91
    goto :goto_67

    .line 92
    :cond_5b
    iget v7, v6, Lb0/g;->e:I

    .line 93
    .line 94
    iget v9, v6, Lb0/g;->b:I

    .line 95
    .line 96
    iget-boolean v6, v6, Lb0/g;->c:Z

    .line 97
    .line 98
    invoke-static {v2, v0, v7, v9, v6}, Lc0/h;->r(Ljava/lang/Object;Ljava/nio/ByteBuffer;IIZ)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-nez v0, :cond_68

    .line 103
    .line 104
    :goto_67
    return-object v1

    .line 105
    :cond_68
    add-int/lit8 v5, v5, 0x1

    .line 106
    .line 107
    goto :goto_14

    .line 108
    :catchall_6b
    move-exception v0

    .line 109
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 110
    .line 111
    .line 112
    throw v0

    .line 113
    :cond_70
    invoke-static {v2}, Lc0/h;->s(Ljava/lang/Object;)Landroid/graphics/Typeface;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    return-object v0
.end method

.method public final b(Landroid/content/Context;[Lg0/j;I)Landroid/graphics/Typeface;
    .registers 13

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    sget-object v1, Lc0/h;->b:Ljava/lang/reflect/Constructor;

    .line 3
    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1
    :try_end_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_7} :catch_8
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_7} :catch_8
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_7} :catch_8

    .line 8
    goto :goto_9

    .line 9
    :catch_8
    move-object v1, v0

    .line 10
    :goto_9
    if-nez v1, :cond_c

    .line 11
    .line 12
    goto :goto_41

    .line 13
    :cond_c
    new-instance v2, Ls/j;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-direct {v2, v3}, Ls/j;-><init>(I)V

    .line 17
    .line 18
    .line 19
    array-length v4, p2

    .line 20
    :goto_13
    if-ge v3, v4, :cond_3b

    .line 21
    .line 22
    aget-object v5, p2, v3

    .line 23
    .line 24
    iget-object v6, v5, Lg0/j;->a:Landroid/net/Uri;

    .line 25
    .line 26
    invoke-virtual {v2, v6}, Ls/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    check-cast v7, Ljava/nio/ByteBuffer;

    .line 31
    .line 32
    if-nez v7, :cond_28

    .line 33
    .line 34
    invoke-static {p1, v6}, Ly1/g;->s(Landroid/content/Context;Landroid/net/Uri;)Ljava/nio/MappedByteBuffer;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    invoke-virtual {v2, v6, v7}, Ls/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    :cond_28
    if-nez v7, :cond_2b

    .line 42
    .line 43
    goto :goto_41

    .line 44
    :cond_2b
    iget v6, v5, Lg0/j;->b:I

    .line 45
    .line 46
    iget v8, v5, Lg0/j;->c:I

    .line 47
    .line 48
    iget-boolean v5, v5, Lg0/j;->d:Z

    .line 49
    .line 50
    invoke-static {v1, v7, v6, v8, v5}, Lc0/h;->r(Ljava/lang/Object;Ljava/nio/ByteBuffer;IIZ)Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-nez v5, :cond_38

    .line 55
    .line 56
    goto :goto_41

    .line 57
    :cond_38
    add-int/lit8 v3, v3, 0x1

    .line 58
    .line 59
    goto :goto_13

    .line 60
    :cond_3b
    invoke-static {v1}, Lc0/h;->s(Ljava/lang/Object;)Landroid/graphics/Typeface;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-nez p1, :cond_42

    .line 65
    .line 66
    :goto_41
    return-object v0

    .line 67
    :cond_42
    invoke-static {p1, p3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    return-object p1
.end method
