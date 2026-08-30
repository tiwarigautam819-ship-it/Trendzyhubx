###### Class a8.f (a8.f)
.class public La8/f;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements La8/n;


# static fields
.field public static final f:La8/e;


# instance fields
.field public final a:Ljava/lang/Class;

.field public final b:Ljava/lang/reflect/Method;

.field public final c:Ljava/lang/reflect/Method;

.field public final d:Ljava/lang/reflect/Method;

.field public final e:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, La8/e;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, La8/f;->f:La8/e;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, La8/f;->a:Ljava/lang/Class;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    new-array v1, v0, [Ljava/lang/Class;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 11
    .line 12
    aput-object v3, v1, v2

    .line 13
    .line 14
    const-string v3, "setUseSessionTickets"

    .line 15
    .line 16
    invoke-virtual {p1, v3, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v3, "sslSocketClass.getDeclar\u2026:class.javaPrimitiveType)"

    .line 21
    .line 22
    invoke-static {v3, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, La8/f;->b:Ljava/lang/reflect/Method;

    .line 26
    .line 27
    new-array v1, v0, [Ljava/lang/Class;

    .line 28
    .line 29
    const-class v3, Ljava/lang/String;

    .line 30
    .line 31
    aput-object v3, v1, v2

    .line 32
    .line 33
    const-string v3, "setHostname"

    .line 34
    .line 35
    invoke-virtual {p1, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iput-object v1, p0, La8/f;->c:Ljava/lang/reflect/Method;

    .line 40
    .line 41
    const-string v1, "getAlpnSelectedProtocol"

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-virtual {p1, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iput-object v1, p0, La8/f;->d:Ljava/lang/reflect/Method;

    .line 49
    .line 50
    new-array v0, v0, [Ljava/lang/Class;

    .line 51
    .line 52
    const-class v1, [B

    .line 53
    .line 54
    aput-object v1, v0, v2

    .line 55
    .line 56
    const-string v1, "setAlpnProtocols"

    .line 57
    .line 58
    invoke-virtual {p1, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iput-object p1, p0, La8/f;->e:Ljava/lang/reflect/Method;

    .line 63
    .line 64
    return-void
.end method


# virtual methods
.method public final a(Ljavax/net/ssl/SSLSocket;)Z
    .registers 3

    .line 1
    iget-object v0, p0, La8/f;->a:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final b(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, La8/f;->a:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_a

    .line 9
    .line 10
    goto :goto_36

    .line 11
    :cond_a
    :try_start_a
    iget-object v0, p0, La8/f;->d:Ljava/lang/reflect/Method;

    .line 12
    .line 13
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, [B

    .line 18
    .line 19
    if-eqz p1, :cond_36

    .line 20
    .line 21
    new-instance v0, Ljava/lang/String;

    .line 22
    .line 23
    sget-object v2, Lk7/a;->a:Ljava/nio/charset/Charset;

    .line 24
    .line 25
    invoke-direct {v0, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_1b
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_1b} :catch_1e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_1b} :catch_1c

    .line 26
    .line 27
    .line 28
    return-object v0

    .line 29
    :catch_1c
    move-exception p1

    .line 30
    goto :goto_20

    .line 31
    :catch_1e
    move-exception p1

    .line 32
    goto :goto_3d

    .line 33
    :goto_20
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    instance-of v2, v0, Ljava/lang/NullPointerException;

    .line 38
    .line 39
    if-eqz v2, :cond_37

    .line 40
    .line 41
    check-cast v0, Ljava/lang/NullPointerException;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v2, "ssl == null"

    .line 48
    .line 49
    invoke-static {v0, v2}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_37

    .line 54
    .line 55
    :cond_36
    :goto_36
    return-object v1

    .line 56
    :cond_37
    new-instance v0, Ljava/lang/AssertionError;

    .line 57
    .line 58
    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    throw v0

    .line 62
    :goto_3d
    new-instance v0, Ljava/lang/AssertionError;

    .line 63
    .line 64
    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    throw v0
.end method

.method public final c()Z
    .registers 2

    .line 1
    sget-boolean v0, Lz7/c;->e:Z

    .line 2
    .line 3
    sget-boolean v0, Lz7/c;->e:Z

    .line 4
    .line 5
    return v0
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
    iget-object v0, p0, La8/f;->a:Ljava/lang/Class;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_46

    .line 13
    .line 14
    :try_start_d
    iget-object v0, p0, La8/f;->b:Ljava/lang/reflect/Method;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    new-array v2, v1, [Ljava/lang/Object;

    .line 18
    .line 19
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    aput-object v3, v2, v4

    .line 23
    .line 24
    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    if-eqz p2, :cond_2a

    .line 28
    .line 29
    iget-object v0, p0, La8/f;->c:Ljava/lang/reflect/Method;

    .line 30
    .line 31
    new-array v2, v1, [Ljava/lang/Object;

    .line 32
    .line 33
    aput-object p2, v2, v4

    .line 34
    .line 35
    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    goto :goto_2a

    .line 39
    :catch_26
    move-exception p1

    .line 40
    goto :goto_3a

    .line 41
    :catch_28
    move-exception p1

    .line 42
    goto :goto_40

    .line 43
    :cond_2a
    :goto_2a
    iget-object p2, p0, La8/f;->e:Ljava/lang/reflect/Method;

    .line 44
    .line 45
    sget-object v0, Lz7/n;->a:Lz7/n;

    .line 46
    .line 47
    invoke-static {p3}, Lx1/w;->i(Ljava/util/List;)[B

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    new-array v0, v1, [Ljava/lang/Object;

    .line 52
    .line 53
    aput-object p3, v0, v4

    .line 54
    .line 55
    invoke-virtual {p2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_39} :catch_28
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_d .. :try_end_39} :catch_26

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :goto_3a
    new-instance p2, Ljava/lang/AssertionError;

    .line 60
    .line 61
    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    throw p2

    .line 65
    :goto_40
    new-instance p2, Ljava/lang/AssertionError;

    .line 66
    .line 67
    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    throw p2

    .line 71
    :cond_46
    return-void
.end method
