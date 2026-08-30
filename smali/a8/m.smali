###### Class a8.m (a8.m)
.class public final La8/m;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements La8/n;


# instance fields
.field public final a:La8/l;

.field public b:La8/n;


# direct methods
.method public constructor <init>(La8/l;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, La8/m;->a:La8/l;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljavax/net/ssl/SSLSocket;)Z
    .registers 3

    .line 1
    iget-object v0, p0, La8/m;->a:La8/l;

    .line 2
    .line 3
    invoke-interface {v0, p1}, La8/l;->a(Ljavax/net/ssl/SSLSocket;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final b(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, La8/m;->e(Ljavax/net/ssl/SSLSocket;)La8/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_b

    .line 6
    .line 7
    invoke-interface {v0, p1}, La8/n;->b(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_b
    const/4 p1, 0x0

    .line 13
    return-object p1
.end method

.method public final c()Z
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final d(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .registers 5

    .line 1
    const-string v0, "protocols"

    .line 2
    .line 3
    invoke-static {v0, p3}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, La8/m;->e(Ljavax/net/ssl/SSLSocket;)La8/n;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_e

    .line 11
    .line 12
    invoke-interface {v0, p1, p2, p3}, La8/n;->d(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 13
    .line 14
    .line 15
    :cond_e
    return-void
.end method

.method public final declared-synchronized e(Ljavax/net/ssl/SSLSocket;)La8/n;
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, La8/m;->b:La8/n;

    .line 3
    .line 4
    if-nez v0, :cond_18

    .line 5
    .line 6
    iget-object v0, p0, La8/m;->a:La8/l;

    .line 7
    .line 8
    invoke-interface {v0, p1}, La8/l;->a(Ljavax/net/ssl/SSLSocket;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_18

    .line 13
    .line 14
    iget-object v0, p0, La8/m;->a:La8/l;

    .line 15
    .line 16
    invoke-interface {v0, p1}, La8/l;->b(Ljavax/net/ssl/SSLSocket;)La8/n;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, La8/m;->b:La8/n;

    .line 21
    .line 22
    goto :goto_18

    .line 23
    :catchall_16
    move-exception p1

    .line 24
    goto :goto_1c

    .line 25
    :cond_18
    :goto_18
    iget-object p1, p0, La8/m;->b:La8/n;
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_16

    .line 26
    .line 27
    monitor-exit p0

    .line 28
    return-object p1

    .line 29
    :goto_1c
    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_16

    .line 30
    throw p1
.end method
