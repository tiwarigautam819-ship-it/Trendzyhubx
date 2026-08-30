###### Class z7.a (z7.a)
.class public final Lz7/a;
.super Lz7/n;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final d:Z


# instance fields
.field public final c:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    invoke-static {}, Lx1/w;->r()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_e

    .line 6
    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v1, 0x1d

    .line 10
    .line 11
    if-lt v0, v1, :cond_e

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    :goto_f
    sput-boolean v0, Lz7/a;->d:Z

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lx1/w;->r()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_15

    .line 9
    .line 10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    .line 12
    const/16 v1, 0x1d

    .line 13
    .line 14
    if-lt v0, v1, :cond_15

    .line 15
    .line 16
    new-instance v0, La8/a;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    goto :goto_16

    .line 22
    :cond_15
    const/4 v0, 0x0

    .line 23
    :goto_16
    new-instance v1, La8/m;

    .line 24
    .line 25
    sget-object v2, La8/f;->f:La8/e;

    .line 26
    .line 27
    invoke-direct {v1, v2}, La8/m;-><init>(La8/l;)V

    .line 28
    .line 29
    .line 30
    new-instance v2, La8/m;

    .line 31
    .line 32
    sget-object v3, La8/k;->a:La8/j;

    .line 33
    .line 34
    invoke-direct {v2, v3}, La8/m;-><init>(La8/l;)V

    .line 35
    .line 36
    .line 37
    new-instance v3, La8/m;

    .line 38
    .line 39
    sget-object v4, La8/h;->a:La8/g;

    .line 40
    .line 41
    invoke-direct {v3, v4}, La8/m;-><init>(La8/l;)V

    .line 42
    .line 43
    .line 44
    const/4 v4, 0x4

    .line 45
    new-array v4, v4, [La8/n;

    .line 46
    .line 47
    const/4 v5, 0x0

    .line 48
    aput-object v0, v4, v5

    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    aput-object v1, v4, v0

    .line 52
    .line 53
    const/4 v0, 0x2

    .line 54
    aput-object v2, v4, v0

    .line 55
    .line 56
    const/4 v0, 0x3

    .line 57
    aput-object v3, v4, v0

    .line 58
    .line 59
    invoke-static {v4}, Ls6/f;->o([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    :cond_47
    :goto_47
    if-ge v5, v2, :cond_5c

    .line 73
    .line 74
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    add-int/lit8 v5, v5, 0x1

    .line 79
    .line 80
    move-object v4, v3

    .line 81
    check-cast v4, La8/n;

    .line 82
    .line 83
    invoke-interface {v4}, La8/n;->c()Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-eqz v4, :cond_47

    .line 88
    .line 89
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    goto :goto_47

    .line 93
    :cond_5c
    iput-object v1, p0, Lz7/a;->c:Ljava/util/ArrayList;

    .line 94
    .line 95
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
    invoke-virtual {p0, p1}, Lz7/n;->c(Ljavax/net/ssl/X509TrustManager;)Ld8/d;

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
    iget-object v0, p0, Lz7/a;->c:Ljava/util/ArrayList;

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

.method public final f(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .registers 8

    .line 1
    iget-object v0, p0, Lz7/a;->c:Ljava/util/ArrayList;

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

.method public final h(Ljava/lang/String;)Z
    .registers 3

    .line 1
    const-string v0, "hostname"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0, p1}, Lt4/i;->c(Landroid/security/NetworkSecurityPolicy;Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method
