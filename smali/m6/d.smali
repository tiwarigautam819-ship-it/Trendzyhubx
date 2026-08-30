###### Class m6.d (m6.d)
.class public abstract Lm6/d;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Ljava/lang/Class;

.field public static final b:Ljava/lang/Class;

.field public static final c:Ljava/lang/Class;

.field public static final d:Ljava/lang/Class;

.field public static final e:Ljava/lang/Class;

.field public static final f:Ljava/lang/Class;

.field public static final g:Ljava/lang/Class;

.field public static final h:Ljava/lang/Class;

.field public static final i:Ljava/lang/Class;

.field public static final j:Ljava/lang/Class;

.field public static final k:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "AdjustManager"

    .line 2
    .line 3
    :try_start_2
    const-string v1, "com.adjust.sdk.Adjust"

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sput-object v1, Lm6/d;->a:Ljava/lang/Class;

    .line 10
    .line 11
    const-string v1, "com.adjust.sdk.AdjustConfig"

    .line 12
    .line 13
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sput-object v1, Lm6/d;->b:Ljava/lang/Class;

    .line 18
    .line 19
    const-string v1, "com.adjust.sdk.AdjustEvent"

    .line 20
    .line 21
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    sput-object v1, Lm6/d;->c:Ljava/lang/Class;

    .line 26
    .line 27
    const-string v1, "com.adjust.sdk.LogLevel"

    .line 28
    .line 29
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    sput-object v1, Lm6/d;->d:Ljava/lang/Class;
    :try_end_22
    .catchall {:try_start_2 .. :try_end_22} :catchall_60

    .line 34
    .line 35
    :try_start_22
    const-string v1, "com.adjust.sdk.OnEventTrackingSucceededListener"

    .line 36
    .line 37
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    sput-object v1, Lm6/d;->e:Ljava/lang/Class;
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_2a

    .line 42
    .line 43
    :catchall_2a
    :try_start_2a
    const-string v1, "com.adjust.sdk.OnEventTrackingFailedListener"

    .line 44
    .line 45
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    sput-object v1, Lm6/d;->f:Ljava/lang/Class;
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_32

    .line 50
    .line 51
    :catchall_32
    :try_start_32
    const-string v1, "com.adjust.sdk.OnSessionTrackingSucceededListener"

    .line 52
    .line 53
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    sput-object v1, Lm6/d;->g:Ljava/lang/Class;
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_3a

    .line 58
    .line 59
    :catchall_3a
    :try_start_3a
    const-string v1, "com.adjust.sdk.OnSessionTrackingFailedListener"

    .line 60
    .line 61
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    sput-object v1, Lm6/d;->h:Ljava/lang/Class;
    :try_end_42
    .catchall {:try_start_3a .. :try_end_42} :catchall_42

    .line 66
    .line 67
    :catchall_42
    :try_start_42
    const-string v1, "com.adjust.sdk.OnAttributionChangedListener"

    .line 68
    .line 69
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    sput-object v1, Lm6/d;->i:Ljava/lang/Class;
    :try_end_4a
    .catchall {:try_start_42 .. :try_end_4a} :catchall_4a

    .line 74
    .line 75
    :catchall_4a
    :try_start_4a
    const-string v1, "com.adjust.sdk.OnAdidRead"

    .line 76
    .line 77
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    sput-object v1, Lm6/d;->j:Ljava/lang/Class;
    :try_end_52
    .catchall {:try_start_4a .. :try_end_52} :catchall_52

    .line 82
    .line 83
    :catchall_52
    :try_start_52
    const-string v1, "com.adjust.sdk.OnDeferredDeeplinkResponseListener"

    .line 84
    .line 85
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    sput-object v1, Lm6/d;->k:Ljava/lang/Class;
    :try_end_5a
    .catchall {:try_start_52 .. :try_end_5a} :catchall_5a

    .line 90
    .line 91
    :catchall_5a
    :try_start_5a
    const-string v1, "AdjustRef: SDK classes found."

    .line 92
    .line 93
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catchall {:try_start_5a .. :try_end_5f} :catchall_60

    .line 94
    .line 95
    .line 96
    goto :goto_65

    .line 97
    :catchall_60
    const-string v1, "AdjustRef: SDK NOT present, all calls are no-op."

    .line 98
    .line 99
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    :goto_65
    return-void
.end method

