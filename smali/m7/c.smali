###### Class m7.c (m7.c)
.class public final Lm7/c;
.super Ll7/n;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ll7/v;


# instance fields
.field private volatile _immediate:Lm7/c;

.field public final c:Landroid/os/Handler;

.field public final d:Z

.field public final e:Lm7/c;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Z)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ll7/n;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm7/c;->c:Landroid/os/Handler;

    .line 5
    .line 6
    iput-boolean p2, p0, Lm7/c;->d:Z

    .line 7
    .line 8
    if-eqz p2, :cond_b

    .line 9
    .line 10
    move-object p2, p0

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 p2, 0x0

    .line 13
    :goto_c
    iput-object p2, p0, Lm7/c;->_immediate:Lm7/c;

    .line 14
    .line 15
    iget-object p2, p0, Lm7/c;->_immediate:Lm7/c;

    .line 16
    .line 17
    if-nez p2, :cond_1a

    .line 18
    .line 19
    new-instance p2, Lm7/c;

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    invoke-direct {p2, p1, v0}, Lm7/c;-><init>(Landroid/os/Handler;Z)V

    .line 23
    .line 24
    .line 25
    iput-object p2, p0, Lm7/c;->_immediate:Lm7/c;

    .line 26
    .line 27
    :cond_1a
    iput-object p2, p0, Lm7/c;->e:Lm7/c;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    instance-of v0, p1, Lm7/c;

    .line 2
    .line 3
    if-eqz v0, :cond_e

    .line 4
    .line 5
    check-cast p1, Lm7/c;

    .line 6
    .line 7
    iget-object p1, p1, Lm7/c;->c:Landroid/os/Handler;

    .line 8
    .line 9
    iget-object v0, p0, Lm7/c;->c:Landroid/os/Handler;

    .line 10
    .line 11
    if-ne p1, v0, :cond_e

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_e
    const/4 p1, 0x0

    .line 16
    return p1
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lm7/c;->c:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final t(Lu6/k;Ljava/lang/Runnable;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lm7/c;->c:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_28

    .line 8
    .line 9
    new-instance v0, Ljava/util/concurrent/CancellationException;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "The task was rejected, the handler underlying the dispatcher \'"

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, "\' was closed"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p1, v0}, Ll7/r;->c(Lu6/k;Ljava/util/concurrent/CancellationException;)V

    .line 34
    .line 35
    .line 36
    sget-object v0, Ll7/x;->b:Lq7/c;

    .line 37
    .line 38
    invoke-virtual {v0, p1, p2}, Lq7/c;->t(Lu6/k;Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    :cond_28
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Ll7/x;->a:Lq7/d;

    .line 2
    .line 3
    sget-object v0, Lp7/n;->a:Lm7/c;

    .line 4
    .line 5
    if-ne p0, v0, :cond_9

    .line 6
    .line 7
    const-string v0, "Dispatchers.Main"

    .line 8
    .line 9
    goto :goto_14

    .line 10
    :cond_9
    const/4 v1, 0x0

    .line 11
    :try_start_a
    iget-object v0, v0, Lm7/c;->e:Lm7/c;
    :try_end_c
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_a .. :try_end_c} :catch_d

    .line 12
    .line 13
    goto :goto_e

    .line 14
    :catch_d
    move-object v0, v1

    .line 15
    :goto_e
    if-ne p0, v0, :cond_13

    .line 16
    .line 17
    const-string v0, "Dispatchers.Main.immediate"

    .line 18
    .line 19
    goto :goto_14

    .line 20
    :cond_13
    move-object v0, v1

    .line 21
    :goto_14
    if-nez v0, :cond_26

    .line 22
    .line 23
    iget-object v0, p0, Lm7/c;->c:Landroid/os/Handler;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/os/Handler;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-boolean v1, p0, Lm7/c;->d:Z

    .line 30
    .line 31
    if-eqz v1, :cond_26

    .line 32
    .line 33
    const-string v1, ".immediate"

    .line 34
    .line 35
    invoke-static {v0, v1}, Lq2/x;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :cond_26
    return-object v0
.end method

.method public final u()Z
    .registers 3

    .line 1
    iget-boolean v0, p0, Lm7/c;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_17

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lm7/c;->c:Landroid/os/Handler;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_15

    .line 20
    .line 21
    goto :goto_17

    .line 22
    :cond_15
    const/4 v0, 0x0

    .line 23
    return v0

    .line 24
    :cond_17
    :goto_17
    const/4 v0, 0x1

    .line 25
    return v0
.end method
