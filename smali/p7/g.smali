###### Class p7.g (p7.g)
.class public final Lp7/g;
.super Ll7/w;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lw6/b;
.implements Lu6/f;


# static fields
.field public static final h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _reusableCancellableContinuation:Ljava/lang/Object;

.field public final d:Ll7/n;

.field public final e:Lw6/e;

.field public f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    const-class v0, Ljava/lang/Object;

    .line 2
    .line 3
    const-string v1, "_reusableCancellableContinuation"

    .line 4
    .line 5
    const-class v2, Lp7/g;

    .line 6
    .line 7
    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lp7/g;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Ll7/n;Lw6/e;)V
    .registers 4

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, v0}, Ll7/w;-><init>(I)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lp7/g;->d:Ll7/n;

    .line 6
    .line 7
    iput-object p2, p0, Lp7/g;->e:Lw6/e;

    .line 8
    .line 9
    sget-object p1, Lp7/a;->b:Ln6/d;

    .line 10
    .line 11
    iput-object p1, p0, Lp7/g;->f:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object p1, p2, Lw6/e;->b:Lu6/k;

    .line 14
    .line 15
    invoke-static {p1}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    const/4 p2, 0x0

    .line 19
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    sget-object v0, Lp7/s;->c:Lp7/s;

    .line 24
    .line 25
    invoke-interface {p1, p2, v0}, Lu6/k;->c(Ljava/lang/Object;Lc7/p;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lp7/g;->g:Ljava/lang/Object;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final a()Lw6/b;
    .registers 3

    .line 1
    iget-object v0, p0, Lp7/g;->e:Lw6/e;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/fragment/app/m1;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_9

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V
    .registers 3

    .line 1
    instance-of p1, p1, Ll7/j;

    .line 2
    .line 3
    if-nez p1, :cond_5

    .line 4
    .line 5
    return-void

    .line 6
    :cond_5
    const/4 p1, 0x0

    .line 7
    throw p1
.end method

.method public final c()Lu6/f;
    .registers 1

    .line 1
    return-object p0
.end method

.method public final e(Ljava/lang/Object;)V
    .registers 12

    .line 1
    iget-object v0, p0, Lp7/g;->e:Lw6/e;

    .line 2
    .line 3
    iget-object v1, v0, Lw6/e;->b:Lu6/k;

    .line 4
    .line 5
    invoke-static {v1}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lr6/f;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-nez v2, :cond_f

    .line 13
    .line 14
    move-object v3, p1

    .line 15
    goto :goto_14

    .line 16
    :cond_f
    new-instance v3, Ll7/i;

    .line 17
    .line 18
    invoke-direct {v3, v2}, Ll7/i;-><init>(Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    :goto_14
    iget-object v2, p0, Lp7/g;->d:Ll7/n;

    .line 22
    .line 23
    invoke-virtual {v2}, Ll7/n;->u()Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    const/4 v5, 0x0

    .line 28
    if-eqz v4, :cond_25

    .line 29
    .line 30
    iput-object v3, p0, Lp7/g;->f:Ljava/lang/Object;

    .line 31
    .line 32
    iput v5, p0, Ll7/w;->c:I

    .line 33
    .line 34
    invoke-virtual {v2, v1, p0}, Ll7/n;->t(Lu6/k;Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_25
    invoke-static {}, Ll7/x0;->a()Ll7/c0;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iget-wide v6, v1, Ll7/c0;->c:J

    .line 43
    .line 44
    const-wide v8, 0x100000000L

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    cmp-long v2, v6, v8

    .line 50
    .line 51
    if-ltz v2, :cond_47

    .line 52
    .line 53
    iput-object v3, p0, Lp7/g;->f:Ljava/lang/Object;

    .line 54
    .line 55
    iput v5, p0, Ll7/w;->c:I

    .line 56
    .line 57
    iget-object p1, v1, Ll7/c0;->e:Ls6/e;

    .line 58
    .line 59
    if-nez p1, :cond_43

    .line 60
    .line 61
    new-instance p1, Ls6/e;

    .line 62
    .line 63
    invoke-direct {p1}, Ls6/e;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object p1, v1, Ll7/c0;->e:Ls6/e;

    .line 67
    .line 68
    :cond_43
    invoke-virtual {p1, p0}, Ls6/e;->addLast(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_47
    const/4 v2, 0x1

    .line 73
    invoke-virtual {v1, v2}, Ll7/c0;->x(Z)V

    .line 74
    .line 75
    .line 76
    :try_start_4b
    iget-object v2, v0, Lw6/e;->b:Lu6/k;

    .line 77
    .line 78
    invoke-static {v2}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    iget-object v3, p0, Lp7/g;->g:Ljava/lang/Object;

    .line 82
    .line 83
    invoke-static {v2, v3}, Lp7/a;->f(Lu6/k;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v3
    :try_end_56
    .catchall {:try_start_4b .. :try_end_56} :catchall_66

    .line 87
    :try_start_56
    invoke-virtual {v0, p1}, Lw6/e;->e(Ljava/lang/Object;)V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_68

    .line 88
    .line 89
    .line 90
    :try_start_59
    invoke-static {v2, v3}, Lp7/a;->b(Lu6/k;Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    :cond_5c
    invoke-virtual {v1}, Ll7/c0;->y()Z

    .line 94
    .line 95
    .line 96
    move-result p1
    :try_end_60
    .catchall {:try_start_59 .. :try_end_60} :catchall_66

    .line 97
    if-nez p1, :cond_5c

    .line 98
    .line 99
    :goto_62
    invoke-virtual {v1}, Ll7/c0;->v()V

    .line 100
    .line 101
    .line 102
    goto :goto_72

    .line 103
    :catchall_66
    move-exception p1

    .line 104
    goto :goto_6d

    .line 105
    :catchall_68
    move-exception p1

    .line 106
    :try_start_69
    invoke-static {v2, v3}, Lp7/a;->b(Lu6/k;Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    throw p1
    :try_end_6d
    .catchall {:try_start_69 .. :try_end_6d} :catchall_66

    .line 110
    :goto_6d
    const/4 v0, 0x0

    .line 111
    :try_start_6e
    invoke-virtual {p0, p1, v0}, Ll7/w;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_73

    .line 112
    .line 113
    .line 114
    goto :goto_62

    .line 115
    :goto_72
    return-void

    .line 116
    :catchall_73
    move-exception p1

    .line 117
    invoke-virtual {v1}, Ll7/c0;->v()V

    .line 118
    .line 119
    .line 120
    throw p1
.end method

.method public final getContext()Lu6/k;
    .registers 2

    .line 1
    iget-object v0, p0, Lp7/g;->e:Lw6/e;

    .line 2
    .line 3
    iget-object v0, v0, Lw6/e;->b:Lu6/k;

    .line 4
    .line 5
    invoke-static {v0}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final h()Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lp7/g;->f:Ljava/lang/Object;

    .line 2
    .line 3
    sget-object v1, Lp7/a;->b:Ln6/d;

    .line 4
    .line 5
    iput-object v1, p0, Lp7/g;->f:Ljava/lang/Object;

    .line 6
    .line 7
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "DispatchedContinuation["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lp7/g;->d:Ll7/n;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lp7/g;->e:Lw6/e;

    .line 19
    .line 20
    invoke-static {v1}, Ll7/r;->h(Lu6/f;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const/16 v1, 0x5d

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method
