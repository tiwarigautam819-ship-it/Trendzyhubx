###### Class r7.w (r7.w)
.class public abstract Lr7/w;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract a()J
.end method

.method public abstract c()Lr7/p;
.end method

.method public final close()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lr7/w;->g()Le8/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ls7/b;->d(Ljava/io/Closeable;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public abstract g()Le8/i;
.end method

.method public final o()Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lr7/w;->g()Le8/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_4
    invoke-virtual {p0}, Lr7/w;->c()Lr7/p;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_12

    .line 10
    .line 11
    sget-object v2, Lk7/a;->a:Ljava/nio/charset/Charset;

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Lr7/p;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-nez v1, :cond_14

    .line 18
    .line 19
    :cond_12
    sget-object v1, Lk7/a;->a:Ljava/nio/charset/Charset;

    .line 20
    .line 21
    :cond_14
    invoke-static {v0, v1}, Ls7/b;->r(Le8/i;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v0, v1}, Le8/i;->q(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_20

    .line 29
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 30
    .line 31
    .line 32
    return-object v1

    .line 33
    :catchall_20
    move-exception v1

    .line 34
    :try_start_21
    throw v1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_22

    .line 35
    :catchall_22
    move-exception v2

    .line 36
    invoke-static {v0, v1}, Lb2/k;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    throw v2
.end method
