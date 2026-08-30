###### Class v7.l (v7.l)
.class public final Lv7/l;
.super Ly7/h;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final b:Lr7/x;

.field public c:Ljava/net/Socket;

.field public d:Ljava/net/Socket;

.field public e:Lr7/i;

.field public f:Lr7/s;

.field public g:Ly7/o;

.field public h:Le8/q;

.field public i:Le8/p;

.field public j:Z

.field public k:Z

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public final p:Ljava/util/ArrayList;

.field public q:J


# direct methods
.method public constructor <init>(Lv7/m;Lr7/x;)V
    .registers 4

    .line 1
    const-string v0, "connectionPool"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "route"

    .line 7
    .line 8
    invoke-static {p1, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lv7/l;->b:Lr7/x;

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    iput p1, p0, Lv7/l;->o:I

    .line 18
    .line 19
    new-instance p1, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lv7/l;->p:Ljava/util/ArrayList;

    .line 25
    .line 26
    const-wide p1, 0x7fffffffffffffffL

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    iput-wide p1, p0, Lv7/l;->q:J

    .line 32
    .line 33
    return-void
.end method

.method public static d(Lr7/r;Lr7/x;Ljava/io/IOException;)V
    .registers 6

    .line 1
    const-string v0, "failedRoute"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "failure"

    .line 7
    .line 8
    invoke-static {v0, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p1, Lr7/x;->b:Ljava/net/Proxy;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    .line 18
    .line 19
    if-eq v0, v1, :cond_27

    .line 20
    .line 21
    iget-object v0, p1, Lr7/x;->a:Lr7/a;

    .line 22
    .line 23
    iget-object v1, v0, Lr7/a;->g:Ljava/net/ProxySelector;

    .line 24
    .line 25
    iget-object v0, v0, Lr7/a;->h:Lr7/m;

    .line 26
    .line 27
    invoke-virtual {v0}, Lr7/m;->g()Ljava/net/URI;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v2, p1, Lr7/x;->b:Ljava/net/Proxy;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v1, v0, v2, p2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    .line 38
    .line 39
    .line 40
    :cond_27
    iget-object p0, p0, Lr7/r;->G:Lo5/c;

    .line 41
    .line 42
    monitor-enter p0

    .line 43
    :try_start_2a
    iget-object p2, p0, Lo5/c;->b:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p2, Ljava/util/LinkedHashSet;

    .line 46
    .line 47
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_33

    .line 48
    .line 49
    .line 50
    monitor-exit p0

    .line 51
    return-void

    .line 52
    :catchall_33
    move-exception p1

    .line 53
    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    .line 54
    throw p1
.end method


# virtual methods
.method public final declared-synchronized a(Ly7/o;Ly7/a0;)V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    const-string p1, "settings"

    .line 3
    .line 4
    invoke-static {p1, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget p1, p2, Ly7/a0;->a:I

    .line 8
    .line 9
    and-int/lit8 p1, p1, 0x10

    .line 10
    .line 11
    if-eqz p1, :cond_12

    .line 12
    .line 13
    iget-object p1, p2, Ly7/a0;->b:[I

    .line 14
    .line 15
    const/4 p2, 0x4

    .line 16
    aget p1, p1, p2

    .line 17
    .line 18
    goto :goto_15

    .line 19
    :cond_12
    const p1, 0x7fffffff

    .line 20
    .line 21
    .line 22
    :goto_15
    iput p1, p0, Lv7/l;->o:I
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 23
    .line 24
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :catchall_19
    move-exception p1

    .line 27
    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    .line 28
    throw p1
.end method

.method public final b(Ly7/w;)V
    .registers 4

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Ly7/w;->c(ILjava/io/IOException;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final c(IIIZLv7/i;)V
    .registers 13

    .line 1
    const-string v0, "inetSocketAddress"

    .line 2
    .line 3
    iget-object v1, p0, Lv7/l;->f:Lr7/s;

    .line 4
    .line 5
    if-nez v1, :cond_122

    .line 6
    .line 7
    iget-object v1, p0, Lv7/l;->b:Lr7/x;

    .line 8
    .line 9
    iget-object v1, v1, Lr7/x;->a:Lr7/a;

    .line 10
    .line 11
    iget-object v1, v1, Lr7/a;->j:Ljava/util/List;

    .line 12
    .line 13
    new-instance v2, Lv7/b;

    .line 14
    .line 15
    invoke-direct {v2, v1}, Lv7/b;-><init>(Ljava/util/List;)V

    .line 16
    .line 17
    .line 18
    iget-object v3, p0, Lv7/l;->b:Lr7/x;

    .line 19
    .line 20
    iget-object v3, v3, Lr7/x;->a:Lr7/a;

    .line 21
    .line 22
    iget-object v4, v3, Lr7/a;->c:Ljavax/net/ssl/SSLSocketFactory;

    .line 23
    .line 24
    if-nez v4, :cond_54

    .line 25
    .line 26
    sget-object v3, Lr7/g;->f:Lr7/g;

    .line 27
    .line 28
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_47

    .line 33
    .line 34
    iget-object v1, p0, Lv7/l;->b:Lr7/x;

    .line 35
    .line 36
    iget-object v1, v1, Lr7/x;->a:Lr7/a;

    .line 37
    .line 38
    iget-object v1, v1, Lr7/a;->h:Lr7/m;

    .line 39
    .line 40
    iget-object v1, v1, Lr7/m;->d:Ljava/lang/String;

    .line 41
    .line 42
    sget-object v3, Lz7/n;->a:Lz7/n;

    .line 43
    .line 44
    sget-object v3, Lz7/n;->a:Lz7/n;

    .line 45
    .line 46
    invoke-virtual {v3, v1}, Lz7/n;->h(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_34

    .line 51
    .line 52
    goto :goto_5e

    .line 53
    :cond_34
    new-instance p1, Lv7/n;

    .line 54
    .line 55
    new-instance p2, Ljava/net/UnknownServiceException;

    .line 56
    .line 57
    const-string p3, "CLEARTEXT communication to "

    .line 58
    .line 59
    const-string p4, " not permitted by network security policy"

    .line 60
    .line 61
    invoke-static {p3, v1, p4}, Lq2/x;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    invoke-direct {p2, p3}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-direct {p1, p2}, Lv7/n;-><init>(Ljava/io/IOException;)V

    .line 69
    .line 70
    .line 71
    throw p1

    .line 72
    :cond_47
    new-instance p1, Lv7/n;

    .line 73
    .line 74
    new-instance p2, Ljava/net/UnknownServiceException;

    .line 75
    .line 76
    const-string p3, "CLEARTEXT communication not enabled for client"

    .line 77
    .line 78
    invoke-direct {p2, p3}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-direct {p1, p2}, Lv7/n;-><init>(Ljava/io/IOException;)V

    .line 82
    .line 83
    .line 84
    throw p1

    .line 85
    :cond_54
    iget-object v1, v3, Lr7/a;->i:Ljava/util/List;

    .line 86
    .line 87
    sget-object v3, Lr7/s;->f:Lr7/s;

    .line 88
    .line 89
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-nez v1, :cond_115

    .line 94
    .line 95
    :goto_5e
    const/4 v1, 0x0

    .line 96
    move-object v3, v1

    .line 97
    :goto_60
    const/4 v4, 0x1

    .line 98
    :try_start_61
    iget-object v5, p0, Lv7/l;->b:Lr7/x;

    .line 99
    .line 100
    iget-object v6, v5, Lr7/x;->a:Lr7/a;

    .line 101
    .line 102
    iget-object v6, v6, Lr7/a;->c:Ljavax/net/ssl/SSLSocketFactory;

    .line 103
    .line 104
    if-eqz v6, :cond_75

    .line 105
    .line 106
    iget-object v5, v5, Lr7/x;->b:Ljava/net/Proxy;

    .line 107
    .line 108
    invoke-virtual {v5}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    sget-object v6, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 113
    .line 114
    if-ne v5, v6, :cond_75

    .line 115
    .line 116
    move v5, v4

    .line 117
    goto :goto_76

    .line 118
    :cond_75
    const/4 v5, 0x0

    .line 119
    :goto_76
    if-eqz v5, :cond_82

    .line 120
    .line 121
    invoke-virtual {p0, p1, p2, p3, p5}, Lv7/l;->f(IIILv7/i;)V

    .line 122
    .line 123
    .line 124
    iget-object v5, p0, Lv7/l;->c:Ljava/net/Socket;

    .line 125
    .line 126
    if-nez v5, :cond_85

    .line 127
    .line 128
    goto :goto_8f

    .line 129
    :catch_80
    move-exception v5

    .line 130
    goto :goto_ba

    .line 131
    :cond_82
    invoke-virtual {p0, p1, p2, p5}, Lv7/l;->e(IILv7/i;)V

    .line 132
    .line 133
    .line 134
    :cond_85
    invoke-virtual {p0, v2, p5}, Lv7/l;->g(Lv7/b;Lv7/i;)V

    .line 135
    .line 136
    .line 137
    iget-object v5, p0, Lv7/l;->b:Lr7/x;

    .line 138
    .line 139
    iget-object v5, v5, Lr7/x;->c:Ljava/net/InetSocketAddress;

    .line 140
    .line 141
    invoke-static {v0, v5}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_8f} :catch_80

    .line 142
    .line 143
    .line 144
    :goto_8f
    iget-object p1, p0, Lv7/l;->b:Lr7/x;

    .line 145
    .line 146
    iget-object p2, p1, Lr7/x;->a:Lr7/a;

    .line 147
    .line 148
    iget-object p2, p2, Lr7/a;->c:Ljavax/net/ssl/SSLSocketFactory;

    .line 149
    .line 150
    if-eqz p2, :cond_b3

    .line 151
    .line 152
    iget-object p1, p1, Lr7/x;->b:Ljava/net/Proxy;

    .line 153
    .line 154
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    sget-object p2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 159
    .line 160
    if-ne p1, p2, :cond_b3

    .line 161
    .line 162
    iget-object p1, p0, Lv7/l;->c:Ljava/net/Socket;

    .line 163
    .line 164
    if-eqz p1, :cond_a6

    .line 165
    .line 166
    goto :goto_b3

    .line 167
    :cond_a6
    new-instance p1, Lv7/n;

    .line 168
    .line 169
    new-instance p2, Ljava/net/ProtocolException;

    .line 170
    .line 171
    const-string p3, "Too many tunnel connections attempted: 21"

    .line 172
    .line 173
    invoke-direct {p2, p3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-direct {p1, p2}, Lv7/n;-><init>(Ljava/io/IOException;)V

    .line 177
    .line 178
    .line 179
    throw p1

    .line 180
    :cond_b3
    :goto_b3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 181
    .line 182
    .line 183
    move-result-wide p1

    .line 184
    iput-wide p1, p0, Lv7/l;->q:J

    .line 185
    .line 186
    return-void

    .line 187
    :goto_ba
    iget-object v6, p0, Lv7/l;->d:Ljava/net/Socket;

    .line 188
    .line 189
    if-eqz v6, :cond_c1

    .line 190
    .line 191
    invoke-static {v6}, Ls7/b;->e(Ljava/net/Socket;)V

    .line 192
    .line 193
    .line 194
    :cond_c1
    iget-object v6, p0, Lv7/l;->c:Ljava/net/Socket;

    .line 195
    .line 196
    if-eqz v6, :cond_c8

    .line 197
    .line 198
    invoke-static {v6}, Ls7/b;->e(Ljava/net/Socket;)V

    .line 199
    .line 200
    .line 201
    :cond_c8
    iput-object v1, p0, Lv7/l;->d:Ljava/net/Socket;

    .line 202
    .line 203
    iput-object v1, p0, Lv7/l;->c:Ljava/net/Socket;

    .line 204
    .line 205
    iput-object v1, p0, Lv7/l;->h:Le8/q;

    .line 206
    .line 207
    iput-object v1, p0, Lv7/l;->i:Le8/p;

    .line 208
    .line 209
    iput-object v1, p0, Lv7/l;->e:Lr7/i;

    .line 210
    .line 211
    iput-object v1, p0, Lv7/l;->f:Lr7/s;

    .line 212
    .line 213
    iput-object v1, p0, Lv7/l;->g:Ly7/o;

    .line 214
    .line 215
    iput v4, p0, Lv7/l;->o:I

    .line 216
    .line 217
    iget-object v6, p0, Lv7/l;->b:Lr7/x;

    .line 218
    .line 219
    iget-object v6, v6, Lr7/x;->c:Ljava/net/InetSocketAddress;

    .line 220
    .line 221
    invoke-static {v0, v6}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    if-nez v3, :cond_e7

    .line 225
    .line 226
    new-instance v3, Lv7/n;

    .line 227
    .line 228
    invoke-direct {v3, v5}, Lv7/n;-><init>(Ljava/io/IOException;)V

    .line 229
    .line 230
    .line 231
    goto :goto_ee

    .line 232
    :cond_e7
    iget-object v6, v3, Lv7/n;->a:Ljava/io/IOException;

    .line 233
    .line 234
    invoke-static {v6, v5}, Li2/t;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 235
    .line 236
    .line 237
    iput-object v5, v3, Lv7/n;->b:Ljava/io/IOException;

    .line 238
    .line 239
    :goto_ee
    if-eqz p4, :cond_114

    .line 240
    .line 241
    iput-boolean v4, v2, Lv7/b;->d:Z

    .line 242
    .line 243
    iget-boolean v4, v2, Lv7/b;->c:Z

    .line 244
    .line 245
    if-eqz v4, :cond_114

    .line 246
    .line 247
    instance-of v4, v5, Ljava/net/ProtocolException;

    .line 248
    .line 249
    if-nez v4, :cond_114

    .line 250
    .line 251
    instance-of v4, v5, Ljava/io/InterruptedIOException;

    .line 252
    .line 253
    if-nez v4, :cond_114

    .line 254
    .line 255
    instance-of v4, v5, Ljavax/net/ssl/SSLHandshakeException;

    .line 256
    .line 257
    if-eqz v4, :cond_10a

    .line 258
    .line 259
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 260
    .line 261
    .line 262
    move-result-object v4

    .line 263
    instance-of v4, v4, Ljava/security/cert/CertificateException;

    .line 264
    .line 265
    if-nez v4, :cond_114

    .line 266
    .line 267
    :cond_10a
    instance-of v4, v5, Ljavax/net/ssl/SSLPeerUnverifiedException;

    .line 268
    .line 269
    if-nez v4, :cond_114

    .line 270
    .line 271
    instance-of v4, v5, Ljavax/net/ssl/SSLException;

    .line 272
    .line 273
    if-eqz v4, :cond_114

    .line 274
    .line 275
    goto/16 :goto_60

    .line 276
    .line 277
    :cond_114
    throw v3

    .line 278
    :cond_115
    new-instance p1, Lv7/n;

    .line 279
    .line 280
    new-instance p2, Ljava/net/UnknownServiceException;

    .line 281
    .line 282
    const-string p3, "H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"

    .line 283
    .line 284
    invoke-direct {p2, p3}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    invoke-direct {p1, p2}, Lv7/n;-><init>(Ljava/io/IOException;)V

    .line 288
    .line 289
    .line 290
    throw p1

    .line 291
    :cond_122
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 292
    .line 293
    const-string p2, "already connected"

    .line 294
    .line 295
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    throw p1
.end method

.method public final e(IILv7/i;)V
    .registers 7

    .line 1
    iget-object p3, p0, Lv7/l;->b:Lr7/x;

    .line 2
    .line 3
    iget-object v0, p3, Lr7/x;->b:Ljava/net/Proxy;

    .line 4
    .line 5
    iget-object p3, p3, Lr7/x;->a:Lr7/a;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-nez v1, :cond_e

    .line 12
    .line 13
    const/4 v1, -0x1

    .line 14
    goto :goto_16

    .line 15
    :cond_e
    sget-object v2, Lv7/j;->a:[I

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    aget v1, v2, v1

    .line 22
    .line 23
    :goto_16
    const/4 v2, 0x1

    .line 24
    if-eq v1, v2, :cond_22

    .line 25
    .line 26
    const/4 v2, 0x2

    .line 27
    if-eq v1, v2, :cond_22

    .line 28
    .line 29
    new-instance p3, Ljava/net/Socket;

    .line 30
    .line 31
    invoke-direct {p3, v0}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    .line 32
    .line 33
    .line 34
    goto :goto_2b

    .line 35
    :cond_22
    iget-object p3, p3, Lr7/a;->b:Ljavax/net/SocketFactory;

    .line 36
    .line 37
    invoke-virtual {p3}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    invoke-static {p3}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    :goto_2b
    iput-object p3, p0, Lv7/l;->c:Ljava/net/Socket;

    .line 45
    .line 46
    iget-object v0, p0, Lv7/l;->b:Lr7/x;

    .line 47
    .line 48
    iget-object v0, v0, Lr7/x;->c:Ljava/net/InetSocketAddress;

    .line 49
    .line 50
    const-string v1, "inetSocketAddress"

    .line 51
    .line 52
    invoke-static {v1, v0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p3, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 56
    .line 57
    .line 58
    :try_start_39
    sget-object p2, Lz7/n;->a:Lz7/n;

    .line 59
    .line 60
    sget-object p2, Lz7/n;->a:Lz7/n;

    .line 61
    .line 62
    iget-object v0, p0, Lv7/l;->b:Lr7/x;

    .line 63
    .line 64
    iget-object v0, v0, Lr7/x;->c:Ljava/net/InetSocketAddress;

    .line 65
    .line 66
    invoke-virtual {p2, p3, v0, p1}, Lz7/n;->e(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_44
    .catch Ljava/net/ConnectException; {:try_start_39 .. :try_end_44} :catch_6f

    .line 67
    .line 68
    .line 69
    :try_start_44
    invoke-static {p3}, Ll2/e;->v(Ljava/net/Socket;)Le8/d;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    new-instance p2, Le8/q;

    .line 74
    .line 75
    invoke-direct {p2, p1}, Le8/q;-><init>(Le8/w;)V

    .line 76
    .line 77
    .line 78
    iput-object p2, p0, Lv7/l;->h:Le8/q;

    .line 79
    .line 80
    invoke-static {p3}, Ll2/e;->t(Ljava/net/Socket;)Le8/c;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    new-instance p2, Le8/p;

    .line 85
    .line 86
    invoke-direct {p2, p1}, Le8/p;-><init>(Le8/u;)V

    .line 87
    .line 88
    .line 89
    iput-object p2, p0, Lv7/l;->i:Le8/p;
    :try_end_5a
    .catch Ljava/lang/NullPointerException; {:try_start_44 .. :try_end_5a} :catch_5b

    .line 90
    .line 91
    return-void

    .line 92
    :catch_5b
    move-exception p1

    .line 93
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    const-string p3, "throw with null exception"

    .line 98
    .line 99
    invoke-static {p2, p3}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    if-nez p2, :cond_69

    .line 104
    .line 105
    return-void

    .line 106
    :cond_69
    new-instance p2, Ljava/io/IOException;

    .line 107
    .line 108
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 109
    .line 110
    .line 111
    throw p2

    .line 112
    :catch_6f
    move-exception p1

    .line 113
    new-instance p2, Ljava/net/ConnectException;

    .line 114
    .line 115
    new-instance p3, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string v0, "Failed to connect to "

    .line 118
    .line 119
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lv7/l;->b:Lr7/x;

    .line 123
    .line 124
    iget-object v0, v0, Lr7/x;->c:Ljava/net/InetSocketAddress;

    .line 125
    .line 126
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p3

    .line 133
    invoke-direct {p2, p3}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 137
    .line 138
    .line 139
    throw p2
.end method

.method public final f(IIILv7/i;)V
    .registers 14

    .line 1
    new-instance v0, Lcom/google/firebase/messaging/z;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/firebase/messaging/z;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lv7/l;->b:Lr7/x;

    .line 7
    .line 8
    iget-object v2, v1, Lr7/x;->a:Lr7/a;

    .line 9
    .line 10
    iget-object v2, v2, Lr7/a;->h:Lr7/m;

    .line 11
    .line 12
    const-string v3, "url"

    .line 13
    .line 14
    invoke-static {v3, v2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iput-object v2, v0, Lcom/google/firebase/messaging/z;->a:Ljava/lang/Object;

    .line 18
    .line 19
    const-string v2, "CONNECT"

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-virtual {v0, v2, v3}, Lcom/google/firebase/messaging/z;->d(Ljava/lang/String;Lb0/d;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, v1, Lr7/x;->a:Lr7/a;

    .line 26
    .line 27
    iget-object v2, v1, Lr7/a;->h:Lr7/m;

    .line 28
    .line 29
    const/4 v4, 0x1

    .line 30
    invoke-static {v2, v4}, Ls7/b;->v(Lr7/m;Z)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const-string v5, "Host"

    .line 35
    .line 36
    invoke-virtual {v0, v5, v2}, Lcom/google/firebase/messaging/z;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v2, "Proxy-Connection"

    .line 40
    .line 41
    const-string v5, "Keep-Alive"

    .line 42
    .line 43
    invoke-virtual {v0, v2, v5}, Lcom/google/firebase/messaging/z;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v2, "User-Agent"

    .line 47
    .line 48
    const-string v5, "okhttp/4.12.0"

    .line 49
    .line 50
    invoke-virtual {v0, v2, v5}, Lcom/google/firebase/messaging/z;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/google/firebase/messaging/z;->a()Lcom/google/android/gms/common/internal/g;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    new-instance v2, Lr7/j;

    .line 58
    .line 59
    invoke-direct {v2}, Lr7/j;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v5, "Proxy-Authenticate"

    .line 63
    .line 64
    invoke-static {v5}, Ly1/g;->e(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string v6, "OkHttp-Preemptive"

    .line 68
    .line 69
    invoke-static {v6, v5}, Ly1/g;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v5}, Lr7/j;->d(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v5, v6}, Lr7/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Lr7/j;->c()Lr7/k;

    .line 79
    .line 80
    .line 81
    iget-object v2, v1, Lr7/a;->f:Lr7/b;

    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    iget-object v2, v0, Lcom/google/android/gms/common/internal/g;->b:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v2, Lr7/m;

    .line 89
    .line 90
    invoke-virtual {p0, p1, p2, p4}, Lv7/l;->e(IILv7/i;)V

    .line 91
    .line 92
    .line 93
    new-instance p1, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string p4, "CONNECT "

    .line 96
    .line 97
    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-static {v2, v4}, Ls7/b;->v(Lr7/m;Z)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p4

    .line 104
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string p4, " HTTP/1.1"

    .line 108
    .line 109
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    iget-object p4, p0, Lv7/l;->h:Le8/q;

    .line 117
    .line 118
    invoke-static {p4}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    iget-object v2, p0, Lv7/l;->i:Le8/p;

    .line 122
    .line 123
    invoke-static {v2}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    new-instance v4, Li5/a;

    .line 127
    .line 128
    invoke-direct {v4, v3, p0, p4, v2}, Li5/a;-><init>(Lr7/r;Lv7/l;Le8/q;Le8/p;)V

    .line 129
    .line 130
    .line 131
    iget-object v3, p4, Le8/q;->a:Le8/w;

    .line 132
    .line 133
    invoke-interface {v3}, Le8/w;->b()Le8/y;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    int-to-long v5, p2

    .line 138
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 139
    .line 140
    invoke-virtual {v3, v5, v6}, Le8/y;->g(J)Le8/y;

    .line 141
    .line 142
    .line 143
    iget-object p2, v2, Le8/p;->a:Le8/u;

    .line 144
    .line 145
    invoke-interface {p2}, Le8/u;->b()Le8/y;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    int-to-long v5, p3

    .line 150
    invoke-virtual {p2, v5, v6}, Le8/y;->g(J)Le8/y;

    .line 151
    .line 152
    .line 153
    iget-object p2, v0, Lcom/google/android/gms/common/internal/g;->c:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast p2, Lr7/k;

    .line 156
    .line 157
    invoke-virtual {v4, p2, p1}, Li5/a;->k(Lr7/k;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v4}, Li5/a;->c()V

    .line 161
    .line 162
    .line 163
    const/4 p1, 0x0

    .line 164
    invoke-virtual {v4, p1}, Li5/a;->g(Z)Lr7/t;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-static {p1}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    iput-object v0, p1, Lr7/t;->a:Lcom/google/android/gms/common/internal/g;

    .line 172
    .line 173
    invoke-virtual {p1}, Lr7/t;->a()Lr7/u;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    iget p2, p1, Lr7/u;->d:I

    .line 178
    .line 179
    invoke-static {p1}, Ls7/b;->j(Lr7/u;)J

    .line 180
    .line 181
    .line 182
    move-result-wide v5

    .line 183
    const-wide/16 v7, -0x1

    .line 184
    .line 185
    cmp-long p1, v5, v7

    .line 186
    .line 187
    if-nez p1, :cond_bd

    .line 188
    .line 189
    goto :goto_ca

    .line 190
    :cond_bd
    invoke-virtual {v4, v5, v6}, Li5/a;->j(J)Lx7/e;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    const p3, 0x7fffffff

    .line 195
    .line 196
    .line 197
    invoke-static {p1, p3}, Ls7/b;->t(Le8/w;I)Z

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1}, Lx7/e;->close()V

    .line 201
    .line 202
    .line 203
    :goto_ca
    const/16 p1, 0xc8

    .line 204
    .line 205
    if-eq p2, p1, :cond_eb

    .line 206
    .line 207
    const/16 p1, 0x197

    .line 208
    .line 209
    if-ne p2, p1, :cond_df

    .line 210
    .line 211
    iget-object p1, v1, Lr7/a;->f:Lr7/b;

    .line 212
    .line 213
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 214
    .line 215
    .line 216
    new-instance p1, Ljava/io/IOException;

    .line 217
    .line 218
    const-string p2, "Failed to authenticate with proxy"

    .line 219
    .line 220
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    throw p1

    .line 224
    :cond_df
    new-instance p1, Ljava/io/IOException;

    .line 225
    .line 226
    const-string p3, "Unexpected response code for CONNECT: "

    .line 227
    .line 228
    invoke-static {p2, p3}, La1/a;->i(ILjava/lang/String;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p2

    .line 232
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    throw p1

    .line 236
    :cond_eb
    iget-object p1, p4, Le8/q;->b:Le8/g;

    .line 237
    .line 238
    invoke-virtual {p1}, Le8/g;->c()Z

    .line 239
    .line 240
    .line 241
    move-result p1

    .line 242
    if-eqz p1, :cond_fc

    .line 243
    .line 244
    iget-object p1, v2, Le8/p;->b:Le8/g;

    .line 245
    .line 246
    invoke-virtual {p1}, Le8/g;->c()Z

    .line 247
    .line 248
    .line 249
    move-result p1

    .line 250
    if-eqz p1, :cond_fc

    .line 251
    .line 252
    return-void

    .line 253
    :cond_fc
    new-instance p1, Ljava/io/IOException;

    .line 254
    .line 255
    const-string p2, "TLS tunnel buffered too many bytes!"

    .line 256
    .line 257
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    throw p1
.end method

.method public final g(Lv7/b;Lv7/i;)V
    .registers 13

    .line 1
    sget-object p2, Lr7/s;->c:Lr7/s;

    .line 2
    .line 3
    iget-object v0, p0, Lv7/l;->b:Lr7/x;

    .line 4
    .line 5
    iget-object v0, v0, Lr7/x;->a:Lr7/a;

    .line 6
    .line 7
    iget-object v1, v0, Lr7/a;->c:Ljavax/net/ssl/SSLSocketFactory;

    .line 8
    .line 9
    if-nez v1, :cond_25

    .line 10
    .line 11
    iget-object p1, v0, Lr7/a;->i:Ljava/util/List;

    .line 12
    .line 13
    sget-object v0, Lr7/s;->f:Lr7/s;

    .line 14
    .line 15
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_1e

    .line 20
    .line 21
    iget-object p1, p0, Lv7/l;->c:Ljava/net/Socket;

    .line 22
    .line 23
    iput-object p1, p0, Lv7/l;->d:Ljava/net/Socket;

    .line 24
    .line 25
    iput-object v0, p0, Lv7/l;->f:Lr7/s;

    .line 26
    .line 27
    invoke-virtual {p0}, Lv7/l;->m()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1e
    iget-object p1, p0, Lv7/l;->c:Ljava/net/Socket;

    .line 32
    .line 33
    iput-object p1, p0, Lv7/l;->d:Ljava/net/Socket;

    .line 34
    .line 35
    iput-object p2, p0, Lv7/l;->f:Lr7/s;

    .line 36
    .line 37
    return-void

    .line 38
    :cond_25
    const-string v2, "Hostname "

    .line 39
    .line 40
    const-string v3, "\n              |Hostname "

    .line 41
    .line 42
    const/4 v4, 0x0

    .line 43
    :try_start_2a
    invoke-static {v1}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iget-object v5, p0, Lv7/l;->c:Ljava/net/Socket;

    .line 47
    .line 48
    iget-object v6, v0, Lr7/a;->h:Lr7/m;

    .line 49
    .line 50
    iget-object v7, v6, Lr7/m;->d:Ljava/lang/String;

    .line 51
    .line 52
    iget v6, v6, Lr7/m;->e:I

    .line 53
    .line 54
    const/4 v8, 0x1

    .line 55
    invoke-virtual {v1, v5, v7, v6, v8}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const-string v5, "null cannot be cast to non-null type javax.net.ssl.SSLSocket"

    .line 60
    .line 61
    invoke-static {v5, v1}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    check-cast v1, Ljavax/net/ssl/SSLSocket;
    :try_end_41
    .catchall {:try_start_2a .. :try_end_41} :catchall_17d

    .line 65
    .line 66
    :try_start_41
    invoke-virtual {p1, v1}, Lv7/b;->a(Ljavax/net/ssl/SSLSocket;)Lr7/g;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iget-boolean v5, p1, Lr7/g;->b:Z

    .line 71
    .line 72
    if-eqz v5, :cond_5b

    .line 73
    .line 74
    sget-object v5, Lz7/n;->a:Lz7/n;

    .line 75
    .line 76
    sget-object v5, Lz7/n;->a:Lz7/n;

    .line 77
    .line 78
    iget-object v6, v0, Lr7/a;->h:Lr7/m;

    .line 79
    .line 80
    iget-object v6, v6, Lr7/m;->d:Ljava/lang/String;

    .line 81
    .line 82
    iget-object v7, v0, Lr7/a;->i:Ljava/util/List;

    .line 83
    .line 84
    invoke-virtual {v5, v1, v6, v7}, Lz7/n;->d(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 85
    .line 86
    .line 87
    goto :goto_5b

    .line 88
    :catchall_57
    move-exception p1

    .line 89
    move-object v4, v1

    .line 90
    goto/16 :goto_17e

    .line 91
    .line 92
    :cond_5b
    :goto_5b
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    const-string v6, "sslSocketSession"

    .line 100
    .line 101
    invoke-static {v6, v5}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    invoke-static {v5}, Lx2/a;->g(Ljavax/net/ssl/SSLSession;)Lr7/i;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    iget-object v7, v0, Lr7/a;->d:Ljavax/net/ssl/HostnameVerifier;

    .line 109
    .line 110
    invoke-static {v7}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    iget-object v8, v0, Lr7/a;->h:Lr7/m;

    .line 114
    .line 115
    iget-object v8, v8, Lr7/m;->d:Ljava/lang/String;

    .line 116
    .line 117
    invoke-interface {v7, v8, v5}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    if-nez v5, :cond_105

    .line 122
    .line 123
    invoke-virtual {v6}, Lr7/i;->a()Ljava/util/List;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    move-object p2, p1

    .line 128
    check-cast p2, Ljava/util/Collection;

    .line 129
    .line 130
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 131
    .line 132
    .line 133
    move-result p2

    .line 134
    if-nez p2, :cond_ea

    .line 135
    .line 136
    const/4 p2, 0x0

    .line 137
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    const-string p2, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    .line 142
    .line 143
    invoke-static {p2, p1}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 147
    .line 148
    new-instance p2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    .line 149
    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    iget-object v0, v0, Lr7/a;->h:Lr7/m;

    .line 156
    .line 157
    iget-object v0, v0, Lr7/m;->d:Ljava/lang/String;

    .line 158
    .line 159
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string v0, " not verified:\n              |    certificate: "

    .line 163
    .line 164
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    sget-object v0, Lr7/d;->c:Lr7/d;

    .line 168
    .line 169
    invoke-static {p1}, Lm1/j;->m(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v0, "\n              |    DN: "

    .line 177
    .line 178
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    const-string v0, "\n              |    subjectAltNames: "

    .line 193
    .line 194
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const/4 v0, 0x7

    .line 198
    invoke-static {p1, v0}, Ld8/c;->a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    const/4 v3, 0x2

    .line 203
    invoke-static {p1, v3}, Ld8/c;->a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    check-cast v0, Ljava/util/Collection;

    .line 208
    .line 209
    check-cast p1, Ljava/lang/Iterable;

    .line 210
    .line 211
    invoke-static {v0, p1}, Ls6/g;->t(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const-string p1, "\n              "

    .line 219
    .line 220
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    invoke-static {p1}, Lk7/h;->o(Ljava/lang/String;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    invoke-direct {p2, p1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    throw p2

    .line 235
    :cond_ea
    new-instance p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    .line 236
    .line 237
    new-instance p2, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    iget-object v0, v0, Lr7/a;->h:Lr7/m;

    .line 243
    .line 244
    iget-object v0, v0, Lr7/m;->d:Ljava/lang/String;

    .line 245
    .line 246
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    const-string v0, " not verified (no certificates)"

    .line 250
    .line 251
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p2

    .line 258
    invoke-direct {p1, p2}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    throw p1

    .line 262
    :cond_105
    iget-object v2, v0, Lr7/a;->e:Lr7/d;

    .line 263
    .line 264
    invoke-static {v2}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    new-instance v3, Lr7/i;

    .line 268
    .line 269
    iget-object v5, v6, Lr7/i;->a:Lr7/y;

    .line 270
    .line 271
    iget-object v7, v6, Lr7/i;->b:Lr7/f;

    .line 272
    .line 273
    iget-object v8, v6, Lr7/i;->c:Ljava/util/List;

    .line 274
    .line 275
    new-instance v9, Lv7/k;

    .line 276
    .line 277
    invoke-direct {v9, v2, v6, v0}, Lv7/k;-><init>(Lr7/d;Lr7/i;Lr7/a;)V

    .line 278
    .line 279
    .line 280
    invoke-direct {v3, v5, v7, v8, v9}, Lr7/i;-><init>(Lr7/y;Lr7/f;Ljava/util/List;Lc7/a;)V

    .line 281
    .line 282
    .line 283
    iput-object v3, p0, Lv7/l;->e:Lr7/i;

    .line 284
    .line 285
    iget-object v0, v0, Lr7/a;->h:Lr7/m;

    .line 286
    .line 287
    iget-object v0, v0, Lr7/m;->d:Ljava/lang/String;

    .line 288
    .line 289
    const-string v3, "hostname"

    .line 290
    .line 291
    invoke-static {v3, v0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    iget-object v0, v2, Lr7/d;->a:Ljava/util/Set;

    .line 295
    .line 296
    check-cast v0, Ljava/lang/Iterable;

    .line 297
    .line 298
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 303
    .line 304
    .line 305
    move-result v2

    .line 306
    if-nez v2, :cond_170

    .line 307
    .line 308
    iget-boolean p1, p1, Lr7/g;->b:Z

    .line 309
    .line 310
    if-eqz p1, :cond_13f

    .line 311
    .line 312
    sget-object p1, Lz7/n;->a:Lz7/n;

    .line 313
    .line 314
    sget-object p1, Lz7/n;->a:Lz7/n;

    .line 315
    .line 316
    invoke-virtual {p1, v1}, Lz7/n;->f(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v4

    .line 320
    :cond_13f
    iput-object v1, p0, Lv7/l;->d:Ljava/net/Socket;

    .line 321
    .line 322
    invoke-static {v1}, Ll2/e;->v(Ljava/net/Socket;)Le8/d;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    new-instance v0, Le8/q;

    .line 327
    .line 328
    invoke-direct {v0, p1}, Le8/q;-><init>(Le8/w;)V

    .line 329
    .line 330
    .line 331
    iput-object v0, p0, Lv7/l;->h:Le8/q;

    .line 332
    .line 333
    invoke-static {v1}, Ll2/e;->t(Ljava/net/Socket;)Le8/c;

    .line 334
    .line 335
    .line 336
    move-result-object p1

    .line 337
    new-instance v0, Le8/p;

    .line 338
    .line 339
    invoke-direct {v0, p1}, Le8/p;-><init>(Le8/u;)V

    .line 340
    .line 341
    .line 342
    iput-object v0, p0, Lv7/l;->i:Le8/p;

    .line 343
    .line 344
    if-eqz v4, :cond_15d

    .line 345
    .line 346
    invoke-static {v4}, Lj7/g;->m(Ljava/lang/String;)Lr7/s;

    .line 347
    .line 348
    .line 349
    move-result-object p2

    .line 350
    :cond_15d
    iput-object p2, p0, Lv7/l;->f:Lr7/s;
    :try_end_15f
    .catchall {:try_start_41 .. :try_end_15f} :catchall_57

    .line 351
    .line 352
    sget-object p1, Lz7/n;->a:Lz7/n;

    .line 353
    .line 354
    sget-object p1, Lz7/n;->a:Lz7/n;

    .line 355
    .line 356
    invoke-virtual {p1, v1}, Lz7/n;->a(Ljavax/net/ssl/SSLSocket;)V

    .line 357
    .line 358
    .line 359
    iget-object p1, p0, Lv7/l;->f:Lr7/s;

    .line 360
    .line 361
    sget-object p2, Lr7/s;->e:Lr7/s;

    .line 362
    .line 363
    if-ne p1, p2, :cond_16f

    .line 364
    .line 365
    invoke-virtual {p0}, Lv7/l;->m()V

    .line 366
    .line 367
    .line 368
    :cond_16f
    return-void

    .line 369
    :cond_170
    :try_start_170
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object p1

    .line 373
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 374
    .line 375
    .line 376
    new-instance p1, Ljava/lang/ClassCastException;

    .line 377
    .line 378
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 379
    .line 380
    .line 381
    throw p1
    :try_end_17d
    .catchall {:try_start_170 .. :try_end_17d} :catchall_57

    .line 382
    :catchall_17d
    move-exception p1

    .line 383
    :goto_17e
    if-eqz v4, :cond_187

    .line 384
    .line 385
    sget-object p2, Lz7/n;->a:Lz7/n;

    .line 386
    .line 387
    sget-object p2, Lz7/n;->a:Lz7/n;

    .line 388
    .line 389
    invoke-virtual {p2, v4}, Lz7/n;->a(Ljavax/net/ssl/SSLSocket;)V

    .line 390
    .line 391
    .line 392
    :cond_187
    if-eqz v4, :cond_18c

    .line 393
    .line 394
    invoke-static {v4}, Ls7/b;->e(Ljava/net/Socket;)V

    .line 395
    .line 396
    .line 397
    :cond_18c
    throw p1
.end method

.method public final declared-synchronized h()V
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget v0, p0, Lv7/l;->m:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, 0x1

    .line 5
    .line 6
    iput v0, p0, Lv7/l;->m:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :catchall_9
    move-exception v0

    .line 11
    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    .line 12
    throw v0
.end method

.method public final i(Lr7/a;Ljava/util/List;)Z
    .registers 13

    .line 1
    const-string v0, "hostname"

    .line 2
    .line 3
    iget-object v1, p1, Lr7/a;->h:Lr7/m;

    .line 4
    .line 5
    sget-object v2, Ls7/b;->a:[B

    .line 6
    .line 7
    iget-object v2, p0, Lv7/l;->p:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    iget v3, p0, Lv7/l;->o:I

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    if-ge v2, v3, :cond_ed

    .line 17
    .line 18
    iget-boolean v2, p0, Lv7/l;->j:Z

    .line 19
    .line 20
    if-eqz v2, :cond_17

    .line 21
    .line 22
    goto/16 :goto_ed

    .line 23
    .line 24
    :cond_17
    iget-object v2, p0, Lv7/l;->b:Lr7/x;

    .line 25
    .line 26
    iget-object v3, v2, Lr7/x;->a:Lr7/a;

    .line 27
    .line 28
    iget-object v5, v2, Lr7/x;->a:Lr7/a;

    .line 29
    .line 30
    invoke-virtual {v3, p1}, Lr7/a;->a(Lr7/a;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-nez v3, :cond_25

    .line 35
    .line 36
    goto/16 :goto_ed

    .line 37
    .line 38
    :cond_25
    iget-object v3, v1, Lr7/m;->d:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v6, v1, Lr7/m;->d:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v7, v5, Lr7/a;->h:Lr7/m;

    .line 43
    .line 44
    iget-object v7, v7, Lr7/m;->d:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v3, v7}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    const/4 v7, 0x1

    .line 51
    if-eqz v3, :cond_35

    .line 52
    .line 53
    return v7

    .line 54
    :cond_35
    iget-object v3, p0, Lv7/l;->g:Ly7/o;

    .line 55
    .line 56
    if-nez v3, :cond_3b

    .line 57
    .line 58
    goto/16 :goto_ed

    .line 59
    .line 60
    :cond_3b
    if-eqz p2, :cond_ed

    .line 61
    .line 62
    check-cast p2, Ljava/lang/Iterable;

    .line 63
    .line 64
    instance-of v3, p2, Ljava/util/Collection;

    .line 65
    .line 66
    if-eqz v3, :cond_4e

    .line 67
    .line 68
    move-object v3, p2

    .line 69
    check-cast v3, Ljava/util/Collection;

    .line 70
    .line 71
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-eqz v3, :cond_4e

    .line 76
    .line 77
    goto/16 :goto_ed

    .line 78
    .line 79
    :cond_4e
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    :cond_52
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-eqz v3, :cond_ed

    .line 88
    .line 89
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    check-cast v3, Lr7/x;

    .line 94
    .line 95
    iget-object v8, v3, Lr7/x;->b:Ljava/net/Proxy;

    .line 96
    .line 97
    invoke-virtual {v8}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    sget-object v9, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    .line 102
    .line 103
    if-ne v8, v9, :cond_52

    .line 104
    .line 105
    iget-object v8, v2, Lr7/x;->b:Ljava/net/Proxy;

    .line 106
    .line 107
    invoke-virtual {v8}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    if-ne v8, v9, :cond_52

    .line 112
    .line 113
    iget-object v8, v2, Lr7/x;->c:Ljava/net/InetSocketAddress;

    .line 114
    .line 115
    iget-object v3, v3, Lr7/x;->c:Ljava/net/InetSocketAddress;

    .line 116
    .line 117
    invoke-static {v8, v3}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    if-eqz v3, :cond_52

    .line 122
    .line 123
    iget-object p2, p1, Lr7/a;->d:Ljavax/net/ssl/HostnameVerifier;

    .line 124
    .line 125
    sget-object v2, Ld8/c;->a:Ld8/c;

    .line 126
    .line 127
    if-eq p2, v2, :cond_81

    .line 128
    .line 129
    goto :goto_ed

    .line 130
    :cond_81
    sget-object p2, Ls7/b;->a:[B

    .line 131
    .line 132
    iget-object p2, v5, Lr7/a;->h:Lr7/m;

    .line 133
    .line 134
    iget v1, v1, Lr7/m;->e:I

    .line 135
    .line 136
    iget v2, p2, Lr7/m;->e:I

    .line 137
    .line 138
    if-eq v1, v2, :cond_8c

    .line 139
    .line 140
    goto :goto_ed

    .line 141
    :cond_8c
    iget-object p2, p2, Lr7/m;->d:Ljava/lang/String;

    .line 142
    .line 143
    invoke-static {v6, p2}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result p2

    .line 147
    if-eqz p2, :cond_95

    .line 148
    .line 149
    goto :goto_bb

    .line 150
    :cond_95
    iget-boolean p2, p0, Lv7/l;->k:Z

    .line 151
    .line 152
    if-nez p2, :cond_ed

    .line 153
    .line 154
    iget-object p2, p0, Lv7/l;->e:Lr7/i;

    .line 155
    .line 156
    if-eqz p2, :cond_ed

    .line 157
    .line 158
    invoke-virtual {p2}, Lr7/i;->a()Ljava/util/List;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    move-object v1, p2

    .line 163
    check-cast v1, Ljava/util/Collection;

    .line 164
    .line 165
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    if-nez v1, :cond_ed

    .line 170
    .line 171
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    const-string v1, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    .line 176
    .line 177
    invoke-static {v1, p2}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    check-cast p2, Ljava/security/cert/X509Certificate;

    .line 181
    .line 182
    invoke-static {v6, p2}, Ld8/c;->c(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    .line 183
    .line 184
    .line 185
    move-result p2

    .line 186
    if-eqz p2, :cond_ed

    .line 187
    .line 188
    :goto_bb
    :try_start_bb
    iget-object p1, p1, Lr7/a;->e:Lr7/d;

    .line 189
    .line 190
    invoke-static {p1}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    iget-object p2, p0, Lv7/l;->e:Lr7/i;

    .line 194
    .line 195
    invoke-static {p2}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p2}, Lr7/i;->a()Ljava/util/List;

    .line 199
    .line 200
    .line 201
    move-result-object p2

    .line 202
    invoke-static {v0, v6}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    const-string v0, "peerCertificates"

    .line 206
    .line 207
    invoke-static {v0, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    iget-object p1, p1, Lr7/d;->a:Ljava/util/Set;

    .line 211
    .line 212
    check-cast p1, Ljava/lang/Iterable;

    .line 213
    .line 214
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 219
    .line 220
    .line 221
    move-result p2

    .line 222
    if-nez p2, :cond_e0

    .line 223
    .line 224
    return v7

    .line 225
    :cond_e0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 230
    .line 231
    .line 232
    new-instance p1, Ljava/lang/ClassCastException;

    .line 233
    .line 234
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 235
    .line 236
    .line 237
    throw p1
    :try_end_ed
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_bb .. :try_end_ed} :catch_ed

    .line 238
    :catch_ed
    :cond_ed
    :goto_ed
    return v4
.end method

.method public final j(Z)Z
    .registers 10

    .line 1
    sget-object v0, Ls7/b;->a:[B

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lv7/l;->c:Ljava/net/Socket;

    .line 8
    .line 9
    invoke-static {v2}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v3, p0, Lv7/l;->d:Ljava/net/Socket;

    .line 13
    .line 14
    invoke-static {v3}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object v4, p0, Lv7/l;->h:Le8/q;

    .line 18
    .line 19
    invoke-static {v4}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v5, 0x0

    .line 27
    if-nez v2, :cond_64

    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_64

    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/net/Socket;->isInputShutdown()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_64

    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/net/Socket;->isOutputShutdown()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_2f

    .line 46
    .line 47
    goto :goto_64

    .line 48
    :cond_2f
    iget-object v2, p0, Lv7/l;->g:Ly7/o;

    .line 49
    .line 50
    if-eqz v2, :cond_38

    .line 51
    .line 52
    invoke-virtual {v2, v0, v1}, Ly7/o;->g(J)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    return p1

    .line 57
    :cond_38
    monitor-enter p0

    .line 58
    :try_start_39
    iget-wide v6, p0, Lv7/l;->q:J
    :try_end_3b
    .catchall {:try_start_39 .. :try_end_3b} :catchall_61

    .line 59
    .line 60
    sub-long/2addr v0, v6

    .line 61
    monitor-exit p0

    .line 62
    const-wide v6, 0x2540be400L

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    cmp-long v0, v0, v6

    .line 68
    .line 69
    const/4 v1, 0x1

    .line 70
    if-ltz v0, :cond_60

    .line 71
    .line 72
    if-eqz p1, :cond_60

    .line 73
    .line 74
    :try_start_49
    invoke-virtual {v3}, Ljava/net/Socket;->getSoTimeout()I

    .line 75
    .line 76
    .line 77
    move-result p1
    :try_end_4d
    .catch Ljava/net/SocketTimeoutException; {:try_start_49 .. :try_end_4d} :catch_5e
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4d} :catch_5f

    .line 78
    :try_start_4d
    invoke-virtual {v3, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4}, Le8/q;->a()Z

    .line 82
    .line 83
    .line 84
    move-result v0
    :try_end_54
    .catchall {:try_start_4d .. :try_end_54} :catchall_59

    .line 85
    xor-int/2addr v0, v1

    .line 86
    :try_start_55
    invoke-virtual {v3, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 87
    .line 88
    .line 89
    return v0

    .line 90
    :catchall_59
    move-exception v0

    .line 91
    invoke-virtual {v3, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 92
    .line 93
    .line 94
    throw v0
    :try_end_5e
    .catch Ljava/net/SocketTimeoutException; {:try_start_55 .. :try_end_5e} :catch_5e
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_5e} :catch_5f

    .line 95
    :catch_5e
    move v5, v1

    .line 96
    :catch_5f
    return v5

    .line 97
    :cond_60
    return v1

    .line 98
    :catchall_61
    move-exception p1

    .line 99
    monitor-exit p0

    .line 100
    throw p1

    .line 101
    :cond_64
    :goto_64
    return v5
.end method

.method public final k(Lr7/r;Lw7/f;)Lw7/d;
    .registers 9

    .line 1
    iget v0, p2, Lw7/f;->g:I

    .line 2
    .line 3
    iget-object v1, p0, Lv7/l;->d:Ljava/net/Socket;

    .line 4
    .line 5
    invoke-static {v1}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lv7/l;->h:Le8/q;

    .line 9
    .line 10
    invoke-static {v2}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v3, p0, Lv7/l;->i:Le8/p;

    .line 14
    .line 15
    invoke-static {v3}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object v4, p0, Lv7/l;->g:Ly7/o;

    .line 19
    .line 20
    if-eqz v4, :cond_1b

    .line 21
    .line 22
    new-instance v0, Ly7/p;

    .line 23
    .line 24
    invoke-direct {v0, p1, p0, p2, v4}, Ly7/p;-><init>(Lr7/r;Lv7/l;Lw7/f;Ly7/o;)V

    .line 25
    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_1b
    invoke-virtual {v1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 29
    .line 30
    .line 31
    iget-object v1, v2, Le8/q;->a:Le8/w;

    .line 32
    .line 33
    invoke-interface {v1}, Le8/w;->b()Le8/y;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    int-to-long v4, v0

    .line 38
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 39
    .line 40
    invoke-virtual {v1, v4, v5}, Le8/y;->g(J)Le8/y;

    .line 41
    .line 42
    .line 43
    iget-object v0, v3, Le8/p;->a:Le8/u;

    .line 44
    .line 45
    invoke-interface {v0}, Le8/u;->b()Le8/y;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget p2, p2, Lw7/f;->h:I

    .line 50
    .line 51
    int-to-long v4, p2

    .line 52
    invoke-virtual {v0, v4, v5}, Le8/y;->g(J)Le8/y;

    .line 53
    .line 54
    .line 55
    new-instance p2, Li5/a;

    .line 56
    .line 57
    invoke-direct {p2, p1, p0, v2, v3}, Li5/a;-><init>(Lr7/r;Lv7/l;Le8/q;Le8/p;)V

    .line 58
    .line 59
    .line 60
    return-object p2
.end method

.method public final declared-synchronized l()V
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_2
    iput-boolean v0, p0, Lv7/l;->j:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_6
    move-exception v0

    .line 8
    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    .line 9
    throw v0
.end method

.method public final m()V
    .registers 9

    .line 1
    iget-object v0, p0, Lv7/l;->d:Ljava/net/Socket;

    .line 2
    .line 3
    invoke-static {v0}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lv7/l;->h:Le8/q;

    .line 7
    .line 8
    invoke-static {v1}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lv7/l;->i:Le8/p;

    .line 12
    .line 13
    invoke-static {v2}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-virtual {v0, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 18
    .line 19
    .line 20
    new-instance v4, Lcom/google/android/gms/common/internal/g;

    .line 21
    .line 22
    sget-object v5, Lu7/d;->i:Lu7/d;

    .line 23
    .line 24
    invoke-direct {v4, v5}, Lcom/google/android/gms/common/internal/g;-><init>(Lu7/d;)V

    .line 25
    .line 26
    .line 27
    iget-object v6, p0, Lv7/l;->b:Lr7/x;

    .line 28
    .line 29
    iget-object v6, v6, Lr7/x;->a:Lr7/a;

    .line 30
    .line 31
    iget-object v6, v6, Lr7/a;->h:Lr7/m;

    .line 32
    .line 33
    iget-object v6, v6, Lr7/m;->d:Ljava/lang/String;

    .line 34
    .line 35
    const-string v7, "peerName"

    .line 36
    .line 37
    invoke-static {v7, v6}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iput-object v0, v4, Lcom/google/android/gms/common/internal/g;->c:Ljava/lang/Object;

    .line 41
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    sget-object v7, Ls7/b;->g:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const/16 v7, 0x20

    .line 53
    .line 54
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const-string v6, "<set-?>"

    .line 65
    .line 66
    invoke-static {v6, v0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    iput-object v0, v4, Lcom/google/android/gms/common/internal/g;->d:Ljava/lang/Object;

    .line 70
    .line 71
    iput-object v1, v4, Lcom/google/android/gms/common/internal/g;->e:Ljava/lang/Object;

    .line 72
    .line 73
    iput-object v2, v4, Lcom/google/android/gms/common/internal/g;->f:Ljava/lang/Object;

    .line 74
    .line 75
    iput-object p0, v4, Lcom/google/android/gms/common/internal/g;->g:Ljava/lang/Object;

    .line 76
    .line 77
    new-instance v0, Ly7/o;

    .line 78
    .line 79
    invoke-direct {v0, v4}, Ly7/o;-><init>(Lcom/google/android/gms/common/internal/g;)V

    .line 80
    .line 81
    .line 82
    iput-object v0, p0, Lv7/l;->g:Ly7/o;

    .line 83
    .line 84
    sget-object v1, Ly7/o;->H:Ly7/a0;

    .line 85
    .line 86
    iget v2, v1, Ly7/a0;->a:I

    .line 87
    .line 88
    and-int/lit8 v2, v2, 0x10

    .line 89
    .line 90
    if-eqz v2, :cond_61

    .line 91
    .line 92
    iget-object v1, v1, Ly7/a0;->b:[I

    .line 93
    .line 94
    const/4 v2, 0x4

    .line 95
    aget v1, v1, v2

    .line 96
    .line 97
    goto :goto_64

    .line 98
    :cond_61
    const v1, 0x7fffffff

    .line 99
    .line 100
    .line 101
    :goto_64
    iput v1, p0, Lv7/l;->o:I

    .line 102
    .line 103
    iget-object v1, v0, Ly7/o;->E:Ly7/x;

    .line 104
    .line 105
    const-string v2, ">> CONNECTION "

    .line 106
    .line 107
    monitor-enter v1

    .line 108
    :try_start_6b
    iget-boolean v4, v1, Ly7/x;->d:Z

    .line 109
    .line 110
    if-nez v4, :cond_d1

    .line 111
    .line 112
    sget-object v4, Ly7/x;->f:Ljava/util/logging/Logger;

    .line 113
    .line 114
    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 115
    .line 116
    invoke-virtual {v4, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    if-eqz v6, :cond_97

    .line 121
    .line 122
    new-instance v6, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    sget-object v2, Ly7/f;->a:Le8/j;

    .line 128
    .line 129
    invoke-virtual {v2}, Le8/j;->b()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    new-array v6, v3, [Ljava/lang/Object;

    .line 141
    .line 142
    invoke-static {v2, v6}, Ls7/b;->h(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {v4, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    goto :goto_97

    .line 150
    :catchall_95
    move-exception v0

    .line 151
    goto :goto_d9

    .line 152
    :cond_97
    :goto_97
    iget-object v2, v1, Ly7/x;->a:Le8/h;

    .line 153
    .line 154
    sget-object v4, Ly7/f;->a:Le8/j;

    .line 155
    .line 156
    invoke-interface {v2, v4}, Le8/h;->j(Le8/j;)Le8/h;

    .line 157
    .line 158
    .line 159
    iget-object v2, v1, Ly7/x;->a:Le8/h;

    .line 160
    .line 161
    invoke-interface {v2}, Le8/h;->flush()V
    :try_end_a3
    .catchall {:try_start_6b .. :try_end_a3} :catchall_95

    .line 162
    .line 163
    .line 164
    monitor-exit v1

    .line 165
    iget-object v1, v0, Ly7/o;->E:Ly7/x;

    .line 166
    .line 167
    iget-object v2, v0, Ly7/o;->x:Ly7/a0;

    .line 168
    .line 169
    invoke-virtual {v1, v2}, Ly7/x;->v(Ly7/a0;)V

    .line 170
    .line 171
    .line 172
    iget-object v1, v0, Ly7/o;->x:Ly7/a0;

    .line 173
    .line 174
    invoke-virtual {v1}, Ly7/a0;->a()I

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    const v2, 0xffff

    .line 179
    .line 180
    .line 181
    if-eq v1, v2, :cond_bd

    .line 182
    .line 183
    iget-object v4, v0, Ly7/o;->E:Ly7/x;

    .line 184
    .line 185
    sub-int/2addr v1, v2

    .line 186
    int-to-long v1, v1

    .line 187
    invoke-virtual {v4, v3, v1, v2}, Ly7/x;->w(IJ)V

    .line 188
    .line 189
    .line 190
    :cond_bd
    invoke-virtual {v5}, Lu7/d;->e()Lu7/c;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    iget-object v2, v0, Ly7/o;->c:Ljava/lang/String;

    .line 195
    .line 196
    iget-object v0, v0, Ly7/o;->F:Ly7/k;

    .line 197
    .line 198
    new-instance v3, Lu7/b;

    .line 199
    .line 200
    const/4 v4, 0x0

    .line 201
    invoke-direct {v3, v2, v0, v4}, Lu7/b;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 202
    .line 203
    .line 204
    const-wide/16 v4, 0x0

    .line 205
    .line 206
    invoke-virtual {v1, v3, v4, v5}, Lu7/c;->c(Lu7/a;J)V

    .line 207
    .line 208
    .line 209
    return-void

    .line 210
    :cond_d1
    :try_start_d1
    new-instance v0, Ljava/io/IOException;

    .line 211
    .line 212
    const-string v2, "closed"

    .line 213
    .line 214
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    throw v0

    .line 218
    :goto_d9
    monitor-exit v1
    :try_end_da
    .catchall {:try_start_d1 .. :try_end_da} :catchall_95

    .line 219
    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Connection{"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lv7/l;->b:Lr7/x;

    .line 9
    .line 10
    iget-object v2, v1, Lr7/x;->a:Lr7/a;

    .line 11
    .line 12
    iget-object v2, v2, Lr7/a;->h:Lr7/m;

    .line 13
    .line 14
    iget-object v2, v2, Lr7/m;->d:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const/16 v2, 0x3a

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v2, v1, Lr7/x;->a:Lr7/a;

    .line 25
    .line 26
    iget-object v2, v2, Lr7/a;->h:Lr7/m;

    .line 27
    .line 28
    iget v2, v2, Lr7/m;->e:I

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, ", proxy="

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v2, v1, Lr7/x;->b:Ljava/net/Proxy;

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v2, " hostAddress="

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, v1, Lr7/x;->c:Ljava/net/InetSocketAddress;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, " cipherSuite="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lv7/l;->e:Lr7/i;

    .line 59
    .line 60
    if-eqz v1, :cond_41

    .line 61
    .line 62
    iget-object v1, v1, Lr7/i;->b:Lr7/f;

    .line 63
    .line 64
    if-nez v1, :cond_43

    .line 65
    .line 66
    :cond_41
    const-string v1, "none"

    .line 67
    .line 68
    :cond_43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v1, " protocol="

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lv7/l;->f:Lr7/s;

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const/16 v1, 0x7d

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    return-object v0
.end method
