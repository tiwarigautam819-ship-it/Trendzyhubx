###### Class x1.a0 (x1.a0)
.class public final Lx1/a0;
.super Landroid/os/AsyncTask;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Lx1/b0;

.field public b:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lx1/b0;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx1/a0;->a:Lx1/b0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 7
    .line 8
    goto :goto_2b

    .line 9
    :cond_8
    :try_start_8
    check-cast p1, [Ljava/lang/Void;

    .line 10
    .line 11
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_2c

    .line 15
    if-eqz v0, :cond_11

    .line 16
    .line 17
    goto :goto_2b

    .line 18
    :cond_11
    :try_start_11
    const-string v0, "params"

    .line 19
    .line 20
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_22

    .line 21
    .line 22
    .line 23
    :try_start_16
    iget-object p1, p0, Lx1/a0;->a:Lx1/b0;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    sget-object v0, Lx1/z;->j:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {p1}, Lx1/w;->l(Lx1/b0;)Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    move-result-object p1
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_21} :catch_24
    .catchall {:try_start_16 .. :try_end_21} :catchall_22

    .line 34
    return-object p1

    .line 35
    :catchall_22
    move-exception p1

    .line 36
    goto :goto_28

    .line 37
    :catch_24
    move-exception p1

    .line 38
    :try_start_25
    iput-object p1, p0, Lx1/a0;->b:Ljava/lang/Exception;
    :try_end_27
    .catchall {:try_start_25 .. :try_end_27} :catchall_22

    .line 39
    .line 40
    goto :goto_2b

    .line 41
    :goto_28
    :try_start_28
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    .line 42
    .line 43
    .line 44
    :goto_2b
    return-object v1

    .line 45
    :catchall_2c
    move-exception p1

    .line 46
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    return-object v1
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .registers 6

    .line 1
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    goto :goto_36

    .line 8
    :cond_7
    :try_start_7
    check-cast p1, Ljava/util/List;

    .line 9
    .line 10
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_37

    .line 14
    if-eqz v0, :cond_10

    .line 15
    .line 16
    goto :goto_36

    .line 17
    :cond_10
    :try_start_10
    const-string v0, "result"

    .line 18
    .line 19
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lx1/a0;->b:Ljava/lang/Exception;

    .line 26
    .line 27
    if-eqz p1, :cond_36

    .line 28
    .line 29
    const-string v0, "onPostExecute: exception encountered during request: %s"

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const/4 v1, 0x1

    .line 36
    new-array v2, v1, [Ljava/lang/Object;

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    aput-object p1, v2, v3

    .line 40
    .line 41
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    sget-object p1, Lx1/r;->a:Lx1/r;
    :try_end_31
    .catchall {:try_start_10 .. :try_end_31} :catchall_32

    .line 49
    .line 50
    goto :goto_36

    .line 51
    :catchall_32
    move-exception p1

    .line 52
    :try_start_33
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_37

    .line 53
    .line 54
    .line 55
    :cond_36
    :goto_36
    return-void

    .line 56
    :catchall_37
    move-exception p1

    .line 57
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final onPreExecute()V
    .registers 4

    .line 1
    iget-object v0, p0, Lx1/a0;->a:Lx1/b0;

    .line 2
    .line 3
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_9

    .line 8
    .line 9
    goto :goto_2d

    .line 10
    :cond_9
    :try_start_9
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 11
    .line 12
    .line 13
    sget-object v1, Lx1/r;->a:Lx1/r;

    .line 14
    .line 15
    iget-object v1, v0, Lx1/b0;->a:Landroid/os/Handler;

    .line 16
    .line 17
    if-nez v1, :cond_2d

    .line 18
    .line 19
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    instance-of v1, v1, Landroid/os/HandlerThread;

    .line 24
    .line 25
    if-eqz v1, :cond_22

    .line 26
    .line 27
    new-instance v1, Landroid/os/Handler;

    .line 28
    .line 29
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 30
    .line 31
    .line 32
    goto :goto_2b

    .line 33
    :catchall_20
    move-exception v0

    .line 34
    goto :goto_2e

    .line 35
    :cond_22
    new-instance v1, Landroid/os/Handler;

    .line 36
    .line 37
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 42
    .line 43
    .line 44
    :goto_2b
    iput-object v1, v0, Lx1/b0;->a:Landroid/os/Handler;
    :try_end_2d
    .catchall {:try_start_9 .. :try_end_2d} :catchall_20

    .line 45
    .line 46
    :cond_2d
    :goto_2d
    return-void

    .line 47
    :goto_2e
    invoke-static {v0, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "{RequestAsyncTask:  connection: null, requests: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lx1/a0;->a:Lx1/b0;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "}"

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
    const-string v1, "StringBuilder()\n        \u2026(\"}\")\n        .toString()"

    .line 23
    .line 24
    invoke-static {v1, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method
