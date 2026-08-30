###### Class m.x2 (m.x2)
.class public final Lm/x2;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lx1/x;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lm/x2;->a:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "value"

    .line 7
    .line 8
    invoke-static {v0, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, p1, v0, v0}, Lm/x2;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    new-array v0, v0, [Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    aput-object p2, v0, v1

    .line 20
    .line 21
    const-string v1, "%s"

    .line 22
    .line 23
    invoke-virtual {p0, v1, v0}, Lm/x2;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lm/x2;->m()V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lm/x2;->d:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v0, Lq2/z;

    .line 32
    .line 33
    if-eqz v0, :cond_2b

    .line 34
    .line 35
    const-string v1, "    "

    .line 36
    .line 37
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v0, p1, p2}, Lq2/z;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    :cond_2b
    return-void
.end method

.method public b()Lr7/g;
    .registers 6

    .line 1
    new-instance v0, Lr7/g;

    .line 2
    .line 3
    iget-boolean v1, p0, Lm/x2;->a:Z

    .line 4
    .line 5
    iget-boolean v2, p0, Lm/x2;->b:Z

    .line 6
    .line 7
    iget-object v3, p0, Lm/x2;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v3, [Ljava/lang/String;

    .line 10
    .line 11
    iget-object v4, p0, Lm/x2;->d:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v4, [Ljava/lang/String;

    .line 14
    .line 15
    invoke-direct {v0, v1, v2, v3, v4}, Lr7/g;-><init>(ZZ[Ljava/lang/String;[Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public varargs c([Ljava/lang/String;)V
    .registers 3

    .line 1
    const-string v0, "cipherSuites"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lm/x2;->a:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1d

    .line 9
    .line 10
    array-length v0, p1

    .line 11
    if-eqz v0, :cond_15

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, [Ljava/lang/String;

    .line 18
    .line 19
    iput-object p1, p0, Lm/x2;->c:Ljava/lang/Object;

    .line 20
    .line 21
    return-void

    .line 22
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    const-string v0, "At least one cipher suite is required"

    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 31
    .line 32
    const-string v0, "no cipher suites for cleartext connections"

    .line 33
    .line 34
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1
.end method

.method public varargs d([Lr7/f;)V
    .registers 7

    .line 1
    const-string v0, "cipherSuites"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lm/x2;->a:Z

    .line 7
    .line 8
    if-eqz v0, :cond_31

    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    array-length v1, p1

    .line 13
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    .line 15
    .line 16
    array-length v1, p1

    .line 17
    const/4 v2, 0x0

    .line 18
    move v3, v2

    .line 19
    :goto_12
    if-ge v3, v1, :cond_1e

    .line 20
    .line 21
    aget-object v4, p1, v3

    .line 22
    .line 23
    iget-object v4, v4, Lr7/f;->a:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    goto :goto_12

    .line 31
    :cond_1e
    new-array p1, v2, [Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, [Ljava/lang/String;

    .line 38
    .line 39
    array-length v0, p1

    .line 40
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, [Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lm/x2;->c([Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_31
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 51
    .line 52
    const-string v0, "no cipher suites for cleartext connections"

    .line 53
    .line 54
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1
.end method

.method public varargs e([Ljava/lang/String;)V
    .registers 3

    .line 1
    const-string v0, "tlsVersions"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lm/x2;->a:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1d

    .line 9
    .line 10
    array-length v0, p1

    .line 11
    if-eqz v0, :cond_15

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, [Ljava/lang/String;

    .line 18
    .line 19
    iput-object p1, p0, Lm/x2;->d:Ljava/lang/Object;

    .line 20
    .line 21
    return-void

    .line 22
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    const-string v0, "At least one TLS version is required"

    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 31
    .line 32
    const-string v0, "no TLS versions for cleartext connections"

    .line 33
    .line 34
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1
.end method

.method public varargs f([Lr7/y;)V
    .registers 7

    .line 1
    iget-boolean v0, p0, Lm/x2;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2c

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    array-length v1, p1

    .line 8
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    .line 10
    .line 11
    array-length v1, p1

    .line 12
    const/4 v2, 0x0

    .line 13
    move v3, v2

    .line 14
    :goto_d
    if-ge v3, v1, :cond_19

    .line 15
    .line 16
    aget-object v4, p1, v3

    .line 17
    .line 18
    iget-object v4, v4, Lr7/y;->a:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    add-int/lit8 v3, v3, 0x1

    .line 24
    .line 25
    goto :goto_d

    .line 26
    :cond_19
    new-array p1, v2, [Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, [Ljava/lang/String;

    .line 33
    .line 34
    array-length v0, p1

    .line 35
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, [Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Lm/x2;->e([Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_2c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 46
    .line 47
    const-string v0, "no TLS versions for cleartext connections"

    .line 48
    .line 49
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1
.end method

.method public varargs g(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lm/x2;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/io/FilterOutputStream;

    .line 4
    .line 5
    const-string v1, "args"

    .line 6
    .line 7
    invoke-static {v1, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-boolean v1, p0, Lm/x2;->b:Z

    .line 11
    .line 12
    const-string v2, "this as java.lang.String).getBytes(charset)"

    .line 13
    .line 14
    if-nez v1, :cond_57

    .line 15
    .line 16
    iget-boolean v1, p0, Lm/x2;->a:Z

    .line 17
    .line 18
    if-eqz v1, :cond_3c

    .line 19
    .line 20
    sget-object v1, Lk7/a;->a:Ljava/nio/charset/Charset;

    .line 21
    .line 22
    const-string v3, "--"

    .line 23
    .line 24
    invoke-virtual {v3, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-static {v2, v3}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 32
    .line 33
    .line 34
    sget-object v3, Lx1/z;->j:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v3, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-static {v2, v3}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 44
    .line 45
    .line 46
    const-string v3, "\r\n"

    .line 47
    .line 48
    invoke-virtual {v3, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {v2, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 56
    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    iput-boolean v1, p0, Lm/x2;->a:Z

    .line 60
    .line 61
    :cond_3c
    array-length v1, p2

    .line 62
    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    array-length v1, p2

    .line 67
    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    sget-object p2, Lk7/a;->a:Ljava/nio/charset/Charset;

    .line 76
    .line 77
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {v2, p1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_57
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 89
    .line 90
    array-length v3, p2

    .line 91
    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    array-length v3, p2

    .line 96
    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    invoke-static {v1, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    const-string p2, "UTF-8"

    .line 105
    .line 106
    invoke-static {p1, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    const-string p2, "encode(String.format(Loc\u2026 format, *args), \"UTF-8\")"

    .line 111
    .line 112
    invoke-static {p2, p1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    sget-object p2, Lk7/a;->a:Ljava/nio/charset/Charset;

    .line 116
    .line 117
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-static {v2, p1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 125
    .line 126
    .line 127
    return-void
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1
    iget-boolean v0, p0, Lm/x2;->b:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_37

    .line 6
    .line 7
    new-array v0, v1, [Ljava/lang/Object;

    .line 8
    .line 9
    aput-object p1, v0, v2

    .line 10
    .line 11
    const-string p1, "Content-Disposition: form-data; name=\"%s\""

    .line 12
    .line 13
    invoke-virtual {p0, p1, v0}, Lm/x2;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    if-eqz p2, :cond_1a

    .line 17
    .line 18
    new-array p1, v1, [Ljava/lang/Object;

    .line 19
    .line 20
    aput-object p2, p1, v2

    .line 21
    .line 22
    const-string p2, "; filename=\"%s\""

    .line 23
    .line 24
    invoke-virtual {p0, p2, p1}, Lm/x2;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_1a
    new-array p1, v2, [Ljava/lang/Object;

    .line 28
    .line 29
    const-string p2, ""

    .line 30
    .line 31
    invoke-virtual {p0, p2, p1}, Lm/x2;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    if-eqz p3, :cond_31

    .line 35
    .line 36
    const/4 p1, 0x2

    .line 37
    new-array p1, p1, [Ljava/lang/Object;

    .line 38
    .line 39
    const-string v0, "Content-Type"

    .line 40
    .line 41
    aput-object v0, p1, v2

    .line 42
    .line 43
    aput-object p3, p1, v1

    .line 44
    .line 45
    const-string p3, "%s: %s"

    .line 46
    .line 47
    invoke-virtual {p0, p3, p1}, Lm/x2;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    :cond_31
    new-array p1, v2, [Ljava/lang/Object;

    .line 51
    .line 52
    invoke-virtual {p0, p2, p1}, Lm/x2;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_37
    iget-object p2, p0, Lm/x2;->c:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast p2, Ljava/io/FilterOutputStream;

    .line 59
    .line 60
    new-array p3, v1, [Ljava/lang/Object;

    .line 61
    .line 62
    aput-object p1, p3, v2

    .line 63
    .line 64
    invoke-static {p3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const-string p3, "%s="

    .line 69
    .line 70
    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    sget-object p3, Lk7/a;->a:Ljava/nio/charset/Charset;

    .line 75
    .line 76
    invoke-virtual {p1, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    const-string p3, "this as java.lang.String).getBytes(charset)"

    .line 81
    .line 82
    invoke-static {p3, p1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public i(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lm/x2;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/io/FilterOutputStream;

    .line 4
    .line 5
    const-string v1, "key"

    .line 6
    .line 7
    invoke-static {v1, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "contentUri"

    .line 11
    .line 12
    invoke-static {v1, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    if-nez p3, :cond_12

    .line 16
    .line 17
    const-string p3, "content/unknown"

    .line 18
    .line 19
    :cond_12
    invoke-virtual {p0, p1, p1, p3}, Lm/x2;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    invoke-virtual {p3, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-static {p2, v0}, Lq2/g0;->j(Ljava/io/InputStream;Ljava/io/FilterOutputStream;)I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    const-string p3, ""

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    new-array v1, v0, [Ljava/lang/Object;

    .line 42
    .line 43
    invoke-virtual {p0, p3, v1}, Lm/x2;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lm/x2;->m()V

    .line 47
    .line 48
    .line 49
    iget-object p3, p0, Lm/x2;->d:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast p3, Lq2/z;

    .line 52
    .line 53
    const-string v1, "    "

    .line 54
    .line 55
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 60
    .line 61
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    const/4 v2, 0x1

    .line 66
    new-array v3, v2, [Ljava/lang/Object;

    .line 67
    .line 68
    aput-object p2, v3, v0

    .line 69
    .line 70
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    const-string v0, "<Data: %d>"

    .line 75
    .line 76
    invoke-static {v1, v0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-virtual {p3, p1, p2}, Lq2/z;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public j(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lm/x2;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/io/FilterOutputStream;

    .line 4
    .line 5
    const-string v1, "key"

    .line 6
    .line 7
    invoke-static {v1, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "descriptor"

    .line 11
    .line 12
    invoke-static {v1, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    if-nez p3, :cond_12

    .line 16
    .line 17
    const-string p3, "content/unknown"

    .line 18
    .line 19
    :cond_12
    invoke-virtual {p0, p1, p1, p3}, Lm/x2;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance p3, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 23
    .line 24
    invoke-direct {p3, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p3, v0}, Lq2/g0;->j(Ljava/io/InputStream;Ljava/io/FilterOutputStream;)I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    const-string p3, ""

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    new-array v1, v0, [Ljava/lang/Object;

    .line 35
    .line 36
    invoke-virtual {p0, p3, v1}, Lm/x2;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lm/x2;->m()V

    .line 40
    .line 41
    .line 42
    iget-object p3, p0, Lm/x2;->d:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p3, Lq2/z;

    .line 45
    .line 46
    const-string v1, "    "

    .line 47
    .line 48
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 53
    .line 54
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    const/4 v2, 0x1

    .line 59
    new-array v3, v2, [Ljava/lang/Object;

    .line 60
    .line 61
    aput-object p2, v3, v0

    .line 62
    .line 63
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    const-string v0, "<Data: %d>"

    .line 68
    .line 69
    invoke-static {v1, v0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-virtual {p3, p1, p2}, Lq2/z;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public varargs k(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 1
    array-length v0, p2

    .line 2
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p2

    .line 6
    invoke-virtual {p0, p1, p2}, Lm/x2;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-boolean p1, p0, Lm/x2;->b:Z

    .line 10
    .line 11
    if-nez p1, :cond_14

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    new-array p1, p1, [Ljava/lang/Object;

    .line 15
    .line 16
    const-string p2, "\r\n"

    .line 17
    .line 18
    invoke-virtual {p0, p2, p1}, Lm/x2;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_14
    return-void
.end method

.method public l(Ljava/lang/String;Ljava/lang/Object;Lx1/z;)V
    .registers 10

    .line 1
    iget-object p3, p0, Lm/x2;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p3, Lq2/z;

    .line 4
    .line 5
    const-string v0, "key"

    .line 6
    .line 7
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lm/x2;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Ljava/io/FilterOutputStream;

    .line 13
    .line 14
    sget-object v1, Lx1/z;->j:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {p2}, Lx1/w;->t(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1d

    .line 21
    .line 22
    invoke-static {p2}, Lx1/w;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p0, p1, p2}, Lm/x2;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1d
    instance-of v1, p2, Landroid/graphics/Bitmap;

    .line 31
    .line 32
    const-string v2, "    "

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    const-string v4, ""

    .line 36
    .line 37
    if-eqz v1, :cond_46

    .line 38
    .line 39
    check-cast p2, Landroid/graphics/Bitmap;

    .line 40
    .line 41
    const-string v1, "image/png"

    .line 42
    .line 43
    invoke-virtual {p0, p1, p1, v1}, Lm/x2;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 47
    .line 48
    const/16 v5, 0x64

    .line 49
    .line 50
    invoke-virtual {p2, v1, v5, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 51
    .line 52
    .line 53
    new-array p2, v3, [Ljava/lang/Object;

    .line 54
    .line 55
    invoke-virtual {p0, v4, p2}, Lm/x2;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lm/x2;->m()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const-string p2, "<Image>"

    .line 66
    .line 67
    invoke-virtual {p3, p1, p2}, Lq2/z;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_46
    instance-of v1, p2, [B

    .line 72
    .line 73
    if-eqz v1, :cond_7a

    .line 74
    .line 75
    check-cast p2, [B

    .line 76
    .line 77
    const-string v1, "content/unknown"

    .line 78
    .line 79
    invoke-virtual {p0, p1, p1, v1}, Lm/x2;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 83
    .line 84
    .line 85
    new-array v0, v3, [Ljava/lang/Object;

    .line 86
    .line 87
    invoke-virtual {p0, v4, v0}, Lm/x2;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lm/x2;->m()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 98
    .line 99
    array-length p2, p2

    .line 100
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    const/4 v1, 0x1

    .line 105
    new-array v2, v1, [Ljava/lang/Object;

    .line 106
    .line 107
    aput-object p2, v2, v3

    .line 108
    .line 109
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    const-string v1, "<Data: %d>"

    .line 114
    .line 115
    invoke-static {v0, v1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    invoke-virtual {p3, p1, p2}, Lq2/z;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :cond_7a
    instance-of p3, p2, Landroid/net/Uri;

    .line 124
    .line 125
    const/4 v0, 0x0

    .line 126
    if-eqz p3, :cond_85

    .line 127
    .line 128
    check-cast p2, Landroid/net/Uri;

    .line 129
    .line 130
    invoke-virtual {p0, p1, p2, v0}, Lm/x2;->i(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :cond_85
    instance-of p3, p2, Landroid/os/ParcelFileDescriptor;

    .line 135
    .line 136
    if-eqz p3, :cond_8f

    .line 137
    .line 138
    check-cast p2, Landroid/os/ParcelFileDescriptor;

    .line 139
    .line 140
    invoke-virtual {p0, p1, p2, v0}, Lm/x2;->j(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :cond_8f
    instance-of p3, p2, Lx1/y;

    .line 145
    .line 146
    const-string v0, "value is not a supported type."

    .line 147
    .line 148
    if-eqz p3, :cond_b5

    .line 149
    .line 150
    check-cast p2, Lx1/y;

    .line 151
    .line 152
    iget-object p3, p2, Lx1/y;->b:Landroid/os/Parcelable;

    .line 153
    .line 154
    iget-object p2, p2, Lx1/y;->a:Ljava/lang/String;

    .line 155
    .line 156
    instance-of v1, p3, Landroid/os/ParcelFileDescriptor;

    .line 157
    .line 158
    if-eqz v1, :cond_a5

    .line 159
    .line 160
    check-cast p3, Landroid/os/ParcelFileDescriptor;

    .line 161
    .line 162
    invoke-virtual {p0, p1, p3, p2}, Lm/x2;->j(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    return-void

    .line 166
    :cond_a5
    instance-of v1, p3, Landroid/net/Uri;

    .line 167
    .line 168
    if-eqz v1, :cond_af

    .line 169
    .line 170
    check-cast p3, Landroid/net/Uri;

    .line 171
    .line 172
    invoke-virtual {p0, p1, p3, p2}, Lm/x2;->i(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    :cond_af
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 177
    .line 178
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    throw p1

    .line 182
    :cond_b5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 183
    .line 184
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    throw p1
.end method

.method public m()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lm/x2;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_12

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    .line 8
    sget-object v1, Lx1/z;->j:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 12
    .line 13
    const-string v1, "--%s"

    .line 14
    .line 15
    invoke-virtual {p0, v1, v0}, Lm/x2;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_12
    iget-object v0, p0, Lm/x2;->c:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Ljava/io/FilterOutputStream;

    .line 22
    .line 23
    const-string v1, "&"

    .line 24
    .line 25
    sget-object v2, Lk7/a;->a:Ljava/nio/charset/Charset;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "this as java.lang.String).getBytes(charset)"

    .line 32
    .line 33
    invoke-static {v2, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
