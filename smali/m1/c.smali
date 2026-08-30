###### Class m1.c (m1.c)
.class public final Lm1/c;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final b:Ljava/util/HashSet;


# instance fields
.field public final a:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    const-string v8, "auth"

    .line 4
    .line 5
    const-string v9, "expires"

    .line 6
    .line 7
    const-string v1, "verify"

    .line 8
    .line 9
    const-string v2, "sign"

    .line 10
    .line 11
    const-string v3, "signature"

    .line 12
    .line 13
    const-string v4, "sig"

    .line 14
    .line 15
    const-string v5, "token"

    .line 16
    .line 17
    const-string v6, "__hv"

    .line 18
    .line 19
    const-string v7, "__sv"

    .line 20
    .line 21
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lm1/c;->b:Ljava/util/HashSet;

    .line 33
    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/lottery/app/GameActivity;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/io/File;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v1, "game_res"

    .line 11
    .line 12
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance p1, Ljava/io/File;

    .line 16
    .line 17
    invoke-direct {p1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lm1/c;->a:Ljava/io/File;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-nez p2, :cond_34

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-nez p2, :cond_34

    .line 33
    .line 34
    new-instance p2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v0, "mkdirs failed: "

    .line 37
    .line 38
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const-string p2, "CacheStore"

    .line 49
    .line 50
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    :cond_34
    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_2
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    invoke-virtual {v2}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    if-eqz v3, :cond_64

    .line 12
    .line 13
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_13

    .line 18
    .line 19
    goto :goto_64

    .line 20
    :cond_13
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v2}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    move v5, v1

    .line 37
    :cond_24
    :goto_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-eqz v6, :cond_5a

    .line 42
    .line 43
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    check-cast v6, Ljava/lang/String;

    .line 48
    .line 49
    if-eqz v6, :cond_42

    .line 50
    .line 51
    sget-object v7, Lm1/c;->b:Ljava/util/HashSet;

    .line 52
    .line 53
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 54
    .line 55
    invoke-virtual {v6, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    if-eqz v7, :cond_42

    .line 64
    .line 65
    move v5, v0

    .line 66
    goto :goto_24

    .line 67
    :cond_42
    invoke-virtual {v2, v6}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    :goto_4a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v8

    .line 79
    if-eqz v8, :cond_24

    .line 80
    .line 81
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    check-cast v8, Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v3, v6, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 88
    .line 89
    .line 90
    goto :goto_4a

    .line 91
    :cond_5a
    if-eqz v5, :cond_64

    .line 92
    .line 93
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0
    :try_end_64
    .catchall {:try_start_2 .. :try_end_64} :catchall_64

    .line 101
    :catchall_64
    :cond_64
    :goto_64
    :try_start_64
    const-string v2, "SHA-1"

    .line 102
    .line 103
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 108
    .line 109
    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const/16 v4, 0x28

    .line 120
    .line 121
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 122
    .line 123
    .line 124
    array-length v4, v2

    .line 125
    move v5, v1

    .line 126
    :goto_7d
    if-ge v5, v4, :cond_95

    .line 127
    .line 128
    aget-byte v6, v2, v5

    .line 129
    .line 130
    const-string v7, "%02x"

    .line 131
    .line 132
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    new-array v8, v0, [Ljava/lang/Object;

    .line 137
    .line 138
    aput-object v6, v8, v1

    .line 139
    .line 140
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    add-int/lit8 v5, v5, 0x1

    .line 148
    .line 149
    goto :goto_7d

    .line 150
    :cond_95
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p0
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_99} :catch_9a

    .line 154
    return-object p0

    .line 155
    :catch_9a
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 156
    .line 157
    .line 158
    move-result p0

    .line 159
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    .line 1
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_8

    .line 6
    .line 7
    goto/16 :goto_a8

    .line 8
    .line 9
    :cond_8
    invoke-static {p1}, Lm1/c;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Ljava/io/File;

    .line 14
    .line 15
    const-string v2, ".bin"

    .line 16
    .line 17
    invoke-static {v0, v2}, Lq2/x;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget-object v3, p0, Lm1/c;->a:Ljava/io/File;

    .line 22
    .line 23
    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance v2, Ljava/io/File;

    .line 27
    .line 28
    const-string v4, ".meta"

    .line 29
    .line 30
    invoke-static {v0, v4}, Lq2/x;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance v4, Ljava/io/File;

    .line 38
    .line 39
    const-string v5, ".meta.tmp"

    .line 40
    .line 41
    invoke-static {v0, v5}, Lq2/x;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-direct {v4, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_38

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 55
    .line 56
    .line 57
    :cond_38
    invoke-virtual {p2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    const-string v3, "CacheStore"

    .line 62
    .line 63
    if-nez v0, :cond_4d

    .line 64
    .line 65
    const-string p3, "rename .bin failed: "

    .line 66
    .line 67
    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_4d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 79
    .line 80
    .line 81
    move-result-wide v5

    .line 82
    :try_start_51
    new-instance p2, Ljava/io/FileOutputStream;

    .line 83
    .line 84
    invoke-direct {p2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_56} :catch_a9

    .line 85
    .line 86
    .line 87
    :try_start_56
    const-string v0, ""
    :try_end_58
    .catchall {:try_start_56 .. :try_end_58} :catchall_ab

    .line 88
    .line 89
    :try_start_58
    new-instance v7, Lorg/json/JSONObject;

    .line 90
    .line 91
    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v8, "url"

    .line 95
    .line 96
    invoke-virtual {v7, v8, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    .line 98
    .line 99
    const-string v8, "mime"

    .line 100
    .line 101
    if-nez p3, :cond_67

    .line 102
    .line 103
    move-object p3, v0

    .line 104
    :cond_67
    invoke-virtual {v7, v8, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    .line 106
    .line 107
    const-string p3, "enc"

    .line 108
    .line 109
    if-nez p4, :cond_6f

    .line 110
    .line 111
    move-object p4, v0

    .line 112
    :cond_6f
    invoke-virtual {v7, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    .line 114
    .line 115
    const-string p3, "savedAt"

    .line 116
    .line 117
    invoke-virtual {v7, p3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p3
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_7b} :catch_7c
    .catchall {:try_start_58 .. :try_end_7b} :catchall_ab

    .line 124
    goto :goto_7e

    .line 125
    :catch_7c
    :try_start_7c
    const-string p3, "{}"

    .line 126
    .line 127
    :goto_7e
    sget-object p4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 128
    .line 129
    invoke-virtual {p3, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 130
    .line 131
    .line 132
    move-result-object p3

    .line 133
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V
    :try_end_87
    .catchall {:try_start_7c .. :try_end_87} :catchall_ab

    .line 134
    .line 135
    .line 136
    :try_start_87
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_a9

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 140
    .line 141
    .line 142
    move-result p2

    .line 143
    if-eqz p2, :cond_93

    .line 144
    .line 145
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 146
    .line 147
    .line 148
    :cond_93
    invoke-virtual {v4, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 149
    .line 150
    .line 151
    move-result p2

    .line 152
    if-nez p2, :cond_a8

    .line 153
    .line 154
    const-string p2, "rename .meta failed: "

    .line 155
    .line 156
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 164
    .line 165
    .line 166
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 167
    .line 168
    .line 169
    :cond_a8
    :goto_a8
    return-void

    .line 170
    :catch_a9
    move-exception p2

    .line 171
    goto :goto_b5

    .line 172
    :catchall_ab
    move-exception p3

    .line 173
    :try_start_ac
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_af
    .catchall {:try_start_ac .. :try_end_af} :catchall_b0

    .line 174
    .line 175
    .line 176
    goto :goto_b4

    .line 177
    :catchall_b0
    move-exception p2

    .line 178
    :try_start_b1
    invoke-virtual {p3, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 179
    .line 180
    .line 181
    :goto_b4
    throw p3
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_b5} :catch_a9

    .line 182
    :goto_b5
    const-string p3, "meta write failed: "

    .line 183
    .line 184
    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-static {v3, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 192
    .line 193
    .line 194
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 195
    .line 196
    .line 197
    return-void
.end method
