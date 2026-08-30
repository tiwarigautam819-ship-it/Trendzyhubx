###### Class z7.c (z7.c)
.class public final Lz7/c;
.super Lz7/n;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final e:Z


# instance fields
.field public final c:Ljava/util/ArrayList;

.field public final d:La8/i;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lx1/w;->r()Z

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
    goto :goto_10

    .line 9
    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 v2, 0x1e

    .line 12
    .line 13
    if-lt v0, v2, :cond_f

    .line 14
    .line 15
    goto :goto_10

    .line 16
    :cond_f
    const/4 v1, 0x1

    .line 17
    :goto_10
    sput-boolean v1, Lz7/c;->e:Z

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>()V
    .registers 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.android.org.conscrypt"

    .line 5
    .line 6
    const-string v1, ".SSLParametersImpl"

    .line 7
    .line 8
    const-string v2, ".OpenSSLSocketFactoryImpl"

    .line 9
    .line 10
    const-string v3, ".OpenSSLSocketImpl"

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    :try_start_c
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    new-instance v0, La8/o;

    .line 36
    .line 37
    invoke-direct {v0, v3}, La8/f;-><init>(Ljava/lang/Class;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_27} :catch_28

    .line 38
    .line 39
    .line 40
    goto :goto_35

    .line 41
    :catch_28
    move-exception v0

    .line 42
    sget-object v1, Lz7/n;->a:Lz7/n;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    const-string v1, "unable to load android socket classes"

    .line 48
    .line 49
    const/4 v2, 0x5

    .line 50
    invoke-static {v1, v2, v0}, Lz7/n;->i(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    move-object v0, v4

    .line 54
    :goto_35
    new-instance v1, La8/m;

    .line 55
    .line 56
    sget-object v2, La8/f;->f:La8/e;

    .line 57
    .line 58
    invoke-direct {v1, v2}, La8/m;-><init>(La8/l;)V

    .line 59
    .line 60
    .line 61
    new-instance v2, La8/m;

    .line 62
    .line 63
    sget-object v3, La8/k;->a:La8/j;

    .line 64
    .line 65
    invoke-direct {v2, v3}, La8/m;-><init>(La8/l;)V

    .line 66
    .line 67
    .line 68
    new-instance v3, La8/m;

    .line 69
    .line 70
    sget-object v5, La8/h;->a:La8/g;

    .line 71
    .line 72
    invoke-direct {v3, v5}, La8/m;-><init>(La8/l;)V

    .line 73
    .line 74
    .line 75
    const/4 v5, 0x4

    .line 76
    new-array v5, v5, [La8/n;

    .line 77
    .line 78
    const/4 v6, 0x0

    .line 79
    aput-object v0, v5, v6

    .line 80
    .line 81
    const/4 v0, 0x1

    .line 82
    aput-object v1, v5, v0

    .line 83
    .line 84
    const/4 v1, 0x2

    .line 85
    aput-object v2, v5, v1

    .line 86
    .line 87
    const/4 v1, 0x3

    .line 88
    aput-object v3, v5, v1

    .line 89
    .line 90
    invoke-static {v5}, Ls6/f;->o([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    new-instance v2, Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    move v5, v6

    .line 104
    :cond_67
    :goto_67
    if-ge v5, v3, :cond_7c

    .line 105
    .line 106
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    add-int/lit8 v5, v5, 0x1

    .line 111
    .line 112
    move-object v8, v7

    .line 113
    check-cast v8, La8/n;

    .line 114
    .line 115
    invoke-interface {v8}, La8/n;->c()Z

    .line 116
    .line 117
    .line 118
    move-result v8

    .line 119
    if-eqz v8, :cond_67

    .line 120
    .line 121
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    goto :goto_67

    .line 125
    :cond_7c
    iput-object v2, p0, Lz7/c;->c:Ljava/util/ArrayList;

    .line 126
    .line 127
    :try_start_7e
    const-string v1, "dalvik.system.CloseGuard"

    .line 128
    .line 129
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    const-string v2, "get"

    .line 134
    .line 135
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    const-string v3, "open"

    .line 140
    .line 141
    new-array v0, v0, [Ljava/lang/Class;

    .line 142
    .line 143
    const-class v5, Ljava/lang/String;

    .line 144
    .line 145
    aput-object v5, v0, v6

    .line 146
    .line 147
    invoke-virtual {v1, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    const-string v3, "warnIfOpen"

    .line 152
    .line 153
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 154
    .line 155
    .line 156
    move-result-object v4
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_9c} :catch_9f

    .line 157
    move-object v1, v4

    .line 158
    move-object v4, v2

    .line 159
    goto :goto_a1

    .line 160
    :catch_9f
    move-object v0, v4

    .line 161
    move-object v1, v0

    .line 162
    :goto_a1
    new-instance v2, La8/i;

    .line 163
    .line 164
    invoke-direct {v2, v4, v0, v1}, La8/i;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 165
    .line 166
    .line 167
    iput-object v2, p0, Lz7/c;->d:La8/i;

    .line 168
    .line 169
    return-void
.end method


# virtual methods
.method public final b(Ljavax/net/ssl/X509TrustManager;)Ld4/a;
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    new-instance v1, Landroid/net/http/X509TrustManagerExtensions;

    .line 3
    .line 4
    invoke-direct {v1, p1}, Landroid/net/http/X509TrustManagerExtensions;-><init>(Ljavax/net/ssl/X509TrustManager;)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_6} :catch_7

    .line 5
    .line 6
    .line 7
    goto :goto_8

    .line 8
    :catch_7
    move-object v1, v0

    .line 9
    :goto_8
    if-eqz v1, :cond_f

    .line 10
    .line 11
    new-instance v0, La8/b;

    .line 12
    .line 13
    invoke-direct {v0, p1, v1}, La8/b;-><init>(Ljavax/net/ssl/X509TrustManager;Landroid/net/http/X509TrustManagerExtensions;)V

    .line 14
    .line 15
    .line 16
    :cond_f
    if-eqz v0, :cond_12

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_12
    new-instance v0, Ld8/a;

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lz7/c;->c(Ljavax/net/ssl/X509TrustManager;)Ld8/d;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {v0, p1}, Ld8/a;-><init>(Ld8/d;)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method

.method public final c(Ljavax/net/ssl/X509TrustManager;)Ld8/d;
    .registers 8

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "findTrustAnchorByIssuerAndSignature"

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    new-array v3, v2, [Ljava/lang/Class;

    .line 9
    .line 10
    const-class v4, Ljava/security/cert/X509Certificate;

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    aput-object v4, v3, v5

    .line 14
    .line 15
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Lz7/b;

    .line 23
    .line 24
    invoke-direct {v1, p1, v0}, Lz7/b;-><init>(Ljavax/net/ssl/X509TrustManager;Ljava/lang/reflect/Method;)V
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 25
    .line 26
    .line 27
    return-object v1

    .line 28
    :catch_1b
    invoke-super {p0, p1}, Lz7/n;->c(Ljavax/net/ssl/X509TrustManager;)Ld8/d;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1
.end method

.method public final d(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .registers 9

    .line 1
    const-string v0, "protocols"

    .line 2
    .line 3
    invoke-static {v0, p3}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lz7/c;->c:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    :cond_c
    if-ge v2, v1, :cond_1e

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    move-object v4, v3

    .line 22
    check-cast v4, La8/n;

    .line 23
    .line 24
    invoke-interface {v4, p1}, La8/n;->a(Ljavax/net/ssl/SSLSocket;)Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-eqz v4, :cond_c

    .line 29
    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    const/4 v3, 0x0

    .line 32
    :goto_1f
    check-cast v3, La8/n;

    .line 33
    .line 34
    if-eqz v3, :cond_26

    .line 35
    .line 36
    invoke-interface {v3, p1, p2, p3}, La8/n;->d(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 37
    .line 38
    .line 39
    :cond_26
    return-void
.end method

.method public final e(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .registers 5

    .line 1
    const-string v0, "address"

    .line 2
    .line 3
    invoke-static {v0, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    :try_start_5
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_8} :catch_9

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :catch_9
    move-exception p1

    .line 11
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/16 p3, 0x1a

    .line 14
    .line 15
    if-ne p2, p3, :cond_18

    .line 16
    .line 17
    new-instance p2, Ljava/io/IOException;

    .line 18
    .line 19
    const-string p3, "Exception in connect"

    .line 20
    .line 21
    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    throw p2

    .line 25
    :cond_18
    throw p1
.end method

.method public final f(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .registers 8

    .line 1
    iget-object v0, p0, Lz7/c;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :cond_7
    const/4 v3, 0x0

    .line 9
    if-ge v2, v1, :cond_1a

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    add-int/lit8 v2, v2, 0x1

    .line 16
    .line 17
    move-object v5, v4

    .line 18
    check-cast v5, La8/n;

    .line 19
    .line 20
    invoke-interface {v5, p1}, La8/n;->a(Ljavax/net/ssl/SSLSocket;)Z

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    if-eqz v5, :cond_7

    .line 25
    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    move-object v4, v3

    .line 28
    :goto_1b
    check-cast v4, La8/n;

    .line 29
    .line 30
    if-eqz v4, :cond_24

    .line 31
    .line 32
    invoke-interface {v4, p1}, La8/n;->b(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1

    .line 37
    :cond_24
    return-object v3
.end method

.method public final g()Ljava/lang/Object;
    .registers 7

    .line 1
    iget-object v0, p0, Lz7/c;->d:La8/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, La8/i;->a:Ljava/lang/reflect/Method;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_1f

    .line 10
    .line 11
    :try_start_a
    invoke-virtual {v1, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v0, v0, La8/i;->b:Ljava/lang/reflect/Method;

    .line 16
    .line 17
    invoke-static {v0}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    new-array v3, v3, [Ljava/lang/Object;

    .line 22
    .line 23
    const-string v4, "response.body().close()"

    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    aput-object v4, v3, v5

    .line 27
    .line 28
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1e} :catch_1f

    .line 29
    .line 30
    .line 31
    return-object v1

    .line 32
    :catch_1f
    :cond_1f
    return-object v2
.end method

.method public final h(Ljava/lang/String;)Z
    .registers 4

    .line 1
    const-string v0, "hostname"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v1, 0x18

    .line 9
    .line 10
    if-lt v0, v1, :cond_14

    .line 11
    .line 12
    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0, p1}, Lt4/i;->c(Landroid/security/NetworkSecurityPolicy;Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1

    .line 21
    :cond_14
    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1
.end method

.method public final j(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lz7/c;->d:La8/i;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz p2, :cond_16

    .line 13
    .line 14
    :try_start_d
    iget-object v0, v0, La8/i;->c:Ljava/lang/reflect/Method;

    .line 15
    .line 16
    invoke-static {v0}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_15} :catch_16

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catch_16
    :cond_16
    const/4 p2, 0x5

    .line 24
    invoke-static {p1, p2, v1}, Lz7/n;->i(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
