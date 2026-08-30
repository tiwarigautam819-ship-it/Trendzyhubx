###### Class org.apache.cordova.h (org.apache.cordova.h)
.class public final Lorg/apache/cordova/h;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public a:Lorg/apache/cordova/l0;

.field public b:Lorg/apache/cordova/i0;

.field public volatile c:I


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/h;->b:Lorg/apache/cordova/i0;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/cordova/h;->b(I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_a

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    :cond_a
    if-nez p5, :cond_f

    .line 12
    .line 13
    const-string p1, "@Null arguments."

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_f
    const/4 p1, 0x1

    .line 17
    invoke-virtual {v0, p1}, Lorg/apache/cordova/i0;->g(Z)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    :try_start_14
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lorg/apache/cordova/h;->a:Lorg/apache/cordova/l0;

    .line 25
    .line 26
    invoke-virtual {v1, p2, p3, p4, p5}, Lorg/apache/cordova/l0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lorg/apache/cordova/i0;->d(Z)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_24

    .line 33
    invoke-virtual {v0, p1}, Lorg/apache/cordova/i0;->g(Z)V

    .line 34
    .line 35
    .line 36
    return-object p2

    .line 37
    :catchall_24
    move-exception p2

    .line 38
    :try_start_25
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    .line 40
    .line 41
    const-string p2, ""
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_2e

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Lorg/apache/cordova/i0;->g(Z)V

    .line 44
    .line 45
    .line 46
    return-object p2

    .line 47
    :catchall_2e
    move-exception p2

    .line 48
    invoke-virtual {v0, p1}, Lorg/apache/cordova/i0;->g(Z)V

    .line 49
    .line 50
    .line 51
    throw p2
.end method

.method public final b(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/h;->b:Lorg/apache/cordova/i0;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/apache/cordova/i0;->d:Lorg/apache/cordova/f0;

    .line 4
    .line 5
    if-eqz v0, :cond_20

    .line 6
    .line 7
    iget v0, p0, Lorg/apache/cordova/h;->c:I

    .line 8
    .line 9
    if-ltz v0, :cond_10

    .line 10
    .line 11
    iget v0, p0, Lorg/apache/cordova/h;->c:I

    .line 12
    .line 13
    if-ne p1, v0, :cond_10

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    return p1

    .line 17
    :cond_10
    const-string p1, "CordovaBridge"

    .line 18
    .line 19
    const-string v0, "Bridge access attempt with wrong secret token, possibly from malicious code. Disabling exec() bridge!"

    .line 20
    .line 21
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    const/4 p1, -0x1

    .line 25
    iput p1, p0, Lorg/apache/cordova/h;->c:I

    .line 26
    .line 27
    new-instance p1, Ljava/lang/IllegalAccessException;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/lang/IllegalAccessException;-><init>()V

    .line 30
    .line 31
    .line 32
    throw p1

    .line 33
    :cond_20
    const/4 p1, 0x0

    .line 34
    return p1
.end method
