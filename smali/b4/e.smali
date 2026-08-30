###### Class b4.e (b4.e)
.class public abstract Lb4/e;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Ljava/lang/reflect/Method;

.field public static final b:Ljava/lang/reflect/Method;

.field public static c:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 1
    const-class v0, Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "add"

    .line 4
    .line 5
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 6
    .line 7
    const-class v3, Landroid/os/WorkSource;

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 10
    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x1

    .line 14
    const/4 v6, 0x0

    .line 15
    :try_start_e
    new-array v7, v5, [Ljava/lang/Class;

    .line 16
    .line 17
    aput-object v2, v7, v4

    .line 18
    .line 19
    invoke-virtual {v3, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 20
    .line 21
    .line 22
    move-result-object v7
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_16} :catch_17

    .line 23
    goto :goto_18

    .line 24
    :catch_17
    move-object v7, v6

    .line 25
    :goto_18
    sput-object v7, Lb4/e;->a:Ljava/lang/reflect/Method;

    .line 26
    .line 27
    const/4 v7, 0x2

    .line 28
    :try_start_1b
    new-array v8, v7, [Ljava/lang/Class;

    .line 29
    .line 30
    aput-object v2, v8, v4

    .line 31
    .line 32
    aput-object v0, v8, v5

    .line 33
    .line 34
    invoke-virtual {v3, v1, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 35
    .line 36
    .line 37
    move-result-object v1
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_25} :catch_26

    .line 38
    goto :goto_27

    .line 39
    :catch_26
    move-object v1, v6

    .line 40
    :goto_27
    sput-object v1, Lb4/e;->b:Ljava/lang/reflect/Method;

    .line 41
    .line 42
    :try_start_29
    const-string v1, "size"

    .line 43
    .line 44
    invoke-virtual {v3, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2e} :catch_2e

    .line 45
    .line 46
    .line 47
    :catch_2e
    :try_start_2e
    const-string v1, "get"

    .line 48
    .line 49
    new-array v8, v5, [Ljava/lang/Class;

    .line 50
    .line 51
    aput-object v2, v8, v4

    .line 52
    .line 53
    invoke-virtual {v3, v1, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_37} :catch_37

    .line 54
    .line 55
    .line 56
    :catch_37
    :try_start_37
    const-string v1, "getName"

    .line 57
    .line 58
    new-array v8, v5, [Ljava/lang/Class;

    .line 59
    .line 60
    aput-object v2, v8, v4

    .line 61
    .line 62
    invoke-virtual {v3, v1, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_40} :catch_40

    .line 63
    .line 64
    .line 65
    :catch_40
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 66
    .line 67
    const/16 v8, 0x1c

    .line 68
    .line 69
    const-string v9, "WorkSourceUtil"

    .line 70
    .line 71
    if-lt v1, v8, :cond_54

    .line 72
    .line 73
    :try_start_48
    const-string v1, "createWorkChain"

    .line 74
    .line 75
    invoke-virtual {v3, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4d} :catch_4e

    .line 76
    .line 77
    .line 78
    goto :goto_54

    .line 79
    :catch_4e
    move-exception v1

    .line 80
    const-string v10, "Missing WorkChain API createWorkChain"

    .line 81
    .line 82
    invoke-static {v9, v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    .line 84
    .line 85
    :cond_54
    :goto_54
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 86
    .line 87
    if-lt v1, v8, :cond_70

    .line 88
    .line 89
    :try_start_58
    const-string v1, "android.os.WorkSource$WorkChain"

    .line 90
    .line 91
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    const-string v10, "addNode"

    .line 96
    .line 97
    new-array v7, v7, [Ljava/lang/Class;

    .line 98
    .line 99
    aput-object v2, v7, v4

    .line 100
    .line 101
    aput-object v0, v7, v5

    .line 102
    .line 103
    invoke-virtual {v1, v10, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_69} :catch_6a

    .line 104
    .line 105
    .line 106
    goto :goto_70

    .line 107
    :catch_6a
    move-exception v0

    .line 108
    const-string v1, "Missing WorkChain class"

    .line 109
    .line 110
    invoke-static {v9, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    .line 112
    .line 113
    :cond_70
    :goto_70
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 114
    .line 115
    if-lt v0, v8, :cond_7d

    .line 116
    .line 117
    :try_start_74
    const-string v0, "isEmpty"

    .line 118
    .line 119
    invoke-virtual {v3, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v0, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_7d} :catch_7d

    .line 124
    .line 125
    .line 126
    :catch_7d
    :cond_7d
    sput-object v6, Lb4/e;->c:Ljava/lang/Boolean;

    .line 127
    .line 128
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Z
    .registers 4

    .line 1
    const-class v0, Lb4/e;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lb4/e;->c:Ljava/lang/Boolean;

    .line 5
    .line 6
    if-eqz v1, :cond_f

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 9
    .line 10
    .line 11
    move-result p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    .line 12
    monitor-exit v0

    .line 13
    return p0

    .line 14
    :catchall_d
    move-exception p0

    .line 15
    goto :goto_25

    .line 16
    :cond_f
    const/4 v1, 0x0

    .line 17
    if-nez p0, :cond_14

    .line 18
    .line 19
    monitor-exit v0

    .line 20
    return v1

    .line 21
    :cond_14
    :try_start_14
    const-string v2, "android.permission.UPDATE_DEVICE_STATS"

    .line 22
    .line 23
    invoke-static {p0, v2}, Lz/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-nez p0, :cond_1d

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    :cond_1d
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    sput-object p0, Lb4/e;->c:Ljava/lang/Boolean;
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_d

    .line 35
    .line 36
    monitor-exit v0

    .line 37
    return v1

    .line 38
    :goto_25
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_d

    .line 39
    throw p0
.end method
