###### Class r7.a (r7.a)
.class public final Lr7/a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Lr7/b;

.field public final b:Ljavax/net/SocketFactory;

.field public final c:Ljavax/net/ssl/SSLSocketFactory;

.field public final d:Ljavax/net/ssl/HostnameVerifier;

.field public final e:Lr7/d;

.field public final f:Lr7/b;

.field public final g:Ljava/net/ProxySelector;

.field public final h:Lr7/m;

.field public final i:Ljava/util/List;

.field public final j:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILr7/b;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lr7/d;Lr7/b;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V
    .registers 13

    const-string v0, "uriHost"

    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "dns"

    invoke-static {v0, p3}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "socketFactory"

    invoke-static {v0, p4}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "proxyAuthenticator"

    invoke-static {v0, p8}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "protocols"

    invoke-static {v0, p9}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "connectionSpecs"

    invoke-static {v0, p10}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "proxySelector"

    invoke-static {v0, p11}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lr7/a;->a:Lr7/b;

    .line 3
    iput-object p4, p0, Lr7/a;->b:Ljavax/net/SocketFactory;

    .line 4
    iput-object p5, p0, Lr7/a;->c:Ljavax/net/ssl/SSLSocketFactory;

    .line 5
    iput-object p6, p0, Lr7/a;->d:Ljavax/net/ssl/HostnameVerifier;

    .line 6
    iput-object p7, p0, Lr7/a;->e:Lr7/d;

    .line 7
    iput-object p8, p0, Lr7/a;->f:Lr7/b;

    .line 8
    iput-object p11, p0, Lr7/a;->g:Ljava/net/ProxySelector;

    .line 9
    new-instance p3, Lr7/l;

    invoke-direct {p3}, Lr7/l;-><init>()V

    .line 10
    const-string p4, "http"

    const-string p6, "https"

    if-eqz p5, :cond_41

    move-object p5, p6

    goto :goto_42

    :cond_41
    move-object p5, p4

    .line 11
    :goto_42
    invoke-virtual {p5, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p7

    if-eqz p7, :cond_4b

    .line 12
    iput-object p4, p3, Lr7/l;->a:Ljava/lang/String;

    goto :goto_53

    .line 13
    :cond_4b
    invoke-virtual {p5, p6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_99

    .line 14
    iput-object p6, p3, Lr7/l;->a:Ljava/lang/String;

    :goto_53
    const/4 p4, 0x7

    const/4 p5, 0x0

    .line 15
    invoke-static {p1, p5, p5, p4}, Lr7/b;->e(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lk2/e;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_8d

    .line 16
    iput-object p4, p3, Lr7/l;->d:Ljava/lang/String;

    const/4 p1, 0x1

    if-gt p1, p2, :cond_7d

    const/high16 p1, 0x10000

    if-ge p2, p1, :cond_7d

    .line 17
    iput p2, p3, Lr7/l;->e:I

    .line 18
    invoke-virtual {p3}, Lr7/l;->a()Lr7/m;

    move-result-object p1

    iput-object p1, p0, Lr7/a;->h:Lr7/m;

    .line 19
    invoke-static {p9}, Ls7/b;->w(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lr7/a;->i:Ljava/util/List;

    .line 20
    invoke-static {p10}, Ls7/b;->w(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lr7/a;->j:Ljava/util/List;

    return-void

    .line 21
    :cond_7d
    const-string p1, "unexpected port: "

    .line 22
    invoke-static {p2, p1}, La1/a;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 23
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 24
    :cond_8d
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 25
    const-string p3, "unexpected host: "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 27
    :cond_99
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unexpected scheme: "

    invoke-virtual {p2, p5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Lr7/a;)Z
    .registers 4

    .line 1
    const-string v0, "that"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lr7/a;->a:Lr7/b;

    .line 7
    .line 8
    iget-object v1, p1, Lr7/a;->a:Lr7/b;

    .line 9
    .line 10
    invoke-static {v0, v1}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_61

    .line 15
    .line 16
    iget-object v0, p0, Lr7/a;->f:Lr7/b;

    .line 17
    .line 18
    iget-object v1, p1, Lr7/a;->f:Lr7/b;

    .line 19
    .line 20
    invoke-static {v0, v1}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_61

    .line 25
    .line 26
    iget-object v0, p0, Lr7/a;->i:Ljava/util/List;

    .line 27
    .line 28
    iget-object v1, p1, Lr7/a;->i:Ljava/util/List;

    .line 29
    .line 30
    invoke-static {v0, v1}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_61

    .line 35
    .line 36
    iget-object v0, p0, Lr7/a;->j:Ljava/util/List;

    .line 37
    .line 38
    iget-object v1, p1, Lr7/a;->j:Ljava/util/List;

    .line 39
    .line 40
    invoke-static {v0, v1}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_61

    .line 45
    .line 46
    iget-object v0, p0, Lr7/a;->g:Ljava/net/ProxySelector;

    .line 47
    .line 48
    iget-object v1, p1, Lr7/a;->g:Ljava/net/ProxySelector;

    .line 49
    .line 50
    invoke-static {v0, v1}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_61

    .line 55
    .line 56
    iget-object v0, p0, Lr7/a;->c:Ljavax/net/ssl/SSLSocketFactory;

    .line 57
    .line 58
    iget-object v1, p1, Lr7/a;->c:Ljavax/net/ssl/SSLSocketFactory;

    .line 59
    .line 60
    invoke-static {v0, v1}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_61

    .line 65
    .line 66
    iget-object v0, p0, Lr7/a;->d:Ljavax/net/ssl/HostnameVerifier;

    .line 67
    .line 68
    iget-object v1, p1, Lr7/a;->d:Ljavax/net/ssl/HostnameVerifier;

    .line 69
    .line 70
    invoke-static {v0, v1}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_61

    .line 75
    .line 76
    iget-object v0, p0, Lr7/a;->e:Lr7/d;

    .line 77
    .line 78
    iget-object v1, p1, Lr7/a;->e:Lr7/d;

    .line 79
    .line 80
    invoke-static {v0, v1}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_61

    .line 85
    .line 86
    iget-object v0, p0, Lr7/a;->h:Lr7/m;

    .line 87
    .line 88
    iget v0, v0, Lr7/m;->e:I

    .line 89
    .line 90
    iget-object p1, p1, Lr7/a;->h:Lr7/m;

    .line 91
    .line 92
    iget p1, p1, Lr7/m;->e:I

    .line 93
    .line 94
    if-ne v0, p1, :cond_61

    .line 95
    .line 96
    const/4 p1, 0x1

    .line 97
    return p1

    .line 98
    :cond_61
    const/4 p1, 0x0

    .line 99
    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    .line 1
    instance-of v0, p1, Lr7/a;

    .line 2
    .line 3
    if-eqz v0, :cond_18

    .line 4
    .line 5
    check-cast p1, Lr7/a;

    .line 6
    .line 7
    iget-object v0, p1, Lr7/a;->h:Lr7/m;

    .line 8
    .line 9
    iget-object v1, p0, Lr7/a;->h:Lr7/m;

    .line 10
    .line 11
    invoke-static {v1, v0}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_18

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lr7/a;->a(Lr7/a;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_18

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    return p1

    .line 25
    :cond_18
    const/4 p1, 0x0

    .line 26
    return p1
.end method

.method public final hashCode()I
    .registers 4

    .line 1
    iget-object v0, p0, Lr7/a;->h:Lr7/m;

    .line 2
    .line 3
    iget-object v0, v0, Lr7/m;->h:Ljava/lang/String;

    .line 4
    .line 5
    const/16 v1, 0x20f

    .line 6
    .line 7
    const/16 v2, 0x1f

    .line 8
    .line 9
    invoke-static {v1, v0, v2}, Lq2/x;->d(ILjava/lang/String;I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Lr7/a;->a:Lr7/b;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    add-int/2addr v1, v0

    .line 20
    mul-int/2addr v1, v2

    .line 21
    iget-object v0, p0, Lr7/a;->f:Lr7/b;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    add-int/2addr v0, v1

    .line 28
    mul-int/2addr v0, v2

    .line 29
    iget-object v1, p0, Lr7/a;->i:Ljava/util/List;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    add-int/2addr v1, v0

    .line 36
    mul-int/2addr v1, v2

    .line 37
    iget-object v0, p0, Lr7/a;->j:Ljava/util/List;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    add-int/2addr v0, v1

    .line 44
    mul-int/2addr v0, v2

    .line 45
    iget-object v1, p0, Lr7/a;->g:Ljava/net/ProxySelector;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    add-int/2addr v1, v0

    .line 52
    mul-int/lit16 v1, v1, 0x3c1

    .line 53
    .line 54
    iget-object v0, p0, Lr7/a;->c:Ljavax/net/ssl/SSLSocketFactory;

    .line 55
    .line 56
    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    add-int/2addr v0, v1

    .line 61
    mul-int/2addr v0, v2

    .line 62
    iget-object v1, p0, Lr7/a;->d:Ljavax/net/ssl/HostnameVerifier;

    .line 63
    .line 64
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    add-int/2addr v1, v0

    .line 69
    mul-int/2addr v1, v2

    .line 70
    iget-object v0, p0, Lr7/a;->e:Lr7/d;

    .line 71
    .line 72
    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    add-int/2addr v0, v1

    .line 77
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Address{"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lr7/a;->h:Lr7/m;

    .line 9
    .line 10
    iget-object v2, v1, Lr7/m;->d:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const/16 v2, 0x3a

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget v1, v1, Lr7/m;->e:I

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, ", "

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v2, "proxySelector="

    .line 33
    .line 34
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v2, p0, Lr7/a;->g:Ljava/net/ProxySelector;

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const/16 v1, 0x7d

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    return-object v0
.end method
