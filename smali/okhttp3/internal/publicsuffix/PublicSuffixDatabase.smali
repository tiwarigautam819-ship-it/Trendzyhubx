###### Class okhttp3.internal.publicsuffix.PublicSuffixDatabase (okhttp3.internal.publicsuffix.PublicSuffixDatabase)
.class public final Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final e:[B

.field public static final f:Ljava/util/List;

.field public static final g:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final b:Ljava/util/concurrent/CountDownLatch;

.field public c:[B

.field public d:[B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    const/16 v1, 0x2a

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-byte v1, v0, v2

    .line 8
    .line 9
    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->e:[B

    .line 10
    .line 11
    const-string v0, "*"

    .line 12
    .line 13
    invoke-static {v0}, Lf4/f;->b(Ljava/lang/Object;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->f:Ljava/util/List;

    .line 18
    .line 19
    new-instance v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    .line 20
    .line 21
    invoke-direct {v0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;-><init>()V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->g:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->b:Ljava/util/concurrent/CountDownLatch;

    .line 19
    .line 20
    return-void
.end method

.method public static c(Ljava/lang/String;)Ljava/util/List;
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [C

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    const/16 v3, 0x2e

    .line 6
    .line 7
    aput-char v3, v1, v2

    .line 8
    .line 9
    invoke-static {p0, v1}, Lk7/g;->K(Ljava/lang/String;[C)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Ls6/g;->s(Ljava/util/List;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v3, ""

    .line 18
    .line 19
    invoke-static {v1, v3}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_94

    .line 24
    .line 25
    move-object v1, p0

    .line 26
    check-cast v1, Ljava/lang/Iterable;

    .line 27
    .line 28
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    sub-int/2addr p0, v0

    .line 33
    if-gez p0, :cond_23

    .line 34
    .line 35
    move p0, v2

    .line 36
    :cond_23
    if-ltz p0, :cond_82

    .line 37
    .line 38
    if-nez p0, :cond_2a

    .line 39
    .line 40
    sget-object p0, Ls6/o;->a:Ls6/o;

    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_2a
    instance-of v3, v1, Ljava/util/Collection;

    .line 44
    .line 45
    if-eqz v3, :cond_64

    .line 46
    .line 47
    move-object v3, v1

    .line 48
    check-cast v3, Ljava/util/Collection;

    .line 49
    .line 50
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-lt p0, v3, :cond_3c

    .line 55
    .line 56
    invoke-static {v1}, Ls6/g;->w(Ljava/lang/Iterable;)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0

    .line 61
    :cond_3c
    if-ne p0, v0, :cond_64

    .line 62
    .line 63
    instance-of p0, v1, Ljava/util/List;

    .line 64
    .line 65
    if-eqz p0, :cond_49

    .line 66
    .line 67
    check-cast v1, Ljava/util/List;

    .line 68
    .line 69
    invoke-static {v1}, Ls6/g;->q(Ljava/util/List;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    goto :goto_57

    .line 74
    :cond_49
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_5c

    .line 83
    .line 84
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    :goto_57
    invoke-static {p0}, Lf4/f;->b(Ljava/lang/Object;)Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    return-object p0

    .line 93
    :cond_5c
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 94
    .line 95
    const-string v0, "Collection is empty."

    .line 96
    .line 97
    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p0

    .line 101
    :cond_64
    new-instance v3, Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-direct {v3, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 104
    .line 105
    .line 106
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    :cond_6d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    if-eqz v4, :cond_7d

    .line 115
    .line 116
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    add-int/2addr v2, v0

    .line 124
    if-ne v2, p0, :cond_6d

    .line 125
    .line 126
    :cond_7d
    invoke-static {v3}, Ls6/h;->m(Ljava/util/List;)Ljava/util/List;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    return-object p0

    .line 131
    :cond_82
    const-string v0, "Requested element count "

    .line 132
    .line 133
    const-string v1, " is less than zero."

    .line 134
    .line 135
    invoke-static {p0, v0, v1}, La1/a;->j(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 140
    .line 141
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw v0

    .line 149
    :cond_94
    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 15

    .line 1
    invoke-static {p1}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "unicodeDomain"

    .line 6
    .line 7
    invoke-static {v1, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->c(Ljava/lang/String;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget-object v1, Ls6/o;->a:Ls6/o;

    .line 15
    .line 16
    iget-object v2, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x1

    .line 24
    if-nez v2, :cond_51

    .line 25
    .line 26
    iget-object v2, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_51

    .line 33
    .line 34
    move v2, v3

    .line 35
    :goto_22
    :try_start_22
    invoke-virtual {p0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->b()V
    :try_end_25
    .catch Ljava/io/InterruptedIOException; {:try_start_22 .. :try_end_25} :catch_42
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_31
    .catchall {:try_start_22 .. :try_end_25} :catchall_2f

    .line 36
    .line 37
    .line 38
    if-eqz v2, :cond_5e

    .line 39
    .line 40
    :goto_27
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 45
    .line 46
    .line 47
    goto :goto_5e

    .line 48
    :catchall_2f
    move-exception p1

    .line 49
    goto :goto_47

    .line 50
    :catch_31
    move-exception v5

    .line 51
    :try_start_32
    sget-object v6, Lz7/n;->a:Lz7/n;

    .line 52
    .line 53
    sget-object v6, Lz7/n;->a:Lz7/n;

    .line 54
    .line 55
    const-string v7, "Failed to read public suffix list"

    .line 56
    .line 57
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    const/4 v6, 0x5

    .line 61
    invoke-static {v7, v6, v5}, Lz7/n;->i(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    if-eqz v2, :cond_5e

    .line 65
    .line 66
    goto :goto_27

    .line 67
    :catch_42
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_45
    .catchall {:try_start_32 .. :try_end_45} :catchall_2f

    .line 68
    .line 69
    .line 70
    move v2, v4

    .line 71
    goto :goto_22

    .line 72
    :goto_47
    if-eqz v2, :cond_50

    .line 73
    .line 74
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 79
    .line 80
    .line 81
    :cond_50
    throw p1

    .line 82
    :cond_51
    :try_start_51
    iget-object v2, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->b:Ljava/util/concurrent/CountDownLatch;

    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_56
    .catch Ljava/lang/InterruptedException; {:try_start_51 .. :try_end_56} :catch_57

    .line 85
    .line 86
    .line 87
    goto :goto_5e

    .line 88
    :catch_57
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 93
    .line 94
    .line 95
    :cond_5e
    :goto_5e
    iget-object v2, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->c:[B

    .line 96
    .line 97
    if-eqz v2, :cond_182

    .line 98
    .line 99
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    new-array v5, v2, [[B

    .line 104
    .line 105
    move v6, v3

    .line 106
    :goto_69
    if-ge v6, v2, :cond_86

    .line 107
    .line 108
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    check-cast v7, Ljava/lang/String;

    .line 113
    .line 114
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 115
    .line 116
    const-string v9, "UTF_8"

    .line 117
    .line 118
    invoke-static {v9, v8}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    const-string v8, "this as java.lang.String).getBytes(charset)"

    .line 126
    .line 127
    invoke-static {v8, v7}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    aput-object v7, v5, v6

    .line 131
    .line 132
    add-int/lit8 v6, v6, 0x1

    .line 133
    .line 134
    goto :goto_69

    .line 135
    :cond_86
    move v6, v3

    .line 136
    :goto_87
    const-string v7, "publicSuffixListBytes"

    .line 137
    .line 138
    const/4 v8, 0x0

    .line 139
    if-ge v6, v2, :cond_9e

    .line 140
    .line 141
    iget-object v9, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->c:[B

    .line 142
    .line 143
    if-eqz v9, :cond_9a

    .line 144
    .line 145
    invoke-static {v9, v5, v6}, Le5/e;->d([B[[BI)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v9

    .line 149
    if-eqz v9, :cond_97

    .line 150
    .line 151
    goto :goto_9f

    .line 152
    :cond_97
    add-int/lit8 v6, v6, 0x1

    .line 153
    .line 154
    goto :goto_87

    .line 155
    :cond_9a
    invoke-static {v7}, Ld7/g;->i(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw v8

    .line 159
    :cond_9e
    move-object v9, v8

    .line 160
    :goto_9f
    if-le v2, v4, :cond_c2

    .line 161
    .line 162
    invoke-virtual {v5}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    check-cast v6, [[B

    .line 167
    .line 168
    array-length v10, v6

    .line 169
    sub-int/2addr v10, v4

    .line 170
    move v11, v3

    .line 171
    :goto_aa
    if-ge v11, v10, :cond_c2

    .line 172
    .line 173
    sget-object v12, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->e:[B

    .line 174
    .line 175
    aput-object v12, v6, v11

    .line 176
    .line 177
    iget-object v12, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->c:[B

    .line 178
    .line 179
    if-eqz v12, :cond_be

    .line 180
    .line 181
    invoke-static {v12, v6, v11}, Le5/e;->d([B[[BI)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v12

    .line 185
    if-eqz v12, :cond_bb

    .line 186
    .line 187
    goto :goto_c3

    .line 188
    :cond_bb
    add-int/lit8 v11, v11, 0x1

    .line 189
    .line 190
    goto :goto_aa

    .line 191
    :cond_be
    invoke-static {v7}, Ld7/g;->i(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    throw v8

    .line 195
    :cond_c2
    move-object v12, v8

    .line 196
    :goto_c3
    if-eqz v12, :cond_dd

    .line 197
    .line 198
    sub-int/2addr v2, v4

    .line 199
    move v6, v3

    .line 200
    :goto_c7
    if-ge v6, v2, :cond_dd

    .line 201
    .line 202
    iget-object v7, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->d:[B

    .line 203
    .line 204
    if-eqz v7, :cond_d7

    .line 205
    .line 206
    invoke-static {v7, v5, v6}, Le5/e;->d([B[[BI)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v7

    .line 210
    if-eqz v7, :cond_d4

    .line 211
    .line 212
    goto :goto_de

    .line 213
    :cond_d4
    add-int/lit8 v6, v6, 0x1

    .line 214
    .line 215
    goto :goto_c7

    .line 216
    :cond_d7
    const-string p1, "publicSuffixExceptionListBytes"

    .line 217
    .line 218
    invoke-static {p1}, Ld7/g;->i(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    throw v8

    .line 222
    :cond_dd
    move-object v7, v8

    .line 223
    :goto_de
    const/16 v2, 0x2e

    .line 224
    .line 225
    if-eqz v7, :cond_f1

    .line 226
    .line 227
    const-string v1, "!"

    .line 228
    .line 229
    invoke-virtual {v1, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    new-array v5, v4, [C

    .line 234
    .line 235
    aput-char v2, v5, v3

    .line 236
    .line 237
    invoke-static {v1, v5}, Lk7/g;->K(Ljava/lang/String;[C)Ljava/util/List;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    goto :goto_119

    .line 242
    :cond_f1
    if-nez v9, :cond_f8

    .line 243
    .line 244
    if-nez v12, :cond_f8

    .line 245
    .line 246
    sget-object v1, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->f:Ljava/util/List;

    .line 247
    .line 248
    goto :goto_119

    .line 249
    :cond_f8
    if-eqz v9, :cond_103

    .line 250
    .line 251
    new-array v5, v4, [C

    .line 252
    .line 253
    aput-char v2, v5, v3

    .line 254
    .line 255
    invoke-static {v9, v5}, Lk7/g;->K(Ljava/lang/String;[C)Ljava/util/List;

    .line 256
    .line 257
    .line 258
    move-result-object v5

    .line 259
    goto :goto_104

    .line 260
    :cond_103
    move-object v5, v1

    .line 261
    :goto_104
    if-eqz v12, :cond_10e

    .line 262
    .line 263
    new-array v1, v4, [C

    .line 264
    .line 265
    aput-char v2, v1, v3

    .line 266
    .line 267
    invoke-static {v12, v1}, Lk7/g;->K(Ljava/lang/String;[C)Ljava/util/List;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    :cond_10e
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 272
    .line 273
    .line 274
    move-result v2

    .line 275
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 276
    .line 277
    .line 278
    move-result v6

    .line 279
    if-le v2, v6, :cond_119

    .line 280
    .line 281
    move-object v1, v5

    .line 282
    :cond_119
    :goto_119
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 283
    .line 284
    .line 285
    move-result v2

    .line 286
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 287
    .line 288
    .line 289
    move-result v5

    .line 290
    const/16 v6, 0x21

    .line 291
    .line 292
    if-ne v2, v5, :cond_132

    .line 293
    .line 294
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    check-cast v2, Ljava/lang/String;

    .line 299
    .line 300
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    .line 301
    .line 302
    .line 303
    move-result v2

    .line 304
    if-eq v2, v6, :cond_132

    .line 305
    .line 306
    return-object v8

    .line 307
    :cond_132
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    check-cast v2, Ljava/lang/String;

    .line 312
    .line 313
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    .line 314
    .line 315
    .line 316
    move-result v2

    .line 317
    if-ne v2, v6, :cond_148

    .line 318
    .line 319
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 320
    .line 321
    .line 322
    move-result v0

    .line 323
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 324
    .line 325
    .line 326
    move-result v1

    .line 327
    :goto_146
    sub-int/2addr v0, v1

    .line 328
    goto :goto_152

    .line 329
    :cond_148
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 330
    .line 331
    .line 332
    move-result v0

    .line 333
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 334
    .line 335
    .line 336
    move-result v1

    .line 337
    add-int/2addr v1, v4

    .line 338
    goto :goto_146

    .line 339
    :goto_152
    invoke-static {p1}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->c(Ljava/lang/String;)Ljava/util/List;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    check-cast p1, Ljava/lang/Iterable;

    .line 344
    .line 345
    new-instance v1, Lj7/d;

    .line 346
    .line 347
    const/4 v2, 0x3

    .line 348
    invoke-direct {v1, v2, p1}, Lj7/d;-><init>(ILjava/lang/Object;)V

    .line 349
    .line 350
    .line 351
    if-ltz v0, :cond_170

    .line 352
    .line 353
    if-nez v0, :cond_163

    .line 354
    .line 355
    goto :goto_169

    .line 356
    :cond_163
    new-instance p1, Lj7/b;

    .line 357
    .line 358
    invoke-direct {p1, v1, v0}, Lj7/b;-><init>(Lj7/e;I)V

    .line 359
    .line 360
    .line 361
    move-object v1, p1

    .line 362
    :goto_169
    const-string p1, "."

    .line 363
    .line 364
    invoke-static {v1, p1}, Lj7/f;->z(Lj7/e;Ljava/lang/String;)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object p1

    .line 368
    return-object p1

    .line 369
    :cond_170
    const-string p1, "Requested element count "

    .line 370
    .line 371
    const-string v1, " is less than zero."

    .line 372
    .line 373
    invoke-static {v0, p1, v1}, La1/a;->j(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object p1

    .line 377
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 378
    .line 379
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object p1

    .line 383
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    throw v0

    .line 387
    :cond_182
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 388
    .line 389
    const-string v0, "Unable to load publicsuffixes.gz resource from the classpath."

    .line 390
    .line 391
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    throw p1
.end method

.method public final b()V
    .registers 6

    .line 1
    :try_start_0
    const-class v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    .line 2
    .line 3
    const-string v1, "publicsuffixes.gz"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 6
    .line 7
    .line 8
    move-result-object v0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_4d

    .line 9
    if-nez v0, :cond_10

    .line 10
    .line 11
    :goto_a
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->b:Ljava/util/concurrent/CountDownLatch;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_10
    :try_start_10
    new-instance v1, Le8/l;

    .line 18
    .line 19
    sget-object v2, Le8/n;->a:Ljava/util/logging/Logger;

    .line 20
    .line 21
    new-instance v2, Le8/d;

    .line 22
    .line 23
    new-instance v3, Le8/y;

    .line 24
    .line 25
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    const/4 v4, 0x1

    .line 29
    invoke-direct {v2, v0, v4, v3}, Le8/d;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v2}, Le8/l;-><init>(Le8/w;)V

    .line 33
    .line 34
    .line 35
    new-instance v0, Le8/q;

    .line 36
    .line 37
    invoke-direct {v0, v1}, Le8/q;-><init>(Le8/w;)V
    :try_end_27
    .catchall {:try_start_10 .. :try_end_27} :catchall_4d

    .line 38
    .line 39
    .line 40
    :try_start_27
    invoke-virtual {v0}, Le8/q;->readInt()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    int-to-long v1, v1

    .line 45
    invoke-virtual {v0, v1, v2}, Le8/q;->l(J)V

    .line 46
    .line 47
    .line 48
    iget-object v3, v0, Le8/q;->b:Le8/g;

    .line 49
    .line 50
    invoke-virtual {v3, v1, v2}, Le8/g;->s(J)[B

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0}, Le8/q;->readInt()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    int-to-long v2, v2

    .line 59
    invoke-virtual {v0, v2, v3}, Le8/q;->l(J)V

    .line 60
    .line 61
    .line 62
    iget-object v4, v0, Le8/q;->b:Le8/g;

    .line 63
    .line 64
    invoke-virtual {v4, v2, v3}, Le8/g;->s(J)[B

    .line 65
    .line 66
    .line 67
    move-result-object v2
    :try_end_43
    .catchall {:try_start_27 .. :try_end_43} :catchall_52

    .line 68
    :try_start_43
    invoke-virtual {v0}, Le8/q;->close()V

    .line 69
    .line 70
    .line 71
    monitor-enter p0
    :try_end_47
    .catchall {:try_start_43 .. :try_end_47} :catchall_4d

    .line 72
    :try_start_47
    iput-object v1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->c:[B

    .line 73
    .line 74
    iput-object v2, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->d:[B
    :try_end_4b
    .catchall {:try_start_47 .. :try_end_4b} :catchall_4f

    .line 75
    .line 76
    :try_start_4b
    monitor-exit p0

    .line 77
    goto :goto_a

    .line 78
    :catchall_4d
    move-exception v0

    .line 79
    goto :goto_59

    .line 80
    :catchall_4f
    move-exception v0

    .line 81
    monitor-exit p0

    .line 82
    throw v0
    :try_end_52
    .catchall {:try_start_4b .. :try_end_52} :catchall_4d

    .line 83
    :catchall_52
    move-exception v1

    .line 84
    :try_start_53
    throw v1
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_54

    .line 85
    :catchall_54
    move-exception v2

    .line 86
    :try_start_55
    invoke-static {v0, v1}, Lb2/k;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 87
    .line 88
    .line 89
    throw v2
    :try_end_59
    .catchall {:try_start_55 .. :try_end_59} :catchall_4d

    .line 90
    :goto_59
    iget-object v1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->b:Ljava/util/concurrent/CountDownLatch;

    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 93
    .line 94
    .line 95
    throw v0
.end method