.method public static a([Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 1
    if-eqz p0, :cond_11

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    if-nez v0, :cond_6

    .line 5
    .line 6
    goto :goto_11

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :try_start_7
    aget-object p0, p0, v0

    .line 9
    .line 10
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_e

    .line 14
    return-object p0

    .line 15
    :catchall_e
    const-string p0, "<?>"

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_11
    :goto_11
    const-string p0, "null"

    .line 19
    .line 20
    return-object p0
.end method

.method public static b()Z
    .registers 1

    .line 1
    sget-object v0, Lm6/d;->a:Ljava/lang/Class;

    .line 2
    .line 3
    if-eqz v0, :cond_e

    .line 4
    .line 5
    sget-object v0, Lm6/d;->b:Ljava/lang/Class;

    .line 6
    .line 7
    if-eqz v0, :cond_e

    .line 8
    .line 9
    sget-object v0, Lm6/d;->c:Ljava/lang/Class;

    .line 10
    .line 11
    if-eqz v0, :cond_e

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 11

    .line 1
    invoke-static {}, Lm6/d;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_8

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_8
    :try_start_8
    sget-object v0, Lm6/d;->b:Ljava/lang/Class;

    .line 10
    .line 11
    const/4 v2, 0x3

    .line 12
    new-array v3, v2, [Ljava/lang/Class;

    .line 13
    .line 14
    const-class v4, Landroid/content/Context;

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    aput-object v4, v3, v5

    .line 18
    .line 19
    const-class v4, Ljava/lang/String;

    .line 20
    .line 21
    const/4 v6, 0x1

    .line 22
    aput-object v4, v3, v6

    .line 23
    .line 24
    const/4 v7, 0x2

    .line 25
    aput-object v4, v3, v7

    .line 26
    .line 27
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-array v2, v2, [Ljava/lang/Object;

    .line 32
    .line 33
    aput-object p0, v2, v5

    .line 34
    .line 35
    aput-object p1, v2, v6

    .line 36
    .line 37
    aput-object p2, v2, v7

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_2b

    .line 43
    return-object p0

    .line 44
    :catchall_2b
    move-exception p0

    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string p2, "newConfig \u5931\u8d25: "

    .line 48
    .line 49
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    const-string p1, "AdjustManager"

    .line 64
    .line 65
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    return-object v1
.end method

.method public static d(Lm6/f;)V
    .registers 10

    .line 1
    invoke-static {}, Lm6/d;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_b

    .line 7
    .line 8
    invoke-interface {p0, v1}, Lm6/f;->a(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_b
    const-string v0, "getAdid"

    .line 13
    .line 14
    sget-object v2, Lm6/d;->a:Ljava/lang/Class;

    .line 15
    .line 16
    sget-object v3, Lm6/d;->j:Ljava/lang/Class;

    .line 17
    .line 18
    if-eqz v3, :cond_36

    .line 19
    .line 20
    :try_start_13
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    const/4 v5, 0x1

    .line 25
    new-array v6, v5, [Ljava/lang/Class;

    .line 26
    .line 27
    const/4 v7, 0x0

    .line 28
    aput-object v3, v6, v7

    .line 29
    .line 30
    new-instance v8, Lm6/c;

    .line 31
    .line 32
    invoke-direct {v8, p0, v5}, Lm6/c;-><init>(Lm6/f;I)V

    .line 33
    .line 34
    .line 35
    invoke-static {v4, v6, v8}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4
    :try_end_26
    .catchall {:try_start_13 .. :try_end_26} :catchall_36

    .line 39
    :try_start_26
    new-array v6, v5, [Ljava/lang/Class;

    .line 40
    .line 41
    aput-object v3, v6, v7

    .line 42
    .line 43
    invoke-virtual {v2, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    new-array v5, v5, [Ljava/lang/Object;

    .line 48
    .line 49
    aput-object v4, v5, v7

    .line 50
    .line 51
    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_35
    .catch Ljava/lang/NoSuchMethodException; {:try_start_26 .. :try_end_35} :catch_36
    .catchall {:try_start_26 .. :try_end_35} :catchall_36

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :catch_36
    :catchall_36
    :cond_36
    invoke-static {}, Lm6/d;->b()Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-nez v3, :cond_3d

    .line 60
    .line 61
    goto :goto_4c

    .line 62
    :cond_3d
    :try_start_3d
    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    if-nez v0, :cond_48

    .line 71
    .line 72
    goto :goto_4c

    .line 73
    :cond_48
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1
    :try_end_4c
    .catchall {:try_start_3d .. :try_end_4c} :catchall_4c

    .line 77
    :catchall_4c
    :goto_4c
    invoke-interface {p0, v1}, Lm6/f;->a(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method
