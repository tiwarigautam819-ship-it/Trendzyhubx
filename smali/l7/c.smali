###### Class l7.c (l7.c)
.class public final Ll7/c;
.super Ll7/w;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lu6/f;
.implements Lw6/b;


# static fields
.field public static final f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _decisionAndIndex:I

.field private volatile _parentHandle:Ljava/lang/Object;

.field private volatile _state:Ljava/lang/Object;

.field public final d:Lu6/f;

.field public final e:Lu6/k;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    const-string v0, "_decisionAndIndex"

    .line 2
    .line 3
    const-class v1, Ll7/c;

    .line 4
    .line 5
    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Ll7/c;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 10
    .line 11
    const-string v0, "_state"

    .line 12
    .line 13
    const-class v2, Ljava/lang/Object;

    .line 14
    .line 15
    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Ll7/c;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 20
    .line 21
    const-string v0, "_parentHandle"

    .line 22
    .line 23
    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Ll7/c;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 28
    .line 29
    return-void
.end method

.method public constructor <init>(Lu6/f;)V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Ll7/w;-><init>(I)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Ll7/c;->d:Lu6/f;

    .line 6
    .line 7
    invoke-interface {p1}, Lu6/f;->getContext()Lu6/k;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Ll7/c;->e:Lu6/k;

    .line 12
    .line 13
    const p1, 0x1fffffff

    .line 14
    .line 15
    .line 16
    iput p1, p0, Ll7/c;->_decisionAndIndex:I

    .line 17
    .line 18
    sget-object p1, Ll7/a;->a:Ll7/a;

    .line 19
    .line 20
    iput-object p1, p0, Ll7/c;->_state:Ljava/lang/Object;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final a()Lw6/b;
    .registers 3

    .line 1
    iget-object v0, p0, Ll7/c;->d:Lu6/f;

    .line 2
    .line 3
    instance-of v1, v0, Lw6/b;

    .line 4
    .line 5
    if-eqz v1, :cond_9

    .line 6
    .line 7
    check-cast v0, Lw6/b;

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
    .registers 8

    .line 1
    :goto_0
    sget-object p1, Ll7/c;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Ll7/a;

    .line 8
    .line 9
    if-nez v1, :cond_6e

    .line 10
    .line 11
    instance-of v1, v0, Ll7/i;

    .line 12
    .line 13
    if-eqz v1, :cond_f

    .line 14
    .line 15
    goto :goto_66

    .line 16
    :cond_f
    instance-of v1, v0, Ll7/h;

    .line 17
    .line 18
    if-eqz v1, :cond_5a

    .line 19
    .line 20
    move-object v1, v0

    .line 21
    check-cast v1, Ll7/h;

    .line 22
    .line 23
    iget-object v2, v1, Ll7/h;->b:Lc7/l;

    .line 24
    .line 25
    iget-object v3, v1, Ll7/h;->d:Ljava/lang/Throwable;

    .line 26
    .line 27
    if-nez v3, :cond_52

    .line 28
    .line 29
    iget-object v3, v1, Ll7/h;->a:Ljava/lang/Object;

    .line 30
    .line 31
    iget-object v1, v1, Ll7/h;->c:Ljava/lang/Object;

    .line 32
    .line 33
    new-instance v4, Ll7/h;

    .line 34
    .line 35
    invoke-direct {v4, v3, v2, v1, p2}, Ll7/h;-><init>(Ljava/lang/Object;Lc7/l;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    :cond_25
    invoke-virtual {p1, p0, v0, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_4b

    .line 43
    .line 44
    if-eqz v2, :cond_66

    .line 45
    .line 46
    :try_start_2d
    invoke-interface {v2, p2}, Lc7/l;->g(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :catchall_31
    move-exception p1

    .line 51
    new-instance p2, Landroidx/fragment/app/a0;

    .line 52
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v1, "Exception in resume onCancellation handler for "

    .line 56
    .line 57
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Ll7/c;->e:Lu6/k;

    .line 71
    .line 72
    invoke-static {p1, p2}, Ll7/r;->e(Lu6/k;Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_4b
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    if-eq v1, v0, :cond_25

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_52
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 84
    .line 85
    const-string p2, "Must be called at most once"

    .line 86
    .line 87
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p1

    .line 91
    :cond_5a
    new-instance v1, Ll7/h;

    .line 92
    .line 93
    const/4 v2, 0x0

    .line 94
    invoke-direct {v1, v0, v2, v2, p2}, Ll7/h;-><init>(Ljava/lang/Object;Lc7/l;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 95
    .line 96
    .line 97
    :cond_60
    invoke-virtual {p1, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-eqz v2, :cond_67

    .line 102
    .line 103
    :cond_66
    :goto_66
    return-void

    .line 104
    :cond_67
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    if-eq v2, v0, :cond_60

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_6e
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 112
    .line 113
    const-string p2, "Not completed"

    .line 114
    .line 115
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p1
.end method

.method public final c()Lu6/f;
    .registers 2

    .line 1
    iget-object v0, p0, Ll7/c;->d:Lu6/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Throwable;
    .registers 2

    .line 1
    invoke-super {p0, p1}, Ll7/w;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_7

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_7
    const/4 p1, 0x0

    .line 9
    return-object p1
.end method

.method public final e(Ljava/lang/Object;)V
    .registers 6

    .line 1
    invoke-static {p1}, Lr6/f;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_7

    .line 6
    .line 7
    goto :goto_c

    .line 8
    :cond_7
    new-instance p1, Ll7/i;

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ll7/i;-><init>(Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    :goto_c
    iget v0, p0, Ll7/w;->c:I

    .line 14
    .line 15
    :goto_e
    sget-object v1, Ll7/c;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 16
    .line 17
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    instance-of v3, v2, Ll7/a;

    .line 22
    .line 23
    if-eqz v3, :cond_42

    .line 24
    .line 25
    :cond_18
    invoke-virtual {v1, p0, v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_3b

    .line 30
    .line 31
    invoke-virtual {p0}, Ll7/c;->n()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-nez p1, :cond_37

    .line 36
    .line 37
    sget-object p1, Ll7/c;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 38
    .line 39
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Ll7/y;

    .line 44
    .line 45
    if-nez v1, :cond_2f

    .line 46
    .line 47
    goto :goto_37

    .line 48
    :cond_2f
    invoke-interface {v1}, Ll7/y;->c()V

    .line 49
    .line 50
    .line 51
    sget-object v1, Ll7/u0;->a:Ll7/u0;

    .line 52
    .line 53
    invoke-virtual {p1, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :cond_37
    :goto_37
    invoke-virtual {p0, v0}, Ll7/c;->j(I)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_3b
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    if-eq v3, v2, :cond_18

    .line 65
    .line 66
    goto :goto_e

    .line 67
    :cond_42
    instance-of v0, v2, Ll7/d;

    .line 68
    .line 69
    if-eqz v0, :cond_53

    .line 70
    .line 71
    check-cast v2, Ll7/d;

    .line 72
    .line 73
    sget-object v0, Ll7/d;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 74
    .line 75
    const/4 v1, 0x1

    .line 76
    const/4 v3, 0x0

    .line 77
    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_53

    .line 82
    .line 83
    return-void

    .line 84
    :cond_53
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 85
    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v2, "Already resumed, but proposed with update "

    .line 89
    .line 90
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw v0
.end method

.method public final f(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    instance-of v0, p1, Ll7/h;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    check-cast p1, Ll7/h;

    .line 6
    .line 7
    iget-object p1, p1, Ll7/h;->a:Ljava/lang/Object;

    .line 8
    .line 9
    :cond_8
    return-object p1
.end method

.method public final getContext()Lu6/k;
    .registers 2

    .line 1
    iget-object v0, p0, Ll7/c;->e:Lu6/k;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Ljava/lang/Object;
    .registers 2

    .line 1
    sget-object v0, Ll7/c;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final i(Ljava/lang/Throwable;)V
    .registers 6

    .line 1
    :goto_0
    sget-object v0, Ll7/c;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    instance-of v2, v1, Ll7/a;

    .line 8
    .line 9
    if-nez v2, :cond_b

    .line 10
    .line 11
    return-void

    .line 12
    :cond_b
    new-instance v2, Ll7/d;

    .line 13
    .line 14
    invoke-direct {v2, p0, p1}, Ll7/d;-><init>(Ll7/c;Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    :cond_10
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_35

    .line 22
    .line 23
    invoke-virtual {p0}, Ll7/c;->n()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_2f

    .line 28
    .line 29
    sget-object p1, Ll7/c;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 30
    .line 31
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Ll7/y;

    .line 36
    .line 37
    if-nez v0, :cond_27

    .line 38
    .line 39
    goto :goto_2f

    .line 40
    :cond_27
    invoke-interface {v0}, Ll7/y;->c()V

    .line 41
    .line 42
    .line 43
    sget-object v0, Ll7/u0;->a:Ll7/u0;

    .line 44
    .line 45
    invoke-virtual {p1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :cond_2f
    :goto_2f
    iget p1, p0, Ll7/w;->c:I

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Ll7/c;->j(I)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_35
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    if-eq v3, v1, :cond_10

    .line 59
    .line 60
    goto :goto_0
.end method

.method public final j(I)V
    .registers 8

    .line 1
    :cond_0
    sget-object v0, Ll7/c;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    shr-int/lit8 v2, v1, 0x1d

    .line 8
    .line 9
    if-eqz v2, :cond_89

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    if-ne v2, v0, :cond_81

    .line 13
    .line 14
    const/4 v1, 0x4

    .line 15
    const/4 v2, 0x0

    .line 16
    if-ne p1, v1, :cond_13

    .line 17
    .line 18
    move v1, v0

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    move v1, v2

    .line 21
    :goto_14
    iget-object v3, p0, Ll7/c;->d:Lu6/f;

    .line 22
    .line 23
    if-nez v1, :cond_7d

    .line 24
    .line 25
    instance-of v4, v3, Lp7/g;

    .line 26
    .line 27
    if-eqz v4, :cond_7d

    .line 28
    .line 29
    const/4 v4, 0x2

    .line 30
    if-eq p1, v0, :cond_24

    .line 31
    .line 32
    if-ne p1, v4, :cond_22

    .line 33
    .line 34
    goto :goto_24

    .line 35
    :cond_22
    move p1, v2

    .line 36
    goto :goto_25

    .line 37
    :cond_24
    :goto_24
    move p1, v0

    .line 38
    :goto_25
    iget v5, p0, Ll7/w;->c:I

    .line 39
    .line 40
    if-eq v5, v0, :cond_2b

    .line 41
    .line 42
    if-ne v5, v4, :cond_2c

    .line 43
    .line 44
    :cond_2b
    move v2, v0

    .line 45
    :cond_2c
    if-ne p1, v2, :cond_7d

    .line 46
    .line 47
    move-object p1, v3

    .line 48
    check-cast p1, Lp7/g;

    .line 49
    .line 50
    iget-object v1, p1, Lp7/g;->d:Ll7/n;

    .line 51
    .line 52
    iget-object p1, p1, Lp7/g;->e:Lw6/e;

    .line 53
    .line 54
    iget-object p1, p1, Lw6/e;->b:Lu6/k;

    .line 55
    .line 56
    invoke-static {p1}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ll7/n;->u()Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_44

    .line 64
    .line 65
    invoke-virtual {v1, p1, p0}, Ll7/n;->t(Lu6/k;Ljava/lang/Runnable;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_44
    invoke-static {}, Ll7/x0;->a()Ll7/c0;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iget-wide v1, p1, Ll7/c0;->c:J

    .line 74
    .line 75
    const-wide v4, 0x100000000L

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    cmp-long v1, v1, v4

    .line 81
    .line 82
    if-ltz v1, :cond_62

    .line 83
    .line 84
    iget-object v0, p1, Ll7/c0;->e:Ls6/e;

    .line 85
    .line 86
    if-nez v0, :cond_5e

    .line 87
    .line 88
    new-instance v0, Ls6/e;

    .line 89
    .line 90
    invoke-direct {v0}, Ls6/e;-><init>()V

    .line 91
    .line 92
    .line 93
    iput-object v0, p1, Ll7/c0;->e:Ls6/e;

    .line 94
    .line 95
    :cond_5e
    invoke-virtual {v0, p0}, Ls6/e;->addLast(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_62
    invoke-virtual {p1, v0}, Ll7/c0;->x(Z)V

    .line 100
    .line 101
    .line 102
    :try_start_65
    invoke-static {p0, v3, v0}, Ll7/r;->g(Ll7/c;Lu6/f;Z)V

    .line 103
    .line 104
    .line 105
    :cond_68
    invoke-virtual {p1}, Ll7/c0;->y()Z

    .line 106
    .line 107
    .line 108
    move-result v0
    :try_end_6c
    .catchall {:try_start_65 .. :try_end_6c} :catchall_72

    .line 109
    if-nez v0, :cond_68

    .line 110
    .line 111
    :goto_6e
    invoke-virtual {p1}, Ll7/c0;->v()V

    .line 112
    .line 113
    .line 114
    goto :goto_96

    .line 115
    :catchall_72
    move-exception v0

    .line 116
    const/4 v1, 0x0

    .line 117
    :try_start_74
    invoke-virtual {p0, v0, v1}, Ll7/w;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_78

    .line 118
    .line 119
    .line 120
    goto :goto_6e

    .line 121
    :catchall_78
    move-exception v0

    .line 122
    invoke-virtual {p1}, Ll7/c0;->v()V

    .line 123
    .line 124
    .line 125
    throw v0

    .line 126
    :cond_7d
    invoke-static {p0, v3, v1}, Ll7/r;->g(Ll7/c;Lu6/f;Z)V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :cond_81
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 131
    .line 132
    const-string v0, "Already resumed"

    .line 133
    .line 134
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw p1

    .line 138
    :cond_89
    const v2, 0x1fffffff

    .line 139
    .line 140
    .line 141
    and-int/2addr v2, v1

    .line 142
    const/high16 v3, 0x40000000    # 2.0f

    .line 143
    .line 144
    add-int/2addr v3, v2

    .line 145
    invoke-virtual {v0, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-eqz v0, :cond_0

    .line 150
    .line 151
    :goto_96
    return-void
.end method

.method public final k()Ljava/lang/Object;
    .registers 6

    .line 1
    invoke-virtual {p0}, Ll7/c;->n()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :cond_4
    sget-object v1, Ll7/c;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 6
    .line 7
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    shr-int/lit8 v3, v2, 0x1d

    .line 12
    .line 13
    if-eqz v3, :cond_56

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    if-ne v3, v1, :cond_4e

    .line 17
    .line 18
    if-eqz v0, :cond_16

    .line 19
    .line 20
    invoke-virtual {p0}, Ll7/c;->o()V

    .line 21
    .line 22
    .line 23
    :cond_16
    sget-object v0, Ll7/c;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    instance-of v2, v0, Ll7/i;

    .line 30
    .line 31
    if-nez v2, :cond_49

    .line 32
    .line 33
    iget v2, p0, Ll7/w;->c:I

    .line 34
    .line 35
    const/4 v3, 0x1

    .line 36
    if-eq v2, v3, :cond_27

    .line 37
    .line 38
    if-ne v2, v1, :cond_44

    .line 39
    .line 40
    :cond_27
    iget-object v1, p0, Ll7/c;->e:Lu6/k;

    .line 41
    .line 42
    sget-object v2, Ll7/o;->b:Ll7/o;

    .line 43
    .line 44
    invoke-interface {v1, v2}, Lu6/k;->g(Lu6/j;)Lu6/i;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Ll7/k0;

    .line 49
    .line 50
    if-eqz v1, :cond_44

    .line 51
    .line 52
    invoke-interface {v1}, Ll7/k0;->a()Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_3a

    .line 57
    .line 58
    goto :goto_44

    .line 59
    :cond_3a
    check-cast v1, Ll7/s0;

    .line 60
    .line 61
    invoke-virtual {v1}, Ll7/s0;->k()Ljava/util/concurrent/CancellationException;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {p0, v0, v1}, Ll7/c;->b(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V

    .line 66
    .line 67
    .line 68
    throw v1

    .line 69
    :cond_44
    :goto_44
    invoke-virtual {p0, v0}, Ll7/c;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    return-object v0

    .line 74
    :cond_49
    check-cast v0, Ll7/i;

    .line 75
    .line 76
    iget-object v0, v0, Ll7/i;->a:Ljava/lang/Throwable;

    .line 77
    .line 78
    throw v0

    .line 79
    :cond_4e
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 80
    .line 81
    const-string v1, "Already suspended"

    .line 82
    .line 83
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw v0

    .line 87
    :cond_56
    const v3, 0x1fffffff

    .line 88
    .line 89
    .line 90
    and-int/2addr v3, v2

    .line 91
    const/high16 v4, 0x20000000

    .line 92
    .line 93
    add-int/2addr v4, v3

    .line 94
    invoke-virtual {v1, p0, v2, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-eqz v1, :cond_4

    .line 99
    .line 100
    sget-object v1, Ll7/c;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 101
    .line 102
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    check-cast v1, Ll7/y;

    .line 107
    .line 108
    if-nez v1, :cond_70

    .line 109
    .line 110
    invoke-virtual {p0}, Ll7/c;->m()Ll7/y;

    .line 111
    .line 112
    .line 113
    :cond_70
    if-eqz v0, :cond_75

    .line 114
    .line 115
    invoke-virtual {p0}, Ll7/c;->o()V

    .line 116
    .line 117
    .line 118
    :cond_75
    sget-object v0, Lv6/a;->a:Lv6/a;

    .line 119
    .line 120
    return-object v0
.end method

.method public final l()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Ll7/c;->m()Ll7/y;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_7

    .line 6
    .line 7
    goto :goto_1b

    .line 8
    :cond_7
    sget-object v1, Ll7/c;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 9
    .line 10
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    instance-of v1, v1, Ll7/a;

    .line 15
    .line 16
    if-nez v1, :cond_1b

    .line 17
    .line 18
    invoke-interface {v0}, Ll7/y;->c()V

    .line 19
    .line 20
    .line 21
    sget-object v0, Ll7/c;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 22
    .line 23
    sget-object v1, Ll7/u0;->a:Ll7/u0;

    .line 24
    .line 25
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_1b
    :goto_1b
    return-void
.end method

.method public final m()Ll7/y;
    .registers 5

    .line 1
    iget-object v0, p0, Ll7/c;->e:Lu6/k;

    .line 2
    .line 3
    sget-object v1, Ll7/o;->b:Ll7/o;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lu6/k;->g(Lu6/j;)Lu6/i;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ll7/k0;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_e

    .line 13
    .line 14
    return-object v1

    .line 15
    :cond_e
    new-instance v2, Ll7/e;

    .line 16
    .line 17
    invoke-direct {v2, p0}, Ll7/e;-><init>(Ll7/c;)V

    .line 18
    .line 19
    .line 20
    const/4 v3, 0x2

    .line 21
    invoke-static {v0, v2, v3}, Ll7/r;->f(Ll7/k0;Ll7/o0;I)Ll7/y;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :cond_18
    sget-object v2, Ll7/c;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 26
    .line 27
    invoke-virtual {v2, p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_21

    .line 32
    .line 33
    goto :goto_27

    .line 34
    :cond_21
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    if-eqz v2, :cond_18

    .line 39
    .line 40
    :goto_27
    return-object v0
.end method

.method public final n()Z
    .registers 3

    .line 1
    iget v0, p0, Ll7/w;->c:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_18

    .line 5
    .line 6
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>"

    .line 7
    .line 8
    iget-object v1, p0, Ll7/c;->d:Lu6/f;

    .line 9
    .line 10
    invoke-static {v0, v1}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    check-cast v1, Lp7/g;

    .line 14
    .line 15
    sget-object v0, Lp7/g;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_18

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    return v0

    .line 25
    :cond_18
    const/4 v0, 0x0

    .line 26
    return v0
.end method

.method public final o()V
    .registers 6

    .line 1
    iget-object v0, p0, Ll7/c;->d:Lu6/f;

    .line 2
    .line 3
    instance-of v1, v0, Lp7/g;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_a

    .line 7
    .line 8
    check-cast v0, Lp7/g;

    .line 9
    .line 10
    goto :goto_b

    .line 11
    :cond_a
    move-object v0, v2

    .line 12
    :goto_b
    if-eqz v0, :cond_73

    .line 13
    .line 14
    sget-object v1, Lp7/g;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 15
    .line 16
    :goto_f
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    sget-object v4, Lp7/a;->c:Ln6/d;

    .line 21
    .line 22
    if-ne v3, v4, :cond_25

    .line 23
    .line 24
    :cond_17
    invoke-virtual {v1, v0, v4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_1e

    .line 29
    .line 30
    goto :goto_32

    .line 31
    :cond_1e
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    if-eq v3, v4, :cond_17

    .line 36
    .line 37
    goto :goto_f

    .line 38
    :cond_25
    instance-of v4, v3, Ljava/lang/Throwable;

    .line 39
    .line 40
    if-eqz v4, :cond_5b

    .line 41
    .line 42
    :goto_29
    invoke-virtual {v1, v0, v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_4c

    .line 47
    .line 48
    move-object v2, v3

    .line 49
    check-cast v2, Ljava/lang/Throwable;

    .line 50
    .line 51
    :goto_32
    if-nez v2, :cond_35

    .line 52
    .line 53
    goto :goto_73

    .line 54
    :cond_35
    sget-object v0, Ll7/c;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 55
    .line 56
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Ll7/y;

    .line 61
    .line 62
    if-nez v1, :cond_40

    .line 63
    .line 64
    goto :goto_48

    .line 65
    :cond_40
    invoke-interface {v1}, Ll7/y;->c()V

    .line 66
    .line 67
    .line 68
    sget-object v1, Ll7/u0;->a:Ll7/u0;

    .line 69
    .line 70
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :goto_48
    invoke-virtual {p0, v2}, Ll7/c;->i(Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_4c
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    if-ne v4, v3, :cond_53

    .line 82
    .line 83
    goto :goto_29

    .line 84
    :cond_53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 85
    .line 86
    const-string v1, "Failed requirement."

    .line 87
    .line 88
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw v0

    .line 92
    :cond_5b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 93
    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v2, "Inconsistent state "

    .line 97
    .line 98
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw v0

    .line 116
    :cond_73
    :goto_73
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "CancellableContinuation("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Ll7/c;->d:Lu6/f;

    .line 9
    .line 10
    invoke-static {v1}, Ll7/r;->h(Lu6/f;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, "){"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    sget-object v1, Ll7/c;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 23
    .line 24
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    instance-of v2, v1, Ll7/a;

    .line 29
    .line 30
    if-eqz v2, :cond_22

    .line 31
    .line 32
    const-string v1, "Active"

    .line 33
    .line 34
    goto :goto_2b

    .line 35
    :cond_22
    instance-of v1, v1, Ll7/d;

    .line 36
    .line 37
    if-eqz v1, :cond_29

    .line 38
    .line 39
    const-string v1, "Cancelled"

    .line 40
    .line 41
    goto :goto_2b

    .line 42
    :cond_29
    const-string v1, "Completed"

    .line 43
    .line 44
    :goto_2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, "}@"

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-static {p0}, Ll7/r;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    return-object v0
.end method
