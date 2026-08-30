###### Class z7.j (z7.j)
.class public final Lz7/j;
.super Lz7/n;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final c:Ljava/lang/reflect/Method;

.field public final d:Ljava/lang/reflect/Method;

.field public final e:Ljava/lang/reflect/Method;

.field public final f:Ljava/lang/Class;

.field public final g:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lz7/j;->c:Ljava/lang/reflect/Method;

    .line 5
    .line 6
    iput-object p2, p0, Lz7/j;->d:Ljava/lang/reflect/Method;

    .line 7
    .line 8
    iput-object p3, p0, Lz7/j;->e:Ljava/lang/reflect/Method;

    .line 9
    .line 10
    iput-object p4, p0, Lz7/j;->f:Ljava/lang/Class;

    .line 11
    .line 12
    iput-object p5, p0, Lz7/j;->g:Ljava/lang/Class;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a(Ljavax/net/ssl/SSLSocket;)V
    .registers 6

    .line 1
    const-string v0, "failed to remove ALPN"

    .line 2
    .line 3
    :try_start_2
    iget-object v1, p0, Lz7/j;->e:Ljava/lang/reflect/Method;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    new-array v2, v2, [Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object p1, v2, v3

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_e} :catch_11
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_e} :catch_f

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catch_f
    move-exception p1

    .line 17
    goto :goto_13

    .line 18
    :catch_11
    move-exception p1

    .line 19
    goto :goto_19

    .line 20
    :goto_13
    new-instance v1, Ljava/lang/AssertionError;

    .line 21
    .line 22
    invoke-direct {v1, v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    throw v1

    .line 26
    :goto_19
    new-instance v1, Ljava/lang/AssertionError;

    .line 27
    .line 28
    invoke-direct {v1, v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    throw v1
.end method

.method public final d(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .registers 10

    .line 1
    const-string p2, "failed to set ALPN"

    .line 2
    .line 3
    const-string v0, "protocols"

    .line 4
    .line 5
    invoke-static {v0, p3}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    check-cast p3, Ljava/lang/Iterable;

    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    :cond_12
    :goto_12
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_27

    .line 24
    .line 25
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    move-object v2, v1

    .line 30
    check-cast v2, Lr7/s;

    .line 31
    .line 32
    sget-object v3, Lr7/s;->b:Lr7/s;

    .line 33
    .line 34
    if-eq v2, v3, :cond_12

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_12

    .line 40
    :cond_27
    new-instance p3, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-static {v0}, Ls6/i;->n(Ljava/lang/Iterable;)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-direct {p3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    const/4 v2, 0x0

    .line 54
    move v3, v2

    .line 55
    :goto_36
    if-ge v3, v1, :cond_46

    .line 56
    .line 57
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    add-int/lit8 v3, v3, 0x1

    .line 62
    .line 63
    check-cast v4, Lr7/s;

    .line 64
    .line 65
    iget-object v4, v4, Lr7/s;->a:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    goto :goto_36

    .line 71
    :cond_46
    :try_start_46
    const-class v0, Lz7/n;

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iget-object v1, p0, Lz7/j;->f:Ljava/lang/Class;

    .line 78
    .line 79
    iget-object v3, p0, Lz7/j;->g:Ljava/lang/Class;

    .line 80
    .line 81
    const/4 v4, 0x2

    .line 82
    new-array v5, v4, [Ljava/lang/Class;

    .line 83
    .line 84
    aput-object v1, v5, v2

    .line 85
    .line 86
    const/4 v1, 0x1

    .line 87
    aput-object v3, v5, v1

    .line 88
    .line 89
    new-instance v3, Lz7/i;

    .line 90
    .line 91
    invoke-direct {v3, p3}, Lz7/i;-><init>(Ljava/util/ArrayList;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v0, v5, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p3

    .line 98
    iget-object v0, p0, Lz7/j;->c:Ljava/lang/reflect/Method;

    .line 99
    .line 100
    new-array v3, v4, [Ljava/lang/Object;

    .line 101
    .line 102
    aput-object p1, v3, v2

    .line 103
    .line 104
    aput-object p3, v3, v1

    .line 105
    .line 106
    const/4 p1, 0x0

    .line 107
    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_46 .. :try_end_6d} :catch_70
    .catch Ljava/lang/IllegalAccessException; {:try_start_46 .. :try_end_6d} :catch_6e

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :catch_6e
    move-exception p1

    .line 112
    goto :goto_72

    .line 113
    :catch_70
    move-exception p1

    .line 114
    goto :goto_78

    .line 115
    :goto_72
    new-instance p3, Ljava/lang/AssertionError;

    .line 116
    .line 117
    invoke-direct {p3, p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    .line 119
    .line 120
    throw p3

    .line 121
    :goto_78
    new-instance p3, Ljava/lang/AssertionError;

    .line 122
    .line 123
    invoke-direct {p3, p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    .line 125
    .line 126
    throw p3
.end method

.method public final f(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .registers 6

    .line 1
    const-string v0, "failed to get ALPN selected protocol"

    .line 2
    .line 3
    :try_start_2
    iget-object v1, p0, Lz7/j;->d:Ljava/lang/reflect/Method;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    new-array v2, v2, [Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object p1, v2, v3

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "null cannot be cast to non-null type okhttp3.internal.platform.Jdk8WithJettyBootPlatform.AlpnProvider"

    .line 21
    .line 22
    invoke-static {v2, v1}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    check-cast v1, Lz7/i;

    .line 26
    .line 27
    iget-boolean v2, v1, Lz7/i;->b:Z

    .line 28
    .line 29
    if-nez v2, :cond_2d

    .line 30
    .line 31
    iget-object v3, v1, Lz7/i;->c:Ljava/lang/String;

    .line 32
    .line 33
    if-nez v3, :cond_2d

    .line 34
    .line 35
    const-string v1, "ALPN callback dropped: HTTP/2 is disabled. Is alpn-boot on the boot class path?"

    .line 36
    .line 37
    const/4 v2, 0x4

    .line 38
    invoke-static {v1, v2, p1}, Lz7/n;->i(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    return-object p1

    .line 42
    :catch_29
    move-exception p1

    .line 43
    goto :goto_33

    .line 44
    :catch_2b
    move-exception p1

    .line 45
    goto :goto_39

    .line 46
    :cond_2d
    if-eqz v2, :cond_30

    .line 47
    .line 48
    return-object p1

    .line 49
    :cond_30
    iget-object p1, v1, Lz7/i;->c:Ljava/lang/String;
    :try_end_32
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_32} :catch_2b
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_32} :catch_29

    .line 50
    .line 51
    return-object p1

    .line 52
    :goto_33
    new-instance v1, Ljava/lang/AssertionError;

    .line 53
    .line 54
    invoke-direct {v1, v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    .line 56
    .line 57
    throw v1

    .line 58
    :goto_39
    new-instance v1, Ljava/lang/AssertionError;

    .line 59
    .line 60
    invoke-direct {v1, v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    throw v1
.end method
