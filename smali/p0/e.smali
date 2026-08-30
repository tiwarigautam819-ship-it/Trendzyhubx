###### Class p0.e (p0.e)
.class public final Lp0/e;
.super Lx2/a;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final synthetic a:Lp0/f;


# direct methods
.method public constructor <init>(Lp0/f;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp0/e;->a:Lp0/f;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lp0/e;->a:Lp0/f;

    .line 2
    .line 3
    iget-object v0, v0, Lp0/f;->a:Lp0/k;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lp0/k;->d(Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final l(Lcom/google/firebase/messaging/y;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lp0/e;->a:Lp0/f;

    .line 2
    .line 3
    iput-object p1, v0, Lp0/f;->c:Lcom/google/firebase/messaging/y;

    .line 4
    .line 5
    new-instance p1, Lc5/h;

    .line 6
    .line 7
    iget-object v1, v0, Lp0/f;->c:Lcom/google/firebase/messaging/y;

    .line 8
    .line 9
    iget-object v2, v0, Lp0/f;->a:Lp0/k;

    .line 10
    .line 11
    iget-object v3, v2, Lp0/k;->g:Lo3/a;

    .line 12
    .line 13
    iget-object v2, v2, Lp0/k;->i:Lp0/d;

    .line 14
    .line 15
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    .line 17
    const/16 v5, 0x22

    .line 18
    .line 19
    if-lt v4, v5, :cond_19

    .line 20
    .line 21
    invoke-static {}, Lp0/n;->a()Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    goto :goto_1d

    .line 26
    :cond_19
    invoke-static {}, Ly1/g;->n()Ljava/util/Set;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    :goto_1d
    invoke-direct {p1, v1, v3, v2, v4}, Lc5/h;-><init>(Lcom/google/firebase/messaging/y;Lo3/a;Lp0/d;Ljava/util/Set;)V

    .line 31
    .line 32
    .line 33
    iput-object p1, v0, Lp0/f;->b:Lc5/h;

    .line 34
    .line 35
    iget-object p1, v0, Lp0/f;->a:Lp0/k;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    new-instance v0, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    iget-object v1, p1, Lp0/k;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 52
    .line 53
    .line 54
    const/4 v1, 0x1

    .line 55
    :try_start_36
    iput v1, p1, Lp0/k;->c:I

    .line 56
    .line 57
    iget-object v1, p1, Lp0/k;->b:Ls/f;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 60
    .line 61
    .line 62
    iget-object v1, p1, Lp0/k;->b:Ls/f;

    .line 63
    .line 64
    invoke-virtual {v1}, Ls/f;->clear()V
    :try_end_42
    .catchall {:try_start_36 .. :try_end_42} :catchall_59

    .line 65
    .line 66
    .line 67
    iget-object v1, p1, Lp0/k;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 74
    .line 75
    .line 76
    iget-object v1, p1, Lp0/k;->d:Landroid/os/Handler;

    .line 77
    .line 78
    new-instance v2, Lp0/i;

    .line 79
    .line 80
    iget p1, p1, Lp0/k;->c:I

    .line 81
    .line 82
    const/4 v3, 0x0

    .line 83
    invoke-direct {v2, v0, p1, v3}, Lp0/i;-><init>(Ljava/util/List;ILjava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :catchall_59
    move-exception v0

    .line 91
    iget-object p1, p1, Lp0/k;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 98
    .line 99
    .line 100
    throw v0
.end method
