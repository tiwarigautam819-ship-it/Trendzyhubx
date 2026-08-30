###### Class m1.d (m1.d)
.class public final synthetic Lm1/d;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lm1/e;

.field public final synthetic b:Ljava/io/File;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lm1/e;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm1/d;->a:Lm1/e;

    .line 5
    .line 6
    iput-object p2, p0, Lm1/d;->b:Ljava/io/File;

    .line 7
    .line 8
    iput-object p3, p0, Lm1/d;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lm1/d;->d:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lm1/d;->e:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p6, p0, Lm1/d;->f:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 10

    .line 1
    const-string v0, "CACHED "

    .line 2
    .line 3
    iget-object v1, p0, Lm1/d;->a:Lm1/e;

    .line 4
    .line 5
    iget-object v2, p0, Lm1/d;->b:Ljava/io/File;

    .line 6
    .line 7
    iget-object v3, p0, Lm1/d;->c:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lm1/d;->d:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lm1/d;->e:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, p0, Lm1/d;->f:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    :try_start_11
    iget-boolean v7, v1, Lm1/e;->f:Z

    .line 19
    .line 20
    if-eqz v7, :cond_20

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_1e

    .line 23
    .line 24
    .line 25
    :goto_18
    iget-object v0, v1, Lm1/e;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 26
    .line 27
    invoke-virtual {v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :catchall_1e
    move-exception v0

    .line 32
    goto :goto_50

    .line 33
    :cond_20
    :try_start_20
    iget-object v7, v1, Lm1/e;->c:Lm1/c;

    .line 34
    .line 35
    invoke-virtual {v7, v3, v2, v4, v5}, Lm1/c;->a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v2, v1, Lm1/e;->d:Lcom/google/android/gms/internal/measurement/y4;

    .line 39
    .line 40
    iget-object v4, v1, Lm1/e;->c:Lm1/c;

    .line 41
    .line 42
    iget-object v4, v4, Lm1/c;->a:Ljava/io/File;

    .line 43
    .line 44
    iget-object v5, v2, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    .line 48
    const/4 v7, 0x0

    .line 49
    const/4 v8, 0x1

    .line 50
    invoke-virtual {v5, v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-nez v5, :cond_38

    .line 55
    .line 56
    goto :goto_46

    .line 57
    :cond_38
    iget-object v5, v2, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v5, Ljava/util/concurrent/ExecutorService;

    .line 60
    .line 61
    new-instance v7, La2/i;

    .line 62
    .line 63
    const/16 v8, 0xe

    .line 64
    .line 65
    invoke-direct {v7, v2, v8, v4}, La2/i;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {v5, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 69
    .line 70
    .line 71
    :goto_46
    const-string v2, "GameResourceCache"

    .line 72
    .line 73
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_20 .. :try_end_4f} :catchall_1e

    .line 78
    .line 79
    .line 80
    goto :goto_18

    .line 81
    :goto_50
    iget-object v1, v1, Lm1/e;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 82
    .line 83
    invoke-virtual {v1, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    throw v0
.end method
