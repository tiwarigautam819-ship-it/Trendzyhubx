###### Class l7.e (l7.e)
.class public final Ll7/e;
.super Ll7/m0;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final e:Ll7/c;


# direct methods
.method public constructor <init>(Ll7/c;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lp7/j;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll7/e;->e:Ll7/c;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final bridge synthetic g(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ll7/e;->o(Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lr6/j;->a:Lr6/j;

    .line 7
    .line 8
    return-object p1
.end method

.method public final o(Ljava/lang/Throwable;)V
    .registers 8

    .line 1
    invoke-virtual {p0}, Ll7/o0;->n()Ll7/s0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ll7/s0;->k()Ljava/util/concurrent/CancellationException;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Ll7/e;->e:Ll7/c;

    .line 10
    .line 11
    invoke-virtual {v0}, Ll7/c;->n()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_11

    .line 16
    .line 17
    goto :goto_42

    .line 18
    :cond_11
    iget-object v1, v0, Ll7/c;->d:Lu6/f;

    .line 19
    .line 20
    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>"

    .line 21
    .line 22
    invoke-static {v2, v1}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    check-cast v1, Lp7/g;

    .line 26
    .line 27
    sget-object v2, Lp7/g;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 28
    .line 29
    :goto_1c
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    sget-object v4, Lp7/a;->c:Ln6/d;

    .line 34
    .line 35
    invoke-static {v3, v4}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_36

    .line 40
    .line 41
    :cond_28
    invoke-virtual {v2, v1, v4, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_2f

    .line 46
    .line 47
    goto :goto_5e

    .line 48
    :cond_2f
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    if-eq v3, v4, :cond_28

    .line 53
    .line 54
    goto :goto_1c

    .line 55
    :cond_36
    instance-of v4, v3, Ljava/lang/Throwable;

    .line 56
    .line 57
    if-eqz v4, :cond_3b

    .line 58
    .line 59
    goto :goto_5e

    .line 60
    :cond_3b
    const/4 v4, 0x0

    .line 61
    invoke-virtual {v2, v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-eqz v4, :cond_5f

    .line 66
    .line 67
    :goto_42
    invoke-virtual {v0, p1}, Ll7/c;->i(Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ll7/c;->n()Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-nez p1, :cond_5e

    .line 75
    .line 76
    sget-object p1, Ll7/c;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Ll7/y;

    .line 83
    .line 84
    if-nez v1, :cond_56

    .line 85
    .line 86
    goto :goto_5e

    .line 87
    :cond_56
    invoke-interface {v1}, Ll7/y;->c()V

    .line 88
    .line 89
    .line 90
    sget-object v1, Ll7/u0;->a:Ll7/u0;

    .line 91
    .line 92
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    :cond_5e
    :goto_5e
    return-void

    .line 96
    :cond_5f
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    if-eq v4, v3, :cond_3b

    .line 101
    .line 102
    goto :goto_1c
.end method
