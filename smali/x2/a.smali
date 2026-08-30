###### Class x2.a (x2.a)
.class public abstract Lx2/a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static g(Ljavax/net/ssl/SSLSession;)Lr7/i;
    .registers 7

    .line 1
    sget-object v0, Ls6/o;->a:Ls6/o;

    .line 2
    .line 3
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_7a

    .line 8
    .line 9
    const-string v2, "TLS_NULL_WITH_NULL_NULL"

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_12

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    goto :goto_18

    .line 19
    :cond_12
    const-string v2, "SSL_NULL_WITH_NULL_NULL"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    :goto_18
    if-nez v2, :cond_6e

    .line 26
    .line 27
    sget-object v2, Lr7/f;->b:Lr7/b;

    .line 28
    .line 29
    invoke-virtual {v2, v1}, Lr7/b;->c(Ljava/lang/String;)Lr7/f;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    if-eqz v2, :cond_66

    .line 38
    .line 39
    const-string v3, "NONE"

    .line 40
    .line 41
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-nez v3, :cond_5e

    .line 46
    .line 47
    invoke-static {v2}, Lz7/d;->e(Ljava/lang/String;)Lr7/y;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    :try_start_32
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    if-eqz v3, :cond_42

    .line 56
    .line 57
    array-length v4, v3

    .line 58
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-static {v3}, Ls7/b;->k([Ljava/lang/Object;)Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v3
    :try_end_41
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_32 .. :try_end_41} :catch_42

    .line 66
    goto :goto_43

    .line 67
    :catch_42
    :cond_42
    move-object v3, v0

    .line 68
    :goto_43
    new-instance v4, Lr7/i;

    .line 69
    .line 70
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    if-eqz p0, :cond_54

    .line 75
    .line 76
    array-length v0, p0

    .line 77
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-static {p0}, Ls7/b;->k([Ljava/lang/Object;)Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    :cond_54
    new-instance p0, Landroidx/lifecycle/k0;

    .line 86
    .line 87
    const/4 v5, 0x1

    .line 88
    invoke-direct {p0, v5, v3}, Landroidx/lifecycle/k0;-><init>(ILjava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    invoke-direct {v4, v2, v1, v0, p0}, Lr7/i;-><init>(Lr7/y;Lr7/f;Ljava/util/List;Lc7/a;)V

    .line 92
    .line 93
    .line 94
    return-object v4

    .line 95
    :cond_5e
    new-instance p0, Ljava/io/IOException;

    .line 96
    .line 97
    const-string v0, "tlsVersion == NONE"

    .line 98
    .line 99
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p0

    .line 103
    :cond_66
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 104
    .line 105
    const-string v0, "tlsVersion == null"

    .line 106
    .line 107
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw p0

    .line 111
    :cond_6e
    new-instance p0, Ljava/io/IOException;

    .line 112
    .line 113
    const-string v0, "cipherSuite == "

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw p0

    .line 123
    :cond_7a
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 124
    .line 125
    const-string v0, "cipherSuite == null"

    .line 126
    .line 127
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw p0
.end method

.method public static final h(Ljava/lang/String;)Ljava/security/PublicKey;
    .registers 3

    .line 1
    const-string v0, "\n"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-static {p0, v0, v1}, Lk7/o;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, "-----BEGIN PUBLIC KEY-----"

    .line 10
    .line 11
    invoke-static {p0, v0, v1}, Lk7/o;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string v0, "-----END PUBLIC KEY-----"

    .line 16
    .line 17
    invoke-static {p0, v0, v1}, Lk7/o;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string v0, "decode(pubKeyString, Base64.DEFAULT)"

    .line 27
    .line 28
    invoke-static {v0, p0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 34
    .line 35
    .line 36
    const-string p0, "RSA"

    .line 37
    .line 38
    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    const-string v0, "kf.generatePublic(x509publicKey)"

    .line 47
    .line 48
    invoke-static {v0, p0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    return-object p0
.end method

.method public static final i(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 1
    const-string v0, "kid"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "www."

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget-object v1, Lx1/r;->q:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v2, Ljava/net/URL;

    .line 23
    .line 24
    const-string v1, "https"

    .line 25
    .line 26
    const-string v3, "/.well-known/oauth/openid/keys/"

    .line 27
    .line 28
    invoke-direct {v2, v1, v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance v5, Ljava/util/concurrent/locks/ReentrantLock;

    .line 32
    .line 33
    invoke-direct {v5}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    new-instance v3, Ld7/k;

    .line 41
    .line 42
    invoke-direct {v3}, Ld7/k;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lx1/r;->c()Ljava/util/concurrent/Executor;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    new-instance v1, Lcom/getcapacitor/p;

    .line 50
    .line 51
    move-object v4, p0

    .line 52
    invoke-direct/range {v1 .. v6}, Lcom/getcapacitor/p;-><init>(Ljava/net/URL;Ld7/k;Ljava/lang/String;Ljava/util/concurrent/locks/ReentrantLock;Ljava/util/concurrent/locks/Condition;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 59
    .line 60
    .line 61
    :try_start_3c
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 62
    .line 63
    const-wide/16 v0, 0x1388

    .line 64
    .line 65
    invoke-interface {v6, v0, v1, p0}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_4b

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 69
    .line 70
    .line 71
    iget-object p0, v3, Ld7/k;->b:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast p0, Ljava/lang/String;

    .line 74
    .line 75
    return-object p0

    .line 76
    :catchall_4b
    move-exception v0

    .line 77
    move-object p0, v0

    .line 78
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 79
    .line 80
    .line 81
    throw p0
.end method

.method public static j(Lu6/i;Lu6/j;)Lu6/k;
    .registers 3

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Lu6/i;->getKey()Lu6/j;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0, p1}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_11

    .line 15
    .line 16
    sget-object p0, Lu6/l;->a:Lu6/l;

    .line 17
    .line 18
    :cond_11
    return-object p0
.end method

.method public static m(Lu6/i;Lu6/k;)Lu6/k;
    .registers 3

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lt4/b;->j(Lu6/k;Lu6/k;)Lu6/k;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static p(Ljava/util/HashMap;)V
    .registers 15

    .line 1
    sget-object v0, Ly1/t;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    sget-object v1, Ly1/t;->a:Ly1/t;

    .line 4
    .line 5
    const-class v2, Ly1/t;

    .line 6
    .line 7
    invoke-static {v2}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-eqz v3, :cond_e

    .line 12
    .line 13
    goto/16 :goto_167

    .line 14
    .line 15
    :cond_e
    :try_start_e
    sget-object v3, Ly1/t;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-nez v3, :cond_1d

    .line 22
    .line 23
    invoke-virtual {v1}, Ly1/t;->b()V

    .line 24
    .line 25
    .line 26
    goto :goto_1d

    .line 27
    :catchall_1a
    move-exception p0

    .line 28
    goto/16 :goto_164

    .line 29
    .line 30
    :cond_1d
    :goto_1d
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    :goto_25
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_146

    .line 43
    .line 44
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    check-cast v3, Ljava/util/Map$Entry;

    .line 49
    .line 50
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Ljava/lang/String;

    .line 55
    .line 56
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    const/4 v6, 0x1

    .line 67
    sub-int/2addr v5, v6

    .line 68
    const/4 v7, 0x0

    .line 69
    move v8, v7

    .line 70
    move v9, v8

    .line 71
    :goto_46
    if-gt v8, v5, :cond_6b

    .line 72
    .line 73
    if-nez v9, :cond_4c

    .line 74
    .line 75
    move v10, v8

    .line 76
    goto :goto_4d

    .line 77
    :cond_4c
    move v10, v5

    .line 78
    :goto_4d
    invoke-virtual {v3, v10}, Ljava/lang/String;->charAt(I)C

    .line 79
    .line 80
    .line 81
    move-result v10

    .line 82
    const/16 v11, 0x20

    .line 83
    .line 84
    invoke-static {v10, v11}, Ld7/g;->g(II)I

    .line 85
    .line 86
    .line 87
    move-result v10

    .line 88
    if-gtz v10, :cond_5b

    .line 89
    .line 90
    move v10, v6

    .line 91
    goto :goto_5c

    .line 92
    :cond_5b
    move v10, v7

    .line 93
    :goto_5c
    if-nez v9, :cond_65

    .line 94
    .line 95
    if-nez v10, :cond_62

    .line 96
    .line 97
    move v9, v6

    .line 98
    goto :goto_46

    .line 99
    :cond_62
    add-int/lit8 v8, v8, 0x1

    .line 100
    .line 101
    goto :goto_46

    .line 102
    :cond_65
    if-nez v10, :cond_68

    .line 103
    .line 104
    goto :goto_6b

    .line 105
    :cond_68
    add-int/lit8 v5, v5, -0x1

    .line 106
    .line 107
    goto :goto_46

    .line 108
    :cond_6b
    :goto_6b
    add-int/lit8 v5, v5, 0x1

    .line 109
    .line 110
    invoke-virtual {v3, v8, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-virtual {v1, v4, v3}, Ly1/t;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-static {v3}, Lq2/g0;->M(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    if-eqz v5, :cond_141

    .line 131
    .line 132
    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    check-cast v5, Ljava/lang/String;
    :try_end_89
    .catchall {:try_start_e .. :try_end_89} :catchall_1a

    .line 137
    .line 138
    const-string v8, ","

    .line 139
    .line 140
    if-eqz v5, :cond_e9

    .line 141
    .line 142
    :try_start_8d
    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 143
    .line 144
    .line 145
    move-result-object v9

    .line 146
    const-string v10, "compile(...)"

    .line 147
    .line 148
    invoke-static {v10, v9}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    invoke-static {v7}, Lk7/g;->H(I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v9, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 155
    .line 156
    .line 157
    move-result-object v9

    .line 158
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    .line 159
    .line 160
    .line 161
    move-result v10

    .line 162
    if-nez v10, :cond_ac

    .line 163
    .line 164
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v9

    .line 168
    invoke-static {v9}, Lf4/f;->b(Ljava/lang/Object;)Ljava/util/List;

    .line 169
    .line 170
    .line 171
    move-result-object v9

    .line 172
    goto :goto_dd

    .line 173
    :cond_ac
    new-instance v10, Ljava/util/ArrayList;

    .line 174
    .line 175
    const/16 v11, 0xa

    .line 176
    .line 177
    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 178
    .line 179
    .line 180
    move v11, v7

    .line 181
    :cond_b4
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->start()I

    .line 182
    .line 183
    .line 184
    move-result v12

    .line 185
    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 186
    .line 187
    .line 188
    move-result-object v11

    .line 189
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v11

    .line 193
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->end()I

    .line 197
    .line 198
    .line 199
    move-result v11

    .line 200
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    .line 201
    .line 202
    .line 203
    move-result v12

    .line 204
    if-nez v12, :cond_b4

    .line 205
    .line 206
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 207
    .line 208
    .line 209
    move-result v9

    .line 210
    invoke-virtual {v5, v11, v9}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 211
    .line 212
    .line 213
    move-result-object v9

    .line 214
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v9

    .line 218
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-object v9, v10

    .line 222
    :goto_dd
    check-cast v9, Ljava/util/Collection;

    .line 223
    .line 224
    new-array v10, v7, [Ljava/lang/String;

    .line 225
    .line 226
    invoke-interface {v9, v10}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v9

    .line 230
    check-cast v9, [Ljava/lang/String;

    .line 231
    .line 232
    if-nez v9, :cond_eb

    .line 233
    .line 234
    :cond_e9
    new-array v9, v7, [Ljava/lang/String;

    .line 235
    .line 236
    :cond_eb
    array-length v10, v9

    .line 237
    invoke-static {v9, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v10

    .line 241
    const-string v11, "elements"

    .line 242
    .line 243
    invoke-static {v11, v10}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    new-instance v11, Ljava/util/LinkedHashSet;

    .line 247
    .line 248
    array-length v12, v10

    .line 249
    invoke-static {v12}, Ls6/r;->s(I)I

    .line 250
    .line 251
    .line 252
    move-result v12

    .line 253
    invoke-direct {v11, v12}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 254
    .line 255
    .line 256
    invoke-static {v10, v11}, Ls6/f;->q([Ljava/lang/Object;Ljava/util/HashSet;)V

    .line 257
    .line 258
    .line 259
    invoke-interface {v11, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v10

    .line 263
    if-eqz v10, :cond_109

    .line 264
    .line 265
    goto :goto_167

    .line 266
    :cond_109
    new-instance v10, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .line 270
    .line 271
    array-length v12, v9

    .line 272
    if-nez v12, :cond_115

    .line 273
    .line 274
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    goto :goto_138

    .line 278
    :cond_115
    array-length v12, v9

    .line 279
    const/4 v13, 0x5

    .line 280
    if-ge v12, v13, :cond_123

    .line 281
    .line 282
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    goto :goto_138

    .line 292
    :cond_123
    :goto_123
    if-ge v6, v13, :cond_130

    .line 293
    .line 294
    aget-object v5, v9, v6

    .line 295
    .line 296
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    add-int/lit8 v6, v6, 0x1

    .line 303
    .line 304
    goto :goto_123

    .line 305
    :cond_130
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    aget-object v3, v9, v7

    .line 309
    .line 310
    invoke-interface {v11, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    :goto_138
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v3

    .line 317
    invoke-virtual {v0, v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    goto/16 :goto_25

    .line 321
    .line 322
    :cond_141
    invoke-virtual {v0, v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    goto/16 :goto_25

    .line 326
    .line 327
    :cond_146
    invoke-static {v0}, Lq2/g0;->F(Ljava/util/Map;)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object p0

    .line 331
    invoke-static {v1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    move-result v0
    :try_end_14e
    .catchall {:try_start_8d .. :try_end_14e} :catchall_1a

    .line 335
    if-eqz v0, :cond_151

    .line 336
    .line 337
    goto :goto_167

    .line 338
    :cond_151
    :try_start_151
    invoke-static {}, Lx1/r;->c()Ljava/util/concurrent/Executor;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    new-instance v3, Lb2/e;

    .line 343
    .line 344
    const/4 v4, 0x3

    .line 345
    invoke-direct {v3, p0, v4}, Lb2/e;-><init>(Ljava/lang/String;I)V

    .line 346
    .line 347
    .line 348
    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_15e
    .catchall {:try_start_151 .. :try_end_15e} :catchall_15f

    .line 349
    .line 350
    .line 351
    goto :goto_167

    .line 352
    :catchall_15f
    move-exception p0

    .line 353
    :try_start_160
    invoke-static {p0, v1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_163
    .catchall {:try_start_160 .. :try_end_163} :catchall_1a

    .line 354
    .line 355
    .line 356
    goto :goto_167

    .line 357
    :goto_164
    invoke-static {p0, v2}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 358
    .line 359
    .line 360
    :goto_167
    return-void
.end method

.method public static final q(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "signature"

    .line 7
    .line 8
    invoke-static {v0, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    :try_start_a
    const-string v0, "SHA256withRSA"

    .line 12
    .line 13
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 18
    .line 19
    .line 20
    sget-object p0, Lk7/a;->a:Ljava/nio/charset/Charset;

    .line 21
    .line 22
    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string p1, "this as java.lang.String).getBytes(charset)"

    .line 27
    .line 28
    invoke-static {p1, p0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p0}, Ljava/security/Signature;->update([B)V

    .line 32
    .line 33
    .line 34
    const/16 p0, 0x8

    .line 35
    .line 36
    invoke-static {p2, p0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const-string p1, "decode(signature, Base64.URL_SAFE)"

    .line 41
    .line 42
    invoke-static {p1, p0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/security/Signature;->verify([B)Z

    .line 46
    .line 47
    .line 48
    move-result p0
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_30} :catch_31

    .line 49
    return p0

    .line 50
    :catch_31
    const/4 p0, 0x0

    .line 51
    return p0
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;Lb0/f;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
.end method

.method public abstract b(Landroid/content/Context;[Lg0/j;I)Landroid/graphics/Typeface;
.end method

.method public c(Landroid/content/Context;Ljava/util/List;I)Landroid/graphics/Typeface;
    .registers 4

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string p2, "createFromFontInfoWithFallback must only be called on API 29+"

    .line 4
    .line 5
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public d(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;
    .registers 4

    .line 1
    invoke-static {p1}, Ly1/g;->q(Landroid/content/Context;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_8

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_8
    :try_start_8
    invoke-static {p1, p2}, Ly1/g;->i(Ljava/io/File;Ljava/io/InputStream;)Z

    .line 10
    .line 11
    .line 12
    move-result p2
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_c} :catch_23
    .catchall {:try_start_8 .. :try_end_c} :catchall_1e

    .line 13
    if-nez p2, :cond_12

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 16
    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_12
    :try_start_12
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-static {p2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 24
    .line 25
    .line 26
    move-result-object p2
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_1a} :catch_23
    .catchall {:try_start_12 .. :try_end_1a} :catchall_1e

    .line 27
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 28
    .line 29
    .line 30
    return-object p2

    .line 31
    :catchall_1e
    move-exception p2

    .line 32
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 33
    .line 34
    .line 35
    throw p2

    .line 36
    :catch_23
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 37
    .line 38
    .line 39
    return-object v0
.end method

.method public e(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .registers 6

    .line 1
    invoke-static {p1}, Ly1/g;->q(Landroid/content/Context;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 p4, 0x0

    .line 6
    if-nez p1, :cond_8

    .line 7
    .line 8
    return-object p4

    .line 9
    :cond_8
    :try_start_8
    invoke-static {p1, p2, p3}, Ly1/g;->h(Ljava/io/File;Landroid/content/res/Resources;I)Z

    .line 10
    .line 11
    .line 12
    move-result p2
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_c} :catch_23
    .catchall {:try_start_8 .. :try_end_c} :catchall_1e

    .line 13
    if-nez p2, :cond_12

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 16
    .line 17
    .line 18
    return-object p4

    .line 19
    :cond_12
    :try_start_12
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-static {p2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 24
    .line 25
    .line 26
    move-result-object p2
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_1a} :catch_23
    .catchall {:try_start_12 .. :try_end_1a} :catchall_1e

    .line 27
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 28
    .line 29
    .line 30
    return-object p2

    .line 31
    :catchall_1e
    move-exception p2

    .line 32
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 33
    .line 34
    .line 35
    throw p2

    .line 36
    :catch_23
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 37
    .line 38
    .line 39
    return-object p4
.end method

.method public f([Lg0/j;I)Lg0/j;
    .registers 13

    .line 1
    new-instance v0, Le5/e;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-direct {v0, v1}, Le5/e;-><init>(I)V

    .line 5
    .line 6
    .line 7
    and-int/lit8 v0, p2, 0x1

    .line 8
    .line 9
    if-nez v0, :cond_d

    .line 10
    .line 11
    const/16 v0, 0x190

    .line 12
    .line 13
    goto :goto_f

    .line 14
    :cond_d
    const/16 v0, 0x2bc

    .line 15
    .line 16
    :goto_f
    and-int/lit8 p2, p2, 0x2

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v2, 0x1

    .line 20
    if-eqz p2, :cond_17

    .line 21
    .line 22
    move p2, v2

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    move p2, v1

    .line 25
    :goto_18
    array-length v3, p1

    .line 26
    const/4 v4, 0x0

    .line 27
    const v5, 0x7fffffff

    .line 28
    .line 29
    .line 30
    move v6, v1

    .line 31
    :goto_1e
    if-ge v6, v3, :cond_3c

    .line 32
    .line 33
    aget-object v7, p1, v6

    .line 34
    .line 35
    iget v8, v7, Lg0/j;->c:I

    .line 36
    .line 37
    sub-int/2addr v8, v0

    .line 38
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    .line 39
    .line 40
    .line 41
    move-result v8

    .line 42
    mul-int/lit8 v8, v8, 0x2

    .line 43
    .line 44
    iget-boolean v9, v7, Lg0/j;->d:Z

    .line 45
    .line 46
    if-ne v9, p2, :cond_31

    .line 47
    .line 48
    move v9, v1

    .line 49
    goto :goto_32

    .line 50
    :cond_31
    move v9, v2

    .line 51
    :goto_32
    add-int/2addr v8, v9

    .line 52
    if-eqz v4, :cond_37

    .line 53
    .line 54
    if-le v5, v8, :cond_39

    .line 55
    .line 56
    :cond_37
    move-object v4, v7

    .line 57
    move v5, v8

    .line 58
    :cond_39
    add-int/lit8 v6, v6, 0x1

    .line 59
    .line 60
    goto :goto_1e

    .line 61
    :cond_3c
    return-object v4
.end method

.method public abstract k(Ljava/lang/Throwable;)V
.end method

.method public abstract l(Lcom/google/firebase/messaging/y;)V
.end method

.method public n()V
    .registers 1

    .line 1
    return-void
.end method

.method public abstract o()V
.end method
